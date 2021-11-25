#define rand	pan_rand
#define pthread_equal(a,b)	((a)==(b))
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* PROC payment_point_service */
	case 3: // STATE 1 - payment-distribution-system2.pml:166 - [cable2_r_in?msg,t] (0:0:1 - 1)
		reached[4][1] = 1;
		if (q_len(now.cable2_r_in) == 0) continue;

		XX=1;
		if (2 != qrecv(now.cable2_r_in, 0, 0, 0)) continue;
		(trpt+1)->bup.oval = ((int)((P4 *)_this)->t);
		;
		((P4 *)_this)->t = qrecv(now.cable2_r_in, XX-1, 1, 1);
#ifdef VAR_RANGES
		logval("payment_point_service:t", ((int)((P4 *)_this)->t));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.cable2_r_in);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P4 *)_this)->t)); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 4: // STATE 2 - payment-distribution-system2.pml:170 - [(((t==0)&&(pt0==0)))] (0:0:1 - 1)
		IfNotBlocked
		reached[4][2] = 1;
		if (!(((((int)((P4 *)_this)->t)==0)&&(((int)now.pt0)==0))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: t */  (trpt+1)->bup.oval = ((P4 *)_this)->t;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P4 *)_this)->t = 0;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 3 - payment-distribution-system2.pml:171 - [t0_balance = (t0_balance-3)] (0:0:1 - 1)
		IfNotBlocked
		reached[4][3] = 1;
		(trpt+1)->bup.oval = ((int)now.t0_balance);
		now.t0_balance = (((int)now.t0_balance)-3);
