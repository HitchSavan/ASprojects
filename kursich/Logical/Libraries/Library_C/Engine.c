
#include <bur/plctypes.h>
#ifdef __cplusplus
	extern "C"
	{
#endif
	#include "Library_C.h"
#ifdef __cplusplus
	};
#endif

void Engine(struct Engine* inst)
{
	
	inst->stop = !inst->start;
	switch (inst->state) {
		case STOPPED: {
			inst->workTime = 0;
			inst->counter = 0;
			if(inst->work == 1) {
				inst->state = STARTED;
				break;
			}
			if((inst->com_oper == START) && (inst->ready)) {
				inst->error = NOERROR;
				inst->work = 1;
				inst->counter = 0;
				inst->com_oper = NONE;
				inst->state = TRY2START;
				break;
			}
		}

		case STARTED: {
			inst->workTime += 1;
			inst->counter = 0;
			if(inst->work == 0) {
				inst->state = STOPPED;
				break;
			}
			if(inst->com_oper == STOP) {
				inst->error = NOERROR;
				inst->work = 0;
				inst->counter = 0;
				inst->com_oper = NONE;
				inst->state = TRY2STOP;
				break;
			}
		}

		case TRY2START: {
			inst->counter += 1;
			if((inst->work == 0) && (inst->counter >= inst->time2Start)) {
				inst->error = FAIL2START;
				inst->start = 0;
				inst->counter = 0;
				inst->state = STOPPED;
				break;
			}
			if(inst->work == 1) {
				inst->start = 1;
				inst->state = STARTED;
				break;
			}
		}

		case TRY2STOP: {
			inst->counter += 1;
			if((inst->work == 1) && (inst->counter >= inst->time2Stop)) {
				inst->error = FAIL2STOP;
				inst->start = 1;
				inst->counter = 0;
				inst->state = STARTED;
				break;
			}
			if(inst->work == 0) {
				inst->start = 0;
				inst->state = STOPPED;
				break;
			}
		}
	}
}