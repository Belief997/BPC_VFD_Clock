/*
 * File:   bpc.c
 * Author: GeniusRabbit, Belief
 *
 * Created on 2019/2/27, 5:26
 */


#include <xc.h>

#include "bpc.h"
#include "data.h"
#include "debug.h"
#include "myiic.h"
#include "timer.h"
#include "display.h"
#include "hardware.h"


u16 cnt_abs(u16 a, u16 b) {
    return a > b ? (a - b) : (b - a);
}

static u8 bit2BCD(u8 inVal){
    if(inVal < 60){
        return (((inVal / 10) << 4) + inVal % 10);
    }else{
        return 255;
    }
}
static u8 BCD2bit(u8 inVal){
    return (inVal >> 4) * 10 + (inVal & 0xf);
}

#define RTC_HR (0x4)
#define RTC_MN (0x3)
#define RTC_SEC (0x2)
#define MASK_BCD_HR (0x3F)
#define MASK_BCD_MN (0x7F)
#define MASK_BCD_SEC (0x7F)

s8 bpc_write_time(void){
    G_DATA *pdata = data_getdata();
    do{
        if(-1 == IIC_WtRTCReg(RTC_SEC, bit2BCD(pdata->g_time_s))) break;
        if( -1 == IIC_WtRTCReg(RTC_MN, bit2BCD(pdata->g_time_m))) break;
        if( -1 == IIC_WtRTCReg(RTC_HR, bit2BCD(pdata->g_time_h))) break;
        return 0;
    }while(0);
    return -1;
}

s8 bpc_read_time(void)
{
   G_DATA *pdata = data_getdata();
   u8 dataBCD = 0, dataBin = 0;
    do{
        if( -1 == IIC_RdRTCReg(RTC_HR, &dataBCD)){
            break;
        }
        else
        {
            dataBin = BCD2bit(dataBCD & MASK_BCD_HR);
            if(dataBin > 23){
                break;
            }
            pdata->g_time_h = dataBin;
        }
        if( -1 == IIC_RdRTCReg(RTC_MN, &dataBCD)) break;
        else
        {
            dataBin = BCD2bit(dataBCD & MASK_BCD_MN);
            if(dataBin > 59){
                break;
            }
            pdata->g_time_m = dataBin;
        }
        if(-1 == IIC_RdRTCReg(RTC_SEC, &dataBCD)) break;
        else
        {
            dataBin = BCD2bit(dataBCD & MASK_BCD_SEC);
            if(dataBin > 59){
                break;
            }
            pdata->g_time_s = dataBin;
        }
        if(pdata->g_time_h == 0 && pdata->g_time_m == 0){
            break;
        }
        return 0;   
    }while(0);
    return -1;
    
    
}


/* 计数转四进制 Quaternary */
static u8 bpc_Cnt2Qua(void) {
    G_DATA *pdata = data_getdata();
    if (capture_IsNegEdge()) {
        // low level
        if (pdata->cnt_low > COUNT_1S - COUNT_BIAS) {
            return CME_START;
        } else {
            return NO_NEED;
        }
    } else {
        // g=high level
        if (cnt_abs(pdata->cnt_high, COUNT_100MS) < COUNT_BIAS) {
            return NUMBER_1;
        } else if (cnt_abs(pdata->cnt_high, COUNT_200MS) < COUNT_BIAS) {
            return NUMBER_2;
        } else if (cnt_abs(pdata->cnt_high, COUNT_300MS) < COUNT_BIAS) {
            return NUMBER_3;
        } else if (cnt_abs(pdata->cnt_high, COUNT_400MS) < COUNT_BIAS) {
            return NUMBER_4;
        } else {
            return NUMBER_ERROR;
        }
    }

}

static int check_err(G_DATA *pdata) {
    pdata->g_time_h = pdata->g_recv_buf[CODE_H_1] * 4 + pdata->g_recv_buf[CODE_H_2];
    pdata->g_time_m = pdata->g_recv_buf[CODE_M_1] * 16 + pdata->g_recv_buf[CODE_M_2] * 4 + pdata->g_recv_buf[CODE_M_3];
    pdata->g_time_s = 10 + ((pdata->g_recv_buf[CODE_P1] == 1) ? 20 :  \
                            (pdata->g_recv_buf[CODE_P1] == 2) ? 40 : 0);
    u8 check = 0;
    for (u8 i = CODE_P1; i < CODE_P3; i++) {
        check ^= pdata->g_recv_buf[i];
    }
    if ((((0 == check) || (3 == check))) && (pdata->g_recv_buf[CODE_P3] % 2 == 0)) {
        pdata->g_time_h += (2 == pdata->g_recv_buf[CODE_P3]) ? 12 : 0;
    } else if ((((1 == check) || (2 == check))) && \
            ((pdata->g_recv_buf[CODE_P3] == 1) || (pdata->g_recv_buf[CODE_P3] == 3))) {
        pdata->g_time_h += (3 == pdata->g_recv_buf[CODE_P3]) ? 12 : 0;
    } else {
        pdata->g_find_recv_start = FALSE;
        pdata->g_isDecoding = 0;
        pdata->g_recv_count = 0;
        return -1;
    }
    return 0;
}

int bpc_proc(void) {
    G_DATA *pdata = data_getdata();
    u8 number = bpc_Cnt2Qua();

    if (NO_NEED == number) {
        return 0;
    } else if (NUMBER_ERROR == number) {
        pdata->g_find_recv_start = FALSE;
        pdata->g_recv_count = 0;
        return -1;
    }
    //LOG("r:%d\r\n", number);

    // find start
    if (pdata->g_find_recv_start || CME_START == number) {
        if (!pdata->g_find_recv_start) {
            pdata->g_find_recv_start = TRUE;
            pdata->g_recv_buf[pdata->g_recv_count++] = number;
            return 0;
        }
    } else {
        pdata->g_recv_count = 0;
        return -1;
    }

    // receive bits before CODE_P3
    pdata->g_recv_buf[pdata->g_recv_count++] = number;
    if (pdata->g_recv_count <= CODE_P3) {
        return 0;
    }

    // check P1, P1: 0->1, 1->21, 2->41
    if (pdata->g_recv_buf[CODE_P1] > 2) {
        pdata->g_find_recv_start = FALSE;
        pdata->g_isDecoding = 0;
        pdata->g_recv_count = 0;
        return 0;
    }

    u16 last_time_h = pdata->g_time_h;
    u16 last_time_m = pdata->g_time_m;
    u16 last_time_s = pdata->g_time_s;

    if (check_err(pdata)) {
        // wrong data recived
        pdata->g_time_h = last_time_h;
        pdata->g_time_m = last_time_m;
        pdata->g_time_s = last_time_s;
        return 0;
    }

    // we get no err then update display
    if (last_time_h != pdata->g_time_h || last_time_m != pdata->g_time_m) {
        display_update();
    }

    // recv over ,then set flag to false
    pdata->g_find_recv_start = FALSE;
    //    BPC_ON = BPC_PWR_OFF;
    pdata->g_isDecoding = FALSE;

    // set ccp
    capture_Set(FALSE);
    
    // write time
    if(-1 == bpc_write_time()){
        //LOG("ERR w\r\n");
    }
    
    pdata->g_recv_count = CODE_P0;
    for (int i = 0; i < RECV_BUF_MAX; i++) {
        pdata->g_recv_buf[i] = 5;
    }
    return 0;
}