#ifdef VAR_RANGES
		logval("t0_balance", ((int)now.t0_balance));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 4 - payment-distribution-system2.pml:172 - [assert((t0_balance==7))] (0:0:0 - 1)
		IfNotBlocked
		reached[4][4] = 1;
		spin_assert((((int)now.t0_balance)==7), "(t0_balance==7)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 5 - payment-distribution-system2.pml:173 - [pt0 = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[4][5] = 1;
		(trpt+1)->bup.oval = ((int)now.pt0);
		now.pt0 = 1;
#ifdef VAR_RANGES
		logval("pt0", ((int)now.pt0));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 6 - payment-distribution-system2.pml:174 - [r = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[4][6] = 1;
		(trpt+1)->bup.oval = ((int)((P4 *)_this)->r);
		((P4 *)_this)->r = 1;
#ifdef VAR_RANGES
		logval("payment_point_service:r", ((int)((P4 *)_this)->r));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 7 - payment-distribution-system2.pml:177 - [(((t==0)&&(pt0==1)))] (0:0:1 - 1)
		IfNotBlocked
		reached[4][7] = 1;
		if (!(((((int)((P4 *)_this)->t)==0)&&(((int)now.pt0)==1))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: t */  (trpt+1)->bup.oval = ((P4 *)_this)->t;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P4 *)_this)->t = 0;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 8 - payment-distribution-system2.pml:177 - [r = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[4][8] = 1;
		(trpt+1)->bup.oval = ((int)((P4 *)_this)->r);
		((P4 *)_this)->r = 0;
#ifdef VAR_RANGES
		logval("payment_point_service:r", ((int)((P4 *)_this)->r));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 9 - payment-distribution-system2.pml:181 - [(((t==1)&&(pt1==0)))] (0:0:1 - 1)
		IfNotBlocked
		reached[4][9] = 1;
		if (!(((((int)((P4 *)_this)->t)==1)&&(((int)now.pt1)==0))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: t */  (trpt+1)->bup.oval = ((P4 *)_this)->t;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P4 *)_this)->t = 0;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 10 - payment-distribution-system2.pml:181 - [pt1 = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[4][10] = 1;
		(trpt+1)->bup.oval = ((int)now.pt1);
		now.pt1 = 1;
#ifdef VAR_RANGES
		logval("pt1", ((int)now.pt1));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 11 - payment-distribution-system2.pml:181 - [r = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[4][11] = 1;
		(trpt+1)->bup.oval = ((int)((P4 *)_this)->r);
		((P4 *)_this)->r = 1;
#ifdef VAR_RANGES
		logval("payment_point_service:r", ((int)((P4 *)_this)->r));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 12 - payment-distribution-system2.pml:183 - [(((t==1)&&(pt1==1)))] (0:0:1 - 1)
		IfNotBlocked
		reached[4][12] = 1;
		if (!(((((int)((P4 *)_this)->t)==1)&&(((int)now.pt1)==1))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: t */  (trpt+1)->bup.oval = ((P4 *)_this)->t;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P4 *)_this)->t = 0;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 13 - payment-distribution-system2.pml:183 - [r = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[4][13] = 1;
		(trpt+1)->bup.oval = ((int)((P4 *)_this)->r);
		((P4 *)_this)->r = 0;
#ifdef VAR_RANGES
		logval("payment_point_service:r", ((int)((P4 *)_this)->r));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 14 - payment-distribution-system2.pml:187 - [(((t==2)&&(pt2==0)))] (0:0:1 - 1)
		IfNotBlocked
		reached[4][14] = 1;
		if (!(((((int)((P4 *)_this)->t)==2)&&(((int)now.pt2)==0))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: t */  (trpt+1)->bup.oval = ((P4 *)_this)->t;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P4 *)_this)->t = 0;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 15 - payment-distribution-system2.pml:187 - [pt2 = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[4][15] = 1;
		(trpt+1)->bup.oval = ((int)now.pt2);
		now.pt2 = 1;
#ifdef VAR_RANGES
		logval("pt2", ((int)now.pt2));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 16 - payment-distribution-system2.pml:187 - [r = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[4][16] = 1;
		(trpt+1)->bup.oval = ((int)((P4 *)_this)->r);
		((P4 *)_this)->r = 1;
#ifdef VAR_RANGES
		logval("payment_point_service:r", ((int)((P4 *)_this)->r));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 17 - payment-distribution-system2.pml:189 - [(((t==2)&&(pt2==1)))] (0:0:1 - 1)
		IfNotBlocked
		reached[4][17] = 1;
		if (!(((((int)((P4 *)_this)->t)==2)&&(((int)now.pt2)==1))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: t */  (trpt+1)->bup.oval = ((P4 *)_this)->t;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P4 *)_this)->t = 0;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 18 - payment-distribution-system2.pml:189 - [r = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[4][18] = 1;
		(trpt+1)->bup.oval = ((int)((P4 *)_this)->r);
		((P4 *)_this)->r = 0;
#ifdef VAR_RANGES
		logval("payment_point_service:r", ((int)((P4 *)_this)->r));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 21 - payment-distribution-system2.pml:192 - [cable2_r_out!ack,tran2,r] (0:0:0 - 7)
		IfNotBlocked
		reached[4][21] = 1;
		if (q_full(now.cable2_r_out))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.cable2_r_out);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)now.tran2)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P4 *)_this)->r)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.cable2_r_out, 0, 1, ((int)now.tran2), ((int)((P4 *)_this)->r), 3);
		_m = 2; goto P999; /* 0 */

		 /* PROC payment_card_service */
	case 22: // STATE 1 - payment-distribution-system2.pml:136 - [cable1_r_in?msg,t] (0:0:1 - 1)
		reached[3][1] = 1;
		if (q_len(now.cable1_r_in) == 0) continue;

		XX=1;
		if (2 != qrecv(now.cable1_r_in, 0, 0, 0)) continue;
		(trpt+1)->bup.oval = ((int)((P3 *)_this)->t);
		;
		((P3 *)_this)->t = qrecv(now.cable1_r_in, XX-1, 1, 1);
#ifdef VAR_RANGES
		logval("payment_card_service:t", ((int)((P3 *)_this)->t));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.cable1_r_in);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P3 *)_this)->t)); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 23: // STATE 2 - payment-distribution-system2.pml:140 - [(((t==0)&&(ct0==0)))] (0:0:1 - 1)
		IfNotBlocked
		reached[3][2] = 1;
		if (!(((((int)((P3 *)_this)->t)==0)&&(((int)now.ct0)==0))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: t */  (trpt+1)->bup.oval = ((P3 *)_this)->t;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P3 *)_this)->t = 0;
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 3 - payment-distribution-system2.pml:140 - [ct0 = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[3][3] = 1;
		(trpt+1)->bup.oval = ((int)now.ct0);
		now.ct0 = 1;
#ifdef VAR_RANGES
		logval("ct0", ((int)now.ct0));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 4 - payment-distribution-system2.pml:140 - [r = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[3][4] = 1;
		(trpt+1)->bup.oval = ((int)((P3 *)_this)->r);
		((P3 *)_this)->r = 1;
#ifdef VAR_RANGES
		logval("payment_card_service:r", ((int)((P3 *)_this)->r));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 5 - payment-distribution-system2.pml:142 - [(((t==0)&&(ct0==1)))] (0:0:1 - 1)
		IfNotBlocked
		reached[3][5] = 1;
		if (!(((((int)((P3 *)_this)->t)==0)&&(((int)now.ct0)==1))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: t */  (trpt+1)->bup.oval = ((P3 *)_this)->t;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P3 *)_this)->t = 0;
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 6 - payment-distribution-system2.pml:142 - [r = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[3][6] = 1;
		(trpt+1)->bup.oval = ((int)((P3 *)_this)->r);
		((P3 *)_this)->r = 0;
#ifdef VAR_RANGES
		logval("payment_card_service:r", ((int)((P3 *)_this)->r));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 28: // STATE 7 - payment-distribution-system2.pml:146 - [(((t==1)&&(ct1==0)))] (0:0:1 - 1)
		IfNotBlocked
		reached[3][7] = 1;
		if (!(((((int)((P3 *)_this)->t)==1)&&(((int)now.ct1)==0))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: t */  (trpt+1)->bup.oval = ((P3 *)_this)->t;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P3 *)_this)->t = 0;
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 8 - payment-distribution-system2.pml:146 - [ct1 = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[3][8] = 1;
		(trpt+1)->bup.oval = ((int)now.ct1);
		now.ct1 = 1;
#ifdef VAR_RANGES
		logval("ct1", ((int)now.ct1));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 30: // STATE 9 - payment-distribution-system2.pml:146 - [r = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[3][9] = 1;
		(trpt+1)->bup.oval = ((int)((P3 *)_this)->r);
		((P3 *)_this)->r = 1;
#ifdef VAR_RANGES
		logval("payment_card_service:r", ((int)((P3 *)_this)->r));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 10 - payment-distribution-system2.pml:148 - [(((t==1)&&(ct1==1)))] (0:0:1 - 1)
		IfNotBlocked
		reached[3][10] = 1;
		if (!(((((int)((P3 *)_this)->t)==1)&&(((int)now.ct1)==1))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: t */  (trpt+1)->bup.oval = ((P3 *)_this)->t;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P3 *)_this)->t = 0;
		_m = 3; goto P999; /* 0 */
	case 32: // STATE 11 - payment-distribution-system2.pml:148 - [r = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[3][11] = 1;
		(trpt+1)->bup.oval = ((int)((P3 *)_this)->r);
		((P3 *)_this)->r = 0;
#ifdef VAR_RANGES
		logval("payment_card_service:r", ((int)((P3 *)_this)->r));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 33: // STATE 12 - payment-distribution-system2.pml:152 - [(((t==2)&&(ct2==0)))] (0:0:1 - 1)
		IfNotBlocked
		reached[3][12] = 1;
		if (!(((((int)((P3 *)_this)->t)==2)&&(((int)now.ct2)==0))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: t */  (trpt+1)->bup.oval = ((P3 *)_this)->t;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P3 *)_this)->t = 0;
		_m = 3; goto P999; /* 0 */
	case 34: // STATE 13 - payment-distribution-system2.pml:152 - [ct2 = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[3][13] = 1;
		(trpt+1)->bup.oval = ((int)now.ct2);
		now.ct2 = 1;
#ifdef VAR_RANGES
		logval("ct2", ((int)now.ct2));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 35: // STATE 14 - payment-distribution-system2.pml:152 - [r = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[3][14] = 1;
		(trpt+1)->bup.oval = ((int)((P3 *)_this)->r);
		((P3 *)_this)->r = 1;
#ifdef VAR_RANGES
		logval("payment_card_service:r", ((int)((P3 *)_this)->r));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 36: // STATE 15 - payment-distribution-system2.pml:154 - [(((t==2)&&(ct2==1)))] (0:0:1 - 1)
		IfNotBlocked
		reached[3][15] = 1;
		if (!(((((int)((P3 *)_this)->t)==2)&&(((int)now.ct2)==1))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: t */  (trpt+1)->bup.oval = ((P3 *)_this)->t;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P3 *)_this)->t = 0;
		_m = 3; goto P999; /* 0 */
	case 37: // STATE 16 - payment-distribution-system2.pml:154 - [r = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[3][16] = 1;
		(trpt+1)->bup.oval = ((int)((P3 *)_this)->r);
		((P3 *)_this)->r = 0;
#ifdef VAR_RANGES
		logval("payment_card_service:r", ((int)((P3 *)_this)->r));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 38: // STATE 19 - payment-distribution-system2.pml:157 - [cable1_r_out!ack,tran1,r] (0:0:0 - 7)
		IfNotBlocked
		reached[3][19] = 1;
		if (q_full(now.cable1_r_out))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.cable1_r_out);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)now.tran1)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P3 *)_this)->r)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.cable1_r_out, 0, 1, ((int)now.tran1), ((int)((P3 *)_this)->r), 3);
		_m = 2; goto P999; /* 0 */

		 /* PROC network_from_payment_to_point */
	case 39: // STATE 1 - payment-distribution-system2.pml:125 - [cable2_s_out?m,c] (0:0:2 - 1)
		reached[2][1] = 1;
		if (q_len(now.cable2_s_out) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P2 *)_this)->m;
		(trpt+1)->bup.ovals[1] = ((int)((P2 *)_this)->c);
		;
		((P2 *)_this)->m = qrecv(now.cable2_s_out, XX-1, 0, 0);
