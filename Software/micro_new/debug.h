#ifndef _DEBUG_H_
#define _DEBUG_H_

typedef int (*CMD_ACTION)(const unsigned char* cmdString, unsigned short length);
int debug_proc(const unsigned char* cmdString, unsigned short length);

#endif /* USER_INC_DEBUG_H_ */