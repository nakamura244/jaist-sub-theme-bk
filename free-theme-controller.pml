mtype = {Start,Stop,StartButton,StopButton,Terminate,Active,NonActive,ErrorNotify,ON,OFF,ERR,TIMEOUT}

chan toControl = [1] of {mtype};
chan toHeater = [1] of {mtype};
int cnt = 0;
mtype status = NonActive;
mtype disp

active proctype user() {
  end:
  do
  /*
    :: atomic{(cnt==0) -> toControl ! StartButton;cnt++}
    :: atomic{(cnt==0) ->toControl ! StopButton;cnt++}
  */
    :: atomic{toControl ! StartButton;}
    :: atomic{toControl ! StopButton;}
  od
}

active proctype controller() {
  inactive:again:end:
    request:if
      :: atomic {toControl ? StartButton -> printf("StartButton\n");toHeater ! Start; goto wait}
      :: atomic {toControl ? StopButton ->  printf("StopButton\n");toHeater ! Stop; goto wait}
    fi
    goto again

  wait:
    wait_again:
      response:if
        :: atomic {toControl ? ErrorNotify -> disp=ERR; printf("error\n"); cnt--; goto inactive}
        :: atomic {toControl ? Terminate -> disp=OFF;printf("off\n"); cnt--; goto inactive}
        :: atomic {toControl ? Active -> disp=ON;printf("on\n"); cnt--; goto inactive}
        :: atomic {timeout -> cnt--; disp=TIMEOUT;goto inactive}
      fi
      goto wait_again
}


active proctype heater() {
  inactive:again:end:
  atomic {
    if
      :: atomic {
        toHeater ? Start ->
          if
          :: status == NonActive -> goto start
          :: else
          fi

      }
      :: atomic {
        toHeater ? Stop ->
          if
          :: status == Active -> goto stop
          :: else
          fi
      }
    fi
    goto again
  }

  start:
    again_start:
      if
        :: atomic {toControl ! Active; status=Active; goto inactive}
        :: atomic {toControl ! ErrorNotify; status=NonActive; goto inactive}
      fi
      goto again_start
  stop:
    again_stop:
      if
        :: atomic {toControl ! Terminate; status=NonActive; goto inactive}
        :: atomic {toControl ! ErrorNotify; status=NonActive; goto inactive}
      fi
      goto again_stop
}

#define q controller@request
#define r controller@response


/* コントローラからリクエストをするといつかはレスポンスが返ってくる */
ltl p1 { [] ( q -> <> r) }
/* コントローラからリクエストをするといつかはディスプレイに"ON","OFF","ERR","TIMEOUT"のいずれかが表示される */
ltl p2 { [] ( q -> <> (disp==ON || disp==OFF || disp==ERR || disp==TIMEOUT)) }

