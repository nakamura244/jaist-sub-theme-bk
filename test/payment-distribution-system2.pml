#define MAX 2

mtype = {msg, ack}
// card tran status
bit ct0=0,ct1=0,ct2=0;
// point tran status
bit pt0=0,pt1=0,pt2=0;

// tran ID
byte tran1 = 0;
byte tran2 = 0;

byte t0_balance = 10;

chan cable1_s_out = [1] of {mtype, byte};
chan cable1_s_in  = [1] of {mtype, byte, bit};
chan cable1_r_in  = [1] of {mtype, byte};
chan cable1_r_out = [1] of {mtype, byte, bit};
chan cable2_s_out = [1] of {mtype, byte};
chan cable2_s_in  = [1] of {mtype, byte, bit};
chan cable2_r_in  = [1] of {mtype, byte};
chan cable2_r_out = [1] of {mtype, byte, bit};


inline inc(x){
    // x < MAX -> x++
    if
        :: x < MAX -> x++
        :: else -> x = 0
    fi
}

proctype payment_service1() {
    bit r;
    again1:request:cable1_s_out!msg(tran1);
    if
        :: cable1_s_in?ack(tran1,r)-> 
            response: 
            printf("card tran:%d, done:%d\n",tran1,r);
            inc(tran1);
            goto again1
        :: timeout -> printf("card tran:%d, timeout\n",tran1);goto again1
    fi

}

proctype payment_service2() {
    bit r;
    again2:cable2_s_out!msg(tran2);
    if
        :: cable2_s_in?ack(tran2,r)-> 
            printf("point tran:%d, done:%d\n",tran2,r);
            inc(tran2);
            goto again2
        :: timeout -> printf("point tran:%d, timeout\n",tran2);goto again2
    fi
}


// proctype payment_service() {
//     bit r;
//     byte cnt1=0,cnt2=0;
//     do
//         :: cable1_s_out!msg(tran1);
//             if
//                 :: cable1_s_in?ack(tran1,r)->
//                     printf("card tran:%d, done:%d\n",tran1,r);
//                     inc(tran1);
//             fi
//         :: cable2_s_out!msg(tran2);
//             if
//                 :: cable2_s_in?ack(tran2,r)-> 
//                     printf("point tran:%d, done:%d\n",tran2,r);
//                     inc(tran2);
//             fi
//     od
// }

active proctype network_from_payment_to_card(){
    mtype m;
    bit r;
    byte c;
    do
        :: cable1_s_out?m(c) -> progress:forwarded1: cable1_r_in!m(c)
        :: cable1_s_out?m(c) /* message loss */
        :: cable1_r_out?m(c,r) -> progress:forwarded2: cable1_s_in!m(c,r)
        :: cable1_r_out?m(c,r) /* message loss */
    od
}

active proctype network_from_payment_to_point(){
    mtype m;
    bit r;
    byte c;
    do
        :: cable2_s_out?m(c) -> progress:cable2_r_in!m(c)
        :: cable2_s_out?m(c) /* message loss */
        :: cable2_r_out?m(c,r) -> progress:cable2_s_in!m(c,r)
        :: cable2_r_out?m(c,r) /* message loss */
    od
}

active proctype payment_card_service() {
    bit r;
    byte t;
    again:
    cable1_r_in?msg(t) -> 
        if
            /* tran0 */
            // done
            :: t == 0 && ct0 == 0 -> ct0 = 1; r = 1;
            // already done
            :: t == 0 && ct0 == 1 -> r = 0;
            
            /* tran1 */
            // done
            :: t == 1 && ct1 == 0 -> ct1 = 1; r = 1;
            // already done
            :: t == 1 && ct1 == 1 -> r = 0;
            
            /* tran2 */
            // done
            :: t == 2 && ct2 == 0 -> ct2 = 1; r = 1;
            // already done
            :: t == 2 && ct2 == 1 -> r = 0;
            // :: else
        fi
        cable1_r_out!ack(tran1,r);
    goto again

}

active proctype payment_point_service() {
    bit r;
    byte t;
    again:
    cable2_r_in?msg(t) -> 
        if
            /* tran0 */
            // done
            :: t == 0 && pt0 == 0 -> 
                t0_balance = t0_balance - 3;
                assert(t0_balance == 7)
                pt0 = 1; 
                r = 1;
                
            // already done
            :: t == 0 && pt0 == 1 -> r = 0;
            
            /* tran1 */
            // done
            :: t == 1 && pt1 == 0 -> pt1 = 1; r = 1;
            // already done
            :: t == 1 && pt1 == 1 -> r = 0;
            
            /* tran2 */
            // done
            :: t == 2 && pt2 == 0 -> pt2 = 1; r = 1;
            // already done
            :: t == 2 && pt2 == 1 -> r = 0;

        fi
        cable2_r_out!ack(tran2,r);
    goto again
}

init {
    // run payment_service()
    run payment_service1()
    run payment_service2()
}



#define req1 payment_service1@request
#define res1 payment_service1@response
#define net1_req network_from_payment_to_card@forwarded1
#define net1_res network_from_payment_to_card@forwarded2


// リクエストをすればいつかわレスポンスが返ってくる
ltl p1 { [] ( req1 -> <> res1) }
// リクエストをすればレスポンスが返ってこないこともある
ltl p2 { ( req1 -> [] !res1) }
// リクエストをして、ネットワークが正しく動けば、レスポンスがある
ltl p3 { [] ( req1 && (<> net1_req) && (<> net1_res) -> <> res1) }


