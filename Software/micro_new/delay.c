#include "delay.h"

void delay_2us(void)
{
    NOP(); 
    NOP();
}

void delay_3us(void)
{
    NOP(); 
    NOP();
    NOP();
}

void delay_10us(void)
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




