/* 
 * File:   timer.h
 * Author: belief
 *
 * Created on 2019/5/4, ??1:33
 */

#ifndef TIMER_H
#define	TIMER_H

void timer_Timer1Init(void);
void timer_Timer1Start(void);
BOOL timer_IsTimer1Itrpt(void);
void timer_Timer1Reset(void);



void timer_init(void);
void timer_reset(void);
void timer_start(void);
void timer_stop(void);
BOOL timer_isrunning(void);



#endif	/* TIMER_H */

