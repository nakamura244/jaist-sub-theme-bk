#define MAX 2

mtype = {msg, ack}

// card tran status
// 0:none,1:success,2:fail
byte ct0=0,ct1=0,ct2=0;

// point tran status
byte pt0=0,pt1=0,pt2=0;

// tran ID
byte tran = 0;

// 1:Authorization,2:rollback
byte type

byte t0_balance = 10;

chan cable1_s_out = [1] of {mtype, byte, byte};
chan cable1_s_in  = [1] of {mtype, byte, byte};
chan cable1_r_in  = [1] of {mtype, byte, byte};
chan cable1_r_out = [1] of {mtype, byte, byte};
chan cable2_s_out = [1] of {mtype, byte, byte};
chan cable2_s_in  = [1] of {mtype, byte, byte};
chan cable2_r_in  = [1] of {mtype, byte, byte};
chan cable2_r_out = [1] of {mtype, byte, byte};


inline inc(x){
    if
        :: x < MAX -> x++
        :: else -> x = 0
    fi
}

proctype payment_service() {
    byte r;
    again1:request:cable1_s_out!msg(tran,1);
    // printf("tran:%d\n",tran)
    if
        :: cable1_s_in?ack(tran,r)-> 
            response:
            if  
                // 重複リクエスト時
                :: r == 3 -> 
                    if
                        :: tran == 0 -> assert(ct0 == 1 || ct0 == 2);assert(pt0 == 0 || pt0 == 1 || pt0 == 2);
                        :: tran == 1 -> assert(ct1 == 1 || ct1 == 2);assert(pt1 == 0 || pt1 == 1 || pt1 == 2);
                        :: tran == 2 -> assert(ct2 == 1 || ct2 == 2);assert(pt2 == 0 || pt2 == 1 || pt2 == 2);
                    fi
                    inc(tran);goto again1;
                // 正常時
                :: r == 1 -> 
                    printf("card tran:%d, done:%d\n",tran,r);
                    if
                        :: tran == 0 -> assert(ct0 == 1 && pt0 == 0)
                        :: tran == 1 -> assert(ct1 == 1 && pt1 == 0)
                        :: tran == 2 -> assert(ct2 == 1 && pt2 == 0)
                    fi
                    goto next
                // 失敗時
                :: r == 2 ->
                    printf("card tran:%d, done::%d\n",tran,r);
                    if
                        :: tran == 0 -> assert(ct0 == 2 && pt0 == 0)
                        :: tran == 1 -> assert(ct1 == 2 && pt1 == 0)
                        :: tran == 2 -> assert(ct2 == 2 && pt2 == 0)
                    fi
                    inc(tran);goto again1;
                // :: else inc(tran);goto again1;
            fi
        :: timeout -> printf("card tran:%d, timeout\n",tran);goto again1
    fi
    goto again1


    next: 
    printf("doing next \n")
        cable2_s_out!msg(tran,1);
        if 
            :: cable2_s_in?ack(tran,r)-> 
                if
                    // 重複時
                    :: r == 3 -> 
                        if
                            :: tran == 0 -> assert(ct0 == 1);assert(pt0 == 1 || pt0 == 2)
                            :: tran == 1 -> assert(ct1 == 1);assert(pt1 == 1 || pt1 == 2)
                            :: tran == 2 -> assert(ct2 == 1);assert(pt2 == 1 || pt2 == 2)
                        fi
                        inc(tran);
                        goto again1;
                    // 正常時
                    :: r == 1 -> 
                        printf("point tran:%d, done:%d\n",tran,r);
                        if 
                            :: tran == 0 -> assert(ct0 == pt0);assert(ct0 == 1);
                            :: tran == 1 -> assert(ct1 == pt1);assert(ct1 == 1);
                            :: tran == 2 -> assert(ct2 == pt2);assert(ct2 == 1);
                            // :: else
                        fi
                        inc(tran);
                        goto again1;
                    // 失敗時
                    :: r == 2 ->
                        printf("point tran:%d, done:%d\n",tran,r);
                        if
                            :: tran == 0 -> assert(ct0 == 1 && pt0 == 2)
                            :: tran == 1 -> assert(ct1 == 1 && pt1 == 2)
                            :: tran == 2 -> assert(ct2 == 1 && pt2 == 2)
                        fi
                        goto rollback1;
                fi
            :: timeout -> printf("point tran:%d, timeout\n",tran);goto next
        fi   


    rollback1:
    printf("doing rollback card tran:%d \n",tran)
        cable1_s_out!msg(tran,2);
        if
            :: cable1_s_in?ack(tran,r)-> 
                if
                    :: r == 0 -> 
                        printf("card tran:%d, rollback:%d\n",tran,r);
                        // inc(tran);goto again1;
                        if
                            :: tran == 0 -> assert(ct0 == 0 && pt0 == 2)
                            :: tran == 1 -> assert(ct1 == 0 && pt1 == 2)
                            :: tran == 2 -> assert(ct2 == 0 && pt2 == 2)
                        fi
                        goto rollback2;
                fi
            :: timeout -> printf("card tran:%d,　rollback timeout\n",tran);goto rollback1
        fi

    rollback2:
    printf("doing rollback point tran:%d \n",tran)
        cable2_s_out!msg(tran,2);
        if
            :: cable2_s_in?ack(tran,r)-> 
                if
                    :: r == 0 -> 
                        printf("point tran:%d, rollback:%d\n",tran,r);
                        if
                            :: tran == 0 -> assert(ct0 == 0 && pt0 == 0)
                            :: tran == 1 -> assert(ct1 == 0 && pt1 == 0)
                            :: tran == 2 -> assert(ct2 == 0 && pt2 == 0)
                        fi
                        inc(tran);goto again1;
                fi
            :: timeout -> printf("point tran:%d,　rollback timeout\n",tran);goto rollback2
        fi  
}

