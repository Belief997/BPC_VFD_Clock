/*
 * File:   main.c
 * Author: GeniusRabbit , Belief
 *
 * Created on 2019/2/27, 5:26
 */


#include <xc.h>
#include <stdio.h>
#include "function.h"
#include "myiic.h"
#include "timer.h"
#include "data.h"
#include "debug.h"
#include "hardware.h"
#include "uart.h"
#include "display.h"
#include "bpc.h"

// CONFIG1
#pragma config FOSC = HS        // Oscillator Selection (HS Oscillator, High-speed crystal/resonator connected between OSC1 and OSC2 pins)
#pragma config WDTE = OFF       // Watchdog Timer Enable (WDT disabled)
#pragma config PWRTE = OFF      // Power-up Timer Enable (PWRT disabled)
#pragma config MCLRE = ON       // MCLR Pin Function Select (MCLR/VPP pin function is MCLR)
#pragma config CP = OFF         // Flash Program Memory Code Protection (Program memory code protection is disabled)
#pragma config CPD = OFF        // Data Memory Code Protection (Data memory code protection is disabled)
#pragma config BOREN = ON       // Brown-out Reset Enable (Brown-out Reset enabled)
#pragma config CLKOUTEN = OFF   // Clock Out Enable (CLKOUT function is disabled. I/O or oscillator function on the CLKOUT pin)
#pragma config IESO = ON        // Internal/External Switchover (Internal/External Switchover mode is enabled)
#pragma config FCMEN = ON       // Fail-Safe Clock Monitor Enable (Fail-Safe Clock Monitor is enabled)

// CONFIG2
#pragma config WRT = OFF        // Flash Memory Self-Write Protection (Write protection off)
#pragma config VCAPEN = OFF     // Voltage Regulator Capacitor Enable bit (Vcap functionality is disabled on RA6.)
#pragma config PLLEN = ON       // PLL Enable (4x PLL enabled)
#pragma config STVREN = ON      // Stack Overflow/Underflow Reset Enable (Stack Overflow or Underflow will cause a Reset)
#pragma config BORV = LO        // Brown-out Reset Voltage Selection (Brown-out Reset Voltage (Vbor), low trip point selected.)
#pragma config LPBOR = OFF      // Low Power Brown-Out Reset Enable Bit (Low power brown-out is disabled)
#pragma config LVP = ON         // Low-Voltage Programming Enable (Low-voltage programming enabled)



void init_env(){
    G_DATA *pdata = data_getdata();
    
    /**
     * interuption cfg
     */
    // globe interrup enable
    INTCONbits.GIE = 0b1;
    // ioc interrupt when read data from CME6005
//    INTCONbits.IOCIE = 0b1;
    
    /**
     * choose clk inside
     */
    OSCCONbits.SCS = 0b10;      // set to use inside clock
//    /* set freq for inside clock : 500kHz , 2 us */
//    OSCCONbits.IRCF = 0b1010;   
    /* set freq for inside clock : 1 MHz , 1 us */
    OSCCONbits.IRCF = 0b1011;      
    
    /**
     *  port use
     *  start read switch               X 1 RC-7
     *  receive port interrupt          X 1 RC-5
     *  LED to test received number     X 4
     */ 
    OPTION_REGbits.nWPUEN = 0; // enable wpu
    // PORT-A
    TRISA = 0;
    LATA = 0;
    WPUA = 0;
    IOCAP = 0;
    IOCAN = 0;
    // PORT-B
    TRISB = 0;
    LATB = 0;
    WPUB = 0;
    IOCBP = 0;
    IOCBN = 0;
    // PORT-C
    TRISC = 0;
    LATC = 0;
    WPUC = 1;
    IOCCP = 0;
    IOCCN = 0;
    
    /**
     * init all port use
     */
    SWITCH_TRI = 1; //use port7 for switch
    SWITCH_WPU = 1;
    
    CME_DATA_TRI = 1; // use port5 to detact ioc
    CME_DATA_WPU = 0;
    CME_DATA_IOC = 1; //detect when ioc up
    
    // times cnt in receive_decode
    for(int i = 0;i < RECV_BUF_MAX; i++){
        pdata->g_recv_buf[i] = 5;
    }
    pdata->g_time_h = 23;
    pdata->g_time_m = 55;
    pdata->g_time_s = 0;
    
    display_update();
    /**
     * set trans to display
     */
    PIC_OE =  PIN_LOW;
    
    // lunch BPC reciever
    BPC_ON = BPC_PWR_ON;
    
    // RTC chip set
    PIC_INT_TRI = 1;
    PIC_INT_WPU = 1;
        

    /* init iic */
//    IIC_Init();
    
    // light on when have power
    display_set(TRUE);
}
    
