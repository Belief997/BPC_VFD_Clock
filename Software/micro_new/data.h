/* 
 * File:   data.h
 * Author: belief
 *
 * Created on 2019?6?16?, ??4:37
 */

#ifndef __DATA_H__
#define	__DATA_H__

#include <xc.h> // include processor files - each processor file is guarded.  
#include "stdio.h"
#include "stdint.h"

typedef uint8_t u8;
typedef int8_t s8;
typedef uint16_t u16;
typedef int16_t s16;
typedef uint32_t u32;
typedef int32_t s32;

typedef enum{
    FALSE = 0,
    TRUE = 1,
}BOOL;

enum{
    BPC_PWR_ON = 0,
    BPC_PWR_OFF = 1,
    
    PIN_LOW = 0,
    PIN_HIGH = 1,

    // 状态灯是反相控制
    LED_STATE_ON = 0,
    LED_STATE_OFF = 1,
    
    // TIME CODE FORMAT, TOTAL = 20
    CODE_P0 = 0,
    CODE_P1,
    CODE_P2,
    CODE_H_1,
    CODE_H_2,
    CODE_M_1,
    CODE_M_2,
    CODE_M_3,
    CODE_W_1,
    CODE_W_2,
    CODE_P3,
    CODE_D_1,
    CODE_D_2,
    CODE_D_3,
    CODE_MN_1,
    CODE_MN_2,
    CODE_Y_1,
    CODE_Y_2,
    CODE_Y_3,
    CODE_P4,
    
}ENUM;

/* KEY MASK */
#define KEY_CHECK_BITS (0x0f) 
#define KEY_PRESS      (0x03)


// some value define
#define RECV_BUF_MAX 20

// calculate + bias
#define TIMER_0_RST (158 + 0)

// decode time : code pulse time
#define COUNT_1S 31030
#define COUNT_100MS 3103
#define COUNT_200MS 6208
#define COUNT_300MS 9311
#define COUNT_400MS 12417
#define COUNT_500MS 15578
#define COUNT_BIAS 1500

#define NUMBER_1 0
#define NUMBER_2 1
#define NUMBER_3 2
#define NUMBER_4 3
#define NUMBER_ERROR 4
#define CME_START 5
#define NO_NEED 6


typedef struct{
    // bool value used in receive_decode
    volatile BOOL g_flg_switch;        // switch
    volatile BOOL g_isDecoding;   // start read data
    volatile BOOL g_find_recv_start; 

    // time data
    u8 g_time_h;
    u8 g_time_m;
    u8 g_time_s;
    u8 g_time_100ms;

    // times value in receive_decode
    u16 g_high_level_times;
    u16 g_all_level_times;
    u16 g_recv_count;
    // read time buf in receive_code
    u8 g_recv_buf[RECV_BUF_MAX];
    
    u16 cnt_update;


    /* capture: 捕获到的计数 */
    u16 cnt_high;
    u16 cnt_low;
    
}G_DATA;

G_DATA* data_getdata(void);


#endif
