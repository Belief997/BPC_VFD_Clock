#include "myiic.h"

unsigned char temp_h;
unsigned char temp_l;
unsigned int Temp;

//???IIC
void IIC_Init(void)
{	
    IIC_SCL=1;
	IIC_SDA=1;
    
    ODCONC3 = 1;      //OD 
    ODCONC4 = 1;
    
    TRISC4 = 0;
    TRISC3 = 0;     //set output
            
	WPUC4 = 1;
    WPUC3 = 1;      //no week pull
    
}
//??IIC????
void IIC_Start(void)
{
	SDA_OUT();       //sda???
	IIC_SDA=1;	  	  
	IIC_SCL=1;
	delay_2us();
 	IIC_SDA=0;      //START:when CLK is high,DATA change form high to low 
	delay_2us();
	IIC_SCL=0;      //??I2C???????????? 
}	  
//??IIC????
void IIC_Stop(void)
{
	SDA_OUT();      //sda???
	IIC_SCL=0;
	IIC_SDA=0;      //STOP:when CLK is high DATA change form low to high
 	delay_2us();
	IIC_SCL=1; 
	IIC_SDA=1;      //??I2C??????
	delay_2us();							   	
}
//????????
//????1???????
//        0???????
unsigned char IIC_Wait_Ack(void)
{
	unsigned char ucErrTime=0;
	SDA_IN();      //SDA?????  
	IIC_SDA=1;delay_2us();	   
	IIC_SCL=1;delay_2us();	 
	while(READ_SDA)
	{
		ucErrTime++;
		if(ucErrTime>250)
		{
			IIC_Stop();
			return 1;
		}
	}
	IIC_SCL=0;//????0 	   
	return 0;  
} 
//??ACK??
void IIC_Ack(void)
{
	IIC_SCL=0;
	SDA_OUT();
	IIC_SDA=0;
	delay_2us();
	IIC_SCL=1;
	delay_2us();
	IIC_SCL=0;
}
//???ACK??		    
void IIC_NAck(void)
{
	IIC_SCL=0;
	SDA_OUT();
	IIC_SDA=1;
	delay_2us();
	IIC_SCL=1;
	delay_2us();
	IIC_SCL=0;
}					 				     
//IIC??????
//????????
//1????
//0????			  
void IIC_Send_Byte(unsigned char txd)
{                        
    unsigned char t;   
	SDA_OUT(); 	    
    IIC_SCL=0;//??????????
    for(t=0;t<8;t++)
    {              
        IIC_SDA=(txd&0x80)>>7;
        txd<<=1; 	  
		delay_2us();   //?TEA5767??????????
		IIC_SCL=1;
		delay_2us(); 
		IIC_SCL=0;	
		delay_2us();
    }	 
} 	    
//?1????ack=1????ACK?ack=0???nACK   
unsigned char IIC_Read_Byte(unsigned char ack)
{
	unsigned char i,receive=0;
	SDA_IN();//SDA?????
    for(i=0;i<8;i++ )
	{
        IIC_SCL=0; 
        delay_2us();
		IIC_SCL=1;
        receive<<=1;
        if(READ_SDA)receive++;   
		delay_2us();
    }					 
    if (!ack)
        IIC_NAck();//??nACK
    else
        IIC_Ack(); //??ACK   
    return receive;
}

unsigned char RD_temp(void)
{
    IIC_Start();
    //IIC_Send_Byte(0b1001111);
    IIC_Send_Byte(0b1010001);
    if(!IIC_Wait_Ack())         //0 successed
    {
        temp_h = IIC_Read_Byte(1);
        temp_l = IIC_Read_Byte(0);
        IIC_Stop();
        return 0;
    }
    return 1;
}

void IIC_temp(void)
{
    unsigned char x = 0;
    GIE = 0;
    RD_temp();
    x = temp_l;
    x >>= 5;
    Temp = temp_h;
    Temp <<= 3;
    Temp |= x;
    //LOG("IIC:%d\r\n", Temp);
    GIE = 1;
}

























