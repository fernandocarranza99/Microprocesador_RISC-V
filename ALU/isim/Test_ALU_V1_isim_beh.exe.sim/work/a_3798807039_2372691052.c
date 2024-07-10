/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "G:/ALU/ALU/Proyecto_ALU/ALU/Test_ALU.vhd";



static void work_a_3798807039_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    int64 t9;
    unsigned char t10;
    unsigned int t11;
    unsigned char t12;

LAB0:    t1 = (t0 + 2832U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(41, ng0);
    t2 = (t0 + 5465);
    t4 = (t0 + 3216);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 32U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(42, ng0);
    t2 = (t0 + 5497);
    t4 = (t0 + 3280);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 32U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(43, ng0);
    t2 = (t0 + 5529);
    t4 = (t0 + 3344);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(45, ng0);
    t9 = (10 * 1000LL);
    t2 = (t0 + 2640);
    xsi_process_wait(t2, t9);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 5533);
    t10 = 1;
    if (32U == 32U)
        goto LAB10;

LAB11:    t10 = 0;

LAB12:    if (t10 == 0)
        goto LAB8;

LAB9:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t10 = *((unsigned char *)t3);
    t12 = (t10 == (unsigned char)2);
    if (t12 == 0)
        goto LAB16;

LAB17:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 5618);
    t4 = (t0 + 3216);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 32U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(52, ng0);
    t2 = (t0 + 5650);
    t4 = (t0 + 3280);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 32U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(53, ng0);
    t2 = (t0 + 5682);
    t4 = (t0 + 3344);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(55, ng0);
    t9 = (10 * 1000LL);
    t2 = (t0 + 2640);
    xsi_process_wait(t2, t9);

LAB20:    *((char **)t1) = &&LAB21;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    t7 = (t0 + 5565);
    xsi_report(t7, 15U, (unsigned char)2);
    goto LAB9;

LAB10:    t11 = 0;

LAB13:    if (t11 < 32U)
        goto LAB14;
    else
        goto LAB12;

LAB14:    t5 = (t3 + t11);
    t6 = (t2 + t11);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB11;

LAB15:    t11 = (t11 + 1);
    goto LAB13;

LAB16:    t2 = (t0 + 5580);
    xsi_report(t2, 38U, (unsigned char)2);
    goto LAB17;

LAB18:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 5686);
    t10 = 1;
    if (32U == 32U)
        goto LAB24;

LAB25:    t10 = 0;

LAB26:    if (t10 == 0)
        goto LAB22;