active proctype network_from_payment_to_card(){
    mtype m;
    // byte ty;
    byte r;
    byte t;
    progress1:do
        :: cable1_s_out?m(t,type) -> forwarded1: cable1_r_in!m(t,type)
        :: cable1_s_out?m(t,type) /* message loss */
        :: cable1_r_out?m(t,r) -> forwarded2: cable1_s_in!m(t,r)
        :: cable1_r_out?m(t,r) /* message loss */
    od
}

active proctype network_from_payment_to_point(){
    mtype m;
    // byte ty;
    byte r;
    byte t;
    do
        :: cable2_s_out?m(t,type) -> cable2_r_in!m(t,type)
        :: cable2_s_out?m(t,type) /* message loss */
        :: cable2_r_out?m(t,r) -> cable2_s_in!m(t,r)
        :: cable2_r_out?m(t,r) /* message loss */
    od
}

active proctype payment_card_service() {
    byte r; // 0:none,1:success,2:fail
    byte t;
    // byte ty;
    again:
    cable1_r_in?msg(t,type) -> 
        if
            /* tran0 */
            // auth
            :: t == 0 && ct0 == 0 && type == 1 -> 
                do
                    :: ct0 = 1; progress3:r = ct0;break;
                    :: ct0 = 2; r = ct0;break;
                od
            // already done
            :: t == 0 && ct0 != 0 && type == 1 -> r = 3;
            // rollback
            :: t == 0 && type == 2 -> ct0 = 0; r = ct0;
            
            /* tran1 */
            // auth
            :: t == 1 && ct1 == 0 && type == 1 ->
                do
                    :: ct1 = 1; progress4:r = ct1;break;
                    :: ct1 = 2; r = ct1;break;
                od
            // already done
            :: t == 1 && ct1 != 0 && type == 1 -> r = 3;
            // rollback
            :: t == 1 && type == 2 -> ct1 = 0; r = ct1;
            
            /* tran2 */
            // auth
            :: t == 2 && ct2 == 0 && type == 1 ->
                do
                    :: ct2 = 1; progress5:r = ct2;break;
                    :: ct2 = 2; r = ct2;break;
                od
            // already done
            :: t == 2 && ct2 != 0 && type == 1 -> r = 3;
            // rollback
            :: t == 2 && type == 2 -> ct2 = 0; r = ct2;

            // :: else
        fi
        cable1_r_out!ack(tran,r);
    goto again

}

active proctype payment_point_service() {
    byte r; // 0:none,1:success,2:fail
    byte t;
    // byte ty;
    again:
    cable2_r_in?msg(t,type) -> 
        if
            /* tran0 */
            // auth
            :: t == 0 && pt0 == 0 && type == 1 ->
                do
                    :: pt0 = 1; progress6:r = pt0;t0_balance = t0_balance - 3;assert(t0_balance == 7);break;
                    :: pt0 = 2; r = pt0;break;
                od
            // already done
            :: t == 0 && pt0 != 0 && type == 1 -> r = 3;
            // rollback
            :: t == 0 && type == 2 -> pt0 = 0; r = pt0;

            /* tran1 */
            // auth
            :: t == 1 && pt1 == 0 && type == 1 ->
                do
                    :: pt1 = 1; progress7:r = pt1;break;
                    :: pt1 = 2; r = pt1;break;
                od
            // already done
            :: t == 1 && pt1 != 0 && type == 1 -> r = 3;
            // rollback
            :: t == 1 && type == 2 -> pt1 = 0; r = pt1;
            
            /* tran2 */
            // auth
            :: t == 2 && pt2 == 0 && type == 1 ->
                do
                    :: pt2 = 1; progress8:r = pt2;break;
                    :: pt2 = 2; r = pt2;break;
                od
            // already done
            :: t == 2 && pt2 != 0 && type == 1 -> r = 3;
            // rollback
            :: t == 2 && type == 2 -> pt2 = 0; r = pt2;

        fi
        cable2_r_out!ack(tran,r);
    goto again
}

init {
    run payment_service()
}



#define req1 payment_service@request
#define res1 payment_service@response
#define net1_req network_from_payment_to_card@forwarded1
#define net1_res network_from_payment_to_card@forwarded2


// リクエストをすればいつかわレスポンスが返ってくる
ltl p1 { [] ( req1 -> <> res1) }
// リクエストをすればレスポンスが返ってこないこともある
// ltl p2 { [] ( req1 -> <> !res1) }
ltl p2 { ( req1 -> [] !res1) }

// リクエストをして、ネットワークが正しく動けば、レスポンスがある
// ltl p3 { [] ( req1 && net1_req && net1_res -> res1) }
ltl p3 { [] ( req1 && (<> net1_req) && (<> net1_res) -> <> res1) }

