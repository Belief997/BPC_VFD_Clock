#include "myiic.h"
#include "data.h"

//unsigned char temp_h;
//unsigned char temp_l;
//unsigned int Temp;

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
	delay_4us();
 	IIC_SDA=0;      //START:when CLK is high,DATA change form high to low 
//	delay_4us();
	IIC_SCL=0;      //??I2C???????????? 
//	delay_4us();
}	  
//??IIC????
void IIC_Stop(void)
{
	SDA_OUT();      //sda???
	IIC_SCL=0;
	IIC_SDA=0;      //STOP:when CLK is high DATA change form low to high
 	delay_4us();    
	IIC_SCL=1; 
	IIC_SDA=1;      //??I2C??????
	delay_4us();	 
//	delay_4us();
}
//????????
//????1???????
//        0???????
unsigned char IIC_Wait_Ack(void)
{
	unsigned char ucErrTime=0;
	SDA_IN();      //SDA?????  
	IIC_SDA=1;delay_4us();	   
	IIC_SCL=1;delay_4us();	 
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
	delay_4us();
	IIC_SCL=1;
	delay_4us();
	IIC_SCL=0;
}
//???ACK??		    
void IIC_NAck(void)
{
	IIC_SCL=0;
	SDA_OUT();
	IIC_SDA=1;
	delay_4us();
	IIC_SCL=1;
	delay_4us();
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
		delay_4us();   
		IIC_SCL=1;
		delay_4us(); 
		IIC_SCL=0;	
		delay_4us();
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
        delay_4us();
		IIC_SCL=1;
        receive<<=1;
        if(READ_SDA)receive++;   
		delay_4us();
    }					 
    if (!ack)
        IIC_NAck();//??nACK
    else
        IIC_Ack(); //??ACK   
    return receive;
}

//unsigned char RD_temp(void)
//{
//    IIC_Start();
//    //IIC_Send_Byte(0b1001111);
//    IIC_Send_Byte(0b1010001);
//    if(!IIC_Wait_Ack())         //0 successed
//    {
//        temp_h = IIC_Read_Byte(1);
//        temp_l = IIC_Read_Byte(0);
//        IIC_Stop();
//        return 0;
//    }
//    return 1;
//}


#define ADDR_SLAVE_R (0b10100011)
#define ADDR_SLAVE_W (0b10100010)

s8 IIC_RdRTCReg(u8 regAddr, u8* value)
{
    IIC_Start();
    IIC_Send_Byte(ADDR_SLAVE_W);
    if(!IIC_Wait_Ack())         //0 successed
    {
        IIC_Send_Byte(regAddr);
        if(!IIC_Wait_Ack())         //0 successed
        {
            IIC_Start();
            IIC_Send_Byte(ADDR_SLAVE_R);
            if(!IIC_Wait_Ack())         //0 successed
            {
                *value = IIC_Read_Byte(0);         
                IIC_Stop();
                return 0;
            }
            return -1;
        }
        return -1;
    }
    return -1;
}

s8 IIC_WtRTCReg(u8 regAddr, u8 value)
{
    IIC_Start();
    IIC_Send_Byte(ADDR_SLAVE_W);
    if(!IIC_Wait_Ack())         //0 successed
    {
        IIC_Send_Byte(regAddr);
        if(!IIC_Wait_Ack())         //0 successed
        {
            IIC_Send_Byte(value);   
            if(!IIC_Wait_Ack())         //0 successed
            {
                IIC_Stop();
                return 0;
            }
        }
        return -1;
    }
    return -1;
}
























