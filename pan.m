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

		 /* CLAIM p3 */
	case 3: // STATE 1 - _spin_nvr.tmp:28 - [((((!((payment_service._p==response))&&(network_from_payment_to_card._p==forwarded1))&&(network_from_payment_to_card._p==forwarded2))&&(payment_service._p==request)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][1] = 1;
		if (!(((( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==52))&&(((int)((P1 *)Pptr(f_pid(1)))->_p)==2))&&(((int)((P1 *)Pptr(f_pid(1)))->_p)==5))&&(((int)((P0 *)Pptr(f_pid(0)))->_p)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 3 - _spin_nvr.tmp:29 - [(((!((payment_service._p==response))&&(network_from_payment_to_card._p==forwarded1))&&(payment_service._p==request)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][3] = 1;
		if (!((( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==52))&&(((int)((P1 *)Pptr(f_pid(1)))->_p)==2))&&(((int)((P0 *)Pptr(f_pid(0)))->_p)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 5 - _spin_nvr.tmp:30 - [(((!((payment_service._p==response))&&(network_from_payment_to_card._p==forwarded2))&&(payment_service._p==request)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported5 = 0;
			if (verbose && !reported5)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported5 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported5 = 0;
			if (verbose && !reported5)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported5 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][5] = 1;
		if (!((( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==52))&&(((int)((P1 *)Pptr(f_pid(1)))->_p)==5))&&(((int)((P0 *)Pptr(f_pid(0)))->_p)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 7 - _spin_nvr.tmp:31 - [((!((payment_service._p==response))&&(payment_service._p==request)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported7 = 0;
			if (verbose && !reported7)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported7 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported7 = 0;
			if (verbose && !reported7)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported7 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][7] = 1;
		if (!(( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==52))&&(((int)((P0 *)Pptr(f_pid(0)))->_p)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 14 - _spin_nvr.tmp:36 - [(!((payment_service._p==response)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported14 = 0;
			if (verbose && !reported14)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported14 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported14 = 0;
			if (verbose && !reported14)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported14 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][14] = 1;
		if (!( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==52))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 19 - _spin_nvr.tmp:40 - [((!((payment_service._p==response))&&(network_from_payment_to_card._p==forwarded2)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported19 = 0;
			if (verbose && !reported19)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported19 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported19 = 0;
			if (verbose && !reported19)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported19 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][19] = 1;
		if (!(( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==52))&&(((int)((P1 *)Pptr(f_pid(1)))->_p)==5))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 21 - _spin_nvr.tmp:41 - [(!((payment_service._p==response)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported21 = 0;
			if (verbose && !reported21)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported21 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported21 = 0;
			if (verbose && !reported21)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported21 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][21] = 1;
		if (!( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==52))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 26 - _spin_nvr.tmp:45 - [((!((payment_service._p==response))&&(network_from_payment_to_card._p==forwarded1)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported26 = 0;
			if (verbose && !reported26)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported26 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported26 = 0;
			if (verbose && !reported26)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported26 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][26] = 1;
		if (!(( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==52))&&(((int)((P1 *)Pptr(f_pid(1)))->_p)==2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 28 - _spin_nvr.tmp:46 - [(!((payment_service._p==response)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported28 = 0;
			if (verbose && !reported28)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported28 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported28 = 0;
			if (verbose && !reported28)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported28 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][28] = 1;
		if (!( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==52))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 33 - _spin_nvr.tmp:50 - [(((!((payment_service._p==response))&&(network_from_payment_to_card._p==forwarded1))&&(network_from_payment_to_card._p==forwarded2)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported33 = 0;
			if (verbose && !reported33)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported33 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported33 = 0;
			if (verbose && !reported33)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported33 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][33] = 1;
		if (!((( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==52))&&(((int)((P1 *)Pptr(f_pid(1)))->_p)==2))&&(((int)((P1 *)Pptr(f_pid(1)))->_p)==5))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 35 - _spin_nvr.tmp:51 - [((!((payment_service._p==response))&&(network_from_payment_to_card._p==forwarded1)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported35 = 0;
			if (verbose && !reported35)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported35 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported35 = 0;
			if (verbose && !reported35)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported35 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][35] = 1;
		if (!(( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==52))&&(((int)((P1 *)Pptr(f_pid(1)))->_p)==2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 37 - _spin_nvr.tmp:52 - [((!((payment_service._p==response))&&(network_from_payment_to_card._p==forwarded2)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported37 = 0;
			if (verbose && !reported37)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported37 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported37 = 0;
			if (verbose && !reported37)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported37 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][37] = 1;
		if (!(( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==52))&&(((int)((P1 *)Pptr(f_pid(1)))->_p)==5))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 39 - _spin_nvr.tmp:53 - [(!((payment_service._p==response)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported39 = 0;
			if (verbose && !reported39)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported39 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported39 = 0;
			if (verbose && !reported39)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported39 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][39] = 1;
		if (!( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==52))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 44 - _spin_nvr.tmp:55 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported44 = 0;
			if (verbose && !reported44)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported44 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported44 = 0;
			if (verbose && !reported44)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported44 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][44] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM p2 */
	case 17: // STATE 1 - _spin_nvr.tmp:14 - [((!(!((payment_service._p==request)))&&!(!((payment_service._p==response)))))] (6:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][1] = 1;
		if (!(( !( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==1)))&& !( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==52))))))
			continue;
		/* merge: assert(!((!(!((payment_service._p==request)))&&!(!((payment_service._p==response))))))(0, 2, 6) */
		reached[7][2] = 1;
		spin_assert( !(( !( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==1)))&& !( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==52))))), " !(( !( !((payment_service._p==request)))&& !( !((payment_service._p==response)))))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[7][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 18: // STATE 4 - _spin_nvr.tmp:15 - [(!(!((payment_service._p==request))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported4 = 0;
			if (verbose && !reported4)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported4 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported4 = 0;
			if (verbose && !reported4)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported4 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][4] = 1;
		if (!( !( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 9 - _spin_nvr.tmp:19 - [(!(!((payment_service._p==response))))] (14:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported9 = 0;
			if (verbose && !reported9)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported9 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported9 = 0;
			if (verbose && !reported9)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported9 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][9] = 1;
		if (!( !( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==52)))))
			continue;
		/* merge: assert(!(!(!((payment_service._p==response)))))(0, 10, 14) */
		reached[7][10] = 1;
		spin_assert( !( !( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==52)))), " !( !( !((payment_service._p==response))))", II, tt, t);
		/* merge: .(goto)(0, 15, 14) */
		reached[7][15] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 20: // STATE 18 - _spin_nvr.tmp:24 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported18 = 0;
			if (verbose && !reported18)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported18 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported18 = 0;
			if (verbose && !reported18)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported18 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][18] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM p1 */
	case 21: // STATE 1 - _spin_nvr.tmp:3 - [((!(!((payment_service._p==request)))&&!((payment_service._p==response))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][1] = 1;
		if (!(( !( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==1)))&& !((((int)((P0 *)Pptr(f_pid(0)))->_p)==52)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 8 - _spin_nvr.tmp:8 - [(!((payment_service._p==response)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][8] = 1;
		if (!( !((((int)((P0 *)Pptr(f_pid(0)))->_p)==52))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 13 - _spin_nvr.tmp:10 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC :init: */
	case 24: // STATE 1 - payment-distribution-system.pml:281 - [(run payment_service())] (0:0:0 - 1)
		IfNotBlocked
		reached[5][1] = 1;
		if (!(addproc(II, 1, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 2 - payment-distribution-system.pml:282 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[5][2] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC payment_point_service */
	case 26: // STATE 1 - payment-distribution-system.pml:237 - [cable2_r_in?msg,t,type] (0:0:2 - 1)
		reached[4][1] = 1;
		if (q_len(now.cable2_r_in) == 0) continue;

		XX=1;
		if (2 != qrecv(now.cable2_r_in, 0, 0, 0)) continue;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P4 *)_this)->t);
		(trpt+1)->bup.ovals[1] = ((int)now.type);
		;
		((P4 *)_this)->t = qrecv(now.cable2_r_in, XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("payment_point_service:t", ((int)((P4 *)_this)->t));
#endif
		;
		now.type = qrecv(now.cable2_r_in, XX-1, 2, 1);
#ifdef VAR_RANGES
		logval("type", ((int)now.type));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.cable2_r_in);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P4 *)_this)->t)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)now.type)); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 27: // STATE 2 - payment-distribution-system.pml:241 - [((((t==0)&&(pt0==0))&&(type==1)))] (0:0:1 - 1)
		IfNotBlocked
		reached[4][2] = 1;
		if (!((((((int)((P4 *)_this)->t)==0)&&(((int)now.pt0)==0))&&(((int)now.type)==1))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: t */  (trpt+1)->bup.oval = ((P4 *)_this)->t;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P4 *)_this)->t = 0;
		_m = 3; goto P999; /* 0 */
	case 28: // STATE 3 - payment-distribution-system.pml:243 - [pt0 = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[4][3] = 1;
		(trpt+1)->bup.oval = ((int)now.pt0);
		now.pt0 = 1;
#ifdef VAR_RANGES
		logval("pt0", ((int)now.pt0));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 4 - payment-distribution-system.pml:243 - [r = pt0] (0:0:1 - 1)
		IfNotBlocked
		reached[4][4] = 1;
		(trpt+1)->bup.oval = ((int)((P4 *)_this)->r);
		((P4 *)_this)->r = ((int)now.pt0);
#ifdef VAR_RANGES
		logval("payment_point_service:r", ((int)((P4 *)_this)->r));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 30: // STATE 5 - payment-distribution-system.pml:243 - [t0_balance = (t0_balance-3)] (0:0:1 - 1)
		IfNotBlocked
		reached[4][5] = 1;
		(trpt+1)->bup.oval = ((int)now.t0_balance);
		now.t0_balance = (((int)now.t0_balance)-3);
#ifdef VAR_RANGES
		logval("t0_balance", ((int)now.t0_balance));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 6 - payment-distribution-system.pml:243 - [assert((t0_balance==7))] (0:0:0 - 1)
		IfNotBlocked
		reached[4][6] = 1;
		spin_assert((((int)now.t0_balance)==7), "(t0_balance==7)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 32: // STATE 8 - payment-distribution-system.pml:244 - [pt0 = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[4][8] = 1;
		(trpt+1)->bup.oval = ((int)now.pt0);
		now.pt0 = 2;
#ifdef VAR_RANGES
		logval("pt0", ((int)now.pt0));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 33: // STATE 9 - payment-distribution-system.pml:244 - [r = pt0] (0:0:1 - 1)
		IfNotBlocked
		reached[4][9] = 1;
		(trpt+1)->bup.oval = ((int)((P4 *)_this)->r);
		((P4 *)_this)->r = ((int)now.pt0);
#ifdef VAR_RANGES
		logval("payment_point_service:r", ((int)((P4 *)_this)->r));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 34: // STATE 14 - payment-distribution-system.pml:247 - [((((t==0)&&(pt0!=0))&&(type==1)))] (0:0:1 - 1)
		IfNotBlocked
		reached[4][14] = 1;
		if (!((((((int)((P4 *)_this)->t)==0)&&(((int)now.pt0)!=0))&&(((int)now.type)==1))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: t */  (trpt+1)->bup.oval = ((P4 *)_this)->t;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P4 *)_this)->t = 0;
		_m = 3; goto P999; /* 0 */
	case 35: // STATE 15 - payment-distribution-system.pml:247 - [r = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[4][15] = 1;
		(trpt+1)->bup.oval = ((int)((P4 *)_this)->r);
		((P4 *)_this)->r = 3;
#ifdef VAR_RANGES
		logval("payment_point_service:r", ((int)((P4 *)_this)->r));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 36: // STATE 16 - payment-distribution-system.pml:249 - [(((t==0)&&(type==2)))] (0:0:1 - 1)
		IfNotBlocked
		reached[4][16] = 1;
		if (!(((((int)((P4 *)_this)->t)==0)&&(((int)now.type)==2))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: t */  (trpt+1)->bup.oval = ((P4 *)_this)->t;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P4 *)_this)->t = 0;
		_m = 3; goto P999; /* 0 */
	case 37: // STATE 17 - payment-distribution-system.pml:249 - [pt0 = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[4][17] = 1;
		(trpt+1)->bup.oval = ((int)now.pt0);
		now.pt0 = 0;
#ifdef VAR_RANGES
		logval("pt0", ((int)now.pt0));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 38: // STATE 18 - payment-distribution-system.pml:249 - [r = pt0] (0:0:1 - 1)
		IfNotBlocked
		reached[4][18] = 1;
		(trpt+1)->bup.oval = ((int)((P4 *)_this)->r);
		((P4 *)_this)->r = ((int)now.pt0);
#ifdef VAR_RANGES
		logval("payment_point_service:r", ((int)((P4 *)_this)->r));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 39: // STATE 19 - payment-distribution-system.pml:253 - [((((t==1)&&(pt1==0))&&(type==1)))] (0:0:1 - 1)
		IfNotBlocked
		reached[4][19] = 1;
		if (!((((((int)((P4 *)_this)->t)==1)&&(((int)now.pt1)==0))&&(((int)now.type)==1))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: t */  (trpt+1)->bup.oval = ((P4 *)_this)->t;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P4 *)_this)->t = 0;
		_m = 3; goto P999; /* 0 */
	case 40: // STATE 20 - payment-distribution-system.pml:255 - [pt1 = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[4][20] = 1;
		(trpt+1)->bup.oval = ((int)now.pt1);
		now.pt1 = 1;
#ifdef VAR_RANGES
		logval("pt1", ((int)now.pt1));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 41: // STATE 21 - payment-distribution-system.pml:255 - [r = pt1] (0:0:1 - 1)
		IfNotBlocked
		reached[4][21] = 1;
		(trpt+1)->bup.oval = ((int)((P4 *)_this)->r);
		((P4 *)_this)->r = ((int)now.pt1);
#ifdef VAR_RANGES
		logval("payment_point_service:r", ((int)((P4 *)_this)->r));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 42: // STATE 23 - payment-distribution-system.pml:256 - [pt1 = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[4][23] = 1;
		(trpt+1)->bup.oval = ((int)now.pt1);
		now.pt1 = 2;
#ifdef VAR_RANGES
		logval("pt1", ((int)now.pt1));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 43: // STATE 24 - payment-distribution-system.pml:256 - [r = pt1] (0:0:1 - 1)
		IfNotBlocked
		reached[4][24] = 1;
		(trpt+1)->bup.oval = ((int)((P4 *)_this)->r);
		((P4 *)_this)->r = ((int)now.pt1);
#ifdef VAR_RANGES
		logval("payment_point_service:r", ((int)((P4 *)_this)->r));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 44: // STATE 29 - payment-distribution-system.pml:259 - [((((t==1)&&(pt1!=0))&&(type==1)))] (0:0:1 - 1)
		IfNotBlocked
		reached[4][29] = 1;
		if (!((((((int)((P4 *)_this)->t)==1)&&(((int)now.pt1)!=0))&&(((int)now.type)==1))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: t */  (trpt+1)->bup.oval = ((P4 *)_this)->t;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P4 *)_this)->t = 0;
		_m = 3; goto P999; /* 0 */
	case 45: // STATE 30 - payment-distribution-system.pml:259 - [r = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[4][30] = 1;
		(trpt+1)->bup.oval = ((int)((P4 *)_this)->r);
		((P4 *)_this)->r = 3;
#ifdef VAR_RANGES
		logval("payment_point_service:r", ((int)((P4 *)_this)->r));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 46: // STATE 31 - payment-distribution-system.pml:261 - [(((t==1)&&(type==2)))] (0:0:1 - 1)
		IfNotBlocked
		reached[4][31] = 1;
		if (!(((((int)((P4 *)_this)->t)==1)&&(((int)now.type)==2))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: t */  (trpt+1)->bup.oval = ((P4 *)_this)->t;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P4 *)_this)->t = 0;
		_m = 3; goto P999; /* 0 */
	case 47: // STATE 32 - payment-distribution-system.pml:261 - [pt1 = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[4][32] = 1;
		(trpt+1)->bup.oval = ((int)now.pt1);
		now.pt1 = 0;
#ifdef VAR_RANGES
		logval("pt1", ((int)now.pt1));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 48: // STATE 33 - payment-distribution-system.pml:261 - [r = pt1] (0:0:1 - 1)
		IfNotBlocked
		reached[4][33] = 1;
		(trpt+1)->bup.oval = ((int)((P4 *)_this)->r);
		((P4 *)_this)->r = ((int)now.pt1);
#ifdef VAR_RANGES
		logval("payment_point_service:r", ((int)((P4 *)_this)->r));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 49: // STATE 34 - payment-distribution-system.pml:265 - [((((t==2)&&(pt2==0))&&(type==1)))] (0:0:1 - 1)
		IfNotBlocked
		reached[4][34] = 1;
		if (!((((((int)((P4 *)_this)->t)==2)&&(((int)now.pt2)==0))&&(((int)now.type)==1))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: t */  (trpt+1)->bup.oval = ((P4 *)_this)->t;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P4 *)_this)->t = 0;
		_m = 3; goto P999; /* 0 */
	case 50: // STATE 35 - payment-distribution-system.pml:267 - [pt2 = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[4][35] = 1;
		(trpt+1)->bup.oval = ((int)now.pt2);
		now.pt2 = 1;
#ifdef VAR_RANGES
		logval("pt2", ((int)now.pt2));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 51: // STATE 36 - payment-distribution-system.pml:267 - [r = pt2] (0:0:1 - 1)
		IfNotBlocked
		reached[4][36] = 1;
		(trpt+1)->bup.oval = ((int)((P4 *)_this)->r);
		((P4 *)_this)->r = ((int)now.pt2);
#ifdef VAR_RANGES
		logval("payment_point_service:r", ((int)((P4 *)_this)->r));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 52: // STATE 38 - payment-distribution-system.pml:268 - [pt2 = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[4][38] = 1;
		(trpt+1)->bup.oval = ((int)now.pt2);
		now.pt2 = 2;
#ifdef VAR_RANGES
		logval("pt2", ((int)now.pt2));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 53: // STATE 39 - payment-distribution-system.pml:268 - [r = pt2] (0:0:1 - 1)
		IfNotBlocked
		reached[4][39] = 1;
		(trpt+1)->bup.oval = ((int)((P4 *)_this)->r);
		((P4 *)_this)->r = ((int)now.pt2);
#ifdef VAR_RANGES
		logval("payment_point_service:r", ((int)((P4 *)_this)->r));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 54: // STATE 44 - payment-distribution-system.pml:271 - [((((t==2)&&(pt2!=0))&&(type==1)))] (0:0:1 - 1)
		IfNotBlocked
		reached[4][44] = 1;
		if (!((((((int)((P4 *)_this)->t)==2)&&(((int)now.pt2)!=0))&&(((int)now.type)==1))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: t */  (trpt+1)->bup.oval = ((P4 *)_this)->t;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P4 *)_this)->t = 0;
		_m = 3; goto P999; /* 0 */
	case 55: // STATE 45 - payment-distribution-system.pml:271 - [r = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[4][45] = 1;
		(trpt+1)->bup.oval = ((int)((P4 *)_this)->r);
		((P4 *)_this)->r = 3;
#ifdef VAR_RANGES
		logval("payment_point_service:r", ((int)((P4 *)_this)->r));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 56: // STATE 46 - payment-distribution-system.pml:273 - [(((t==2)&&(type==2)))] (0:0:1 - 1)
		IfNotBlocked
		reached[4][46] = 1;
		if (!(((((int)((P4 *)_this)->t)==2)&&(((int)now.type)==2))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: t */  (trpt+1)->bup.oval = ((P4 *)_this)->t;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P4 *)_this)->t = 0;
		_m = 3; goto P999; /* 0 */
	case 57: // STATE 47 - payment-distribution-system.pml:273 - [pt2 = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[4][47] = 1;
		(trpt+1)->bup.oval = ((int)now.pt2);
		now.pt2 = 0;
#ifdef VAR_RANGES
		logval("pt2", ((int)now.pt2));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 58: // STATE 48 - payment-distribution-system.pml:273 - [r = pt2] (0:0:1 - 1)
		IfNotBlocked
		reached[4][48] = 1;
		(trpt+1)->bup.oval = ((int)((P4 *)_this)->r);
		((P4 *)_this)->r = ((int)now.pt2);
#ifdef VAR_RANGES
		logval("payment_point_service:r", ((int)((P4 *)_this)->r));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 59: // STATE 51 - payment-distribution-system.pml:276 - [cable2_r_out!ack,tran,r] (0:0:0 - 22)
		IfNotBlocked
		reached[4][51] = 1;
		if (q_full(now.cable2_r_out))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.cable2_r_out);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)now.tran)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P4 *)_this)->r)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.cable2_r_out, 0, 1, ((int)now.tran), ((int)((P4 *)_this)->r), 3);
		_m = 2; goto P999; /* 0 */

		 /* PROC payment_card_service */
	case 60: // STATE 1 - payment-distribution-system.pml:187 - [cable1_r_in?msg,t,type] (0:0:2 - 1)
		reached[3][1] = 1;
		if (q_len(now.cable1_r_in) == 0) continue;

		XX=1;
		if (2 != qrecv(now.cable1_r_in, 0, 0, 0)) continue;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P3 *)_this)->t);
		(trpt+1)->bup.ovals[1] = ((int)now.type);
		;
		((P3 *)_this)->t = qrecv(now.cable1_r_in, XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("payment_card_service:t", ((int)((P3 *)_this)->t));
#endif
		;
		now.type = qrecv(now.cable1_r_in, XX-1, 2, 1);
#ifdef VAR_RANGES
		logval("type", ((int)now.type));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.cable1_r_in);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P3 *)_this)->t)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)now.type)); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 61: // STATE 2 - payment-distribution-system.pml:191 - [((((t==0)&&(ct0==0))&&(type==1)))] (0:0:1 - 1)
		IfNotBlocked
		reached[3][2] = 1;
		if (!((((((int)((P3 *)_this)->t)==0)&&(((int)now.ct0)==0))&&(((int)now.type)==1))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: t */  (trpt+1)->bup.oval = ((P3 *)_this)->t;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P3 *)_this)->t = 0;
		_m = 3; goto P999; /* 0 */
	case 62: // STATE 3 - payment-distribution-system.pml:193 - [ct0 = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[3][3] = 1;
		(trpt+1)->bup.oval = ((int)now.ct0);
		now.ct0 = 1;
#ifdef VAR_RANGES
		logval("ct0", ((int)now.ct0));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 63: // STATE 4 - payment-distribution-system.pml:193 - [r = ct0] (0:0:1 - 1)
		IfNotBlocked
		reached[3][4] = 1;
		(trpt+1)->bup.oval = ((int)((P3 *)_this)->r);
		((P3 *)_this)->r = ((int)now.ct0);
#ifdef VAR_RANGES
		logval("payment_card_service:r", ((int)((P3 *)_this)->r));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 64: // STATE 6 - payment-distribution-system.pml:194 - [ct0 = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[3][6] = 1;
		(trpt+1)->bup.oval = ((int)now.ct0);
		now.ct0 = 2;
#ifdef VAR_RANGES
		logval("ct0", ((int)now.ct0));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 65: // STATE 7 - payment-distribution-system.pml:194 - [r = ct0] (0:0:1 - 1)
		IfNotBlocked
		reached[3][7] = 1;
		(trpt+1)->bup.oval = ((int)((P3 *)_this)->r);
		((P3 *)_this)->r = ((int)now.ct0);
#ifdef VAR_RANGES
		logval("payment_card_service:r", ((int)((P3 *)_this)->r));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 66: // STATE 12 - payment-distribution-system.pml:197 - [((((t==0)&&(ct0!=0))&&(type==1)))] (0:0:1 - 1)
		IfNotBlocked
		reached[3][12] = 1;
		if (!((((((int)((P3 *)_this)->t)==0)&&(((int)now.ct0)!=0))&&(((int)now.type)==1))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: t */  (trpt+1)->bup.oval = ((P3 *)_this)->t;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P3 *)_this)->t = 0;
		_m = 3; goto P999; /* 0 */
	case 67: // STATE 13 - payment-distribution-system.pml:197 - [r = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[3][13] = 1;
		(trpt+1)->bup.oval = ((int)((P3 *)_this)->r);
		((P3 *)_this)->r = 3;
#ifdef VAR_RANGES
		logval("payment_card_service:r", ((int)((P3 *)_this)->r));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 68: // STATE 14 - payment-distribution-system.pml:199 - [(((t==0)&&(type==2)))] (0:0:1 - 1)
		IfNotBlocked
		reached[3][14] = 1;
		if (!(((((int)((P3 *)_this)->t)==0)&&(((int)now.type)==2))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: t */  (trpt+1)->bup.oval = ((P3 *)_this)->t;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P3 *)_this)->t = 0;
		_m = 3; goto P999; /* 0 */
	case 69: // STATE 15 - payment-distribution-system.pml:199 - [ct0 = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[3][15] = 1;
		(trpt+1)->bup.oval = ((int)now.ct0);
		now.ct0 = 0;
#ifdef VAR_RANGES
		logval("ct0", ((int)now.ct0));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 70: // STATE 16 - payment-distribution-system.pml:199 - [r = ct0] (0:0:1 - 1)
		IfNotBlocked
		reached[3][16] = 1;
		(trpt+1)->bup.oval = ((int)((P3 *)_this)->r);
		((P3 *)_this)->r = ((int)now.ct0);
#ifdef VAR_RANGES
		logval("payment_card_service:r", ((int)((P3 *)_this)->r));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 71: // STATE 17 - payment-distribution-system.pml:203 - [((((t==1)&&(ct1==0))&&(type==1)))] (0:0:1 - 1)
		IfNotBlocked
		reached[3][17] = 1;
		if (!((((((int)((P3 *)_this)->t)==1)&&(((int)now.ct1)==0))&&(((int)now.type)==1))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: t */  (trpt+1)->bup.oval = ((P3 *)_this)->t;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P3 *)_this)->t = 0;
		_m = 3; goto P999; /* 0 */
	case 72: // STATE 18 - payment-distribution-system.pml:205 - [ct1 = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[3][18] = 1;
		(trpt+1)->bup.oval = ((int)now.ct1);
		now.ct1 = 1;
#ifdef VAR_RANGES
		logval("ct1", ((int)now.ct1));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 73: // STATE 19 - payment-distribution-system.pml:205 - [r = ct1] (0:0:1 - 1)
		IfNotBlocked
		reached[3][19] = 1;
		(trpt+1)->bup.oval = ((int)((P3 *)_this)->r);
		((P3 *)_this)->r = ((int)now.ct1);
#ifdef VAR_RANGES
		logval("payment_card_service:r", ((int)((P3 *)_this)->r));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 74: // STATE 21 - payment-distribution-system.pml:206 - [ct1 = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[3][21] = 1;
		(trpt+1)->bup.oval = ((int)now.ct1);
		now.ct1 = 2;
#ifdef VAR_RANGES
		logval("ct1", ((int)now.ct1));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 75: // STATE 22 - payment-distribution-system.pml:206 - [r = ct1] (0:0:1 - 1)
		IfNotBlocked
		reached[3][22] = 1;
		(trpt+1)->bup.oval = ((int)((P3 *)_this)->r);
		((P3 *)_this)->r = ((int)now.ct1);
#ifdef VAR_RANGES
		logval("payment_card_service:r", ((int)((P3 *)_this)->r));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 76: // STATE 27 - payment-distribution-system.pml:209 - [((((t==1)&&(ct1!=0))&&(type==1)))] (0:0:1 - 1)
		IfNotBlocked
		reached[3][27] = 1;
		if (!((((((int)((P3 *)_this)->t)==1)&&(((int)now.ct1)!=0))&&(((int)now.type)==1))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: t */  (trpt+1)->bup.oval = ((P3 *)_this)->t;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P3 *)_this)->t = 0;
		_m = 3; goto P999; /* 0 */
	case 77: // STATE 28 - payment-distribution-system.pml:209 - [r = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[3][28] = 1;
		(trpt+1)->bup.oval = ((int)((P3 *)_this)->r);
		((P3 *)_this)->r = 3;
#ifdef VAR_RANGES
		logval("payment_card_service:r", ((int)((P3 *)_this)->r));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 78: // STATE 29 - payment-distribution-system.pml:211 - [(((t==1)&&(type==2)))] (0:0:1 - 1)
		IfNotBlocked
		reached[3][29] = 1;
		if (!(((((int)((P3 *)_this)->t)==1)&&(((int)now.type)==2))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: t */  (trpt+1)->bup.oval = ((P3 *)_this)->t;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P3 *)_this)->t = 0;
		_m = 3; goto P999; /* 0 */
	case 79: // STATE 30 - payment-distribution-system.pml:211 - [ct1 = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[3][30] = 1;
		(trpt+1)->bup.oval = ((int)now.ct1);
		now.ct1 = 0;
#ifdef VAR_RANGES
		logval("ct1", ((int)now.ct1));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 80: // STATE 31 - payment-distribution-system.pml:211 - [r = ct1] (0:0:1 - 1)
		IfNotBlocked
		reached[3][31] = 1;
		(trpt+1)->bup.oval = ((int)((P3 *)_this)->r);
		((P3 *)_this)->r = ((int)now.ct1);
#ifdef VAR_RANGES
		logval("payment_card_service:r", ((int)((P3 *)_this)->r));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 81: // STATE 32 - payment-distribution-system.pml:215 - [((((t==2)&&(ct2==0))&&(type==1)))] (0:0:1 - 1)
		IfNotBlocked
		reached[3][32] = 1;
		if (!((((((int)((P3 *)_this)->t)==2)&&(((int)now.ct2)==0))&&(((int)now.type)==1))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: t */  (trpt+1)->bup.oval = ((P3 *)_this)->t;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P3 *)_this)->t = 0;
		_m = 3; goto P999; /* 0 */
	case 82: // STATE 33 - payment-distribution-system.pml:217 - [ct2 = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[3][33] = 1;
		(trpt+1)->bup.oval = ((int)now.ct2);
		now.ct2 = 1;
#ifdef VAR_RANGES
		logval("ct2", ((int)now.ct2));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 83: // STATE 34 - payment-distribution-system.pml:217 - [r = ct2] (0:0:1 - 1)
		IfNotBlocked
		reached[3][34] = 1;
		(trpt+1)->bup.oval = ((int)((P3 *)_this)->r);
		((P3 *)_this)->r = ((int)now.ct2);
#ifdef VAR_RANGES
		logval("payment_card_service:r", ((int)((P3 *)_this)->r));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 84: // STATE 36 - payment-distribution-system.pml:218 - [ct2 = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[3][36] = 1;
		(trpt+1)->bup.oval = ((int)now.ct2);
		now.ct2 = 2;
#ifdef VAR_RANGES
		logval("ct2", ((int)now.ct2));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 85: // STATE 37 - payment-distribution-system.pml:218 - [r = ct2] (0:0:1 - 1)
		IfNotBlocked
		reached[3][37] = 1;
		(trpt+1)->bup.oval = ((int)((P3 *)_this)->r);
		((P3 *)_this)->r = ((int)now.ct2);
#ifdef VAR_RANGES
		logval("payment_card_service:r", ((int)((P3 *)_this)->r));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 86: // STATE 42 - payment-distribution-system.pml:221 - [((((t==2)&&(ct2!=0))&&(type==1)))] (0:0:1 - 1)
		IfNotBlocked
		reached[3][42] = 1;
		if (!((((((int)((P3 *)_this)->t)==2)&&(((int)now.ct2)!=0))&&(((int)now.type)==1))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: t */  (trpt+1)->bup.oval = ((P3 *)_this)->t;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P3 *)_this)->t = 0;
		_m = 3; goto P999; /* 0 */
	case 87: // STATE 43 - payment-distribution-system.pml:221 - [r = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[3][43] = 1;
		(trpt+1)->bup.oval = ((int)((P3 *)_this)->r);
		((P3 *)_this)->r = 3;
#ifdef VAR_RANGES
		logval("payment_card_service:r", ((int)((P3 *)_this)->r));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 88: // STATE 44 - payment-distribution-system.pml:223 - [(((t==2)&&(type==2)))] (0:0:1 - 1)
		IfNotBlocked
		reached[3][44] = 1;
		if (!(((((int)((P3 *)_this)->t)==2)&&(((int)now.type)==2))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: t */  (trpt+1)->bup.oval = ((P3 *)_this)->t;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P3 *)_this)->t = 0;
		_m = 3; goto P999; /* 0 */
	case 89: // STATE 45 - payment-distribution-system.pml:223 - [ct2 = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[3][45] = 1;
		(trpt+1)->bup.oval = ((int)now.ct2);
		now.ct2 = 0;
#ifdef VAR_RANGES
		logval("ct2", ((int)now.ct2));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 90: // STATE 46 - payment-distribution-system.pml:223 - [r = ct2] (0:0:1 - 1)
		IfNotBlocked
		reached[3][46] = 1;
		(trpt+1)->bup.oval = ((int)((P3 *)_this)->r);
		((P3 *)_this)->r = ((int)now.ct2);
#ifdef VAR_RANGES
		logval("payment_card_service:r", ((int)((P3 *)_this)->r));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 91: // STATE 49 - payment-distribution-system.pml:227 - [cable1_r_out!ack,tran,r] (0:0:0 - 22)
		IfNotBlocked
		reached[3][49] = 1;
		if (q_full(now.cable1_r_out))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.cable1_r_out);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)now.tran)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P3 *)_this)->r)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.cable1_r_out, 0, 1, ((int)now.tran), ((int)((P3 *)_this)->r), 3);
		_m = 2; goto P999; /* 0 */

		 /* PROC network_from_payment_to_point */
	case 92: // STATE 1 - payment-distribution-system.pml:175 - [cable2_s_out?m,t,type] (0:0:3 - 1)
		reached[2][1] = 1;
		if (q_len(now.cable2_s_out) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P2 *)_this)->m;
		(trpt+1)->bup.ovals[1] = ((int)((P2 *)_this)->t);
		(trpt+1)->bup.ovals[2] = ((int)now.type);
		;
		((P2 *)_this)->m = qrecv(now.cable2_s_out, XX-1, 0, 0);
#ifdef VAR_RANGES
		logval("network_from_payment_to_point:m", ((P2 *)_this)->m);
#endif
		;
		((P2 *)_this)->t = qrecv(now.cable2_s_out, XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("network_from_payment_to_point:t", ((int)((P2 *)_this)->t));
#endif
		;
		now.type = qrecv(now.cable2_s_out, XX-1, 2, 1);
#ifdef VAR_RANGES
		logval("type", ((int)now.type));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.cable2_s_out);
		sprintf(simtmp, "%d", ((P2 *)_this)->m); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)_this)->t)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)now.type)); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 93: // STATE 2 - payment-distribution-system.pml:175 - [cable2_r_in!m,t,type] (0:0:0 - 1)
		IfNotBlocked
		reached[2][2] = 1;
		if (q_full(now.cable2_r_in))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.cable2_r_in);
		sprintf(simtmp, "%d", ((P2 *)_this)->m); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)_this)->t)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)now.type)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.cable2_r_in, 0, ((P2 *)_this)->m, ((int)((P2 *)_this)->t), ((int)now.type), 3);
		_m = 2; goto P999; /* 0 */
	case 94: // STATE 3 - payment-distribution-system.pml:176 - [cable2_s_out?m,t,type] (0:0:5 - 1)
		reached[2][3] = 1;
		if (q_len(now.cable2_s_out) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((P2 *)_this)->m;
		(trpt+1)->bup.ovals[1] = ((int)((P2 *)_this)->t);
		(trpt+1)->bup.ovals[2] = ((int)now.type);
		;
		((P2 *)_this)->m = qrecv(now.cable2_s_out, XX-1, 0, 0);
#ifdef VAR_RANGES
		logval("network_from_payment_to_point:m", ((P2 *)_this)->m);
#endif
		;
		((P2 *)_this)->t = qrecv(now.cable2_s_out, XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("network_from_payment_to_point:t", ((int)((P2 *)_this)->t));
#endif
		;
		now.type = qrecv(now.cable2_s_out, XX-1, 2, 1);
#ifdef VAR_RANGES
		logval("type", ((int)now.type));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.cable2_s_out);
		sprintf(simtmp, "%d", ((P2 *)_this)->m); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)_this)->t)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)now.type)); strcat(simvals, simtmp);		}
