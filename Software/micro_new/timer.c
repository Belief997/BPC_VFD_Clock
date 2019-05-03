#include <xc.h>
#include <stdio.h>
#include "function.h"


void timer_init(void)
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
void timer_reset(void)
{
    INTCONbits.TMR0IF = 0;
    TMR0 = TIMER_0_RST;  
}
void timer_start(void)
{
    timer_reset();
    INTCONbits.TMR0IE = 0b0; 
}
void timer_stop(void)
{
    INTCONbits.TMR0IE = 0b0;
    timer_reset();
}
BOOL timer_isrunning(void)
{
    return (BOOL)(INTCONbits.TMR0IE == 0b1);
}
