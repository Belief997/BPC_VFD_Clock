#ifndef __MYIIC_H
#define __MYIIC_H

#include "delay.h"   	
#include <xc.h>
#include "stdlib.h"
#include "pic.h"
#include "debug.h"

//IO????
#define SDA_IN()  {TRISC4 = 1;}
#define SDA_OUT() {TRISC4 = 0;} 
//IO????	 
#define IIC_SCL    LATC3  // SCL
#define IIC_SDA    LATC4  // SDA	 
#define READ_SDA   RC4    // SDA PORT

//IIC??????
void IIC_Init(void);                             //???IIC?IO?				 
void IIC_Start(void);                            //??IIC????
void IIC_Stop(void);                             //??IIC????
void IIC_Send_Byte(unsigned char txd);			  //IIC??????
unsigned char IIC_Read_Byte(unsigned char ack); //IIC??????
unsigned char IIC_Wait_Ack(void);               //IIC??ACK??
void IIC_Ack(void);                              //IIC??ACK??
void IIC_NAck(void);                            //IIC???ACK?? 
unsigned char RD_temp(void);
s8 IIC_RdRTCReg(u8 regAddr, u8* value);
s8 IIC_WtRTCReg(u8 regAddr, u8 value);



#endif
















