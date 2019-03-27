/*
 * File:   main.c
 * Author: GeniusRabbit , Belief
 *
 * Created on 2019/2/27, 5:26
 */


#include <xc.h>
#include <stdio.h>
#include "function.h"

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

// global data struct
static G_DATA g_data;

void init_env(){
    /**
     * interuption cfg
     */
    // globe interrup enable
    INTCONbits.GIE = 0b1;
    // ioc interrupt when read data from CME6005
    INTCONbits.IOCIE = 0b1;
    
    // timer interrupt for read port every 0.01s
    // timer interrupt for update now time
    INTCONbits.TMR0IE = 0b1;
    
    /**
     * choose clk inside
     */
// TODO: adjust clk config here
    OSCCONbits.SCS = 0b10;      // set to use inside clock
    OSCCONbits.IRCF = 0b1010;   // set freq for inside clock : 500kHz
    
    /**
     * timer0 init
     */
    // use divide freq, set to 100Hz
    // 100Hz * (256 - start_value) * divider = Focs / 4
    // Focs = 500kHz; divider = 32; len = 39.0625 start = 217
    OPTION_REGbits.PSA = 0; 
    OPTION_REGbits.TMR0CS = 0; // Focs / 4
    OPTION_REGbits.PS = 4;     // divide <2:0> :32:0b100 = 4
    TMR0 = TIMER_0_RST;
    
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
    WPUC = 0;
    IOCCP = 0;
    IOCCN = 0;
    
    /**
     * init all port use
     */
    SWITCH_TRI = 1; //use port7 for switch
    SWITCH_WPU = 1;
    
    CME_DATA_TRI = 1; // use port5 to detact ioc
    CME_DATA_WPU = 1;
    CME_DATA_IOC = 1; //detect when ioc up
    
    /**
     * init globe value
     */
    g_data.g_time_h = 0;
    g_data.g_time_m = 0;
    g_data.g_time_s = 0;
    g_data.g_time_10ms = 0;

    // bool value FLAG used in receive_decode
    g_data.g_flg_switch = FALSE;
    g_data.g_start_read_data = FALSE;
    g_data.g_find_recv_start = FALSE;

    // times cnt in receive_decode
    g_data.g_high_level_times = 0;
    g_data.g_all_level_times = 0;
    g_data.g_recv_count = 0;
    for(int i = 0;i < RECV_BUF_MAX; i++){
        g_data.g_recv_buf[i] = 5;
    }
    
    /**
     * set trans to display
     */
    PIC_OE =  PIN_HIGH;
    
    // lunch BPC reciever
    BPC_ON = BPC_PWR_ON;
    
    // RTC chip set
    PIC_INT_TRI = 1;
    PIC_INT_WPU = 1;
    
    
#ifdef TEST
    // init for test decode
    g_all_time_count = 0;
    test_buf_index =0;
    test_buf[0] = 20;
    test_buf[1] = 30;
    test_buf[2] = 0;
    test_buf[3] = 10;
    test_buf[4] = 10;
    test_buf[5] = 20;
    test_buf[6] = 30;
    test_buf[7] = 40;
    test_buf[8] = 10;
    test_buf[9] = 30;
    test_buf[10] = 30;
#endif
}
    
void __interrupt () ISR(void){
    static u8 history_key = 0;
    static u16 key_time_cnt = 0;
    
    // start receive flag set
    if(CME_DATA_IOC_INT == TRUE && \
       g_data.g_start_read_data == FALSE && \
       g_data.g_flg_switch == TRUE){
        
        // accept key press & set time check flg
        g_data.g_start_read_data = TRUE;
        g_data.g_flg_switch = FALSE;    
        BPC_ON = BPC_PWR_ON;
        
        INTCONbits.IOCIF = FALSE;
        CME_DATA_IOC_INT = FALSE;
        return;
    }else if(INTCONbits.IOCIF || CME_DATA_IOC_INT){
        INTCONbits.IOCIF = FALSE;
        CME_DATA_IOC_INT = FALSE;
    }
    
    // update time every time unit: 10 MS
    if(INTCONbits.TMR0IF){
        update_time();
        // start receive & decode
        if(g_data.g_start_read_data == TRUE ){
            receive_decode();
        }

        /* handle key event here */
        if(key_time_cnt++ % 10 == 0) // look up key every 100ms
        {
            history_key <<= 1;
            history_key |= (SWITCH_PORT == PIN_HIGH)? 0x01 : 0x00;
            if(KEY_PRESS == (history_key & KEY_CHECK_BITS) )
            {
                g_data.g_flg_switch = TRUE;  // SET KEY PRESS FLG
            }
        }
        /* reset timer_0 */
        INTCONbits.TMR0IF = 0;
        TMR0 = TIMER_0_RST;  
        return;
    }
    return;
}

void main(void) {
    // init config
    init_env();

    while(1);    
    return;
}

    
