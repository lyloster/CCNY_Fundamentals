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

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/lyloster/University/2021_Fall_CCNY/CSC211/Project_03/adder4b_tb.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_10420449594411817395_1035706684(char *, char *, int , int );


static void work_a_2848766499_2372691052_p_0(char *t0)
{
    char t10[16];
    char *t1;
    char *t2;
    int64 t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    int t8;
    int t9;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    int t15;
    int t16;
    int t17;

LAB0:    t1 = (t0 + 2824U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(71, ng0);
    t3 = (10 * 1000LL);
    t2 = (t0 + 2632);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(72, ng0);
    t2 = (t0 + 3208);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(73, ng0);
    t2 = (t0 + 5550);
    *((int *)t2) = 0;
    t4 = (t0 + 5554);
    *((int *)t4) = 15;
    t8 = 0;
    t9 = 15;

LAB8:    if (t8 <= t9)
        goto LAB9;

LAB11:    xsi_set_current_line(81, ng0);
    t2 = (t0 + 3208);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(82, ng0);
    t2 = (t0 + 5566);
    *((int *)t2) = 0;
    t4 = (t0 + 5570);
    *((int *)t4) = 15;
    t8 = 0;
    t9 = 15;

LAB22:    if (t8 <= t9)
        goto LAB23;

LAB25:    xsi_set_current_line(89, ng0);

LAB38:    *((char **)t1) = &&LAB39;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB9:    xsi_set_current_line(74, ng0);
    t5 = (t0 + 5550);
    t6 = ieee_p_1242562249_sub_10420449594411817395_1035706684(IEEE_P_1242562249, t10, *((int *)t5), 4);
    t7 = (t0 + 3272);
    t11 = (t7 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t6, 4U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(75, ng0);
    t2 = (t0 + 5558);
    *((int *)t2) = 0;
    t4 = (t0 + 5562);
    *((int *)t4) = 15;
    t15 = 0;
    t16 = 15;

LAB12:    if (t15 <= t16)
        goto LAB13;

LAB15:
LAB10:    t2 = (t0 + 5550);
    t8 = *((int *)t2);
    t4 = (t0 + 5554);
    t9 = *((int *)t4);
    if (t8 == t9)
        goto LAB11;

LAB21:    t15 = (t8 + 1);
    t8 = t15;
    t5 = (t0 + 5550);
    *((int *)t5) = t8;
    goto LAB8;

LAB13:    xsi_set_current_line(76, ng0);
    t5 = (t0 + 5558);
    t6 = ieee_p_1242562249_sub_10420449594411817395_1035706684(IEEE_P_1242562249, t10, *((int *)t5), 4);
    t7 = (t0 + 3336);
    t11 = (t7 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t6, 4U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(77, ng0);
    t3 = (2 * 1000LL);
    t2 = (t0 + 2632);
    xsi_process_wait(t2, t3);

LAB18:    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB14:    t2 = (t0 + 5558);
    t15 = *((int *)t2);
    t4 = (t0 + 5562);
    t16 = *((int *)t4);
    if (t15 == t16)
        goto LAB15;

LAB20:    t17 = (t15 + 1);
    t15 = t17;
    t5 = (t0 + 5558);
    *((int *)t5) = t15;
    goto LAB12;

LAB16:    goto LAB14;

LAB17:    goto LAB16;

LAB19:    goto LAB17;

LAB23:    xsi_set_current_line(83, ng0);
    t5 = (t0 + 5566);
    t6 = ieee_p_1242562249_sub_10420449594411817395_1035706684(IEEE_P_1242562249, t10, *((int *)t5), 4);
    t7 = (t0 + 3272);
    t11 = (t7 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t6, 4U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(84, ng0);
    t2 = (t0 + 5574);
    *((int *)t2) = 0;
    t4 = (t0 + 5578);
    *((int *)t4) = 15;
    t15 = 0;
    t16 = 15;

LAB26:    if (t15 <= t16)
        goto LAB27;

LAB29:
LAB24:    t2 = (t0 + 5566);
    t8 = *((int *)t2);
    t4 = (t0 + 5570);
    t9 = *((int *)t4);
    if (t8 == t9)
        goto LAB25;

LAB35:    t15 = (t8 + 1);
    t8 = t15;
    t5 = (t0 + 5566);
    *((int *)t5) = t8;
    goto LAB22;

LAB27:    xsi_set_current_line(85, ng0);
    t5 = (t0 + 5574);
    t6 = ieee_p_1242562249_sub_10420449594411817395_1035706684(IEEE_P_1242562249, t10, *((int *)t5), 4);
    t7 = (t0 + 3336);
    t11 = (t7 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t6, 4U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(86, ng0);
    t3 = (2 * 1000LL);
    t2 = (t0 + 2632);
    xsi_process_wait(t2, t3);

LAB32:    *((char **)t1) = &&LAB33;
    goto LAB1;

LAB28:    t2 = (t0 + 5574);
    t15 = *((int *)t2);
    t4 = (t0 + 5578);
    t16 = *((int *)t4);
    if (t15 == t16)
        goto LAB29;

LAB34:    t17 = (t15 + 1);
    t15 = t17;
    t5 = (t0 + 5574);
    *((int *)t5) = t15;
    goto LAB26;

LAB30:    goto LAB28;

LAB31:    goto LAB30;

LAB33:    goto LAB31;

LAB36:    goto LAB2;

LAB37:    goto LAB36;

LAB39:    goto LAB37;

}


extern void work_a_2848766499_2372691052_init()
{
	static char *pe[] = {(void *)work_a_2848766499_2372691052_p_0};
	xsi_register_didat("work_a_2848766499_2372691052", "isim/adder4b_tb_isim_beh.exe.sim/work/a_2848766499_2372691052.didat");
	xsi_register_executes(pe);
}