#ifdef VAR_RANGES
		logval("network_from_payment_to_point:m", ((P2 *)_this)->m);
#endif
		;
		((P2 *)_this)->c = qrecv(now.cable2_s_out, XX-1, 1, 1);
#ifdef VAR_RANGES
		logval("network_from_payment_to_point:c", ((int)((P2 *)_this)->c));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.cable2_s_out);
		sprintf(simtmp, "%d", ((P2 *)_this)->m); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)_this)->c)); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 40: // STATE 2 - payment-distribution-system2.pml:125 - [cable2_r_in!m,c] (0:0:0 - 1)
		IfNotBlocked
		reached[2][2] = 1;
		if (q_full(now.cable2_r_in))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.cable2_r_in);
		sprintf(simtmp, "%d", ((P2 *)_this)->m); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)_this)->c)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.cable2_r_in, 0, ((P2 *)_this)->m, ((int)((P2 *)_this)->c), 0, 2);
		_m = 2; goto P999; /* 0 */
	case 41: // STATE 3 - payment-distribution-system2.pml:127 - [cable2_r_out?m,c,r] (0:0:3 - 1)
		reached[2][3] = 1;
		if (q_len(now.cable2_r_out) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P2 *)_this)->m;
		(trpt+1)->bup.ovals[1] = ((int)((P2 *)_this)->c);
		(trpt+1)->bup.ovals[2] = ((int)((P2 *)_this)->r);
		;
		((P2 *)_this)->m = qrecv(now.cable2_r_out, XX-1, 0, 0);
