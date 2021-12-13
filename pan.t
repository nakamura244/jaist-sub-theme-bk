#ifdef PEG
struct T_SRC {
	char *fl; int ln;
} T_SRC[NTRANS];

void
tr_2_src(int m, char *file, int ln)
{	T_SRC[m].fl = file;
	T_SRC[m].ln = ln;
}

void
putpeg(int n, int m)
{	printf("%5d	trans %4d ", m, n);
	printf("%s:%d\n",
		T_SRC[n].fl, T_SRC[n].ln);
}
#endif

void
settable(void)
{	Trans *T;
	Trans *settr(int, int, int, int, int, char *, int, int, int);

	trans = (Trans ***) emalloc(10*sizeof(Trans **));

	/* proctype 8: p3 */

	trans[8] = (Trans **) emalloc(45*sizeof(Trans *));

	trans[8][12]	= settr(339,0,11,1,0,".(goto)", 0, 2, 0);
	T = trans[8][11] = settr(338,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(338,0,1,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(338,0,3,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(338,0,5,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(338,0,7,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(338,0,9,0,0,"DO", 0, 2, 0);
	trans[8][1]	= settr(328,0,16,3,0,"((((!((payment_service._p==response))&&(network_from_payment_to_card._p==forwarded1))&&(network_from_payment_to_card._p==forwarded2))&&(payment_service._p==request)))", 1, 2, 0);
	trans[8][2]	= settr(329,0,16,1,0,"goto accept_S44", 0, 2, 0);
	trans[8][3]	= settr(330,0,23,4,0,"(((!((payment_service._p==response))&&(network_from_payment_to_card._p==forwarded1))&&(payment_service._p==request)))", 1, 2, 0);
	trans[8][4]	= settr(331,0,23,1,0,"goto T0_S47", 0, 2, 0);
	trans[8][5]	= settr(332,0,30,5,0,"(((!((payment_service._p==response))&&(network_from_payment_to_card._p==forwarded2))&&(payment_service._p==request)))", 1, 2, 0);
	trans[8][6]	= settr(333,0,30,1,0,"goto T0_S53", 0, 2, 0);
	trans[8][7]	= settr(334,0,41,6,0,"((!((payment_service._p==response))&&(payment_service._p==request)))", 1, 2, 0);
	trans[8][8]	= settr(335,0,41,1,0,"goto T0_S58", 0, 2, 0);
	trans[8][9]	= settr(336,0,11,1,0,"(1)", 0, 2, 0);
	trans[8][10]	= settr(337,0,11,1,0,"goto T0_init", 0, 2, 0);
	trans[8][13]	= settr(340,0,16,1,0,"break", 0, 2, 0);
	trans[8][17]	= settr(344,0,16,1,0,".(goto)", 0, 2, 0);
	T = trans[8][16] = settr(343,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(343,0,14,0,0,"DO", 0, 2, 0);
	trans[8][14]	= settr(341,0,16,7,0,"(!((payment_service._p==response)))", 1, 2, 0);
	trans[8][15]	= settr(342,0,16,1,0,"goto accept_S44", 0, 2, 0);
	trans[8][18]	= settr(345,0,23,1,0,"break", 0, 2, 0);
	trans[8][24]	= settr(351,0,23,1,0,".(goto)", 0, 2, 0);
	T = trans[8][23] = settr(350,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(350,0,19,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(350,0,21,0,0,"DO", 0, 2, 0);
	trans[8][19]	= settr(346,0,16,8,0,"((!((payment_service._p==response))&&(network_from_payment_to_card._p==forwarded2)))", 1, 2, 0);
	trans[8][20]	= settr(347,0,16,1,0,"goto accept_S44", 0, 2, 0);
	trans[8][21]	= settr(348,0,23,9,0,"(!((payment_service._p==response)))", 1, 2, 0);
	trans[8][22]	= settr(349,0,23,1,0,"goto T0_S47", 0, 2, 0);
	trans[8][25]	= settr(352,0,30,1,0,"break", 0, 2, 0);
	trans[8][31]	= settr(358,0,30,1,0,".(goto)", 0, 2, 0);
	T = trans[8][30] = settr(357,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(357,0,26,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(357,0,28,0,0,"DO", 0, 2, 0);
	trans[8][26]	= settr(353,0,16,10,0,"((!((payment_service._p==response))&&(network_from_payment_to_card._p==forwarded1)))", 1, 2, 0);
	trans[8][27]	= settr(354,0,16,1,0,"goto accept_S44", 0, 2, 0);
	trans[8][28]	= settr(355,0,30,11,0,"(!((payment_service._p==response)))", 1, 2, 0);
	trans[8][29]	= settr(356,0,30,1,0,"goto T0_S53", 0, 2, 0);
	trans[8][32]	= settr(359,0,41,1,0,"break", 0, 2, 0);
	trans[8][42]	= settr(369,0,41,1,0,".(goto)", 0, 2, 0);
	T = trans[8][41] = settr(368,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(368,0,33,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(368,0,35,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(368,0,37,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(368,0,39,0,0,"DO", 0, 2, 0);
	trans[8][33]	= settr(360,0,16,12,0,"(((!((payment_service._p==response))&&(network_from_payment_to_card._p==forwarded1))&&(network_from_payment_to_card._p==forwarded2)))", 1, 2, 0);
	trans[8][34]	= settr(361,0,16,1,0,"goto accept_S44", 0, 2, 0);
	trans[8][35]	= settr(362,0,23,13,0,"((!((payment_service._p==response))&&(network_from_payment_to_card._p==forwarded1)))", 1, 2, 0);
	trans[8][36]	= settr(363,0,23,1,0,"goto T0_S47", 0, 2, 0);
	trans[8][37]	= settr(364,0,30,14,0,"((!((payment_service._p==response))&&(network_from_payment_to_card._p==forwarded2)))", 1, 2, 0);
	trans[8][38]	= settr(365,0,30,1,0,"goto T0_S53", 0, 2, 0);
	trans[8][39]	= settr(366,0,41,15,0,"(!((payment_service._p==response)))", 1, 2, 0);
	trans[8][40]	= settr(367,0,41,1,0,"goto T0_S58", 0, 2, 0);
	trans[8][43]	= settr(370,0,44,1,0,"break", 0, 2, 0);
	trans[8][44]	= settr(371,0,0,16,16,"-end-", 0, 3500, 0);

	/* proctype 7: p2 */

	trans[7] = (Trans **) emalloc(19*sizeof(Trans *));

	trans[7][7]	= settr(316,0,6,1,0,".(goto)", 0, 2, 0);
	T = trans[7][6] = settr(315,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(315,0,3,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(315,0,4,0,0,"DO", 0, 2, 0);
	T = trans[ 7][3] = settr(312,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(312,2,1,0,0,"ATOMIC", 1, 2, 0);
	trans[7][1]	= settr(310,0,6,17,17,"((!(!((payment_service._p==request)))&&!(!((payment_service._p==response)))))", 1, 2, 0); /* m: 2 -> 6,0 */
	reached7[2] = 1;
	trans[7][2]	= settr(0,0,0,0,0,"assert(!((!(!((payment_service._p==request)))&&!(!((payment_service._p==response))))))",0,0,0);
	trans[7][4]	= settr(313,0,14,18,0,"(!(!((payment_service._p==request))))", 1, 2, 0);
	trans[7][5]	= settr(314,0,14,1,0,"goto T0_S3", 0, 2, 0);
	trans[7][8]	= settr(317,0,14,1,0,"break", 0, 2, 0);
	trans[7][15]	= settr(324,0,14,1,0,".(goto)", 0, 2, 0);
	T = trans[7][14] = settr(323,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(323,0,11,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(323,0,12,0,0,"DO", 0, 2, 0);
	T = trans[ 7][11] = settr(320,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(320,2,9,0,0,"ATOMIC", 1, 2, 0);
	trans[7][9]	= settr(318,0,14,19,19,"(!(!((payment_service._p==response))))", 1, 2, 0); /* m: 10 -> 14,0 */
	reached7[10] = 1;
	trans[7][10]	= settr(0,0,0,0,0,"assert(!(!(!((payment_service._p==response)))))",0,0,0);
	trans[7][12]	= settr(321,0,14,1,0,"(1)", 0, 2, 0);
	trans[7][13]	= settr(322,0,14,1,0,"goto T0_S3", 0, 2, 0);
	trans[7][16]	= settr(325,0,17,1,0,"break", 0, 2, 0);
	trans[7][17]	= settr(326,0,18,1,0,"(1)", 0, 2, 0);
	trans[7][18]	= settr(327,0,0,20,20,"-end-", 0, 3500, 0);

	/* proctype 6: p1 */

	trans[6] = (Trans **) emalloc(14*sizeof(Trans *));

	trans[6][6]	= settr(302,0,5,1,0,".(goto)", 0, 2, 0);
	T = trans[6][5] = settr(301,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(301,0,1,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(301,0,3,0,0,"DO", 0, 2, 0);
	trans[6][1]	= settr(297,0,10,21,0,"((!(!((payment_service._p==request)))&&!((payment_service._p==response))))", 1, 2, 0);
	trans[6][2]	= settr(298,0,10,1,0,"goto accept_S4", 0, 2, 0);
	trans[6][3]	= settr(299,0,5,1,0,"(1)", 0, 2, 0);
	trans[6][4]	= settr(300,0,5,1,0,"goto T0_init", 0, 2, 0);
	trans[6][7]	= settr(303,0,10,1,0,"break", 0, 2, 0);
	trans[6][11]	= settr(307,0,10,1,0,".(goto)", 0, 2, 0);
	T = trans[6][10] = settr(306,0,0,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(306,0,8,0,0,"DO", 0, 2, 0);
	trans[6][8]	= settr(304,0,10,22,0,"(!((payment_service._p==response)))", 1, 2, 0);
	trans[6][9]	= settr(305,0,10,1,0,"goto accept_S4", 0, 2, 0);
	trans[6][12]	= settr(308,0,13,1,0,"break", 0, 2, 0);
	trans[6][13]	= settr(309,0,0,23,23,"-end-", 0, 3500, 0);

	/* proctype 5: :init: */

	trans[5] = (Trans **) emalloc(3*sizeof(Trans *));

	trans[5][1]	= settr(295,0,2,24,24,"(run payment_service())", 0, 2, 0);
	trans[5][2]	= settr(296,0,0,25,25,"-end-", 0, 3500, 0);

	/* proctype 4: payment_point_service */

	trans[4] = (Trans **) emalloc(54*sizeof(Trans *));

	trans[4][1]	= settr(242,0,49,26,26,"cable2_r_in?msg,t,type", 1, 509, 0);
	T = trans[4][49] = settr(290,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(290,0,2,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(290,0,14,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(290,0,16,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(290,0,19,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(290,0,29,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(290,0,31,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(290,0,34,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(290,0,44,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(290,0,46,0,0,"IF", 0, 2, 0);
	trans[4][2]	= settr(243,0,11,27,27,"((((t==0)&&(pt0==0))&&(type==1)))", 1, 2, 0);
	trans[4][12]	= settr(253,0,11,1,0,".(goto)", 0, 2, 0);
	T = trans[4][11] = settr(252,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(252,0,3,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(252,0,8,0,0,"DO", 0, 2, 0);
	trans[4][3]	= settr(244,0,4,28,28,"pt0 = 1", 1, 2, 0);
	trans[4][4]	= settr(245,0,5,29,29,"r = pt0", 1, 2, 0);
	trans[4][5]	= settr(246,0,6,30,30,"t0_balance = (t0_balance-3)", 1, 2, 0);
	trans[4][6]	= settr(247,0,51,31,0,"assert((t0_balance==7))", 1, 2, 0);
	trans[4][7]	= settr(248,0,51,1,0,"goto :b5", 0, 2, 0);
	trans[4][8]	= settr(249,0,9,32,32,"pt0 = 2", 1, 2, 0);
	trans[4][9]	= settr(250,0,51,33,33,"r = pt0", 1, 2, 0);
	trans[4][10]	= settr(251,0,51,1,0,"goto :b5", 0, 2, 0);
	trans[4][13]	= settr(254,0,51,1,0,"break", 0, 2, 0);
	trans[4][50]	= settr(291,0,51,1,0,".(goto)", 0, 2, 0);
	trans[4][14]	= settr(255,0,15,34,34,"((((t==0)&&(pt0!=0))&&(type==1)))", 1, 2, 0);
	trans[4][15]	= settr(256,0,51,35,35,"r = 3", 0, 2, 0);
	trans[4][16]	= settr(257,0,17,36,36,"(((t==0)&&(type==2)))", 1, 2, 0);
	trans[4][17]	= settr(258,0,18,37,37,"pt0 = 0", 1, 2, 0);
	trans[4][18]	= settr(259,0,51,38,38,"r = pt0", 1, 2, 0);
	trans[4][19]	= settr(260,0,26,39,39,"((((t==1)&&(pt1==0))&&(type==1)))", 1, 2, 0);
	trans[4][27]	= settr(268,0,26,1,0,".(goto)", 0, 2, 0);
	T = trans[4][26] = settr(267,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(267,0,20,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(267,0,23,0,0,"DO", 0, 2, 0);
	trans[4][20]	= settr(261,0,21,40,40,"pt1 = 1", 1, 2, 0);
	trans[4][21]	= settr(262,0,51,41,41,"r = pt1", 1, 2, 0);
	trans[4][22]	= settr(263,0,51,1,0,"goto :b6", 0, 2, 0);
	trans[4][23]	= settr(264,0,24,42,42,"pt1 = 2", 1, 2, 0);
	trans[4][24]	= settr(265,0,51,43,43,"r = pt1", 1, 2, 0);
	trans[4][25]	= settr(266,0,51,1,0,"goto :b6", 0, 2, 0);
	trans[4][28]	= settr(269,0,51,1,0,"break", 0, 2, 0);
	trans[4][29]	= settr(270,0,30,44,44,"((((t==1)&&(pt1!=0))&&(type==1)))", 1, 2, 0);
	trans[4][30]	= settr(271,0,51,45,45,"r = 3", 0, 2, 0);
	trans[4][31]	= settr(272,0,32,46,46,"(((t==1)&&(type==2)))", 1, 2, 0);
	trans[4][32]	= settr(273,0,33,47,47,"pt1 = 0", 1, 2, 0);
	trans[4][33]	= settr(274,0,51,48,48,"r = pt1", 1, 2, 0);
	trans[4][34]	= settr(275,0,41,49,49,"((((t==2)&&(pt2==0))&&(type==1)))", 1, 2, 0);
	trans[4][42]	= settr(283,0,41,1,0,".(goto)", 0, 2, 0);
	T = trans[4][41] = settr(282,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(282,0,35,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(282,0,38,0,0,"DO", 0, 2, 0);
	trans[4][35]	= settr(276,0,36,50,50,"pt2 = 1", 1, 2, 0);
	trans[4][36]	= settr(277,0,51,51,51,"r = pt2", 1, 2, 0);
	trans[4][37]	= settr(278,0,51,1,0,"goto :b7", 0, 2, 0);
	trans[4][38]	= settr(279,0,39,52,52,"pt2 = 2", 1, 2, 0);
	trans[4][39]	= settr(280,0,51,53,53,"r = pt2", 1, 2, 0);
	trans[4][40]	= settr(281,0,51,1,0,"goto :b7", 0, 2, 0);
	trans[4][43]	= settr(284,0,51,1,0,"break", 0, 2, 0);
	trans[4][44]	= settr(285,0,45,54,54,"((((t==2)&&(pt2!=0))&&(type==1)))", 1, 2, 0);
	trans[4][45]	= settr(286,0,51,55,55,"r = 3", 0, 2, 0);
	trans[4][46]	= settr(287,0,47,56,56,"(((t==2)&&(type==2)))", 1, 2, 0);
	trans[4][47]	= settr(288,0,48,57,57,"pt2 = 0", 1, 2, 0);
	trans[4][48]	= settr(289,0,51,58,58,"r = pt2", 1, 2, 0);
	trans[4][51]	= settr(292,0,1,59,59,"cable2_r_out!ack,tran,r", 1, 10, 0);
	trans[4][52]	= settr(293,0,1,1,0,"goto again", 0, 2, 0);
	trans[4][53]	= settr(0,0,0,0,0,"-end-",0,0,0);

	/* proctype 3: payment_card_service */

	trans[3] = (Trans **) emalloc(52*sizeof(Trans *));

	trans[3][1]	= settr(191,0,47,60,60,"cable1_r_in?msg,t,type", 1, 505, 0);
	T = trans[3][47] = settr(237,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(237,0,2,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(237,0,12,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(237,0,14,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(237,0,17,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(237,0,27,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(237,0,29,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(237,0,32,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(237,0,42,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(237,0,44,0,0,"IF", 0, 2, 0);
	trans[3][2]	= settr(192,0,9,61,61,"((((t==0)&&(ct0==0))&&(type==1)))", 1, 2, 0);
	trans[3][10]	= settr(200,0,9,1,0,".(goto)", 0, 2, 0);
	T = trans[3][9] = settr(199,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(199,0,3,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(199,0,6,0,0,"DO", 0, 2, 0);
	trans[3][3]	= settr(193,0,4,62,62,"ct0 = 1", 1, 2, 0);
	trans[3][4]	= settr(194,0,49,63,63,"r = ct0", 1, 2, 0);
	trans[3][5]	= settr(195,0,49,1,0,"goto :b2", 0, 2, 0);
	trans[3][6]	= settr(196,0,7,64,64,"ct0 = 2", 1, 2, 0);
	trans[3][7]	= settr(197,0,49,65,65,"r = ct0", 1, 2, 0);
	trans[3][8]	= settr(198,0,49,1,0,"goto :b2", 0, 2, 0);
	trans[3][11]	= settr(201,0,49,1,0,"break", 0, 2, 0);
	trans[3][48]	= settr(238,0,49,1,0,".(goto)", 0, 2, 0);
	trans[3][12]	= settr(202,0,13,66,66,"((((t==0)&&(ct0!=0))&&(type==1)))", 1, 2, 0);
	trans[3][13]	= settr(203,0,49,67,67,"r = 3", 0, 2, 0);
	trans[3][14]	= settr(204,0,15,68,68,"(((t==0)&&(type==2)))", 1, 2, 0);
	trans[3][15]	= settr(205,0,16,69,69,"ct0 = 0", 1, 2, 0);
	trans[3][16]	= settr(206,0,49,70,70,"r = ct0", 1, 2, 0);
	trans[3][17]	= settr(207,0,24,71,71,"((((t==1)&&(ct1==0))&&(type==1)))", 1, 2, 0);
	trans[3][25]	= settr(215,0,24,1,0,".(goto)", 0, 2, 0);
	T = trans[3][24] = settr(214,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(214,0,18,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(214,0,21,0,0,"DO", 0, 2, 0);
	trans[3][18]	= settr(208,0,19,72,72,"ct1 = 1", 1, 2, 0);
	trans[3][19]	= settr(209,0,49,73,73,"r = ct1", 1, 2, 0);
	trans[3][20]	= settr(210,0,49,1,0,"goto :b3", 0, 2, 0);
	trans[3][21]	= settr(211,0,22,74,74,"ct1 = 2", 1, 2, 0);
	trans[3][22]	= settr(212,0,49,75,75,"r = ct1", 1, 2, 0);
	trans[3][23]	= settr(213,0,49,1,0,"goto :b3", 0, 2, 0);
	trans[3][26]	= settr(216,0,49,1,0,"break", 0, 2, 0);
	trans[3][27]	= settr(217,0,28,76,76,"((((t==1)&&(ct1!=0))&&(type==1)))", 1, 2, 0);
	trans[3][28]	= settr(218,0,49,77,77,"r = 3", 0, 2, 0);
	trans[3][29]	= settr(219,0,30,78,78,"(((t==1)&&(type==2)))", 1, 2, 0);
	trans[3][30]	= settr(220,0,31,79,79,"ct1 = 0", 1, 2, 0);
	trans[3][31]	= settr(221,0,49,80,80,"r = ct1", 1, 2, 0);
	trans[3][32]	= settr(222,0,39,81,81,"((((t==2)&&(ct2==0))&&(type==1)))", 1, 2, 0);
	trans[3][40]	= settr(230,0,39,1,0,".(goto)", 0, 2, 0);
	T = trans[3][39] = settr(229,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(229,0,33,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(229,0,36,0,0,"DO", 0, 2, 0);
	trans[3][33]	= settr(223,0,34,82,82,"ct2 = 1", 1, 2, 0);
	trans[3][34]	= settr(224,0,49,83,83,"r = ct2", 1, 2, 0);
	trans[3][35]	= settr(225,0,49,1,0,"goto :b4", 0, 2, 0);
	trans[3][36]	= settr(226,0,37,84,84,"ct2 = 2", 1, 2, 0);
	trans[3][37]	= settr(227,0,49,85,85,"r = ct2", 1, 2, 0);
	trans[3][38]	= settr(228,0,49,1,0,"goto :b4", 0, 2, 0);
	trans[3][41]	= settr(231,0,49,1,0,"break", 0, 2, 0);
	trans[3][42]	= settr(232,0,43,86,86,"((((t==2)&&(ct2!=0))&&(type==1)))", 1, 2, 0);
	trans[3][43]	= settr(233,0,49,87,87,"r = 3", 0, 2, 0);
	trans[3][44]	= settr(234,0,45,88,88,"(((t==2)&&(type==2)))", 1, 2, 0);
	trans[3][45]	= settr(235,0,46,89,89,"ct2 = 0", 1, 2, 0);
	trans[3][46]	= settr(236,0,49,90,90,"r = ct2", 1, 2, 0);
	trans[3][49]	= settr(239,0,1,91,91,"cable1_r_out!ack,tran,r", 1, 6, 0);
	trans[3][50]	= settr(240,0,1,1,0,"goto again", 0, 2, 0);
	trans[3][51]	= settr(0,0,0,0,0,"-end-",0,0,0);

	/* proctype 2: network_from_payment_to_point */

	trans[2] = (Trans **) emalloc(11*sizeof(Trans *));

	trans[2][8]	= settr(188,0,7,1,0,".(goto)", 0, 2, 0);
	T = trans[2][7] = settr(187,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(187,0,1,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(187,0,3,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(187,0,4,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(187,0,6,0,0,"DO", 0, 2, 0);
	trans[2][1]	= settr(181,0,2,92,92,"cable2_s_out?m,t,type", 1, 507, 0);
	trans[2][2]	= settr(182,0,7,93,93,"cable2_r_in!m,t,type", 1, 9, 0);
	trans[2][3]	= settr(183,0,7,94,94,"cable2_s_out?m,t,type", 1, 507, 0);
	trans[2][4]	= settr(184,0,5,95,95,"cable2_r_out?m,t,r", 1, 510, 0);
	trans[2][5]	= settr(185,0,7,96,96,"cable2_s_in!m,t,r", 1, 8, 0);
	trans[2][6]	= settr(186,0,7,97,97,"cable2_r_out?m,t,r", 1, 510, 0);
	trans[2][9]	= settr(189,0,10,1,0,"break", 0, 2, 0);
	trans[2][10]	= settr(190,0,0,98,98,"-end-", 0, 3500, 0);

	/* proctype 1: network_from_payment_to_card */

	trans[1] = (Trans **) emalloc(11*sizeof(Trans *));

	trans[1][8]	= settr(178,0,7,1,0,".(goto)", 0, 2, 0);
	T = trans[1][7] = settr(177,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(177,0,1,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(177,0,3,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(177,0,4,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(177,0,6,0,0,"DO", 0, 2, 0);
	trans[1][1]	= settr(171,0,2,99,99,"cable1_s_out?m,t,type", 1, 503, 0);
	trans[1][2]	= settr(172,0,7,100,100,"cable1_r_in!m,t,type", 1, 5, 0);
	trans[1][3]	= settr(173,0,7,101,101,"cable1_s_out?m,t,type", 1, 503, 0);
	trans[1][4]	= settr(174,0,5,102,102,"cable1_r_out?m,t,r", 1, 506, 0);
	trans[1][5]	= settr(175,0,7,103,103,"cable1_s_in!m,t,r", 1, 4, 0);
	trans[1][6]	= settr(176,0,7,104,104,"cable1_r_out?m,t,r", 1, 506, 0);
	trans[1][9]	= settr(179,0,10,1,0,"break", 0, 2, 0);
	trans[1][10]	= settr(180,0,0,105,105,"-end-", 0, 3500, 0);

	/* proctype 0: payment_service */

	trans[0] = (Trans **) emalloc(172*sizeof(Trans *));

	trans[0][1]	= settr(0,0,57,106,106,"cable1_s_out!msg,tran,1", 1, 3, 0);
	T = trans[0][57] = settr(56,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(56,0,2,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(56,0,54,0,0,"IF", 0, 2, 0);
	trans[0][2]	= settr(1,0,52,107,107,"cable1_s_in?ack,tran,r", 1, 504, 0);
	T = trans[0][52] = settr(51,0,0,0,0,"IF", 1, 2, 0);
	T = T->nxt	= settr(51,0,3,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(51,0,23,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(51,0,34,0,0,"IF", 0, 2, 0);
	trans[0][3]	= settr(2,0,13,108,108,"((r==3))", 0, 2, 0);
	T = trans[0][13] = settr(12,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(12,0,4,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(12,0,7,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(12,0,10,0,0,"IF", 0, 2, 0);
	trans[0][4]	= settr(3,0,5,109,0,"((tran==0))", 1, 2, 0);
	trans[0][5]	= settr(4,0,6,110,0,"assert(((ct0==1)||(ct0==2)))", 1, 2, 0);
	trans[0][6]	= settr(5,0,21,111,0,"assert((((pt0==0)||(pt0==1))||(pt0==2)))", 1, 2, 0);
	trans[0][14]	= settr(13,0,21,1,0,".(goto)", 0, 2, 0);
	trans[0][7]	= settr(6,0,8,112,0,"((tran==1))", 1, 2, 0);
	trans[0][8]	= settr(7,0,9,113,0,"assert(((ct1==1)||(ct1==2)))", 1, 2, 0);
	trans[0][9]	= settr(8,0,21,114,0,"assert((((pt1==0)||(pt1==1))||(pt1==2)))", 1, 2, 0);
	trans[0][10]	= settr(9,0,11,115,0,"((tran==2))", 1, 2, 0);
	trans[0][11]	= settr(10,0,12,116,0,"assert(((ct2==1)||(ct2==2)))", 1, 2, 0);
	trans[0][12]	= settr(11,0,21,117,0,"assert((((pt2==0)||(pt2==1))||(pt2==2)))", 1, 2, 0);
	T = trans[ 0][21] = settr(20,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(20,0,19,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][19] = settr(18,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(18,0,15,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(18,0,17,0,0,"IF", 0, 2, 0);
	trans[0][15]	= settr(14,0,16,118,0,"((tran<2))", 1, 2, 0);
	trans[0][16]	= settr(15,0,1,119,119,"tran = (tran+1)", 1, 2, 0);
	trans[0][20]	= settr(19,0,1,1,0,".(goto)", 1, 2, 0);
	trans[0][17]	= settr(16,0,18,2,0,"else", 0, 2, 0);
	trans[0][18]	= settr(17,0,1,120,120,"tran = 0", 1, 2, 0);
	trans[0][22]	= settr(21,0,1,1,0,"goto again1", 1, 2, 0);
	trans[0][53]	= settr(52,0,1,1,0,".(goto)", 1, 2, 0);
	trans[0][23]	= settr(22,0,24,121,0,"((r==1))", 0, 2, 0);
	trans[0][24]	= settr(23,0,31,122,0,"printf('card tran:%d, done:%d\\n',tran,r)", 1, 2, 0);
	T = trans[0][31] = settr(30,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(30,0,25,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(30,0,27,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(30,0,29,0,0,"IF", 0, 2, 0);
	trans[0][25]	= settr(24,0,26,123,0,"((tran==0))", 1, 2, 0);
	trans[0][26]	= settr(25,0,60,124,0,"assert(((ct0==1)&&(pt0==0)))", 1, 2, 0);
	trans[0][32]	= settr(31,0,60,1,0,".(goto)", 0, 2, 0);
	trans[0][27]	= settr(26,0,28,125,0,"((tran==1))", 1, 2, 0);
	trans[0][28]	= settr(27,0,60,126,0,"assert(((ct1==1)&&(pt1==0)))", 1, 2, 0);
	trans[0][29]	= settr(28,0,30,127,0,"((tran==2))", 1, 2, 0);
	trans[0][30]	= settr(29,0,60,128,0,"assert(((ct2==1)&&(pt2==0)))", 1, 2, 0);
	trans[0][33]	= settr(32,0,60,1,0,"goto next", 0, 2, 0);
	trans[0][34]	= settr(33,0,35,129,0,"((r==2))", 0, 2, 0);
	trans[0][35]	= settr(34,0,42,130,0,"printf('card tran:%d, done::%d\\n',tran,r)", 1, 2, 0);
	T = trans[0][42] = settr(41,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(41,0,36,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(41,0,38,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(41,0,40,0,0,"IF", 0, 2, 0);
	trans[0][36]	= settr(35,0,37,131,0,"((tran==0))", 1, 2, 0);
	trans[0][37]	= settr(36,0,50,132,0,"assert(((ct0==2)&&(pt0==0)))", 1, 2, 0);
	trans[0][43]	= settr(42,0,50,1,0,".(goto)", 0, 2, 0);
	trans[0][38]	= settr(37,0,39,133,0,"((tran==1))", 1, 2, 0);
	trans[0][39]	= settr(38,0,50,134,0,"assert(((ct1==2)&&(pt1==0)))", 1, 2, 0);
	trans[0][40]	= settr(39,0,41,135,0,"((tran==2))", 1, 2, 0);
	trans[0][41]	= settr(40,0,50,136,0,"assert(((ct2==2)&&(pt2==0)))", 1, 2, 0);
	T = trans[ 0][50] = settr(49,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(49,0,48,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][48] = settr(47,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(47,0,44,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(47,0,46,0,0,"IF", 0, 2, 0);
	trans[0][44]	= settr(43,0,45,137,0,"((tran<2))", 1, 2, 0);
	trans[0][45]	= settr(44,0,1,138,138,"tran = (tran+1)", 1, 2, 0);
	trans[0][49]	= settr(48,0,1,1,0,".(goto)", 1, 2, 0);
	trans[0][46]	= settr(45,0,47,2,0,"else", 0, 2, 0);
	trans[0][47]	= settr(46,0,1,139,139,"tran = 0", 1, 2, 0);
	trans[0][51]	= settr(50,0,1,1,0,"goto again1", 1, 2, 0);
	trans[0][58]	= settr(57,0,1,1,0,".(goto)", 1, 2, 0);
	trans[0][54]	= settr(53,0,55,140,0,"(timeout)", 1, 3000, 0);
	trans[0][55]	= settr(54,0,1,141,0,"printf('card tran:%d, timeout\\n',tran)", 1, 2, 0);
	trans[0][56]	= settr(55,0,1,1,0,"goto again1", 1, 2, 0);
	trans[0][59]	= settr(58,0,1,1,0,"goto again1", 1, 2, 0);
	trans[0][60]	= settr(59,0,61,142,0,"printf('doing next \\n')", 0, 2, 0);
	trans[0][61]	= settr(60,0,120,143,143,"cable2_s_out!msg,tran,1", 1, 7, 0);
	T = trans[0][120] = settr(119,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(119,0,62,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(119,0,117,0,0,"IF", 0, 2, 0);
	trans[0][62]	= settr(61,0,115,144,144,"cable2_s_in?ack,tran,r", 1, 508, 0);
	T = trans[0][115] = settr(114,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(114,0,63,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(114,0,83,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(114,0,104,0,0,"IF", 0, 2, 0);
	trans[0][63]	= settr(62,0,73,145,145,"((r==3))", 0, 2, 0);
	T = trans[0][73] = settr(72,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(72,0,64,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(72,0,67,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(72,0,70,0,0,"IF", 0, 2, 0);
	trans[0][64]	= settr(63,0,65,146,0,"((tran==0))", 1, 2, 0);
	trans[0][65]	= settr(64,0,66,147,0,"assert((ct0==1))", 1, 2, 0);
	trans[0][66]	= settr(65,0,81,148,0,"assert(((pt0==1)||(pt0==2)))", 1, 2, 0);
	trans[0][74]	= settr(73,0,81,1,0,".(goto)", 0, 2, 0);
	trans[0][67]	= settr(66,0,68,149,0,"((tran==1))", 1, 2, 0);
	trans[0][68]	= settr(67,0,69,150,0,"assert((ct1==1))", 1, 2, 0);
	trans[0][69]	= settr(68,0,81,151,0,"assert(((pt1==1)||(pt1==2)))", 1, 2, 0);
	trans[0][70]	= settr(69,0,71,152,0,"((tran==2))", 1, 2, 0);
	trans[0][71]	= settr(70,0,72,153,0,"assert((ct2==1))", 1, 2, 0);
	trans[0][72]	= settr(71,0,81,154,0,"assert(((pt2==1)||(pt2==2)))", 1, 2, 0);
	T = trans[ 0][81] = settr(80,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(80,0,79,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][79] = settr(78,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(78,0,75,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(78,0,77,0,0,"IF", 0, 2, 0);
	trans[0][75]	= settr(74,0,76,155,0,"((tran<2))", 1, 2, 0);
	trans[0][76]	= settr(75,0,1,156,156,"tran = (tran+1)", 1, 2, 0);
	trans[0][80]	= settr(79,0,1,1,0,".(goto)", 1, 2, 0);
	trans[0][77]	= settr(76,0,78,2,0,"else", 0, 2, 0);
	trans[0][78]	= settr(77,0,1,157,157,"tran = 0", 1, 2, 0);
	trans[0][82]	= settr(81,0,1,1,0,"goto again1", 1, 2, 0);
	trans[0][116]	= settr(115,0,122,1,0,".(goto)", 0, 2, 0);
	trans[0][83]	= settr(82,0,84,158,0,"((r==1))", 0, 2, 0);
	trans[0][84]	= settr(83,0,94,159,0,"printf('point tran:%d, done:%d\\n',tran,r)", 1, 2, 0);
	T = trans[0][94] = settr(93,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(93,0,85,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(93,0,88,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(93,0,91,0,0,"IF", 0, 2, 0);
	trans[0][85]	= settr(84,0,86,160,0,"((tran==0))", 1, 2, 0);
	trans[0][86]	= settr(85,0,87,161,0,"assert((ct0==pt0))", 1, 2, 0);
	trans[0][87]	= settr(86,0,102,162,0,"assert((ct0==1))", 1, 2, 0);
	trans[0][95]	= settr(94,0,102,1,0,".(goto)", 0, 2, 0);
	trans[0][88]	= settr(87,0,89,163,0,"((tran==1))", 1, 2, 0);
	trans[0][89]	= settr(88,0,90,164,0,"assert((ct1==pt1))", 1, 2, 0);
	trans[0][90]	= settr(89,0,102,165,0,"assert((ct1==1))", 1, 2, 0);
	trans[0][91]	= settr(90,0,92,166,0,"((tran==2))", 1, 2, 0);
	trans[0][92]	= settr(91,0,93,167,0,"assert((ct2==pt2))", 1, 2, 0);
	trans[0][93]	= settr(92,0,102,168,0,"assert((ct2==1))", 1, 2, 0);
	T = trans[ 0][102] = settr(101,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(101,0,100,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][100] = settr(99,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(99,0,96,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(99,0,98,0,0,"IF", 0, 2, 0);
	trans[0][96]	= settr(95,0,97,169,0,"((tran<2))", 1, 2, 0);
	trans[0][97]	= settr(96,0,1,170,170,"tran = (tran+1)", 1, 2, 0);
	trans[0][101]	= settr(100,0,1,1,0,".(goto)", 1, 2, 0);
	trans[0][98]	= settr(97,0,99,2,0,"else", 0, 2, 0);
	trans[0][99]	= settr(98,0,1,171,171,"tran = 0", 1, 2, 0);
	trans[0][103]	= settr(102,0,1,1,0,"goto again1", 1, 2, 0);
	trans[0][104]	= settr(103,0,105,172,0,"((r==2))", 0, 2, 0);
	trans[0][105]	= settr(104,0,112,173,0,"printf('point tran:%d, done:%d\\n',tran,r)", 1, 2, 0);
	T = trans[0][112] = settr(111,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(111,0,106,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(111,0,108,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(111,0,110,0,0,"IF", 0, 2, 0);
	trans[0][106]	= settr(105,0,107,174,0,"((tran==0))", 1, 2, 0);
	trans[0][107]	= settr(106,0,122,175,0,"assert(((ct0==1)&&(pt0==2)))", 1, 2, 0);
	trans[0][113]	= settr(112,0,122,1,0,".(goto)", 0, 2, 0);
	trans[0][108]	= settr(107,0,109,176,0,"((tran==1))", 1, 2, 0);
	trans[0][109]	= settr(108,0,122,177,0,"assert(((ct1==1)&&(pt1==2)))", 1, 2, 0);
	trans[0][110]	= settr(109,0,111,178,0,"((tran==2))", 1, 2, 0);
	trans[0][111]	= settr(110,0,122,179,0,"assert(((ct2==1)&&(pt2==2)))", 1, 2, 0);
	trans[0][114]	= settr(113,0,122,1,0,"goto rollback1", 0, 2, 0);
	trans[0][121]	= settr(120,0,122,1,0,".(goto)", 0, 2, 0);
	trans[0][117]	= settr(116,0,118,180,0,"(timeout)", 1, 3000, 0);
	trans[0][118]	= settr(117,0,60,181,0,"printf('point tran:%d, timeout\\n',tran)", 1, 2, 0);
	trans[0][119]	= settr(118,0,60,1,0,"goto next", 0, 2, 0);
	trans[0][122]	= settr(121,0,123,182,0,"printf('doing rollback card tran:%d \\n',tran)", 1, 2, 0);
	trans[0][123]	= settr(122,0,141,183,183,"cable1_s_out!msg,tran,2", 1, 3, 0);
	T = trans[0][141] = settr(140,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(140,0,124,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(140,0,138,0,0,"IF", 0, 2, 0);
	trans[0][124]	= settr(123,0,136,184,184,"cable1_s_in?ack,tran,r", 1, 504, 0);
	T = trans[0][136] = settr(135,0,0,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(135,0,125,0,0,"IF", 0, 2, 0);
	trans[0][125]	= settr(124,0,126,185,0,"((r==0))", 0, 2, 0);
	trans[0][126]	= settr(125,0,133,186,0,"printf('card tran:%d, rollback:%d\\n',tran,r)", 1, 2, 0);
	T = trans[0][133] = settr(132,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(132,0,127,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(132,0,129,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(132,0,131,0,0,"IF", 0, 2, 0);
	trans[0][127]	= settr(126,0,128,187,0,"((tran==0))", 1, 2, 0);
	trans[0][128]	= settr(127,0,143,188,0,"assert(((ct0==0)&&(pt0==2)))", 1, 2, 0);
	trans[0][134]	= settr(133,0,143,1,0,".(goto)", 0, 2, 0);
	trans[0][129]	= settr(128,0,130,189,0,"((tran==1))", 1, 2, 0);
	trans[0][130]	= settr(129,0,143,190,0,"assert(((ct1==0)&&(pt1==2)))", 1, 2, 0);
	trans[0][131]	= settr(130,0,132,191,0,"((tran==2))", 1, 2, 0);
	trans[0][132]	= settr(131,0,143,192,0,"assert(((ct2==0)&&(pt2==2)))", 1, 2, 0);
	trans[0][135]	= settr(134,0,143,1,0,"goto rollback2", 0, 2, 0);
	trans[0][137]	= settr(136,0,143,1,0,".(goto)", 0, 2, 0);
	trans[0][142]	= settr(141,0,143,1,0,".(goto)", 0, 2, 0);
	trans[0][138]	= settr(137,0,139,193,0,"(timeout)", 1, 3000, 0);
	trans[0][139]	= settr(138,0,122,194,0,"printf('card tran:%d,　rollback timeout\\n',tran)", 1, 2, 0);
	trans[0][140]	= settr(139,0,122,1,0,"goto rollback1", 0, 2, 0);
	trans[0][143]	= settr(142,0,144,195,0,"printf('doing rollback point tran:%d \\n',tran)", 1, 2, 0);
	trans[0][144]	= settr(143,0,169,196,196,"cable2_s_out!msg,tran,2", 1, 7, 0);
	T = trans[0][169] = settr(168,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(168,0,145,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(168,0,166,0,0,"IF", 0, 2, 0);
	trans[0][145]	= settr(144,0,164,197,197,"cable2_s_in?ack,tran,r", 1, 508, 0);
	T = trans[0][164] = settr(163,0,0,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(163,0,146,0,0,"IF", 0, 2, 0);
	trans[0][146]	= settr(145,0,147,198,0,"((r==0))", 0, 2, 0);
	trans[0][147]	= settr(146,0,154,199,0,"printf('point tran:%d, rollback:%d\\n',tran,r)", 1, 2, 0);
	T = trans[0][154] = settr(153,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(153,0,148,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(153,0,150,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(153,0,152,0,0,"IF", 0, 2, 0);
	trans[0][148]	= settr(147,0,149,200,0,"((tran==0))", 1, 2, 0);
	trans[0][149]	= settr(148,0,162,201,0,"assert(((ct0==0)&&(pt0==0)))", 1, 2, 0);
	trans[0][155]	= settr(154,0,162,1,0,".(goto)", 0, 2, 0);
	trans[0][150]	= settr(149,0,151,202,0,"((tran==1))", 1, 2, 0);
	trans[0][151]	= settr(150,0,162,203,0,"assert(((ct1==0)&&(pt1==0)))", 1, 2, 0);
	trans[0][152]	= settr(151,0,153,204,0,"((tran==2))", 1, 2, 0);
	trans[0][153]	= settr(152,0,162,205,0,"assert(((ct2==0)&&(pt2==0)))", 1, 2, 0);
	T = trans[ 0][162] = settr(161,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(161,0,160,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][160] = settr(159,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(159,0,156,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(159,0,158,0,0,"IF", 0, 2, 0);
	trans[0][156]	= settr(155,0,157,206,0,"((tran<2))", 1, 2, 0);
	trans[0][157]	= settr(156,0,1,207,207,"tran = (tran+1)", 1, 2, 0);
	trans[0][161]	= settr(160,0,1,1,0,".(goto)", 1, 2, 0);
	trans[0][158]	= settr(157,0,159,2,0,"else", 0, 2, 0);
	trans[0][159]	= settr(158,0,1,208,208,"tran = 0", 1, 2, 0);
	trans[0][163]	= settr(162,0,1,1,0,"goto again1", 1, 2, 0);
	trans[0][165]	= settr(164,0,171,1,0,".(goto)", 0, 2, 0);
	trans[0][170]	= settr(169,0,171,1,0,".(goto)", 0, 2, 0);
	trans[0][166]	= settr(165,0,167,209,0,"(timeout)", 1, 3000, 0);
	trans[0][167]	= settr(166,0,143,210,0,"printf('point tran:%d,　rollback timeout\\n',tran)", 1, 2, 0);
	trans[0][168]	= settr(167,0,143,1,0,"goto rollback2", 0, 2, 0);
	trans[0][171]	= settr(170,0,0,211,211,"-end-", 0, 3500, 0);
	/* np_ demon: */
	trans[_NP_] = (Trans **) emalloc(3*sizeof(Trans *));
	T = trans[_NP_][0] = settr(9997,0,1,_T5,0,"(np_)", 1,2,0);
	    T->nxt	  = settr(9998,0,0,_T2,0,"(1)",   0,2,0);
	T = trans[_NP_][1] = settr(9999,0,1,_T5,0,"(np_)", 1,2,0);
}

Trans *
settr(	int t_id, int a, int b, int c, int d,
	char *t, int g, int tpe0, int tpe1)
{	Trans *tmp = (Trans *) emalloc(sizeof(Trans));

	tmp->atom  = a&(6|32);	/* only (2|8|32) have meaning */
	if (!g) tmp->atom |= 8;	/* no global references */
	tmp->st    = b;
	tmp->tpe[0] = tpe0;
	tmp->tpe[1] = tpe1;
	tmp->tp    = t;
	tmp->t_id  = t_id;
	tmp->forw  = c;
	tmp->back  = d;
	return tmp;
}

Trans *
cpytr(Trans *a)
{	Trans *tmp = (Trans *) emalloc(sizeof(Trans));

	int i;
	tmp->atom  = a->atom;
	tmp->st    = a->st;
#ifdef HAS_UNLESS
	tmp->e_trans = a->e_trans;
	for (i = 0; i < HAS_UNLESS; i++)
		tmp->escp[i] = a->escp[i];
#endif
	tmp->tpe[0] = a->tpe[0];
	tmp->tpe[1] = a->tpe[1];
	for (i = 0; i < 6; i++)
	{	tmp->qu[i] = a->qu[i];
		tmp->ty[i] = a->ty[i];
	}
	tmp->tp    = (char *) emalloc(strlen(a->tp)+1);
	strcpy(tmp->tp, a->tp);
	tmp->t_id  = a->t_id;
	tmp->forw  = a->forw;
	tmp->back  = a->back;
	return tmp;
}

#ifndef NOREDUCE
int
srinc_set(int n)
{	if (n <= 2) return LOCAL;
	if (n <= 2+  DELTA) return Q_FULL_F; /* 's' or nfull  */
	if (n <= 2+2*DELTA) return Q_EMPT_F; /* 'r' or nempty */
	if (n <= 2+3*DELTA) return Q_EMPT_T; /* empty */
	if (n <= 2+4*DELTA) return Q_FULL_T; /* full  */
	if (n ==   5*DELTA) return GLOBAL;
	if (n ==   6*DELTA) return TIMEOUT_F;
	if (n ==   7*DELTA) return ALPHA_F;
	Uerror("cannot happen srinc_class");
	return BAD;
}
int
srunc(int n, int m)
{	switch(m) {
	case Q_FULL_F: return n-2;
	case Q_EMPT_F: return n-2-DELTA;
	case Q_EMPT_T: return n-2-2*DELTA;
	case Q_FULL_T: return n-2-3*DELTA;
	case ALPHA_F:
	case TIMEOUT_F: return 257; /* non-zero, and > MAXQ */
	}
	Uerror("cannot happen srunc");
	return 0;
}
#endif
int cnt;
#ifdef HAS_UNLESS
int
isthere(Trans *a, int b)
{	Trans *t;
	for (t = a; t; t = t->nxt)
		if (t->t_id == b)
			return 1;
	return 0;
}
#endif
#ifndef NOREDUCE
int
mark_safety(Trans *t) /* for conditional safety */
{	int g = 0, i, j, k;

	if (!t) return 0;
	if (t->qu[0])
		return (t->qu[1])?2:1;	/* marked */

	for (i = 0; i < 2; i++)
	{	j = srinc_set(t->tpe[i]);
		if (j >= GLOBAL && j != ALPHA_F)
			return -1;
		if (j != LOCAL)
		{	k = srunc(t->tpe[i], j);
			if (g == 0
			||  t->qu[0] != k
			||  t->ty[0] != j)
			{	t->qu[g] = k;
				t->ty[g] = j;
				g++;
	}	}	}
	return g;
}
#endif
void
retrans(int n, int m, int is, short srcln[], uchar reach[], uchar lpstate[])
	/* process n, with m states, is=initial state */
{	Trans *T0, *T1, *T2, *T3;
	Trans *T4, *T5; /* t_reverse or has_unless */
	int i;
#if defined(HAS_UNLESS) || !defined(NOREDUCE)
	int k;
#endif
#ifndef NOREDUCE
	int g, h, j, aa;
#endif
#ifdef HAS_UNLESS
	int p;
#endif
	if (state_tables >= 4)
	{	printf("STEP 1 %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
		return;
	}
	do {
		for (i = 1, cnt = 0; i < m; i++)
		{	T2 = trans[n][i];
			T1 = T2?T2->nxt:(Trans *)0;
/* prescan: */		for (T0 = T1; T0; T0 = T0->nxt)
/* choice in choice */	{	if (T0->st && trans[n][T0->st]
				&&  trans[n][T0->st]->nxt)
					break;
			}
#if 0
		if (T0)
		printf("\tstate %d / %d: choice in choice\n",
		i, T0->st);
#endif
			if (T0)
			for (T0 = T1; T0; T0 = T0->nxt)
			{	T3 = trans[n][T0->st];
				if (!T3->nxt)
				{	T2->nxt = cpytr(T0);
					T2 = T2->nxt;
					imed(T2, T0->st, n, i);
					continue;
				}
				do {	T3 = T3->nxt;
					T2->nxt = cpytr(T3);
					T2 = T2->nxt;
					imed(T2, T0->st, n, i);
				} while (T3->nxt);
				cnt++;
			}
		}
	} while (cnt);
	if (state_tables >= 3)
	{	printf("STEP 2 %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
		return;
	}
	for (i = 1; i < m; i++)
	{	if (trans[n][i] && trans[n][i]->nxt) /* optimize */
		{	T1 = trans[n][i]->nxt;
#if 0
			printf("\t\tpull %d (%d) to %d\n",
			T1->st, T1->forw, i);
#endif
			srcln[i] = srcln[T1->st];	/* Oyvind Teig, 5.2.0 */

			if (!trans[n][T1->st]) continue;
			T0 = cpytr(trans[n][T1->st]);
			trans[n][i] = T0;
			reach[T1->st] = 1;
			imed(T0, T1->st, n, i);
			for (T1 = T1->nxt; T1; T1 = T1->nxt)
			{
#if 0
			printf("\t\tpull %d (%d) to %d\n",
				T1->st, T1->forw, i);
#endif
		/*		srcln[i] = srcln[T1->st];  gh: not useful */
				if (!trans[n][T1->st]) continue;
				T0->nxt = cpytr(trans[n][T1->st]);
				T0 = T0->nxt;
				reach[T1->st] = 1;
				imed(T0, T1->st, n, i);
	}	}	}
	if (state_tables >= 2)
	{	printf("STEP 3 %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
		return;
	}
#ifdef HAS_UNLESS
	for (i = 1; i < m; i++)
	{	if (!trans[n][i]) continue;
		/* check for each state i if an
		 * escape to some state p is defined
		 * if so, copy and mark p's transitions
		 * and prepend them to the transition-
		 * list of state i
		 */
	 if (!like_java) /* the default */
	 {	for (T0 = trans[n][i]; T0; T0 = T0->nxt)
		for (k = HAS_UNLESS-1; k >= 0; k--)
		{	if (p = T0->escp[k])
			for (T1 = trans[n][p]; T1; T1 = T1->nxt)
			{	if (isthere(trans[n][i], T1->t_id))
					continue;
				T2 = cpytr(T1);
				T2->e_trans = p;
				T2->nxt = trans[n][i];
				trans[n][i] = T2;
		}	}
	 } else /* outermost unless checked first */
	 {	T4 = T3 = (Trans *) 0;
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
		for (k = HAS_UNLESS-1; k >= 0; k--)
		{	if (p = T0->escp[k])
			for (T1 = trans[n][p]; T1; T1 = T1->nxt)
			{	if (isthere(trans[n][i], T1->t_id))
					continue;
				T2 = cpytr(T1);
				T2->nxt = (Trans *) 0;
				T2->e_trans = p;
				if (T3)	T3->nxt = T2;
				else	T4 = T2;
				T3 = T2;
		}	}
		if (T4)
		{	T3->nxt = trans[n][i];
			trans[n][i] = T4;
		}
	 }
	}
#endif
#ifndef NOREDUCE
	for (i = 1; i < m; i++)
	{	if (a_cycles)
		{ /* moves through these states are visible */
	#if PROG_LAB>0 && defined(HAS_NP)
			if (progstate[n][i])
				goto degrade;
			for (T1 = trans[n][i]; T1; T1 = T1->nxt)
				if (progstate[n][T1->st])
					goto degrade;
	#endif
			if (accpstate[n][i] || visstate[n][i])
				goto degrade;
			for (T1 = trans[n][i]; T1; T1 = T1->nxt)
				if (accpstate[n][T1->st])
					goto degrade;
		}
		T1 = trans[n][i];
		if (!T1) continue;
		g = mark_safety(T1);	/* V3.3.1 */
		if (g < 0) goto degrade; /* global */
		/* check if mixing of guards preserves reduction */
		if (T1->nxt)
		{	k = 0;
			for (T0 = T1; T0; T0 = T0->nxt)
			{	if (!(T0->atom&8))
					goto degrade;
				for (aa = 0; aa < 2; aa++)
				{	j = srinc_set(T0->tpe[aa]);
					if (j >= GLOBAL && j != ALPHA_F)
						goto degrade;
					if (T0->tpe[aa]
					&&  T0->tpe[aa]
					!=  T1->tpe[0])
						k = 1;
			}	}
			/* g = 0;	V3.3.1 */
			if (k)	/* non-uniform selection */
			for (T0 = T1; T0; T0 = T0->nxt)
			for (aa = 0; aa < 2; aa++)
			{	j = srinc_set(T0->tpe[aa]);
				if (j != LOCAL)
				{	k = srunc(T0->tpe[aa], j);
					for (h = 0; h < 6; h++)
						if (T1->qu[h] == k
						&&  T1->ty[h] == j)
							break;
					if (h >= 6)
					{	T1->qu[g%6] = k;
						T1->ty[g%6] = j;
						g++;
			}	}	}
			if (g > 6)
			{	T1->qu[0] = 0;	/* turn it off */
				printf("pan: warning, line %d, ",
					srcln[i]);
			 	printf("too many stmnt types (%d)",
					g);
			  	printf(" in selection\n");
			  goto degrade;
			}
		}
		/* mark all options global if >=1 is global */
		for (T1 = trans[n][i]; T1; T1 = T1->nxt)
			if (!(T1->atom&8)) break;
		if (T1)
degrade:	for (T1 = trans[n][i]; T1; T1 = T1->nxt)
			T1->atom &= ~8;	/* mark as unsafe */
		/* can only mix 'r's or 's's if on same chan */
		/* and not mixed with other local operations */
		T1 = trans[n][i];
		if (!T1 || T1->qu[0]) continue;
		j = T1->tpe[0];
		if (T1->nxt && T1->atom&8)
		{ if (j == 5*DELTA)
		  {	printf("warning: line %d ", srcln[i]);
			printf("mixed condition ");
			printf("(defeats reduction)\n");
			goto degrade;
		  }
		  for (T0 = T1; T0; T0 = T0->nxt)
		  for (aa = 0; aa < 2; aa++)
		  if  (T0->tpe[aa] && T0->tpe[aa] != j)
		  {	printf("warning: line %d ", srcln[i]);
			printf("[%d-%d] mixed %stion ",
				T0->tpe[aa], j, 
				(j==5*DELTA)?"condi":"selec");
			printf("(defeats reduction)\n");
			printf("	'%s' <-> '%s'\n",
				T1->tp, T0->tp);
			goto degrade;
		} }
	}
#endif
	for (i = 1; i < m; i++)
	{	T2 = trans[n][i];
		if (!T2
		||  T2->nxt
		||  strncmp(T2->tp, ".(goto)", 7)
		||  !stopstate[n][i])
			continue;
		stopstate[n][T2->st] = 1;
	}
	if (state_tables && !verbose)
	{	if (dodot)
		{	char buf[256], *q = buf, *p = procname[n];
			while (*p != '\0')
			{	if (*p != ':')
				{	*q++ = *p;
				}
				p++;
			}
			*q = '\0';
			printf("digraph ");
			switch (Btypes[n]) {
			case I_PROC:  printf("init {\n"); break;
			case N_CLAIM: printf("claim_%s {\n", buf); break;
			case E_TRACE: printf("notrace {\n"); break;
			case N_TRACE: printf("trace {\n"); break;
			default:      printf("p_%s {\n", buf); break;
			}
			printf("size=\"8,10\";\n");
			printf("  GT [shape=box,style=dotted,label=\"%s\"];\n", buf);
			printf("  GT -> S%d;\n", is);
		} else
		{	switch (Btypes[n]) {
			case I_PROC:  printf("init\n"); break;
			case N_CLAIM: printf("claim %s\n", procname[n]); break;
			case E_TRACE: printf("notrace assertion\n"); break;
			case N_TRACE: printf("trace assertion\n"); break;
			default:      printf("proctype %s\n", procname[n]); break;
		}	}
		for (i = 1; i < m; i++)
		{	reach[i] = 1;
		}
		tagtable(n, m, is, srcln, reach);
		if (dodot) printf("}\n");
	} else
	for (i = 1; i < m; i++)
	{	int nrelse;
		if (Btypes[n] != N_CLAIM)
		{	for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			{	if (T0->st == i
				&& strcmp(T0->tp, "(1)") == 0)
				{	printf("error: proctype '%s' ",
						procname[n]);
		  			printf("line %d, state %d: has un",
						srcln[i], i);
					printf("conditional self-loop\n");
					pan_exit(1);
		}	}	}
		nrelse = 0;
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
		{	if (strcmp(T0->tp, "else") == 0)
				nrelse++;
		}
		if (nrelse > 1)
		{	printf("error: proctype '%s' state",
				procname[n]);
		  	printf(" %d, inherits %d", i, nrelse);
		  	printf(" 'else' stmnts\n");
			pan_exit(1);
	}	}
#if !defined(LOOPSTATE) && !defined(BFS_PAR)
	if (state_tables)
#endif
	do_dfs(n, m, is, srcln, reach, lpstate);

	if (!t_reverse)
	{	return;
	}
	/* process n, with m states, is=initial state -- reverse list */
	if (!state_tables && Btypes[n] != N_CLAIM)
	{	for (i = 1; i < m; i++)
		{	Trans *Tx = (Trans *) 0; /* list of escapes */
			Trans *Ty = (Trans *) 0; /* its tail element */
			T1 = (Trans *) 0; /* reversed list */
			T2 = (Trans *) 0; /* its tail */
			T3 = (Trans *) 0; /* remembers possible 'else' */

			/* find unless-escapes, they should go first */
			T4 = T5 = T0 = trans[n][i];
	#ifdef HAS_UNLESS
			while (T4 && T4->e_trans) /* escapes are first in orig list */
			{	T5 = T4;	  /* remember predecessor */
				T4 = T4->nxt;
			}
	#endif
			/* T4 points to first non-escape, T5 to its parent, T0 to original list */
			if (T4 != T0)		 /* there was at least one escape */
			{	T3 = T5->nxt;		 /* start of non-escapes */
				T5->nxt = (Trans *) 0;	 /* separate */
				Tx = T0;		 /* start of the escapes */
				Ty = T5;		 /* its tail */
				T0 = T3;		 /* the rest, to be reversed */
			}
			/* T0 points to first non-escape, Tx to the list of escapes, Ty to its tail */

			/* first tail-add non-escape transitions, reversed */
			T3 = (Trans *) 0;
			for (T5 = T0; T5; T5 = T4)
			{	T4 = T5->nxt;
	#ifdef HAS_UNLESS
				if (T5->e_trans)
				{	printf("error: cannot happen!\n");
					continue;
				}
	#endif
				if (strcmp(T5->tp, "else") == 0)
				{	T3 = T5;
					T5->nxt = (Trans *) 0;
				} else
				{	T5->nxt = T1;
					if (!T1) { T2 = T5; }
					T1 = T5;
			}	}
			/* T3 points to a possible else, which is removed from the list */
			/* T1 points to the reversed list so far (without escapes) */
			/* T2 points to the tail element -- where the else should go */
			if (T2 && T3)
			{	T2->nxt = T3;	/* add else */
			} else
			{	if (T3) /* there was an else, but there's no tail */
				{	if (!T1)	/* and no reversed list */
					{	T1 = T3; /* odd, but possible */
					} else		/* even stranger */
					{	T1->nxt = T3;
			}	}	}

			/* add in the escapes, to that they appear at the front */
			if (Tx && Ty) { Ty->nxt = T1; T1 = Tx; }

			trans[n][i] = T1;
			/* reversed, with escapes first and else last */
	}	}
	if (state_tables && verbose)
	{	printf("FINAL proctype %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
	}
}
void
imed(Trans *T, int v, int n, int j)	/* set intermediate state */
{	progstate[n][T->st] |= progstate[n][v];
	accpstate[n][T->st] |= accpstate[n][v];
	stopstate[n][T->st] |= stopstate[n][v];
	mapstate[n][j] = T->st;
}
void
tagtable(int n, int m, int is, short srcln[], uchar reach[])
{	Trans *z;

	if (is >= m || !trans[n][is]
	||  is <= 0 || reach[is] == 0)
		return;
	reach[is] = 0;
	if (state_tables)
	for (z = trans[n][is]; z; z = z->nxt)
	{	if (dodot)
			dot_crack(n, is, z);
		else
			crack(n, is, z, srcln);
	}

	for (z = trans[n][is]; z; z = z->nxt)
	{
#ifdef HAS_UNLESS
		int i, j;
#endif
		tagtable(n, m, z->st, srcln, reach);
#ifdef HAS_UNLESS
		for (i = 0; i < HAS_UNLESS; i++)
		{	j = trans[n][is]->escp[i];
			if (!j) break;
			tagtable(n, m, j, srcln, reach);
		}
#endif
	}
}

extern Trans *t_id_lkup[];

void
dfs_table(int n, int m, int is, short srcln[], uchar reach[], uchar lpstate[])
{	Trans *z;

	if (is >= m || is <= 0 || !trans[n][is])
		return;
	if ((reach[is] & (4|8|16)) != 0)
	{	if ((reach[is] & (8|16)) == 16)	/* on stack, not yet recorded */
		{	lpstate[is] = 1;
			reach[is] |= 8; /* recorded */
			if (state_tables && verbose)
			{	printf("state %d line %d is a loopstate\n", is, srcln[is]);
		}	}
		return;
	}
	reach[is] |= (4|16);	/* visited | onstack */
	for (z = trans[n][is]; z; z = z->nxt)
	{	t_id_lkup[z->t_id] = z;
#ifdef HAS_UNLESS
		int i, j;
#endif
		dfs_table(n, m, z->st, srcln, reach, lpstate);
#ifdef HAS_UNLESS
		for (i = 0; i < HAS_UNLESS; i++)
		{	j = trans[n][is]->escp[i];
			if (!j) break;
			dfs_table(n, m, j, srcln, reach, lpstate);
		}
#endif
	}
	reach[is] &= ~16; /* no longer on stack */
}
void
do_dfs(int n, int m, int is, short srcln[], uchar reach[], uchar lpstate[])
{	int i;
	dfs_table(n, m, is, srcln, reach, lpstate);
	for (i = 0; i < m; i++)
		reach[i] &= ~(4|8|16);
}
void
crack(int n, int j, Trans *z, short srcln[])
{	int i;

	if (!z) return;
	printf("	state %3d -(tr %3d)-> state %3d  ",
		j, z->forw, z->st);
	printf("[id %3d tp %3d", z->t_id, z->tpe[0]);
	if (z->tpe[1]) printf(",%d", z->tpe[1]);
#ifdef HAS_UNLESS
	if (z->e_trans)
		printf(" org %3d", z->e_trans);
	else if (state_tables >= 2)
	for (i = 0; i < HAS_UNLESS; i++)
	{	if (!z->escp[i]) break;
		printf(" esc %d", z->escp[i]);
	}
#endif
	printf("]");
	printf(" [%s%s%s%s%s] %s:%d => ",
		z->atom&6?"A":z->atom&32?"D":"-",
		accpstate[n][j]?"a" :"-",
		stopstate[n][j]?"e" : "-",
		progstate[n][j]?"p" : "-",
		z->atom & 8 ?"L":"G",
		PanSource, srcln[j]);
	for (i = 0; z->tp[i]; i++)
		if (z->tp[i] == '\n')
			printf("\\n");
		else
			putchar(z->tp[i]);
	if (verbose && z->qu[0])
	{	printf("\t[");
		for (i = 0; i < 6; i++)
			if (z->qu[i])
				printf("(%d,%d)",
				z->qu[i], z->ty[i]);
		printf("]");
	}
	printf("\n");
	fflush(stdout);
}
/* spin -a m.pml; cc -o pan pan.c; ./pan -D | dot -Tps > foo.ps; ps2pdf foo.ps */
void
dot_crack(int n, int j, Trans *z)
{	int i;

	if (!z) return;
	printf("	S%d -> S%d  [color=black", j, z->st);

	if (z->atom&6) printf(",style=dashed");
	else if (z->atom&32) printf(",style=dotted");
	else if (z->atom&8) printf(",style=solid");
	else printf(",style=bold");

	printf(",label=\"");
	for (i = 0; z->tp[i]; i++)
	{	if (z->tp[i] == '\\'
		&&  z->tp[i+1] == 'n')
		{	i++; printf(" ");
		} else
		{	putchar(z->tp[i]);
	}	}
	printf("\"];\n");
	if (accpstate[n][j]) printf("  S%d [color=red,style=bold];\n", j);
	else if (progstate[n][j]) printf("  S%d [color=green,style=bold];\n", j);
	if (stopstate[n][j]) printf("  S%d [color=blue,style=bold,shape=box];\n", j);
}

#ifdef VAR_RANGES
#define BYTESIZE	32	/* 2^8 : 2^3 = 256:8 = 32 */

typedef struct Vr_Ptr {
	char	*nm;
	uchar	vals[BYTESIZE];
	struct Vr_Ptr *nxt;
} Vr_Ptr;
Vr_Ptr *ranges = (Vr_Ptr *) 0;

void
logval(char *s, int v)
{	Vr_Ptr *tmp;

	if (v<0 || v > 255) return;
	for (tmp = ranges; tmp; tmp = tmp->nxt)
		if (!strcmp(tmp->nm, s))
			goto found;
	tmp = (Vr_Ptr *) emalloc(sizeof(Vr_Ptr));
	tmp->nxt = ranges;
	ranges = tmp;
	tmp->nm = s;
found:
	tmp->vals[(v)/8] |= 1<<((v)%8);
}

void
dumpval(uchar X[], int range)
{	int w, x, i, j = -1;

	for (w = i = 0; w < range; w++)
	for (x = 0; x < 8; x++, i++)
	{
from:		if ((X[w] & (1<<x)))
		{	printf("%d", i);
			j = i;
			goto upto;
	}	}
	return;
	for (w = 0; w < range; w++)
	for (x = 0; x < 8; x++, i++)
	{
upto:		if (!(X[w] & (1<<x)))
		{	if (i-1 == j)
				printf(", ");
			else
				printf("-%d, ", i-1);
			goto from;
	}	}
	if (j >= 0 && j != 255)
		printf("-255");
}

void
dumpranges(void)
{	Vr_Ptr *tmp;
	printf("\nValues assigned within ");
	printf("interval [0..255]:\n");
	for (tmp = ranges; tmp; tmp = tmp->nxt)
	{	printf("\t%s\t: ", tmp->nm);
		dumpval(tmp->vals, BYTESIZE);
		printf("\n");
	}
}
#endif
