#include <xc.h>
#include "stdio.h"

#include "data.h"

// global data struct
static G_DATA g_data;

G_DATA* data_getdata(void)
{
    return &g_data;
}

u16 data_getTimeCnt(void)
{
//    G_DATA* pdata = data_getdata();
//    pdata->last_TimeCnt = CCPR2H;
//    pdata->last_TimeCnt <<= 8;
//    pdata->last_TimeCnt += CCPR2L;

    u16 cnt_time = 0;
    cnt_time = CCPR2H;
    cnt_time <<= 8;
    cnt_time += CCPR2L;

    return cnt_time;
}