#endif
		;
		if (TstOnly) return 1; /* TT */
		/* dead 2: m */  (trpt+1)->bup.ovals[3] = ((P2 *)_this)->m;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P2 *)_this)->m = 0;
		if (TstOnly) return 1; /* TT */
		/* dead 2: t */  (trpt+1)->bup.ovals[4] = ((P2 *)_this)->t;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P2 *)_this)->t = 0;
		_m = 4; goto P999; /* 0 */
	case 95: // STATE 4 - payment-distribution-system.pml:177 - [cable2_r_out?m,t,r] (0:0:3 - 1)
		reached[2][4] = 1;
		if (q_len(now.cable2_r_out) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P2 *)_this)->m;
		(trpt+1)->bup.ovals[1] = ((int)((P2 *)_this)->t);
		(trpt+1)->bup.ovals[2] = ((int)((P2 *)_this)->r);
		;
		((P2 *)_this)->m = qrecv(now.cable2_r_out, XX-1, 0, 0);
#ifdef VAR_RANGES
		logval("network_from_payment_to_point:m", ((P2 *)_this)->m);
#endif
		;
		((P2 *)_this)->t = qrecv(now.cable2_r_out, XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("network_from_payment_to_point:t", ((int)((P2 *)_this)->t));
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
		sprintf(simtmp, "%d", ((int)((P2 *)_this)->t)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)_this)->r)); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 96: // STATE 5 - payment-distribution-system.pml:177 - [cable2_s_in!m,t,r] (0:0:0 - 1)
		IfNotBlocked
		reached[2][5] = 1;
		if (q_full(now.cable2_s_in))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.cable2_s_in);
		sprintf(simtmp, "%d", ((P2 *)_this)->m); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)_this)->t)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)_this)->r)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.cable2_s_in, 0, ((P2 *)_this)->m, ((int)((P2 *)_this)->t), ((int)((P2 *)_this)->r), 3);
		_m = 2; goto P999; /* 0 */
	case 97: // STATE 6 - payment-distribution-system.pml:178 - [cable2_r_out?m,t,r] (0:0:6 - 1)
		reached[2][6] = 1;
		if (q_len(now.cable2_r_out) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(6);
		(trpt+1)->bup.ovals[0] = ((P2 *)_this)->m;
		(trpt+1)->bup.ovals[1] = ((int)((P2 *)_this)->t);
		(trpt+1)->bup.ovals[2] = ((int)((P2 *)_this)->r);
		;
		((P2 *)_this)->m = qrecv(now.cable2_r_out, XX-1, 0, 0);
#ifdef VAR_RANGES
		logval("network_from_payment_to_point:m", ((P2 *)_this)->m);
#endif
		;
		((P2 *)_this)->t = qrecv(now.cable2_r_out, XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("network_from_payment_to_point:t", ((int)((P2 *)_this)->t));
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
		sprintf(simtmp, "%d", ((int)((P2 *)_this)->t)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)_this)->r)); strcat(simvals, simtmp);		}
