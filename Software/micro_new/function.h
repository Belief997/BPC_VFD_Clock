// This is a guard condition so that contents of this file are not included
// more than once.  
#ifndef XC_HEADER_TEMPLATE_H
#define	XC_HEADER_TEMPLATE_H

#include <xc.h> // include processor files - each processor file is guarded.  
#include "stdint.h"
#include "data.h"

/******  all functions  ********/
/**
 * @func:receive signal and decode
 */
void receive_decode(void);

/**
 * @func:update time 
 */
void update_time(void);




#endif	/* XC_HEADER_TEMPLATE_H */

