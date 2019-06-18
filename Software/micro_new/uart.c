#include <xc.h>
#include <stdio.h>

#include "uart.h"
#include "data.h"
#include "hardware.h"


unsigned char TX_data;
unsigned char RX_data;
unsigned char TX_en;
unsigned char flg_rc;

void uart_init(void)
{
    //init io
    TXSEL = 0;
    RXSEL = 0;
    TRISCbits.TRISC7 = 1;
    TRISCbits.TRISC6 = 0;
    WPUCbits.WPUC7 = 0;
    WPUCbits.WPUC6 = 0;
     
    //init uart
    //init paud rate  10417
    SYNC = 0;
    BRGH = 1;
    BRG16 = 1;
    
    SPBRGH = 0x00;    
    SPBRGL = 23;      
    
    //en TX
    TXEN = 1;
    SYNC = 0;
    SPEN = 1;

    //en TX INT
    TXIE = 1;
    GIE = 1;
    PEIE = 1;
    
    //en RX
    CREN = 1;
    
    //en RX INT
    RCIE = 1;
}

void uart_Send_byte(u8 byte)
{
    TX_en = 1;
    TXEN = 1;
    SYNC = 0;
    SPEN = 1;
    TXIE = 1;
    TX_data = byte;
}

void ISR_uart_TX(void)
{
    if(TX_en)
    {
        TXREG = TX_data;
        TX_en = 0;
    }
    else
    {
//        TXEN = 0;
        TXIE = 0;
    }
    
}


void ISR_uart_RX(void)
{ 
    
    RX_data = RCREG;
    flg_rc = 1;
}