//void __interrupt () ISR(void)
void tmp_change(void)
{
    static u8 history_key = 0;
    static u16 key_time_cnt = 0;
    G_DATA *pdata = data_getdata();
        
    
    /* start decode flag set */
    // updata by key or 30 min
    if( pdata->g_isDecoding == FALSE && \
       ((pdata->g_flg_switch == TRUE)||(pdata->cnt_update >= 30)) )
    {
        // accept key press & set time check flg
        pdata->g_find_recv_start = FALSE;
        pdata->g_isDecoding = TRUE;
        pdata->g_flg_switch = FALSE;    
        pdata->cnt_update = 0;
        pdata->g_recv_count = CODE_P0;
        BPC_ON = BPC_PWR_ON;
        
        INTCONbits.IOCIF = FALSE;
        CME_DATA_IOC_INT = FALSE;
        return;
    }
    else if(pdata->g_isDecoding == TRUE && CME_DATA_IOC_INT == TRUE && TRUE == pdata->g_find_recv_start)
    {
        if(pdata->g_recv_count == CODE_P0)
        {
            pdata->g_recv_count = CODE_P1;
        }
        timer_Timer0Start();
    }
    else if(INTCONbits.IOCIF || CME_DATA_IOC_INT)
    {
        INTCONbits.IOCIF = FALSE;
        CME_DATA_IOC_INT = FALSE;
    }
    
    /* update time cnt(display)&detect key press, time unit: 10 MS */
    if(INTCONbits.TMR0IF)
    {
        // start receive & decode, decoding
        if(pdata->g_isDecoding == TRUE && \
           ( pdata->g_find_recv_start == FALSE||  pdata->g_recv_count >=  CODE_P1  ) )
        {
            receive_decode();
        }
        
        //update_time();
        /* handle key event here */
        if(key_time_cnt++ % 10 == 0) // look up key every 100ms
        {
            history_key <<= 1;
            history_key |= (SWITCH_PORT == PIN_HIGH)? 0x01 : 0x00;
            /* judge press by 4 states , press has been consumed */
            if((KEY_PRESS == (history_key & KEY_CHECK_BITS)) && (FALSE == pdata->g_flg_switch))
            {
                pdata->g_flg_switch = TRUE;  // SET KEY PRESS FLG
            }
        }
        /* reset timer_0 */
        timer_Timer0Reset();
        return;
    }
    return;
}

void __interrupt () ISR(void)
{
    //static u16 cnt = 0;
    if(timer_IsTimer1Itrpt())
    {
//        LED_STATE = (cnt++ % 2 == 0);
        //LOG("HERE TIMER 1");
        timer_Timer1ClrIntrpt();
    }
    
    if(timer_IsTimer0Itrpt())
    {
        timer_Timer0Handdle();
 
		if(key_isPressed())
		{
            //LOG("PKEY\r\n");
			capture_Set(TRUE);
		}
/*
        if(cnt++ % 100 == 0)// period = 1s
        {
//          uart_Send_byte(0xa5);
            static u8 tx = 0;
            //led_Blink();

            //LOG("test123456123456789ASD...  %d", tx);

            tx++;
        }
 */    
        timer_Timer0Reset();
    }

    if(capture_IsEnable() && capture_IsIntrpt())
    {
        capture_handdle();

        bpc_proc();

        capture_clrIntrpt();    
    }
}



void main(void) 
{
    static u16 i = 0;
    static u8 cnt = 0;

    
    // init config
    init_env();    
    
    /* timer0 的初始化及其启动 */
    timer_Timer0Init();
    timer_Timer0Start();

    /* timer1 的初始化及其启动 */
    timer_Timer1Init();
    timer_Timer1Start();

//    /* 捕获初始化 */
    capture_init();
    capture_Set(TRUE);

    // 
    uart_init();

    /* 初始显示状态 */
    display_update();
    led_SetState(FALSE);

    while(1)
    {
        /*
        if(i++  == 65535)
        {          
//            led_Blink();
            //display_set(FALSE);
//            update_display();
        }
        */
    }
    return;
}

    