#endif
		;
		if (TstOnly) return 1; /* TT */
		/* dead 2: m */  (trpt+1)->bup.ovals[3] = ((P2 *)_this)->m;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P2 *)_this)->m = 0;
		if (TstOnly) return 1; /* TT */
		/* dead 2: t */  (trpt+1)->bup.ovals[4] = ((P2 *)_this)->t;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P2 *)_this)->t = 0;
		if (TstOnly) return 1; /* TT */
		/* dead 2: r */  (trpt+1)->bup.ovals[5] = ((P2 *)_this)->r;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P2 *)_this)->r = 0;
		_m = 4; goto P999; /* 0 */
	case 98: // STATE 10 - payment-distribution-system.pml:180 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC network_from_payment_to_card */
	case 99: // STATE 1 - payment-distribution-system.pml:162 - [cable1_s_out?m,t,type] (0:0:3 - 1)
		reached[1][1] = 1;
		if (q_len(now.cable1_s_out) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->m;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)_this)->t);
		(trpt+1)->bup.ovals[2] = ((int)now.type);
		;
		((P1 *)_this)->m = qrecv(now.cable1_s_out, XX-1, 0, 0);
#ifdef VAR_RANGES
		logval("network_from_payment_to_card:m", ((P1 *)_this)->m);
