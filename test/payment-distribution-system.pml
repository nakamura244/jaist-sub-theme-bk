#define MAX 10

mtype = {msg, ack}
bit sb = 0, rb = 0;
byte cnt_s = 0, cnt_r = 0;

chan cable_s_out = [1] of {mtype, bit, byte};
chan cable_s_in = [1] of {mtype, bit, byte};
chan cable_r_in = [1] of {mtype, bit, byte};
chan cable_r_out = [1] of {mtype, bit, byte};


inline inc(x){
    if
        :: x < MAX -> x++
        :: else -> x = 0
    fi
}

proctype user_layer() {
    bit b;
    byte c;
    again:cable_s_out!msg(sb, cnt_s);
    if
        :: cable_s_in?ack(b,c)-> 
            if
                :: b == sb -> 
                    sb = !sb;
                    inc(cnt_s);
                    assert(cnt_s == c);
                    printf("send:%d : recive:%d\n",cnt_s,c)                    
                :: else
            fi
            goto again
        :: timeout -> goto again
    fi
}

active proctype network_from_user_payment(){
    mtype m;
    bit b;
    byte c;
    do
        :: cable_s_out?m(b,c) -> cable_r_in!m(b,c)
        :: cable_s_out?m(b,c) /* message loss */
        :: cable_r_out?m(b,c) -> cable_s_in!m(b,c)
        :: cable_r_out?m(b,c) /* message loss */
    od
}


active proctype payment_service() {
    bit b;
    byte c;
    again:
    cable_r_in?msg(b,c) -> 
    if
      :: b == rb ->
        rb = !rb;
        
        // printf("recive:%d",cnt_r)
        // printf("send:%d : recive:%d\n",cnt_s,cnt_r)
        assert(cnt_r == c);
        inc(cnt_r) /* accept */
        cable_r_out!ack(b,cnt_r);
      :: else
    fi;
    goto again

}

init {
    run user_layer()
}