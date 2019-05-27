/* 
 * File:   uart.h
 * Author: 29446
 *
 * Created on 2018?8?28?, ??10:27
 */

#ifndef UART_H
#define	UART_H

#include <xc.h>
#include "stdlib.h"
#include "pic.h"

//Fosc is 4 MHz
//Paud rate is 10417
void init_uart(void);
void Send_byte(void);
void ISR_uart_TX(void);
void ISR_uart_RX(void);




#endif	/* UART_H */

