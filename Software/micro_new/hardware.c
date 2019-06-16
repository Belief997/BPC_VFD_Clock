#include <xc.h>
#include <stdio.h>
#include "function.h"
#include "hardware.h"

#include "display.h"
#include "data.h"

#define CAPTURE_POSEDGE (0b0101) // 捕捉上升沿
#define CAPTURE_NEGEDGE (0b0100) // 捕捉下降沿

static int capture_setEdge(u8 edge)
{
    if((edge == CAPTURE_POSEDGE) || (edge == CAPTURE_NEGEDGE))
    {
        CCP2CONbits.CCP2M = edge;
        return 0;
    }
    else
    {
        return -1;
    }
}

u8 capture_init(void)
{
    /* CPP2  */
    capture_setEdge(CAPTURE_NEGEDGE);
    CME_DATA_TRI = 1;
    // 外设中断标志位
    PIR2bits.CCP2IF = 0;
    
    return 0;
}

BOOL capture_IsIntrpt(void)
{
    return (PIR2bits.CCP2IF == 0b1)? TRUE : FALSE;
}
void capture_clrIntrpt(void)
{
    PIR2bits.CCP2IF = 0;
}
BOOL capture_IsNegEdge(void)
{
    return (CCP2CONbits.CCP2M == CAPTURE_NEGEDGE)? TRUE : FALSE;
}

int capture_handdle(void)
{
    G_DATA *pdata = data_getdata();
    static u16 last_cnt = 0;
    u16 cnt_tmp = 0;
    u16 cnt_int = 0;
    
    cnt_tmp = CCPR2H;
    cnt_tmp = (cnt_tmp << 8) + CCPR2L;

    if(cnt_tmp > last_cnt)
    {
        cnt_int = cnt_tmp - last_cnt;
    }
    else
    {
        cnt_int = 0xffff - last_cnt;
        cnt_int += cnt_tmp;
    }

    /* 下降沿更新高计数， 上升沿更新低计数 */
    // led 状态与信号同步
    if(capture_IsNegEdge())
    {
        pdata->cnt_high = cnt_int;
        led_SetState(FALSE);
    }
    else
    {
        pdata->cnt_low = cnt_int;
        led_SetState(TRUE);
    }

    last_cnt = cnt_tmp;

    /* 翻转触发沿 */
    capture_setEdge( (capture_IsNegEdge())? CAPTURE_POSEDGE : CAPTURE_NEGEDGE);

    return 0;
}





u8 led_SetState(u8 isOn)
{
    LED_STATE = (isOn)? LED_STATE_ON : LED_STATE_OFF;
    return 0;
}

u8 led_Blink(void)
{
    static u8 State = 0;
    led_SetState(State++ & 0x01);
    return 0;
}