#ifdef VAR_RANGES
		logval("network_from_payment_to_point:m", ((P2 *)_this)->m);
#endif
		;
		((P2 *)_this)->c = qrecv(now.cable2_r_out, XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("network_from_payment_to_point:c", ((int)((P2 *)_this)->c));
#endif
		;
		((P2 *)_this)->r = qrecv(now.cable2_r_out, XX-1, 2, 1);
#ifdef VAR_RANGES
		logval("network_from_payment_to_point:r", ((int)((P2 *)_this)->r));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.cable2_r_out);
		sprintf(simtmp, "%d", ((P2 *)_this)->m); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)_this)->c)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)_this)->r)); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 42: // STATE 4 - payment-distribution-system2.pml:127 - [cable2_s_in!m,c,r] (0:0:0 - 1)
		IfNotBlocked
		reached[2][4] = 1;
		if (q_full(now.cable2_s_in))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.cable2_s_in);
		sprintf(simtmp, "%d", ((P2 *)_this)->m); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)_this)->c)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)_this)->r)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.cable2_s_in, 0, ((P2 *)_this)->m, ((int)((P2 *)_this)->c), ((int)((P2 *)_this)->r), 3);
		_m = 2; goto P999; /* 0 */
	case 43: // STATE 8 - payment-distribution-system2.pml:130 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][8] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC network_from_payment_to_card */
	case 44: // STATE 1 - payment-distribution-system2.pml:113 - [cable1_s_out?m,c] (0:0:2 - 1)
		reached[1][1] = 1;
		if (q_len(now.cable1_s_out) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->m;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)_this)->c);
		;
		((P1 *)_this)->m = qrecv(now.cable1_s_out, XX-1, 0, 0);
