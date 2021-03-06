#include <xc.h>
#include <stdio.h>

#include "data.h"
#include "display.h"
#include "hardware.h"

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
    // globe interrup enable
//    INTCONbits.GIE = 0b1;
    /* CPP2  */
    capture_setEdge(CAPTURE_NEGEDGE);
    CME_DATA_TRI = 1;
    // 外设中断标志位
    PIR2bits.CCP2IF = 0;
    
    return 0;
}

u8 capture_Set(u8 isON)
{
    /* CPP2  */
    // 外设中断标志位
    PIR2bits.CCP2IF = 0;

    /* 外设中断使能 */
    PIE2bits.CCP2IE = (isON)? 1 : 0;
    return 0;
}
BOOL capture_IsEnable(void)
{
    return (PIE2bits.CCP2IE == 0b1)? TRUE : FALSE;
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




/* led api  */
u8 led_SetState(u8 isOn)
{
    LED_STATE = (isOn)? LED_STATE_ON : LED_STATE_OFF;
    return 0;
}

u8 led_Blink(void)
{
    static u8 State = 0;
    led_SetState(++State & 0x01);
    return 0;
}



/* key api */
void key_checkPressed(void)
{
    //static u8 history_key = 0;
    //static u16 key_time_cnt = 0;
    //G_DATA *pdata = data_getdata();
/*    
    if(key_time_cnt++ % 2 == 0) // look up key every 100ms
    {
        history_key <<= 1;
        history_key |= (SWITCH_PORT == PIN_HIGH)? 0x01 : 0x00;
        
        // judge press by 4 states , press has been consumed 
        if((KEY_PRESS == (history_key & KEY_CHECK_BITS)) && (FALSE == pdata->g_flg_switch))
        {      
            pdata->g_flg_switch = TRUE;  // SET KEY PRESS FLG

            led_Blink();// SET KEY PRESS FLG
        }
    }
 */
    G_DATA *pdata = data_getdata();
    // look up key every 100ms
    if(SWITCH_PORT == PIN_HIGH &&  FALSE == pdata->g_flg_switch)
    {      
        // SET KEY PRESS FLG
        pdata->g_flg_switch = TRUE;

        led_Blink();// SET KEY PRESS FLG
    }
    
}

BOOL key_isPressed(void)
{
    G_DATA *pdata = data_getdata();
    if(pdata->g_flg_switch == TRUE){
        pdata->g_flg_switch = FALSE;
        return TRUE;
    }else{
        return FALSE;
    }
}
	

