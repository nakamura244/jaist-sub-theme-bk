mtype = {msg, ack}
bool res_a,res_b,res_c;

chan request_a = [0] of {mtype, bool}
chan response_a = [0] of {mtype, bool}

chan request_b = [0] of {mtype, bool}
chan response_b = [0] of {mtype, bool}

chan request_c = [0] of {mtype, bool}
chan response_c = [0] of {mtype, bool}

active proctype service_a() {
  bool res;
  end:
  do
    :: request_a?msg(res) -> response_a!ack(true);
    :: request_a?msg(res) -> response_a!ack(false);
  od
}

active proctype service_b() {
  bool res;
  end:
  again:
    if
    :: request_b?msg(res) -> response_b!ack(true)
    :: request_b?msg(res) -> response_b!ack(false)
    //:: timeout -> goto again
    fi
    goto again
}

active proctype service_c() {
  bool res;
  end:
  again:
    if
    :: request_c?msg(res) -> response_c!ack(true)
    :: request_c?msg(res) -> response_c!ack(false)
    //:: timeout -> goto again
    fi
    goto again
}


proctype client() {
  end:again:
    atomic {
        request_a ! msg(true) ->
          response_a ? ack(res_a);
          printf(" a res:%d\n",res_a)

        request_b ! msg(true) ->
          response_b ? ack(res_b);
          printf(" b res:%d\n",res_b)

        request_c ! msg(true) ->
          response_c ? ack(res_c);
          printf(" c res:%d\n",res_c)

      printf("====\n")
    }
    if
        :: res_a == 1  && res_b == 1  && res_c == 1  -> printf("pass1\n");
        :: res_a == 0  && res_b == 1  && res_c == 1  -> printf("pass2\n");
        :: res_a == 1  && res_b == 0  && res_c == 1  -> printf("pass3\n");
        :: res_a == 1  && res_b == 1  && res_c == 0  -> printf("pass4\n");
        :: res_a == 0  && res_b == 0  && res_c == 0  -> printf("pass5\n");
        :: res_a == 1  && res_b == 0  && res_c == 0  -> printf("pass6\n");
        :: res_a == 0  && res_b == 1  && res_c == 0  -> printf("pass7\n");
        :: res_a == 0  && res_b == 0  && res_c == 1  -> printf("pass8\n");
        :: res_a == 0  && res_b == 0  && res_c == 0  -> printf("pass9\n");
        :: else assert(false)
    fi
    goto again;
}


init {

  run client();

}
