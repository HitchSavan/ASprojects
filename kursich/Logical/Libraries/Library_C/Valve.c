
#include <bur/plctypes.h>
#ifdef __cplusplus
	extern "C"
	{
#endif
	#include "Library_C.h"
#ifdef __cplusplus
	};
#endif
/* TODO: Add your comment here */
void Valve(struct Valve* inst)
{
	switch (inst->state) {
		case CLOSED: {
				if(inst->open == 1) {
					inst->state = OPENED;
					break;
				}
				if((inst->com_oper == START) && (inst->ready)) {
					inst->error = NOERROR;
					inst->counter = 0;
					inst->opening = 1;
					inst->CCMCCW = 1;
					inst->CCMCW = 0;
					inst->stop = 0;
					inst->com_oper = NONE;
					inst->state = TRY2OPEN;
					break;
				}
			}

		case OPENED: {
				if(inst->open == 0) {
					inst->state = CLOSED;
					break;
				}
				if(inst->com_oper == STOP) {
					inst->error = NOERROR;
					inst->counter = 0;
					inst->closing = 1;
					inst->CCMCCW = 0;
					inst->CCMCW = 1;
					inst->stop = 0;
					inst->com_oper = NONE;
					inst->state = TRY2CLOSE;
					break;
				}
			}
		
		case TRY2OPEN: {
				inst->counter += 1;
				if((inst->opening == 1) && (inst->counter > inst->time2Open)) {
					inst->error = FAIL2START;
					inst->CCMCCW = 0;
					inst->opening = 0;
					inst->stop = 1;
					inst->counter = 0;
					inst->state = CLOSED;
					break;
				}
				if((inst->opening == 1) && (inst->counter = inst->time2Open)) {
					inst->CCMCCW = 0;
					inst->opening = 0;
					inst->open = 1;
					inst->stop = 1;
					inst->state = OPENED;
					break;
				}
			}

		case TRY2CLOSE: {
				inst->counter += 1;
				if((inst->closing == 1) && (inst->counter > inst->time2Close)) {
					inst->error = FAIL2STOP;
					inst->CCMCW = 0;
					inst->closing = 0;
					inst->stop = 1;
					inst->counter = 0;
					inst->state = CLOSED;
					break;
				}
				if((inst->closing == 1) && (inst->counter = inst->time2Close)) {
					inst->CCMCW = 0;
					inst->closing = 0;
					inst->open = 0;
					inst->stop = 1;
					inst->state = CLOSED;
					break;
				}
			}
	}
}
