
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
void Solval(struct Solval* inst)
{
	switch (inst->state) {
		case CLOSED: {
				if(inst->opened == 1) {
					inst->state = OPENED;
					break;
				}
				if((inst->com_oper == START) && (inst->ready)) {
					inst->error = NOERROR;
					inst->opened = 1;
					inst->com_oper = NONE;
					inst->state = TRY2OPEN;
					break;
				}
			}

		case OPENED: {
				if(inst->opened == 0) {
					inst->state = CLOSED;
					break;
				}
				if(inst->com_oper == STOP) {
					inst->error = NOERROR;
					inst->opened = 0;
					inst->com_oper = NONE;
					inst->state = TRY2CLOSE;
					break;
				}
			}

		case TRY2OPEN: {
				if(inst->opened == 0) {
					inst->error = FAIL2START;
					inst->state = CLOSED;
					break;
				}
				if(inst->opened == 1) {
					inst->state = OPENED;
					break;
				}
			}

		case TRY2CLOSE: {
				if(inst->opened == 1) {
					inst->error = FAIL2STOP;
					inst->state = OPENED;
					break;
				}
				if(inst->opened == 0) {
					inst->state = CLOSED;
					break;
				}
			}
	}
}