#endif
		;
		((P1 *)_this)->t = qrecv(now.cable1_s_out, XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("network_from_payment_to_card:t", ((int)((P1 *)_this)->t));
#endif
		;
		now.type = qrecv(now.cable1_s_out, XX-1, 2, 1);
#ifdef VAR_RANGES
		logval("type", ((int)now.type));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.cable1_s_out);
		sprintf(simtmp, "%d", ((P1 *)_this)->m); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)_this)->t)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)now.type)); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 100: // STATE 2 - payment-distribution-system.pml:162 - [cable1_r_in!m,t,type] (0:0:0 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		if (q_full(now.cable1_r_in))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.cable1_r_in);
		sprintf(simtmp, "%d", ((P1 *)_this)->m); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)_this)->t)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)now.type)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.cable1_r_in, 0, ((P1 *)_this)->m, ((int)((P1 *)_this)->t), ((int)now.type), 3);
		_m = 2; goto P999; /* 0 */
	case 101: // STATE 3 - payment-distribution-system.pml:163 - [cable1_s_out?m,t,type] (0:0:5 - 1)
		reached[1][3] = 1;
		if (q_len(now.cable1_s_out) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->m;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)_this)->t);
		(trpt+1)->bup.ovals[2] = ((int)now.type);
		;
		((P1 *)_this)->m = qrecv(now.cable1_s_out, XX-1, 0, 0);