#ifdef VAR_RANGES
		logval("network_from_payment_to_card:m", ((P1 *)_this)->m);
#endif
		;
		((P1 *)_this)->c = qrecv(now.cable1_s_out, XX-1, 1, 1);
#ifdef VAR_RANGES
		logval("network_from_payment_to_card:c", ((int)((P1 *)_this)->c));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.cable1_s_out);
		sprintf(simtmp, "%d", ((P1 *)_this)->m); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)_this)->c)); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 45: // STATE 2 - payment-distribution-system2.pml:113 - [cable1_r_in!m,c] (0:0:0 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		if (q_full(now.cable1_r_in))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.cable1_r_in);
		sprintf(simtmp, "%d", ((P1 *)_this)->m); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)_this)->c)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.cable1_r_in, 0, ((P1 *)_this)->m, ((int)((P1 *)_this)->c), 0, 2);
		_m = 2; goto P999; /* 0 */
	case 46: // STATE 3 - payment-distribution-system2.pml:115 - [cable1_r_out?m,c,r] (0:0:3 - 1)
		reached[1][3] = 1;
		if (q_len(now.cable1_r_out) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->m;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)_this)->c);
		(trpt+1)->bup.ovals[2] = ((int)((P1 *)_this)->r);
		;
		((P1 *)_this)->m = qrecv(now.cable1_r_out, XX-1, 0, 0);
#ifdef VAR_RANGES
		logval("network_from_payment_to_card:m", ((P1 *)_this)->m);
