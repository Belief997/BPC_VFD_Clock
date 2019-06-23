#include "delay.h"

void delay_4us(void)
{
    NOP(); 
}

void delay_12us(void)
{
    NOP(); 
    NOP();
    NOP();
}

void delay_40us(void)
{
    NOP();
    NOP();
    NOP();
    NOP();
    NOP();
    NOP();
    NOP();
    NOP();
    NOP();
    NOP();   
}