#ifdef VAR_RANGES
		logval("network_from_payment_to_card:m", ((P1 *)_this)->m);
#endif
		;
		((P1 *)_this)->t = qrecv(now.cable1_s_out, XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("network_from_payment_to_card:t", ((int)((P1 *)_this)->t));
#endif
		;
		now.type = qrecv(now.cable1_s_out, XX-1, 2, 1);
#ifdef VAR_RANGES
		logval("type", ((int)now.type));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.cable1_s_out);
		sprintf(simtmp, "%d", ((P1 *)_this)->m); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)_this)->t)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)now.type)); strcat(simvals, simtmp);		}
#endif
		;
		if (TstOnly) return 1; /* TT */
		/* dead 2: m */  (trpt+1)->bup.ovals[3] = ((P1 *)_this)->m;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->m = 0;
		if (TstOnly) return 1; /* TT */
		/* dead 2: t */  (trpt+1)->bup.ovals[4] = ((P1 *)_this)->t;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->t = 0;
		_m = 4; goto P999; /* 0 */
	case 102: // STATE 4 - payment-distribution-system.pml:164 - [cable1_r_out?m,t,r] (0:0:3 - 1)
		reached[1][4] = 1;
		if (q_len(now.cable1_r_out) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->m;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)_this)->t);
		(trpt+1)->bup.ovals[2] = ((int)((P1 *)_this)->r);
		;
		((P1 *)_this)->m = qrecv(now.cable1_r_out, XX-1, 0, 0);
#ifdef VAR_RANGES
		logval("network_from_payment_to_card:m", ((P1 *)_this)->m);
#endif
		;
		((P1 *)_this)->t = qrecv(now.cable1_r_out, XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("network_from_payment_to_card:t", ((int)((P1 *)_this)->t));
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
		sprintf(simtmp, "%d", ((int)((P1 *)_this)->t)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)_this)->r)); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 103: // STATE 5 - payment-distribution-system.pml:164 - [cable1_s_in!m,t,r] (0:0:0 - 1)
		IfNotBlocked
		reached[1][5] = 1;
		if (q_full(now.cable1_s_in))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.cable1_s_in);
		sprintf(simtmp, "%d", ((P1 *)_this)->m); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)_this)->t)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)_this)->r)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.cable1_s_in, 0, ((P1 *)_this)->m, ((int)((P1 *)_this)->t), ((int)((P1 *)_this)->r), 3);
		_m = 2; goto P999; /* 0 */
	case 104: // STATE 6 - payment-distribution-system.pml:165 - [cable1_r_out?m,t,r] (0:0:6 - 1)
		reached[1][6] = 1;
		if (q_len(now.cable1_r_out) == 0) continue;

		XX=1;
		(trpt+1)->bup.ovals = grab_ints(6);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->m;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)_this)->t);
		(trpt+1)->bup.ovals[2] = ((int)((P1 *)_this)->r);
		;
		((P1 *)_this)->m = qrecv(now.cable1_r_out, XX-1, 0, 0);
