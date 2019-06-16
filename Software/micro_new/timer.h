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
void timer_Timer1ClrIntrpt(void);



void timer_Timer0Init(void);
void timer_Timer0Reset(void);
void timer_Timer0Start(void);
BOOL timer_IsTimer0Itrpt(void);


int timer_Timer0Handdle(void);



#endif	/* TIMER_H */