#endif
		;
		((P1 *)_this)->c = qrecv(now.cable1_r_out, XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("network_from_payment_to_card:c", ((int)((P1 *)_this)->c));
#endif
		;
		((P1 *)_this)->r = qrecv(now.cable1_r_out, XX-1, 2, 1);
#ifdef VAR_RANGES
		logval("network_from_payment_to_card:r", ((int)((P1 *)_this)->r));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.cable1_r_out);
		sprintf(simtmp, "%d", ((P1 *)_this)->m); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)_this)->c)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)_this)->r)); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 47: // STATE 4 - payment-distribution-system2.pml:115 - [cable1_s_in!m,c,r] (0:0:0 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		if (q_full(now.cable1_s_in))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.cable1_s_in);
		sprintf(simtmp, "%d", ((P1 *)_this)->m); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)_this)->c)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)_this)->r)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.cable1_s_in, 0, ((P1 *)_this)->m, ((int)((P1 *)_this)->c), ((int)((P1 *)_this)->r), 3);
		_m = 2; goto P999; /* 0 */
	case 48: // STATE 8 - payment-distribution-system2.pml:118 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][8] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC payment_service */
	case 49: // STATE 1 - payment-distribution-system2.pml:34 - [cable1_s_out!msg,tran1] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		if (q_full(now.cable1_s_out))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.cable1_s_out);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)now.tran1)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.cable1_s_out, 0, 2, ((int)now.tran1), 0, 2);
		_m = 2; goto P999; /* 0 */
	case 50: // STATE 2 - payment-distribution-system2.pml:36 - [cable1_s_in?ack,tran1,r] (0:0:2 - 1)
		reached[0][2] = 1;
		if (q_len(now.cable1_s_in) == 0) continue;

		XX=1;
		if (1 != qrecv(now.cable1_s_in, 0, 0, 0)) continue;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.tran1);
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)_this)->r);
		;
		now.tran1 = qrecv(now.cable1_s_in, XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("tran1", ((int)now.tran1));
#endif
		;
		((P0 *)_this)->r = qrecv(now.cable1_s_in, XX-1, 2, 1);
#ifdef VAR_RANGES
		logval("payment_service:r", ((int)((P0 *)_this)->r));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.cable1_s_in);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)now.tran1)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)_this)->r)); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 51: // STATE 3 - payment-distribution-system2.pml:37 - [printf('card tran:%d, done:%d\\n',tran1,r)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		Printf("card tran:%d, done:%d\n", ((int)now.tran1), ((int)((P0 *)_this)->r));
		_m = 3; goto P999; /* 0 */
	case 52: // STATE 4 - payment-distribution-system2.pml:24 - [((tran1<2))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][4] = 1;
		if (!((((int)now.tran1)<2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 53: // STATE 5 - payment-distribution-system2.pml:24 - [tran1 = (tran1+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][5] = 1;
		(trpt+1)->bup.oval = ((int)now.tran1);
		now.tran1 = (((int)now.tran1)+1);
#ifdef VAR_RANGES
		logval("tran1", ((int)now.tran1));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 54: // STATE 7 - payment-distribution-system2.pml:25 - [tran1 = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][7] = 1;
		(trpt+1)->bup.oval = ((int)now.tran1);
		now.tran1 = 0;
#ifdef VAR_RANGES
		logval("tran1", ((int)now.tran1));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 55: // STATE 13 - payment-distribution-system2.pml:40 - [cable2_s_out!msg,tran2] (0:0:0 - 1)
		IfNotBlocked
		reached[0][13] = 1;
		if (q_full(now.cable2_s_out))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.cable2_s_out);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)now.tran2)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.cable2_s_out, 0, 2, ((int)now.tran2), 0, 2);
		_m = 2; goto P999; /* 0 */
	case 56: // STATE 14 - payment-distribution-system2.pml:42 - [cable2_s_in?ack,tran2,r] (0:0:2 - 1)
		reached[0][14] = 1;
		if (q_len(now.cable2_s_in) == 0) continue;

		XX=1;
		if (1 != qrecv(now.cable2_s_in, 0, 0, 0)) continue;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.tran2);
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)_this)->r);
		;
		now.tran2 = qrecv(now.cable2_s_in, XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("tran2", ((int)now.tran2));
#endif
		;
		((P0 *)_this)->r = qrecv(now.cable2_s_in, XX-1, 2, 1);
#ifdef VAR_RANGES
		logval("payment_service:r", ((int)((P0 *)_this)->r));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.cable2_s_in);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)now.tran2)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)_this)->r)); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 57: // STATE 15 - payment-distribution-system2.pml:43 - [printf('point tran:%d, done:%d\\n',tran2,r)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][15] = 1;
		Printf("point tran:%d, done:%d\n", ((int)now.tran2), ((int)((P0 *)_this)->r));
		_m = 3; goto P999; /* 0 */
	case 58: // STATE 16 - payment-distribution-system2.pml:24 - [((tran2<2))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][16] = 1;
		if (!((((int)now.tran2)<2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 59: // STATE 17 - payment-distribution-system2.pml:24 - [tran2 = (tran2+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][17] = 1;
		(trpt+1)->bup.oval = ((int)now.tran2);
		now.tran2 = (((int)now.tran2)+1);
#ifdef VAR_RANGES
		logval("tran2", ((int)now.tran2));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 60: // STATE 19 - payment-distribution-system2.pml:25 - [tran2 = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][19] = 1;
		(trpt+1)->bup.oval = ((int)now.tran2);
		now.tran2 = 0;
#ifdef VAR_RANGES
		logval("tran2", ((int)now.tran2));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 61: // STATE 28 - payment-distribution-system2.pml:106 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][28] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