#ifdef VAR_RANGES
		logval("network_from_payment_to_card:m", ((P1 *)_this)->m);
#endif
		;
		((P1 *)_this)->t = qrecv(now.cable1_r_out, XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("network_from_payment_to_card:t", ((int)((P1 *)_this)->t));
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
		sprintf(simtmp, "%d", ((int)((P1 *)_this)->t)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)_this)->r)); strcat(simvals, simtmp);		}
#endif
		;
		if (TstOnly) return 1; /* TT */
		/* dead 2: m */  (trpt+1)->bup.ovals[3] = ((P1 *)_this)->m;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->m = 0;
		if (TstOnly) return 1; /* TT */
		/* dead 2: t */  (trpt+1)->bup.ovals[4] = ((P1 *)_this)->t;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->t = 0;
		if (TstOnly) return 1; /* TT */
		/* dead 2: r */  (trpt+1)->bup.ovals[5] = ((P1 *)_this)->r;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->r = 0;
		_m = 4; goto P999; /* 0 */
	case 105: // STATE 10 - payment-distribution-system.pml:167 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC payment_service */
	case 106: // STATE 1 - payment-distribution-system.pml:39 - [cable1_s_out!msg,tran,1] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		if (q_full(now.cable1_s_out))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.cable1_s_out);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)now.tran)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.cable1_s_out, 0, 2, ((int)now.tran), 1, 3);
		_m = 2; goto P999; /* 0 */
	case 107: // STATE 2 - payment-distribution-system.pml:42 - [cable1_s_in?ack,tran,r] (0:0:2 - 1)
		reached[0][2] = 1;
		if (q_len(now.cable1_s_in) == 0) continue;

		XX=1;
		if (1 != qrecv(now.cable1_s_in, 0, 0, 0)) continue;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.tran);
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)_this)->r);
		;
		now.tran = qrecv(now.cable1_s_in, XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("tran", ((int)now.tran));
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
		sprintf(simtmp, "%d", ((int)now.tran)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)_this)->r)); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 108: // STATE 3 - payment-distribution-system.pml:46 - [((r==3))] (0:0:1 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		if (!((((int)((P0 *)_this)->r)==3)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: r */  (trpt+1)->bup.oval = ((P0 *)_this)->r;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->r = 0;
		_m = 3; goto P999; /* 0 */
	case 109: // STATE 4 - payment-distribution-system.pml:48 - [((tran==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][4] = 1;
		if (!((((int)now.tran)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 110: // STATE 5 - payment-distribution-system.pml:48 - [assert(((ct0==1)||(ct0==2)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][5] = 1;
		spin_assert(((((int)now.ct0)==1)||(((int)now.ct0)==2)), "((ct0==1)||(ct0==2))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 111: // STATE 6 - payment-distribution-system.pml:48 - [assert((((pt0==0)||(pt0==1))||(pt0==2)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][6] = 1;
		spin_assert((((((int)now.pt0)==0)||(((int)now.pt0)==1))||(((int)now.pt0)==2)), "(((pt0==0)||(pt0==1))||(pt0==2))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 112: // STATE 7 - payment-distribution-system.pml:49 - [((tran==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][7] = 1;
		if (!((((int)now.tran)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 113: // STATE 8 - payment-distribution-system.pml:49 - [assert(((ct1==1)||(ct1==2)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][8] = 1;
		spin_assert(((((int)now.ct1)==1)||(((int)now.ct1)==2)), "((ct1==1)||(ct1==2))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 114: // STATE 9 - payment-distribution-system.pml:49 - [assert((((pt1==0)||(pt1==1))||(pt1==2)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][9] = 1;
		spin_assert((((((int)now.pt1)==0)||(((int)now.pt1)==1))||(((int)now.pt1)==2)), "(((pt1==0)||(pt1==1))||(pt1==2))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 115: // STATE 10 - payment-distribution-system.pml:50 - [((tran==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][10] = 1;
		if (!((((int)now.tran)==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 116: // STATE 11 - payment-distribution-system.pml:50 - [assert(((ct2==1)||(ct2==2)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][11] = 1;
		spin_assert(((((int)now.ct2)==1)||(((int)now.ct2)==2)), "((ct2==1)||(ct2==2))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 117: // STATE 12 - payment-distribution-system.pml:50 - [assert((((pt2==0)||(pt2==1))||(pt2==2)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][12] = 1;
		spin_assert((((((int)now.pt2)==0)||(((int)now.pt2)==1))||(((int)now.pt2)==2)), "(((pt2==0)||(pt2==1))||(pt2==2))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 118: // STATE 15 - payment-distribution-system.pml:32 - [((tran<2))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][15] = 1;
		if (!((((int)now.tran)<2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 119: // STATE 16 - payment-distribution-system.pml:32 - [tran = (tran+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][16] = 1;
		(trpt+1)->bup.oval = ((int)now.tran);
		now.tran = (((int)now.tran)+1);
#ifdef VAR_RANGES
		logval("tran", ((int)now.tran));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 120: // STATE 18 - payment-distribution-system.pml:33 - [tran = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][18] = 1;
		(trpt+1)->bup.oval = ((int)now.tran);
		now.tran = 0;
#ifdef VAR_RANGES
		logval("tran", ((int)now.tran));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 121: // STATE 23 - payment-distribution-system.pml:54 - [((r==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][23] = 1;
		if (!((((int)((P0 *)_this)->r)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 122: // STATE 24 - payment-distribution-system.pml:55 - [printf('card tran:%d, done:%d\\n',tran,r)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][24] = 1;
		Printf("card tran:%d, done:%d\n", ((int)now.tran), ((int)((P0 *)_this)->r));
		_m = 3; goto P999; /* 0 */
	case 123: // STATE 25 - payment-distribution-system.pml:57 - [((tran==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][25] = 1;
		if (!((((int)now.tran)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 124: // STATE 26 - payment-distribution-system.pml:57 - [assert(((ct0==1)&&(pt0==0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][26] = 1;
		spin_assert(((((int)now.ct0)==1)&&(((int)now.pt0)==0)), "((ct0==1)&&(pt0==0))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 125: // STATE 27 - payment-distribution-system.pml:58 - [((tran==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][27] = 1;
		if (!((((int)now.tran)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 126: // STATE 28 - payment-distribution-system.pml:58 - [assert(((ct1==1)&&(pt1==0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][28] = 1;
		spin_assert(((((int)now.ct1)==1)&&(((int)now.pt1)==0)), "((ct1==1)&&(pt1==0))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 127: // STATE 29 - payment-distribution-system.pml:59 - [((tran==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][29] = 1;
		if (!((((int)now.tran)==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 128: // STATE 30 - payment-distribution-system.pml:59 - [assert(((ct2==1)&&(pt2==0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][30] = 1;
		spin_assert(((((int)now.ct2)==1)&&(((int)now.pt2)==0)), "((ct2==1)&&(pt2==0))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 129: // STATE 34 - payment-distribution-system.pml:63 - [((r==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][34] = 1;
		if (!((((int)((P0 *)_this)->r)==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 130: // STATE 35 - payment-distribution-system.pml:64 - [printf('card tran:%d, done::%d\\n',tran,r)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][35] = 1;
		Printf("card tran:%d, done::%d\n", ((int)now.tran), ((int)((P0 *)_this)->r));
		_m = 3; goto P999; /* 0 */
	case 131: // STATE 36 - payment-distribution-system.pml:66 - [((tran==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][36] = 1;
		if (!((((int)now.tran)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 132: // STATE 37 - payment-distribution-system.pml:66 - [assert(((ct0==2)&&(pt0==0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][37] = 1;
		spin_assert(((((int)now.ct0)==2)&&(((int)now.pt0)==0)), "((ct0==2)&&(pt0==0))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 133: // STATE 38 - payment-distribution-system.pml:67 - [((tran==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][38] = 1;
		if (!((((int)now.tran)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 134: // STATE 39 - payment-distribution-system.pml:67 - [assert(((ct1==2)&&(pt1==0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][39] = 1;
		spin_assert(((((int)now.ct1)==2)&&(((int)now.pt1)==0)), "((ct1==2)&&(pt1==0))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 135: // STATE 40 - payment-distribution-system.pml:68 - [((tran==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][40] = 1;
		if (!((((int)now.tran)==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 136: // STATE 41 - payment-distribution-system.pml:68 - [assert(((ct2==2)&&(pt2==0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][41] = 1;
		spin_assert(((((int)now.ct2)==2)&&(((int)now.pt2)==0)), "((ct2==2)&&(pt2==0))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 137: // STATE 44 - payment-distribution-system.pml:32 - [((tran<2))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][44] = 1;
		if (!((((int)now.tran)<2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 138: // STATE 45 - payment-distribution-system.pml:32 - [tran = (tran+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][45] = 1;
		(trpt+1)->bup.oval = ((int)now.tran);
		now.tran = (((int)now.tran)+1);
#ifdef VAR_RANGES
		logval("tran", ((int)now.tran));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 139: // STATE 47 - payment-distribution-system.pml:33 - [tran = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][47] = 1;
		(trpt+1)->bup.oval = ((int)now.tran);
		now.tran = 0;
#ifdef VAR_RANGES
		logval("tran", ((int)now.tran));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 140: // STATE 54 - payment-distribution-system.pml:73 - [(timeout)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][54] = 1;
		if (!(((trpt->tau)&1)))
			continue;
		_m = 1; goto P999; /* 0 */
	case 141: // STATE 55 - payment-distribution-system.pml:73 - [printf('card tran:%d, timeout\\n',tran)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][55] = 1;
		Printf("card tran:%d, timeout\n", ((int)now.tran));
		_m = 3; goto P999; /* 0 */
	case 142: // STATE 60 - payment-distribution-system.pml:79 - [printf('doing next \\n')] (0:0:0 - 7)
		IfNotBlocked
		reached[0][60] = 1;
		Printf("doing next \n");
		_m = 3; goto P999; /* 0 */
	case 143: // STATE 61 - payment-distribution-system.pml:80 - [cable2_s_out!msg,tran,1] (0:0:0 - 1)
		IfNotBlocked
		reached[0][61] = 1;
		if (q_full(now.cable2_s_out))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.cable2_s_out);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)now.tran)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.cable2_s_out, 0, 2, ((int)now.tran), 1, 3);
		_m = 2; goto P999; /* 0 */
	case 144: // STATE 62 - payment-distribution-system.pml:82 - [cable2_s_in?ack,tran,r] (0:0:2 - 1)
		reached[0][62] = 1;
		if (q_len(now.cable2_s_in) == 0) continue;

		XX=1;
		if (1 != qrecv(now.cable2_s_in, 0, 0, 0)) continue;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.tran);
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)_this)->r);
		;
		now.tran = qrecv(now.cable2_s_in, XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("tran", ((int)now.tran));
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
		sprintf(simtmp, "%d", ((int)now.tran)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)_this)->r)); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 145: // STATE 63 - payment-distribution-system.pml:85 - [((r==3))] (0:0:1 - 1)
		IfNotBlocked
		reached[0][63] = 1;
		if (!((((int)((P0 *)_this)->r)==3)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: r */  (trpt+1)->bup.oval = ((P0 *)_this)->r;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->r = 0;
		_m = 3; goto P999; /* 0 */
	case 146: // STATE 64 - payment-distribution-system.pml:87 - [((tran==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][64] = 1;
		if (!((((int)now.tran)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 147: // STATE 65 - payment-distribution-system.pml:87 - [assert((ct0==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][65] = 1;
		spin_assert((((int)now.ct0)==1), "(ct0==1)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 148: // STATE 66 - payment-distribution-system.pml:87 - [assert(((pt0==1)||(pt0==2)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][66] = 1;
		spin_assert(((((int)now.pt0)==1)||(((int)now.pt0)==2)), "((pt0==1)||(pt0==2))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 149: // STATE 67 - payment-distribution-system.pml:88 - [((tran==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][67] = 1;
		if (!((((int)now.tran)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 150: // STATE 68 - payment-distribution-system.pml:88 - [assert((ct1==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][68] = 1;
		spin_assert((((int)now.ct1)==1), "(ct1==1)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 151: // STATE 69 - payment-distribution-system.pml:88 - [assert(((pt1==1)||(pt1==2)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][69] = 1;
		spin_assert(((((int)now.pt1)==1)||(((int)now.pt1)==2)), "((pt1==1)||(pt1==2))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 152: // STATE 70 - payment-distribution-system.pml:89 - [((tran==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][70] = 1;
		if (!((((int)now.tran)==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 153: // STATE 71 - payment-distribution-system.pml:89 - [assert((ct2==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][71] = 1;
		spin_assert((((int)now.ct2)==1), "(ct2==1)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 154: // STATE 72 - payment-distribution-system.pml:89 - [assert(((pt2==1)||(pt2==2)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][72] = 1;
		spin_assert(((((int)now.pt2)==1)||(((int)now.pt2)==2)), "((pt2==1)||(pt2==2))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 155: // STATE 75 - payment-distribution-system.pml:32 - [((tran<2))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][75] = 1;
		if (!((((int)now.tran)<2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 156: // STATE 76 - payment-distribution-system.pml:32 - [tran = (tran+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][76] = 1;
		(trpt+1)->bup.oval = ((int)now.tran);
		now.tran = (((int)now.tran)+1);
#ifdef VAR_RANGES
		logval("tran", ((int)now.tran));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 157: // STATE 78 - payment-distribution-system.pml:33 - [tran = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][78] = 1;
		(trpt+1)->bup.oval = ((int)now.tran);
		now.tran = 0;
#ifdef VAR_RANGES
		logval("tran", ((int)now.tran));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 158: // STATE 83 - payment-distribution-system.pml:94 - [((r==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][83] = 1;
		if (!((((int)((P0 *)_this)->r)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 159: // STATE 84 - payment-distribution-system.pml:95 - [printf('point tran:%d, done:%d\\n',tran,r)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][84] = 1;
		Printf("point tran:%d, done:%d\n", ((int)now.tran), ((int)((P0 *)_this)->r));
		_m = 3; goto P999; /* 0 */
	case 160: // STATE 85 - payment-distribution-system.pml:97 - [((tran==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][85] = 1;
		if (!((((int)now.tran)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 161: // STATE 86 - payment-distribution-system.pml:97 - [assert((ct0==pt0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][86] = 1;
		spin_assert((((int)now.ct0)==((int)now.pt0)), "(ct0==pt0)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 162: // STATE 87 - payment-distribution-system.pml:97 - [assert((ct0==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][87] = 1;
		spin_assert((((int)now.ct0)==1), "(ct0==1)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 163: // STATE 88 - payment-distribution-system.pml:98 - [((tran==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][88] = 1;
		if (!((((int)now.tran)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 164: // STATE 89 - payment-distribution-system.pml:98 - [assert((ct1==pt1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][89] = 1;
		spin_assert((((int)now.ct1)==((int)now.pt1)), "(ct1==pt1)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 165: // STATE 90 - payment-distribution-system.pml:98 - [assert((ct1==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][90] = 1;
		spin_assert((((int)now.ct1)==1), "(ct1==1)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 166: // STATE 91 - payment-distribution-system.pml:99 - [((tran==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][91] = 1;
		if (!((((int)now.tran)==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 167: // STATE 92 - payment-distribution-system.pml:99 - [assert((ct2==pt2))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][92] = 1;
		spin_assert((((int)now.ct2)==((int)now.pt2)), "(ct2==pt2)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 168: // STATE 93 - payment-distribution-system.pml:99 - [assert((ct2==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][93] = 1;
		spin_assert((((int)now.ct2)==1), "(ct2==1)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 169: // STATE 96 - payment-distribution-system.pml:32 - [((tran<2))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][96] = 1;
		if (!((((int)now.tran)<2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 170: // STATE 97 - payment-distribution-system.pml:32 - [tran = (tran+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][97] = 1;
		(trpt+1)->bup.oval = ((int)now.tran);
		now.tran = (((int)now.tran)+1);
#ifdef VAR_RANGES
		logval("tran", ((int)now.tran));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 171: // STATE 99 - payment-distribution-system.pml:33 - [tran = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][99] = 1;
		(trpt+1)->bup.oval = ((int)now.tran);
		now.tran = 0;
#ifdef VAR_RANGES
		logval("tran", ((int)now.tran));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 172: // STATE 104 - payment-distribution-system.pml:105 - [((r==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][104] = 1;
		if (!((((int)((P0 *)_this)->r)==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 173: // STATE 105 - payment-distribution-system.pml:106 - [printf('point tran:%d, done:%d\\n',tran,r)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][105] = 1;
		Printf("point tran:%d, done:%d\n", ((int)now.tran), ((int)((P0 *)_this)->r));
		_m = 3; goto P999; /* 0 */
	case 174: // STATE 106 - payment-distribution-system.pml:108 - [((tran==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][106] = 1;
		if (!((((int)now.tran)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 175: // STATE 107 - payment-distribution-system.pml:108 - [assert(((ct0==1)&&(pt0==2)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][107] = 1;
		spin_assert(((((int)now.ct0)==1)&&(((int)now.pt0)==2)), "((ct0==1)&&(pt0==2))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 176: // STATE 108 - payment-distribution-system.pml:109 - [((tran==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][108] = 1;
		if (!((((int)now.tran)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 177: // STATE 109 - payment-distribution-system.pml:109 - [assert(((ct1==1)&&(pt1==2)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][109] = 1;
		spin_assert(((((int)now.ct1)==1)&&(((int)now.pt1)==2)), "((ct1==1)&&(pt1==2))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 178: // STATE 110 - payment-distribution-system.pml:110 - [((tran==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][110] = 1;
		if (!((((int)now.tran)==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 179: // STATE 111 - payment-distribution-system.pml:110 - [assert(((ct2==1)&&(pt2==2)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][111] = 1;
		spin_assert(((((int)now.ct2)==1)&&(((int)now.pt2)==2)), "((ct2==1)&&(pt2==2))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 180: // STATE 117 - payment-distribution-system.pml:114 - [(timeout)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][117] = 1;
		if (!(((trpt->tau)&1)))
			continue;
		_m = 1; goto P999; /* 0 */
	case 181: // STATE 118 - payment-distribution-system.pml:114 - [printf('point tran:%d, timeout\\n',tran)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][118] = 1;
		Printf("point tran:%d, timeout\n", ((int)now.tran));
		_m = 3; goto P999; /* 0 */
	case 182: // STATE 122 - payment-distribution-system.pml:119 - [printf('doing rollback card tran:%d \\n',tran)] (0:0:0 - 9)
		IfNotBlocked
		reached[0][122] = 1;
		Printf("doing rollback card tran:%d \n", ((int)now.tran));
		_m = 3; goto P999; /* 0 */
	case 183: // STATE 123 - payment-distribution-system.pml:120 - [cable1_s_out!msg,tran,2] (0:0:0 - 1)
		IfNotBlocked
		reached[0][123] = 1;
		if (q_full(now.cable1_s_out))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.cable1_s_out);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)now.tran)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.cable1_s_out, 0, 2, ((int)now.tran), 2, 3);
		_m = 2; goto P999; /* 0 */
	case 184: // STATE 124 - payment-distribution-system.pml:122 - [cable1_s_in?ack,tran,r] (0:0:2 - 1)
		reached[0][124] = 1;
		if (q_len(now.cable1_s_in) == 0) continue;

		XX=1;
		if (1 != qrecv(now.cable1_s_in, 0, 0, 0)) continue;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.tran);
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)_this)->r);
		;
		now.tran = qrecv(now.cable1_s_in, XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("tran", ((int)now.tran));
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
		sprintf(simtmp, "%d", ((int)now.tran)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)_this)->r)); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 185: // STATE 125 - payment-distribution-system.pml:124 - [((r==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][125] = 1;
		if (!((((int)((P0 *)_this)->r)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 186: // STATE 126 - payment-distribution-system.pml:125 - [printf('card tran:%d, rollback:%d\\n',tran,r)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][126] = 1;
		Printf("card tran:%d, rollback:%d\n", ((int)now.tran), ((int)((P0 *)_this)->r));
		_m = 3; goto P999; /* 0 */
	case 187: // STATE 127 - payment-distribution-system.pml:128 - [((tran==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][127] = 1;
		if (!((((int)now.tran)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 188: // STATE 128 - payment-distribution-system.pml:128 - [assert(((ct0==0)&&(pt0==2)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][128] = 1;
		spin_assert(((((int)now.ct0)==0)&&(((int)now.pt0)==2)), "((ct0==0)&&(pt0==2))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 189: // STATE 129 - payment-distribution-system.pml:129 - [((tran==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][129] = 1;
		if (!((((int)now.tran)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 190: // STATE 130 - payment-distribution-system.pml:129 - [assert(((ct1==0)&&(pt1==2)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][130] = 1;
		spin_assert(((((int)now.ct1)==0)&&(((int)now.pt1)==2)), "((ct1==0)&&(pt1==2))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 191: // STATE 131 - payment-distribution-system.pml:130 - [((tran==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][131] = 1;
		if (!((((int)now.tran)==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 192: // STATE 132 - payment-distribution-system.pml:130 - [assert(((ct2==0)&&(pt2==2)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][132] = 1;
		spin_assert(((((int)now.ct2)==0)&&(((int)now.pt2)==2)), "((ct2==0)&&(pt2==2))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 193: // STATE 138 - payment-distribution-system.pml:134 - [(timeout)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][138] = 1;
		if (!(((trpt->tau)&1)))
			continue;
		_m = 1; goto P999; /* 0 */
	case 194: // STATE 139 - payment-distribution-system.pml:134 - [printf('card tran:%d,　rollback timeout\\n',tran)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][139] = 1;
		Printf("card tran:%d,　rollback timeout\n", ((int)now.tran));
		_m = 3; goto P999; /* 0 */
	case 195: // STATE 143 - payment-distribution-system.pml:138 - [printf('doing rollback point tran:%d \\n',tran)] (0:0:0 - 9)
		IfNotBlocked
		reached[0][143] = 1;
		Printf("doing rollback point tran:%d \n", ((int)now.tran));
		_m = 3; goto P999; /* 0 */
	case 196: // STATE 144 - payment-distribution-system.pml:139 - [cable2_s_out!msg,tran,2] (0:0:0 - 1)
		IfNotBlocked
		reached[0][144] = 1;
		if (q_full(now.cable2_s_out))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.cable2_s_out);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)now.tran)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.cable2_s_out, 0, 2, ((int)now.tran), 2, 3);
		_m = 2; goto P999; /* 0 */
	case 197: // STATE 145 - payment-distribution-system.pml:141 - [cable2_s_in?ack,tran,r] (0:0:2 - 1)
		reached[0][145] = 1;
		if (q_len(now.cable2_s_in) == 0) continue;

		XX=1;
		if (1 != qrecv(now.cable2_s_in, 0, 0, 0)) continue;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.tran);
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)_this)->r);
		;
		now.tran = qrecv(now.cable2_s_in, XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("tran", ((int)now.tran));
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
		sprintf(simtmp, "%d", ((int)now.tran)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)_this)->r)); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 198: // STATE 146 - payment-distribution-system.pml:143 - [((r==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][146] = 1;
		if (!((((int)((P0 *)_this)->r)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 199: // STATE 147 - payment-distribution-system.pml:144 - [printf('point tran:%d, rollback:%d\\n',tran,r)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][147] = 1;
		Printf("point tran:%d, rollback:%d\n", ((int)now.tran), ((int)((P0 *)_this)->r));
		_m = 3; goto P999; /* 0 */
	case 200: // STATE 148 - payment-distribution-system.pml:146 - [((tran==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][148] = 1;
		if (!((((int)now.tran)==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 201: // STATE 149 - payment-distribution-system.pml:146 - [assert(((ct0==0)&&(pt0==0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][149] = 1;
		spin_assert(((((int)now.ct0)==0)&&(((int)now.pt0)==0)), "((ct0==0)&&(pt0==0))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 202: // STATE 150 - payment-distribution-system.pml:147 - [((tran==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][150] = 1;
		if (!((((int)now.tran)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 203: // STATE 151 - payment-distribution-system.pml:147 - [assert(((ct1==0)&&(pt1==0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][151] = 1;
		spin_assert(((((int)now.ct1)==0)&&(((int)now.pt1)==0)), "((ct1==0)&&(pt1==0))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 204: // STATE 152 - payment-distribution-system.pml:148 - [((tran==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][152] = 1;
		if (!((((int)now.tran)==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 205: // STATE 153 - payment-distribution-system.pml:148 - [assert(((ct2==0)&&(pt2==0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][153] = 1;
		spin_assert(((((int)now.ct2)==0)&&(((int)now.pt2)==0)), "((ct2==0)&&(pt2==0))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 206: // STATE 156 - payment-distribution-system.pml:32 - [((tran<2))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][156] = 1;
		if (!((((int)now.tran)<2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 207: // STATE 157 - payment-distribution-system.pml:32 - [tran = (tran+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][157] = 1;
		(trpt+1)->bup.oval = ((int)now.tran);
		now.tran = (((int)now.tran)+1);
#ifdef VAR_RANGES
		logval("tran", ((int)now.tran));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 208: // STATE 159 - payment-distribution-system.pml:33 - [tran = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][159] = 1;
		(trpt+1)->bup.oval = ((int)now.tran);
		now.tran = 0;
#ifdef VAR_RANGES
		logval("tran", ((int)now.tran));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 209: // STATE 166 - payment-distribution-system.pml:152 - [(timeout)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][166] = 1;
		if (!(((trpt->tau)&1)))
			continue;
		_m = 1; goto P999; /* 0 */
	case 210: // STATE 167 - payment-distribution-system.pml:152 - [printf('point tran:%d,　rollback timeout\\n',tran)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][167] = 1;
		Printf("point tran:%d,　rollback timeout\n", ((int)now.tran));
		_m = 3; goto P999; /* 0 */
	case 211: // STATE 171 - payment-distribution-system.pml:154 - [-end-] (0:0:0 - 2)
		IfNotBlocked
		reached[0][171] = 1;
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

