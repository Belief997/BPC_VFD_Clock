#include <xc.h>
#include <stdio.h>

#include "data.h"
#include "hardware.h"

/*  timer1  */
/* 16位递增计数器 */
void timer_Timer1Init(void)
{
    // globe interrup enable
    INTCONbits.GIE = 0b1;
    /* 允许 TMR1 中断 */
    INTCONbits.PEIE = 0b1;
    PIE1bits.TMR1IE = 0b1;
    /* 中断标志 */
    PIR1bits.TMR1IF = 0b0;

    TMR1H = 0b0;
    TMR1L = 0b0;

    /* 指令时钟 */
    T1CONbits.TMR1CS = 0b00;  // 500k / 4 = 8 us
    /*  预分频 */
//    T1CONbits.T1CKPS = 0b01;  // 01: 1:2 = 16 us   16BIT 1 s
    T1CONbits.T1CKPS = 0b11;  // 11: 1:8 = 64 us   16BIT 4 s
    

}

void timer_Timer1Start(void)
{
    /* 使能 */
    T1CONbits.TMR1ON = 0b1;
}

BOOL timer_IsTimer1Itrpt(void)
{
    return (PIR1bits.TMR1IF == 0b1)? TRUE : FALSE;
}

void timer_Timer1ClrIntrpt(void)
{
    PIR1bits.TMR1IF = 0b0;
}




/* timer0 */



void timer_Timer0Init(void)
{
    // globe interrup enable
    INTCONbits.GIE = 0b1;
    // timer interrupt for read port every 0.01s
    // timer interrupt for update now time
    INTCONbits.TMR0IE = 0b0;

    // use divide freq, set to 100Hz
    // 100Hz * (256 - start_value) * divider = Focs / 4
    // Focs = 500kHz; divider = 32; len = 39.0625 start = 217
    OPTION_REGbits.PSA = 0; 
    OPTION_REGbits.TMR0CS = 0; // Focs / 4
    OPTION_REGbits.PS = 4;     // divide <2:0> :32:0b100 = 4
    TMR0 = TIMER_0_RST;
}
void timer_Timer0Reset(void)
{
    INTCONbits.TMR0IF = 0;
    TMR0 = TIMER_0_RST;  
}
void timer_Timer0Start(void)
{
    timer_Timer0Reset();
    INTCONbits.TMR0IE = 0b1; 
}

BOOL timer_IsTimer0Itrpt(void)
{
    return (INTCONbits.TMR0IF == 0b1)? TRUE : FALSE;
}



int timer_Timer0Handdle(void)
{
    key_isPressed();

    return 0;
}

