/* 
 * File:   delay.h
 * Author: belief
 *
 * Created on 2018?8?26?, ??4:50
 */

#ifndef DELAY_H
#define	DELAY_H

#include <xc.h>
#include "pic.h"
#include "stdlib.h"

////Fs is 4 MHz

//void delay_2us(void);
//void delay_3us(void);
//void delay_10us(void);

//Fs is 1 MHz
void delay_4us(void);
void delay_12us(void);
void delay_40us(void);


#endif	/* DELAY_H */

