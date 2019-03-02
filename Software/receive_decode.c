/*
 * File:   receive_decode.c
 * Author: GeniusRabbit
 *
 * Created on 2019?2?27?, ??5:28
 */


#include <xc.h>
#include "function.h"

int times2number(int high_level_times){
    if(high_level_times > 5 && high_level_times < 15){          //0.1s
        return 0;
    }else if(high_level_times > 15 && high_level_times < 25){   //0.2s
        return 1;
    }else if(high_level_times > 25 && high_level_times < 35){   //0.3s
        return 2;
    }else if(high_level_times > 35 && high_level_times < 45){   //0.4s
        return 3;
    }else if(high_level_times > 45){                            // long high level
        return 4;
    }else{
        return 5;                                               // long low level
    }
}
#ifdef TEST
void test_value(int value){
    if(value == 0){
        LATAbits.LATA2 = 1;
        LATAbits.LATA3 = 0;
        LATAbits.LATA4 = 0;
        LATAbits.LATA5 = 0;
    }else if(value == 1){
        LATAbits.LATA2 = 0;
        LATAbits.LATA3 = 1;
        LATAbits.LATA4 = 0;
        LATAbits.LATA5 = 0;
    }else if(value == 2){
        LATAbits.LATA2 = 0;
        LATAbits.LATA3 = 0;
        LATAbits.LATA4 = 1;
        LATAbits.LATA5 = 0;
    }else if(value == 3){
        LATAbits.LATA2 = 0;
        LATAbits.LATA3 = 0;
        LATAbits.LATA4 = 0;
        LATAbits.LATA5 = 1;
    }
}
#endif
void receive_decode(void) {
    // read port get high level times
    if(PORTCbits.RC5 == 1){
        g_high_level_times++;
    }
    // get times of read
    g_all_level_times++;
    
    // find time start
    if(g_all_level_times < 100){
        return;
    }
    // init for read another high level
    int read_value = times2number(g_high_level_times);
    g_all_level_times = 0;
    g_high_level_times = 0;
    
    if(read_value == 5){
        // start to read data flag
        g_find_recv_start = TRUE;
#ifdef TEST
        LATAbits.LATA0 = !LATAbits.LATA0;
#endif
        g_recv_count = 0;
        return;
    }else if(read_value == 4){
        // false case 
    }
    
#ifdef TEST
    test_value(read_value);
#endif
    
    if(g_find_recv_start == FALSE){
        return;
    }
    
    g_recv_buf[g_recv_count] = read_value;
    g_recv_count++;
    if(g_recv_count < 7){
        return;
    }

    if(g_recv_buf[0] != 0 && g_recv_buf[1] != 0){
        // receive error
    }
    
    int old_time_h = g_time_h;
    int old_time_m = g_time_m;
    g_time_h = g_recv_buf[2] * 4 + g_recv_buf[3];
    g_time_m = g_recv_buf[4] * 16 + g_recv_buf[5] * 4 + g_recv_buf[6];
    
    if(old_time_h != g_time_h || old_time_m != g_time_m){
        update_time();
    }
    
    // recv over then set flag to false
    g_find_recv_start == FALSE;
    g_start_read_data = 0;
    g_recv_count = 0;
    for(int i = 0;i < RECV_BUF_MAX; i++){
        g_recv_buf[i] = 5;
    }
    return;
}
