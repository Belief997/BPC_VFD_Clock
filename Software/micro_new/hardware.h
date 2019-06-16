#ifndef __HARDWARE_H__
#define	__HARDWARE_H__

#include <xc.h> // include processor files - each processor file is guarded.  
#include "stdint.h"

/***************  define pin table from here  ******************/
// cme6005 data port define  BPC_DATA
// CPP2
#define CME_DATA_PORT PORTCbits.RC1
#define CME_DATA_TRI TRISCbits.TRISC1
#define CME_DATA_IOC IOCCPbits.IOCCP1
#define CME_DATA_WPU WPUCbits.WPUC1
#define CME_DATA_IOC_INT IOCCFbits.IOCCF1



// switch port define Syn
#define SWITCH_PORT PORTCbits.RC5
#define SWITCH_TRI TRISCbits.TRISC5
#define SWITCH_WPU WPUCbits.WPUC5
#define BPC_ON PORTCbits.RC2          // PON : LOW active

// output display port define
#define PIC_DATA LATBbits.LATB5
#define PIC_SHCP LATBbits.LATB0
#define PIC_STCP LATBbits.LATB1
#define PIC_OE LATBbits.LATB2

// define light controll
#define Light_on PORTAbits.RA0

// define RTC chip port
#define PIC_INT PORTCbits.RC0
#define PIC_INT_TRI TRISCbits.TRISC0
#define PIC_INT_WPU WPUCbits.WPUC0
#define PIC_SCL PORTCbits.RC3
#define PIC_SDA PORTCbits.RC4
#define CLKOUT PORTAbits.RA7        // EXTERN CLK IN

// define state led
#define LED_STATE   LATBbits.LATB3

#define TEST
#ifdef TEST
// define test port
#define SECOND_LIGHT LATBbits.LATB3

// get number (times to number test)
#define GET_NUMBER_0 LATAbits.LATA2
#define GET_NUMBER_1 LATAbits.LATA3
#define GET_NUMBER_2 LATAbits.LATA4
#define GET_NUMBER_3 LATAbits.LATA5
#endif


/***************  define pin table  end  ******************/


/* capture */
u8 capture_init(void);
u8 capture_Set(u8 isON);
BOOL capture_IsIntrpt(void);
void capture_clrIntrpt(void);
int capture_handdle(void);

BOOL capture_IsNegEdge(void);


/* led */
u8 led_SetState(u8 isOn);
u8 led_Blink(void);

/* key */
BOOL key_isPressed(void);
void key_checkPressed(void);

#endif