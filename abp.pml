#define MAX 10

mtype = {msg, ack}
bit sb = 0, rb = 0;
byte cnt_s = 0, cnt_r = 0;

chan cable_s_out = [1] of {mtype, bit, byte};
chan cable_s_in = [1] of {mtype, bit};
chan cable_r_in = [1] of {mtype, bit, byte};
chan cable_r_out = [1] of {mtype, bit};

inline inc(x){
  if
    :: x < MAX -> x++
    :: else -> x = 0
  fi
}

active proctype sender() {
  bit b;
  again:
    request: cable_s_out!msg(sb, cnt_s);
    if
      :: cable_s_in?ack(b)->
        response: if
          :: b == sb ->
            sb = !sb;
            inc(cnt_s);
          :: else
        fi
        goto again
      :: timeout -> goto again
    fi
}

active proctype network(){
  mtype m;
  bit b;
  byte c;
  do
    :: cable_s_out?m(b,c) -> forwarded1: cable_r_in!m(b,c)
    :: cable_s_out?m(b,c) /* message loss */
    :: cable_r_out?m(b) -> forwarded2: cable_s_in!m(b)
    :: cable_r_out?m(b) /* message loss */
  od
}

active proctype receiver(){
  bit b;
  byte c;
  again:
    cable_r_in?msg(b,c) -> cable_r_out!ack(b);
    if
      :: b == rb ->
        rb = !rb;
        assert(cnt_r == c);
        inc(cnt_r) /* accept */
      :: else
    fi;
    goto again
}

#define p sender@request
#define q sender@response
#define r network@forwarded1
#define s network@forwarded2

ltl p1 { [] ( p -> <> q) }
ltl p2 { [] ( p && (<> r) && (<>s) -> <> q) }
/* いつもsenderがリクエストを送れば時々レスポンスがない時がある */
ltl p3 { [] ( p -> <> !q) }
/* いつもsenderがリクエストを送るかもしくは時々レスポンスがないが存在する */
ltl p4 { [] ( p  ||  <> !q) }
/* senderがリクエストを送って且つレスポンスがないが時々存在する */
ltl p5 { <> ( p  && !q) }
/* senderがリクエストを送って且ついつもリクエストがない時が時々存在する */
ltl p6 { <> ( p  && ![] (q)) }
