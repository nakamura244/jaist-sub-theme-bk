	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM p3 */
;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		
	case 16: // STATE 44
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM p2 */
;
		
	case 17: // STATE 1
		goto R999;
;
		;
		;
		
	case 19: // STATE 9
		goto R999;

	case 20: // STATE 18
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM p1 */
;
		;
		;
		;
		
	case 23: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC :init: */

	case 24: // STATE 1
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 25: // STATE 2
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC payment_point_service */

	case 26: // STATE 1
		;
		XX = 1;
		unrecv(now.cable2_r_in, XX-1, 0, 2, 1);
		unrecv(now.cable2_r_in, XX-1, 1, ((int)((P4 *)_this)->t), 0);
		unrecv(now.cable2_r_in, XX-1, 2, ((int)now.type), 0);
		((P4 *)_this)->t = trpt->bup.ovals[0];
		now.type = trpt->bup.ovals[1];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 27: // STATE 2
		;
	/* 0 */	((P4 *)_this)->t = trpt->bup.oval;
		;
		;
		goto R999;

	case 28: // STATE 3
		;
		now.pt0 = trpt->bup.oval;
		;
		goto R999;

	case 29: // STATE 4
		;
		((P4 *)_this)->r = trpt->bup.oval;
		;
		goto R999;

	case 30: // STATE 5
		;
		now.t0_balance = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 32: // STATE 8
		;
		now.pt0 = trpt->bup.oval;
		;
		goto R999;

	case 33: // STATE 9
		;
		((P4 *)_this)->r = trpt->bup.oval;
		;
		goto R999;

	case 34: // STATE 14
		;
	/* 0 */	((P4 *)_this)->t = trpt->bup.oval;
		;
		;
		goto R999;

	case 35: // STATE 15
		;
		((P4 *)_this)->r = trpt->bup.oval;
		;
		goto R999;

	case 36: // STATE 16
		;
	/* 0 */	((P4 *)_this)->t = trpt->bup.oval;
		;
		;
		goto R999;

	case 37: // STATE 17
		;
		now.pt0 = trpt->bup.oval;
		;
		goto R999;

	case 38: // STATE 18
		;
		((P4 *)_this)->r = trpt->bup.oval;
		;
		goto R999;

	case 39: // STATE 19
		;
	/* 0 */	((P4 *)_this)->t = trpt->bup.oval;
		;
		;
		goto R999;

	case 40: // STATE 20
		;
		now.pt1 = trpt->bup.oval;
		;
		goto R999;

	case 41: // STATE 21
		;
		((P4 *)_this)->r = trpt->bup.oval;
		;
		goto R999;

	case 42: // STATE 23
		;
		now.pt1 = trpt->bup.oval;
		;
		goto R999;

	case 43: // STATE 24
		;
		((P4 *)_this)->r = trpt->bup.oval;
		;
		goto R999;

	case 44: // STATE 29
		;
	/* 0 */	((P4 *)_this)->t = trpt->bup.oval;
		;
		;
		goto R999;

	case 45: // STATE 30
		;
		((P4 *)_this)->r = trpt->bup.oval;
		;
		goto R999;

	case 46: // STATE 31
		;
	/* 0 */	((P4 *)_this)->t = trpt->bup.oval;
		;
		;
		goto R999;

	case 47: // STATE 32
		;
		now.pt1 = trpt->bup.oval;
		;
		goto R999;

	case 48: // STATE 33
		;
		((P4 *)_this)->r = trpt->bup.oval;
		;
		goto R999;

	case 49: // STATE 34
		;
	/* 0 */	((P4 *)_this)->t = trpt->bup.oval;
		;
		;
		goto R999;

	case 50: // STATE 35
		;
		now.pt2 = trpt->bup.oval;
		;
		goto R999;

	case 51: // STATE 36
		;
		((P4 *)_this)->r = trpt->bup.oval;
		;
		goto R999;

	case 52: // STATE 38
		;
		now.pt2 = trpt->bup.oval;
		;
		goto R999;

	case 53: // STATE 39
		;
		((P4 *)_this)->r = trpt->bup.oval;
		;
		goto R999;

	case 54: // STATE 44
		;
	/* 0 */	((P4 *)_this)->t = trpt->bup.oval;
		;
		;
		goto R999;

	case 55: // STATE 45
		;
		((P4 *)_this)->r = trpt->bup.oval;
		;
		goto R999;

	case 56: // STATE 46
		;
	/* 0 */	((P4 *)_this)->t = trpt->bup.oval;
		;
		;
		goto R999;

	case 57: // STATE 47
		;
		now.pt2 = trpt->bup.oval;
		;
		goto R999;

	case 58: // STATE 48
		;
		((P4 *)_this)->r = trpt->bup.oval;
		;
		goto R999;

	case 59: // STATE 51
		;
		_m = unsend(now.cable2_r_out);
		;
		goto R999;

		 /* PROC payment_card_service */

	case 60: // STATE 1
		;
		XX = 1;
		unrecv(now.cable1_r_in, XX-1, 0, 2, 1);
		unrecv(now.cable1_r_in, XX-1, 1, ((int)((P3 *)_this)->t), 0);
		unrecv(now.cable1_r_in, XX-1, 2, ((int)now.type), 0);
		((P3 *)_this)->t = trpt->bup.ovals[0];
		now.type = trpt->bup.ovals[1];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 61: // STATE 2
		;
	/* 0 */	((P3 *)_this)->t = trpt->bup.oval;
		;
		;
		goto R999;

	case 62: // STATE 3
		;
		now.ct0 = trpt->bup.oval;
		;
		goto R999;

	case 63: // STATE 4
		;
		((P3 *)_this)->r = trpt->bup.oval;
		;
		goto R999;

	case 64: // STATE 6
		;
		now.ct0 = trpt->bup.oval;
		;
		goto R999;

	case 65: // STATE 7
		;
		((P3 *)_this)->r = trpt->bup.oval;
		;
		goto R999;

	case 66: // STATE 12
		;
	/* 0 */	((P3 *)_this)->t = trpt->bup.oval;
		;
		;
		goto R999;

	case 67: // STATE 13
		;
		((P3 *)_this)->r = trpt->bup.oval;
		;
		goto R999;

	case 68: // STATE 14
		;
	/* 0 */	((P3 *)_this)->t = trpt->bup.oval;
		;
		;
		goto R999;

	case 69: // STATE 15
		;
		now.ct0 = trpt->bup.oval;
		;
		goto R999;

	case 70: // STATE 16
		;
		((P3 *)_this)->r = trpt->bup.oval;
		;
		goto R999;

	case 71: // STATE 17
		;
	/* 0 */	((P3 *)_this)->t = trpt->bup.oval;
		;
		;
		goto R999;

	case 72: // STATE 18
		;
		now.ct1 = trpt->bup.oval;
		;
		goto R999;

	case 73: // STATE 19
		;
		((P3 *)_this)->r = trpt->bup.oval;
		;
		goto R999;

	case 74: // STATE 21
		;
		now.ct1 = trpt->bup.oval;
		;
		goto R999;

	case 75: // STATE 22
		;
		((P3 *)_this)->r = trpt->bup.oval;
		;
		goto R999;

	case 76: // STATE 27
		;
	/* 0 */	((P3 *)_this)->t = trpt->bup.oval;
		;
		;
		goto R999;

	case 77: // STATE 28
		;
		((P3 *)_this)->r = trpt->bup.oval;
		;
		goto R999;

	case 78: // STATE 29
		;
	/* 0 */	((P3 *)_this)->t = trpt->bup.oval;
		;
		;
		goto R999;

	case 79: // STATE 30
		;
		now.ct1 = trpt->bup.oval;
		;
		goto R999;

	case 80: // STATE 31
		;
		((P3 *)_this)->r = trpt->bup.oval;
		;
		goto R999;

	case 81: // STATE 32
		;
	/* 0 */	((P3 *)_this)->t = trpt->bup.oval;
		;
		;
		goto R999;

	case 82: // STATE 33
		;
		now.ct2 = trpt->bup.oval;
		;
		goto R999;

	case 83: // STATE 34
		;
		((P3 *)_this)->r = trpt->bup.oval;
		;
		goto R999;

	case 84: // STATE 36
		;
		now.ct2 = trpt->bup.oval;
		;
		goto R999;

	case 85: // STATE 37
		;
		((P3 *)_this)->r = trpt->bup.oval;
		;
		goto R999;

	case 86: // STATE 42
		;
	/* 0 */	((P3 *)_this)->t = trpt->bup.oval;
		;
		;
		goto R999;

	case 87: // STATE 43
		;
		((P3 *)_this)->r = trpt->bup.oval;
		;
		goto R999;

	case 88: // STATE 44
		;
	/* 0 */	((P3 *)_this)->t = trpt->bup.oval;
		;
		;
		goto R999;

	case 89: // STATE 45
		;
		now.ct2 = trpt->bup.oval;
		;
		goto R999;

	case 90: // STATE 46
		;
		((P3 *)_this)->r = trpt->bup.oval;
		;
		goto R999;

	case 91: // STATE 49
		;
		_m = unsend(now.cable1_r_out);
		;
		goto R999;

		 /* PROC network_from_payment_to_point */

	case 92: // STATE 1
		;
		XX = 1;
		unrecv(now.cable2_s_out, XX-1, 0, ((P2 *)_this)->m, 1);
		unrecv(now.cable2_s_out, XX-1, 1, ((int)((P2 *)_this)->t), 0);
		unrecv(now.cable2_s_out, XX-1, 2, ((int)now.type), 0);
		((P2 *)_this)->m = trpt->bup.ovals[0];
		((P2 *)_this)->t = trpt->bup.ovals[1];
		now.type = trpt->bup.ovals[2];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 93: // STATE 2
		;
		_m = unsend(now.cable2_r_in);
		;
		goto R999;

	case 94: // STATE 3
		;
	/* 1 */	((P2 *)_this)->t = trpt->bup.ovals[4];
	/* 0 */	((P2 *)_this)->m = trpt->bup.ovals[3];
		XX = 1;
		unrecv(now.cable2_s_out, XX-1, 0, ((P2 *)_this)->m, 1);
		unrecv(now.cable2_s_out, XX-1, 1, ((int)((P2 *)_this)->t), 0);
		unrecv(now.cable2_s_out, XX-1, 2, ((int)now.type), 0);
		((P2 *)_this)->m = trpt->bup.ovals[0];
		((P2 *)_this)->t = trpt->bup.ovals[1];
		now.type = trpt->bup.ovals[2];
		;
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;

	case 95: // STATE 4
		;
		XX = 1;
		unrecv(now.cable2_r_out, XX-1, 0, ((P2 *)_this)->m, 1);
		unrecv(now.cable2_r_out, XX-1, 1, ((int)((P2 *)_this)->t), 0);
		unrecv(now.cable2_r_out, XX-1, 2, ((int)((P2 *)_this)->r), 0);
		((P2 *)_this)->m = trpt->bup.ovals[0];
		((P2 *)_this)->t = trpt->bup.ovals[1];
		((P2 *)_this)->r = trpt->bup.ovals[2];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 96: // STATE 5
		;
		_m = unsend(now.cable2_s_in);
		;
		goto R999;

	case 97: // STATE 6
		;
	/* 2 */	((P2 *)_this)->r = trpt->bup.ovals[5];
	/* 1 */	((P2 *)_this)->t = trpt->bup.ovals[4];
	/* 0 */	((P2 *)_this)->m = trpt->bup.ovals[3];
		XX = 1;
		unrecv(now.cable2_r_out, XX-1, 0, ((P2 *)_this)->m, 1);
		unrecv(now.cable2_r_out, XX-1, 1, ((int)((P2 *)_this)->t), 0);
		unrecv(now.cable2_r_out, XX-1, 2, ((int)((P2 *)_this)->r), 0);
		((P2 *)_this)->m = trpt->bup.ovals[0];
		((P2 *)_this)->t = trpt->bup.ovals[1];
		((P2 *)_this)->r = trpt->bup.ovals[2];
		;
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;

	case 98: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC network_from_payment_to_card */

	case 99: // STATE 1
		;
		XX = 1;
		unrecv(now.cable1_s_out, XX-1, 0, ((P1 *)_this)->m, 1);
		unrecv(now.cable1_s_out, XX-1, 1, ((int)((P1 *)_this)->t), 0);
		unrecv(now.cable1_s_out, XX-1, 2, ((int)now.type), 0);
		((P1 *)_this)->m = trpt->bup.ovals[0];
		((P1 *)_this)->t = trpt->bup.ovals[1];
		now.type = trpt->bup.ovals[2];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 100: // STATE 2
		;
		_m = unsend(now.cable1_r_in);
		;
		goto R999;

	case 101: // STATE 3
		;
	/* 1 */	((P1 *)_this)->t = trpt->bup.ovals[4];
	/* 0 */	((P1 *)_this)->m = trpt->bup.ovals[3];
		XX = 1;
		unrecv(now.cable1_s_out, XX-1, 0, ((P1 *)_this)->m, 1);
		unrecv(now.cable1_s_out, XX-1, 1, ((int)((P1 *)_this)->t), 0);
		unrecv(now.cable1_s_out, XX-1, 2, ((int)now.type), 0);
		((P1 *)_this)->m = trpt->bup.ovals[0];
		((P1 *)_this)->t = trpt->bup.ovals[1];
		now.type = trpt->bup.ovals[2];
		;
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;

	case 102: // STATE 4
		;
		XX = 1;
		unrecv(now.cable1_r_out, XX-1, 0, ((P1 *)_this)->m, 1);
		unrecv(now.cable1_r_out, XX-1, 1, ((int)((P1 *)_this)->t), 0);
		unrecv(now.cable1_r_out, XX-1, 2, ((int)((P1 *)_this)->r), 0);
		((P1 *)_this)->m = trpt->bup.ovals[0];
		((P1 *)_this)->t = trpt->bup.ovals[1];
		((P1 *)_this)->r = trpt->bup.ovals[2];
		;
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 103: // STATE 5
		;
		_m = unsend(now.cable1_s_in);
		;
		goto R999;

	case 104: // STATE 6
		;
	/* 2 */	((P1 *)_this)->r = trpt->bup.ovals[5];
	/* 1 */	((P1 *)_this)->t = trpt->bup.ovals[4];
	/* 0 */	((P1 *)_this)->m = trpt->bup.ovals[3];
		XX = 1;
		unrecv(now.cable1_r_out, XX-1, 0, ((P1 *)_this)->m, 1);
		unrecv(now.cable1_r_out, XX-1, 1, ((int)((P1 *)_this)->t), 0);
		unrecv(now.cable1_r_out, XX-1, 2, ((int)((P1 *)_this)->r), 0);
		((P1 *)_this)->m = trpt->bup.ovals[0];
		((P1 *)_this)->t = trpt->bup.ovals[1];
		((P1 *)_this)->r = trpt->bup.ovals[2];
		;
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;

	case 105: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC payment_service */

	case 106: // STATE 1
		;
		_m = unsend(now.cable1_s_out);
		;
		goto R999;

	case 107: // STATE 2
		;
		XX = 1;
		unrecv(now.cable1_s_in, XX-1, 0, 1, 1);
		unrecv(now.cable1_s_in, XX-1, 1, ((int)now.tran), 0);
		unrecv(now.cable1_s_in, XX-1, 2, ((int)((P0 *)_this)->r), 0);
		now.tran = trpt->bup.ovals[0];
		((P0 *)_this)->r = trpt->bup.ovals[1];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 108: // STATE 3
		;
	/* 0 */	((P0 *)_this)->r = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		
	case 119: // STATE 16
		;
		now.tran = trpt->bup.oval;
		;
		goto R999;

	case 120: // STATE 18
		;
		now.tran = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		
	case 138: // STATE 45
		;
		now.tran = trpt->bup.oval;
		;
		goto R999;

	case 139: // STATE 47
		;
		now.tran = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		;
		
	case 143: // STATE 61
		;
		_m = unsend(now.cable2_s_out);
		;
		goto R999;

	case 144: // STATE 62
		;
		XX = 1;
		unrecv(now.cable2_s_in, XX-1, 0, 1, 1);
		unrecv(now.cable2_s_in, XX-1, 1, ((int)now.tran), 0);
		unrecv(now.cable2_s_in, XX-1, 2, ((int)((P0 *)_this)->r), 0);
		now.tran = trpt->bup.ovals[0];
		((P0 *)_this)->r = trpt->bup.ovals[1];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 145: // STATE 63
		;
	/* 0 */	((P0 *)_this)->r = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		
	case 156: // STATE 76
		;
		now.tran = trpt->bup.oval;
		;
		goto R999;

	case 157: // STATE 78
		;
		now.tran = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		
	case 170: // STATE 97
		;
		now.tran = trpt->bup.oval;
		;
		goto R999;

	case 171: // STATE 99
		;
		now.tran = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		
	case 183: // STATE 123
		;
		_m = unsend(now.cable1_s_out);
		;
		goto R999;

	case 184: // STATE 124
		;
		XX = 1;
		unrecv(now.cable1_s_in, XX-1, 0, 1, 1);
		unrecv(now.cable1_s_in, XX-1, 1, ((int)now.tran), 0);
		unrecv(now.cable1_s_in, XX-1, 2, ((int)((P0 *)_this)->r), 0);
		now.tran = trpt->bup.ovals[0];
		((P0 *)_this)->r = trpt->bup.ovals[1];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		
	case 196: // STATE 144
		;
		_m = unsend(now.cable2_s_out);
		;
		goto R999;

	case 197: // STATE 145
		;
		XX = 1;
		unrecv(now.cable2_s_in, XX-1, 0, 1, 1);
		unrecv(now.cable2_s_in, XX-1, 1, ((int)now.tran), 0);
		unrecv(now.cable2_s_in, XX-1, 2, ((int)((P0 *)_this)->r), 0);
		now.tran = trpt->bup.ovals[0];
		((P0 *)_this)->r = trpt->bup.ovals[1];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		
	case 207: // STATE 157
		;
		now.tran = trpt->bup.oval;
		;
		goto R999;

	case 208: // STATE 159
		;
		now.tran = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 211: // STATE 171
		;
		p_restor(II);
		;
		;
		goto R999;
	}

