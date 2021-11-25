	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* PROC payment_point_service */

	case 3: // STATE 1
		;
		XX = 1;
		unrecv(now.cable2_r_in, XX-1, 0, 2, 1);
		unrecv(now.cable2_r_in, XX-1, 1, ((int)((P4 *)_this)->t), 0);
		((P4 *)_this)->t = trpt->bup.oval;
		;
		;
		goto R999;

	case 4: // STATE 2
		;
	/* 0 */	((P4 *)_this)->t = trpt->bup.oval;
		;
		;
		goto R999;

	case 5: // STATE 3
		;
		now.t0_balance = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 7: // STATE 5
		;
		now.pt0 = trpt->bup.oval;
		;
		goto R999;

	case 8: // STATE 6
		;
		((P4 *)_this)->r = trpt->bup.oval;
		;
		goto R999;

	case 9: // STATE 7
		;
	/* 0 */	((P4 *)_this)->t = trpt->bup.oval;
		;
		;
		goto R999;

	case 10: // STATE 8
		;
		((P4 *)_this)->r = trpt->bup.oval;
		;
		goto R999;

	case 11: // STATE 9
		;
	/* 0 */	((P4 *)_this)->t = trpt->bup.oval;
		;
		;
		goto R999;

	case 12: // STATE 10
		;
		now.pt1 = trpt->bup.oval;
		;
		goto R999;

	case 13: // STATE 11
		;
		((P4 *)_this)->r = trpt->bup.oval;
		;
		goto R999;

	case 14: // STATE 12
		;
	/* 0 */	((P4 *)_this)->t = trpt->bup.oval;
		;
		;
		goto R999;

	case 15: // STATE 13
		;
		((P4 *)_this)->r = trpt->bup.oval;
		;
		goto R999;

	case 16: // STATE 14
		;
	/* 0 */	((P4 *)_this)->t = trpt->bup.oval;
		;
		;
		goto R999;

	case 17: // STATE 15
		;
		now.pt2 = trpt->bup.oval;
		;
		goto R999;

	case 18: // STATE 16
		;
		((P4 *)_this)->r = trpt->bup.oval;
		;
		goto R999;

	case 19: // STATE 17
		;
	/* 0 */	((P4 *)_this)->t = trpt->bup.oval;
		;
		;
		goto R999;

	case 20: // STATE 18
		;
		((P4 *)_this)->r = trpt->bup.oval;
		;
		goto R999;

	case 21: // STATE 21
		;
		_m = unsend(now.cable2_r_out);
		;
		goto R999;

		 /* PROC payment_card_service */

	case 22: // STATE 1
		;
		XX = 1;
		unrecv(now.cable1_r_in, XX-1, 0, 2, 1);
		unrecv(now.cable1_r_in, XX-1, 1, ((int)((P3 *)_this)->t), 0);
		((P3 *)_this)->t = trpt->bup.oval;
		;
		;
		goto R999;

	case 23: // STATE 2
		;
	/* 0 */	((P3 *)_this)->t = trpt->bup.oval;
		;
		;
		goto R999;

	case 24: // STATE 3
		;
		now.ct0 = trpt->bup.oval;
		;
		goto R999;

	case 25: // STATE 4
		;
		((P3 *)_this)->r = trpt->bup.oval;
		;
		goto R999;

	case 26: // STATE 5
		;
	/* 0 */	((P3 *)_this)->t = trpt->bup.oval;
		;
		;
		goto R999;

	case 27: // STATE 6
		;
		((P3 *)_this)->r = trpt->bup.oval;
		;
		goto R999;

	case 28: // STATE 7
		;
	/* 0 */	((P3 *)_this)->t = trpt->bup.oval;
		;
		;
		goto R999;

	case 29: // STATE 8
		;
		now.ct1 = trpt->bup.oval;
		;
		goto R999;

	case 30: // STATE 9
		;
		((P3 *)_this)->r = trpt->bup.oval;
		;
		goto R999;

	case 31: // STATE 10
		;
	/* 0 */	((P3 *)_this)->t = trpt->bup.oval;
		;
		;
		goto R999;

	case 32: // STATE 11
		;
		((P3 *)_this)->r = trpt->bup.oval;
		;
		goto R999;

	case 33: // STATE 12
		;
	/* 0 */	((P3 *)_this)->t = trpt->bup.oval;
		;
		;
		goto R999;

	case 34: // STATE 13
		;
		now.ct2 = trpt->bup.oval;
		;
		goto R999;

	case 35: // STATE 14
		;
		((P3 *)_this)->r = trpt->bup.oval;
		;
		goto R999;

	case 36: // STATE 15
		;
	/* 0 */	((P3 *)_this)->t = trpt->bup.oval;
		;
		;
		goto R999;

	case 37: // STATE 16
		;
		((P3 *)_this)->r = trpt->bup.oval;
		;
		goto R999;

	case 38: // STATE 19
		;
		_m = unsend(now.cable1_r_out);
		;
		goto R999;

		 /* PROC network_from_payment_to_point */

	case 39: // STATE 1
		;
		XX = 1;
		unrecv(now.cable2_s_out, XX-1, 0, ((P2 *)_this)->m, 1);
		unrecv(now.cable2_s_out, XX-1, 1, ((int)((P2 *)_this)->c), 0);
		((P2 *)_this)->m = trpt->bup.ovals[0];
		((P2 *)_this)->c = trpt->bup.ovals[1];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 40: // STATE 2
		;
		_m = unsend(now.cable2_r_in);
		;
		goto R999;

	case 41: // STATE 3
		;
		XX = 1;
		unrecv(now.cable2_r_out, XX-1, 0, ((P2 *)_this)->m, 1);
		unrecv(now.cable2_r_out, XX-1, 1, ((int)((P2 *)_this)->c), 0);
		unrecv(now.cable2_r_out, XX-1, 2, ((int)((P2 *)_this)->r), 0);
		((P2 *)_this)->m = trpt->bup.ovals[0];
		((P2 *)_this)->c = trpt->bup.ovals[1];
		((P2 *)_this)->r = trpt->bup.ovals[2];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 42: // STATE 4
		;
		_m = unsend(now.cable2_s_in);
		;
		goto R999;

	case 43: // STATE 8
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC network_from_payment_to_card */

	case 44: // STATE 1
		;
		XX = 1;
		unrecv(now.cable1_s_out, XX-1, 0, ((P1 *)_this)->m, 1);
		unrecv(now.cable1_s_out, XX-1, 1, ((int)((P1 *)_this)->c), 0);
		((P1 *)_this)->m = trpt->bup.ovals[0];
		((P1 *)_this)->c = trpt->bup.ovals[1];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 45: // STATE 2
		;
		_m = unsend(now.cable1_r_in);
		;
		goto R999;

	case 46: // STATE 3
		;
		XX = 1;
		unrecv(now.cable1_r_out, XX-1, 0, ((P1 *)_this)->m, 1);
		unrecv(now.cable1_r_out, XX-1, 1, ((int)((P1 *)_this)->c), 0);
		unrecv(now.cable1_r_out, XX-1, 2, ((int)((P1 *)_this)->r), 0);
		((P1 *)_this)->m = trpt->bup.ovals[0];
		((P1 *)_this)->c = trpt->bup.ovals[1];
		((P1 *)_this)->r = trpt->bup.ovals[2];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 47: // STATE 4
		;
		_m = unsend(now.cable1_s_in);
		;
		goto R999;

	case 48: // STATE 8
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC payment_service */

	case 49: // STATE 1
		;
		_m = unsend(now.cable1_s_out);
		;
		goto R999;

	case 50: // STATE 2
		;
		XX = 1;
		unrecv(now.cable1_s_in, XX-1, 0, 1, 1);
		unrecv(now.cable1_s_in, XX-1, 1, ((int)now.tran1), 0);
		unrecv(now.cable1_s_in, XX-1, 2, ((int)((P0 *)_this)->r), 0);
		now.tran1 = trpt->bup.ovals[0];
		((P0 *)_this)->r = trpt->bup.ovals[1];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		;
		;
		
	case 53: // STATE 5
		;
		now.tran1 = trpt->bup.oval;
		;
		goto R999;

	case 54: // STATE 7
		;
		now.tran1 = trpt->bup.oval;
		;
		goto R999;

	case 55: // STATE 13
		;
		_m = unsend(now.cable2_s_out);
		;
		goto R999;

	case 56: // STATE 14
		;
		XX = 1;
		unrecv(now.cable2_s_in, XX-1, 0, 1, 1);
		unrecv(now.cable2_s_in, XX-1, 1, ((int)now.tran2), 0);
		unrecv(now.cable2_s_in, XX-1, 2, ((int)((P0 *)_this)->r), 0);
		now.tran2 = trpt->bup.ovals[0];
		((P0 *)_this)->r = trpt->bup.ovals[1];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		;
		;
		
	case 59: // STATE 17
		;
		now.tran2 = trpt->bup.oval;
		;
		goto R999;

	case 60: // STATE 19
		;
		now.tran2 = trpt->bup.oval;
		;
		goto R999;

	case 61: // STATE 28
		;
		p_restor(II);
		;
		;
		goto R999;
	}