LAB23:    xsi_set_current_line(57, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t10 = *((unsigned char *)t3);
    t12 = (t10 == (unsigned char)2);
    if (t12 == 0)
        goto LAB30;

LAB31:    xsi_set_current_line(64, ng0);
    t2 = (t0 + 5771);
    t4 = (t0 + 3216);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 32U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(65, ng0);
    t2 = (t0 + 5803);
    t4 = (t0 + 3280);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 32U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(66, ng0);
    t2 = (t0 + 5835);
    t4 = (t0 + 3344);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(68, ng0);
    t9 = (10 * 1000LL);
    t2 = (t0 + 2640);
    xsi_process_wait(t2, t9);

LAB34:    *((char **)t1) = &&LAB35;
    goto LAB1;

LAB19:    goto LAB18;

LAB21:    goto LAB19;

LAB22:    t7 = (t0 + 5718);
    xsi_report(t7, 15U, (unsigned char)2);
    goto LAB23;

LAB24:    t11 = 0;

LAB27:    if (t11 < 32U)
        goto LAB28;
    else
        goto LAB26;

LAB28:    t5 = (t3 + t11);
    t6 = (t2 + t11);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB25;

LAB29:    t11 = (t11 + 1);
    goto LAB27;

LAB30:    t2 = (t0 + 5733);
    xsi_report(t2, 38U, (unsigned char)2);
    goto LAB31;

LAB32:    xsi_set_current_line(69, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 5839);
    t10 = 1;
    if (32U == 32U)
        goto LAB38;

LAB39:    t10 = 0;

LAB40:    if (t10 == 0)
        goto LAB36;

LAB37:    xsi_set_current_line(70, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t10 = *((unsigned char *)t3);
    t12 = (t10 == (unsigned char)2);
    if (t12 == 0)
        goto LAB44;

LAB45:    xsi_set_current_line(73, ng0);
    t2 = (t0 + 5927);
    t4 = (t0 + 3216);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 32U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(74, ng0);
    t2 = (t0 + 5959);
    t4 = (t0 + 3280);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 32U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(75, ng0);
    t2 = (t0 + 5991);
    t4 = (t0 + 3344);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(77, ng0);
    t9 = (10 * 1000LL);
    t2 = (t0 + 2640);
    xsi_process_wait(t2, t9);

LAB48:    *((char **)t1) = &&LAB49;
    goto LAB1;

LAB33:    goto LAB32;

LAB35:    goto LAB33;

LAB36:    t7 = (t0 + 5871);
    xsi_report(t7, 18U, (unsigned char)2);
    goto LAB37;

LAB38:    t11 = 0;

LAB41:    if (t11 < 32U)
        goto LAB42;
    else
        goto LAB40;

LAB42:    t5 = (t3 + t11);
    t6 = (t2 + t11);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB39;

LAB43:    t11 = (t11 + 1);
    goto LAB41;

LAB44:    t2 = (t0 + 5889);
    xsi_report(t2, 38U, (unsigned char)2);
    goto LAB45;

LAB46:    xsi_set_current_line(78, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 5995);
    t10 = 1;
    if (32U == 32U)
        goto LAB52;

LAB53:    t10 = 0;

LAB54:    if (t10 == 0)
        goto LAB50;

LAB51:    xsi_set_current_line(79, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t10 = *((unsigned char *)t3);
    t12 = (t10 == (unsigned char)2);
    if (t12 == 0)
        goto LAB58;

LAB59:    xsi_set_current_line(83, ng0);
    t2 = (t0 + 6083);
    t4 = (t0 + 3216);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 32U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(84, ng0);
    t2 = (t0 + 6115);
    t4 = (t0 + 3280);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 32U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(85, ng0);
    t2 = (t0 + 6147);
    t4 = (t0 + 3344);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(87, ng0);
    t9 = (10 * 1000LL);
    t2 = (t0 + 2640);
    xsi_process_wait(t2, t9);

LAB62:    *((char **)t1) = &&LAB63;
    goto LAB1;

LAB47:    goto LAB46;

LAB49:    goto LAB47;

LAB50:    t7 = (t0 + 6027);
    xsi_report(t7, 18U, (unsigned char)2);
    goto LAB51;

LAB52:    t11 = 0;

LAB55:    if (t11 < 32U)
        goto LAB56;
    else
        goto LAB54;

LAB56:    t5 = (t3 + t11);
    t6 = (t2 + t11);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB53;

LAB57:    t11 = (t11 + 1);
    goto LAB55;

LAB58:    t2 = (t0 + 6045);
    xsi_report(t2, 38U, (unsigned char)2);
    goto LAB59;

LAB60:    xsi_set_current_line(88, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 6151);
    t10 = 1;
    if (32U == 32U)
        goto LAB66;

LAB67:    t10 = 0;

LAB68:    if (t10 == 0)
        goto LAB64;

LAB65:    xsi_set_current_line(89, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t10 = *((unsigned char *)t3);
    t12 = (t10 == (unsigned char)2);
    if (t12 == 0)
        goto LAB72;

LAB73:    xsi_set_current_line(93, ng0);
    t2 = (t0 + 6241);
    t4 = (t0 + 3216);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 32U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(94, ng0);
    t2 = (t0 + 6273);
    t4 = (t0 + 3280);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 32U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(95, ng0);
    t2 = (t0 + 6305);
    t4 = (t0 + 3344);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(97, ng0);
    t9 = (10 * 1000LL);
    t2 = (t0 + 2640);
    xsi_process_wait(t2, t9);

LAB76:    *((char **)t1) = &&LAB77;
    goto LAB1;

LAB61:    goto LAB60;

LAB63:    goto LAB61;

LAB64:    t7 = (t0 + 6183);
    xsi_report(t7, 20U, (unsigned char)2);
    goto LAB65;

LAB66:    t11 = 0;

LAB69:    if (t11 < 32U)
        goto LAB70;
    else
        goto LAB68;

LAB70:    t5 = (t3 + t11);
    t6 = (t2 + t11);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB67;

LAB71:    t11 = (t11 + 1);
    goto LAB69;

LAB72:    t2 = (t0 + 6203);
    xsi_report(t2, 38U, (unsigned char)2);
    goto LAB73;

LAB74:    xsi_set_current_line(98, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 6309);
    t10 = 1;
    if (32U == 32U)
        goto LAB80;

LAB81:    t10 = 0;

LAB82:    if (t10 == 0)
        goto LAB78;

LAB79:    xsi_set_current_line(99, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t10 = *((unsigned char *)t3);
    t12 = (t10 == (unsigned char)2);
    if (t12 == 0)
        goto LAB86;

LAB87:    xsi_set_current_line(102, ng0);
    t2 = (t0 + 6399);
    t4 = (t0 + 3216);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 32U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(103, ng0);
    t2 = (t0 + 6431);
    t4 = (t0 + 3280);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 32U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(104, ng0);
    t2 = (t0 + 6463);
    t4 = (t0 + 3344);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(106, ng0);
    t9 = (10 * 1000LL);
    t2 = (t0 + 2640);
    xsi_process_wait(t2, t9);

LAB90:    *((char **)t1) = &&LAB91;
    goto LAB1;

LAB75:    goto LAB74;

LAB77:    goto LAB75;

LAB78:    t7 = (t0 + 6341);
    xsi_report(t7, 20U, (unsigned char)2);
    goto LAB79;

LAB80:    t11 = 0;

LAB83:    if (t11 < 32U)
        goto LAB84;
    else
        goto LAB82;

LAB84:    t5 = (t3 + t11);
    t6 = (t2 + t11);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB81;

LAB85:    t11 = (t11 + 1);
    goto LAB83;

LAB86:    t2 = (t0 + 6361);
    xsi_report(t2, 38U, (unsigned char)2);
    goto LAB87;

LAB88:    xsi_set_current_line(107, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 6467);
    t10 = 1;
    if (32U == 32U)
        goto LAB94;

LAB95:    t10 = 0;

LAB96:    if (t10 == 0)
        goto LAB92;

LAB93:    xsi_set_current_line(108, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t10 = *((unsigned char *)t3);
    t12 = (t10 == (unsigned char)2);
    if (t12 == 0)
        goto LAB100;

LAB101:    xsi_set_current_line(112, ng0);
    t2 = (t0 + 6556);
    t4 = (t0 + 3216);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 32U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(113, ng0);
    t2 = (t0 + 6588);
    t4 = (t0 + 3280);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 32U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(114, ng0);
    t2 = (t0 + 6620);
    t4 = (t0 + 3344);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(116, ng0);
    t9 = (10 * 1000LL);
    t2 = (t0 + 2640);
    xsi_process_wait(t2, t9);

LAB104:    *((char **)t1) = &&LAB105;
    goto LAB1;

LAB89:    goto LAB88;

LAB91:    goto LAB89;

LAB92:    t7 = (t0 + 6499);
    xsi_report(t7, 19U, (unsigned char)2);
    goto LAB93;

LAB94:    t11 = 0;

LAB97:    if (t11 < 32U)
        goto LAB98;
    else
        goto LAB96;

LAB98:    t5 = (t3 + t11);
    t6 = (t2 + t11);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB95;

LAB99:    t11 = (t11 + 1);
    goto LAB97;

LAB100:    t2 = (t0 + 6518);
    xsi_report(t2, 38U, (unsigned char)2);
    goto LAB101;

LAB102:    xsi_set_current_line(117, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 6624);
    t10 = 1;
    if (32U == 32U)
        goto LAB108;

LAB109:    t10 = 0;

LAB110:    if (t10 == 0)
        goto LAB106;

LAB107:    xsi_set_current_line(118, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t10 = *((unsigned char *)t3);
    t12 = (t10 == (unsigned char)2);
    if (t12 == 0)
        goto LAB114;

LAB115:    xsi_set_current_line(121, ng0);
    t2 = (t0 + 6714);
    t4 = (t0 + 3216);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 32U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(122, ng0);
    t2 = (t0 + 6746);
    t4 = (t0 + 3280);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 32U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(123, ng0);
    t2 = (t0 + 6778);
    t4 = (t0 + 3344);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(125, ng0);
    t9 = (10 * 1000LL);
    t2 = (t0 + 2640);
    xsi_process_wait(t2, t9);

LAB118:    *((char **)t1) = &&LAB119;
    goto LAB1;

LAB103:    goto LAB102;

LAB105:    goto LAB103;

LAB106:    t7 = (t0 + 6656);
    xsi_report(t7, 20U, (unsigned char)2);
    goto LAB107;

LAB108:    t11 = 0;

LAB111:    if (t11 < 32U)
        goto LAB112;
    else
        goto LAB110;

LAB112:    t5 = (t3 + t11);
    t6 = (t2 + t11);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB109;

LAB113:    t11 = (t11 + 1);
    goto LAB111;

LAB114:    t2 = (t0 + 6676);
    xsi_report(t2, 38U, (unsigned char)2);
    goto LAB115;

LAB116:    xsi_set_current_line(126, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 6782);
    t10 = 1;
    if (32U == 32U)
        goto LAB122;

LAB123:    t10 = 0;

LAB124:    if (t10 == 0)
        goto LAB120;

LAB121:    xsi_set_current_line(127, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t10 = *((unsigned char *)t3);
    t12 = (t10 == (unsigned char)2);
    if (t12 == 0)
        goto LAB128;

LAB129:    xsi_set_current_line(132, ng0);
    t2 = (t0 + 6872);
    t4 = (t0 + 3216);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 32U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(133, ng0);
    t2 = (t0 + 6904);
    t4 = (t0 + 3280);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 32U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(134, ng0);
    t2 = (t0 + 6936);
    t4 = (t0 + 3344);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(136, ng0);
    t9 = (10 * 1000LL);
    t2 = (t0 + 2640);
    xsi_process_wait(t2, t9);

LAB132:    *((char **)t1) = &&LAB133;
    goto LAB1;

LAB117:    goto LAB116;

LAB119:    goto LAB117;

LAB120:    t7 = (t0 + 6814);
    xsi_report(t7, 20U, (unsigned char)2);
    goto LAB121;

LAB122:    t11 = 0;

LAB125:    if (t11 < 32U)
        goto LAB126;
    else
        goto LAB124;

LAB126:    t5 = (t3 + t11);
    t6 = (t2 + t11);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB123;

LAB127:    t11 = (t11 + 1);
    goto LAB125;

LAB128:    t2 = (t0 + 6834);
    xsi_report(t2, 38U, (unsigned char)2);
    goto LAB129;

LAB130:    xsi_set_current_line(137, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 6940);
    t10 = 1;
    if (32U == 32U)
        goto LAB136;

LAB137:    t10 = 0;

LAB138:    if (t10 == 0)
        goto LAB134;

LAB135:    xsi_set_current_line(138, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t10 = *((unsigned char *)t3);
    t12 = (t10 == (unsigned char)2);
    if (t12 == 0)
        goto LAB142;

LAB143:    xsi_set_current_line(142, ng0);

LAB146:    *((char **)t1) = &&LAB147;
    goto LAB1;

LAB131:    goto LAB130;

LAB133:    goto LAB131;

LAB134:    t7 = (t0 + 6972);
    xsi_report(t7, 20U, (unsigned char)2);
    goto LAB135;

LAB136:    t11 = 0;

LAB139:    if (t11 < 32U)
        goto LAB140;
    else
        goto LAB138;

LAB140:    t5 = (t3 + t11);
    t6 = (t2 + t11);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB137;

LAB141:    t11 = (t11 + 1);
    goto LAB139;

LAB142:    t2 = (t0 + 6992);
    xsi_report(t2, 38U, (unsigned char)2);
    goto LAB143;

LAB144:    goto LAB2;

LAB145:    goto LAB144;

LAB147:    goto LAB145;

}


extern void work_a_3798807039_2372691052_init()
{
	static char *pe[] = {(void *)work_a_3798807039_2372691052_p_0};
	xsi_register_didat("work_a_3798807039_2372691052", "isim/Test_ALU_V1_isim_beh.exe.sim/work/a_3798807039_2372691052.didat");
	xsi_register_executes(pe);
}
