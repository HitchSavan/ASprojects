/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1640595531_4_
#define _BUR_1640595531_4_

#include <bur/plctypes.h>

/* Constants */
#ifdef _REPLACE_CONST
#else
#endif


/* Variables */
_BUR_LOCAL signed short ERROR;
_BUR_LOCAL signed short afterStart;
_BUR_LOCAL signed short visu_MV1;
_BUR_LOCAL signed short visu_DP1;
_BUR_LOCAL signed short visu_DP2;
_BUR_LOCAL signed short visu_FAN;
_BUR_LOCAL signed short visu_FV1;
_BUR_LOCAL signed short visu_CP1;
_BUR_LOCAL signed short visu_HH;
_BUR_LOCAL signed short visu_LL;
_BUR_LOCAL signed short visu_H;
_BUR_LOCAL signed short visu_L;
_BUR_LOCAL enum Com_operStates_G com_oper_G;
_BUR_LOCAL plcbit TriggersError;
_BUR_LOCAL unsigned short maxFeedTimeDP1;
_BUR_LOCAL unsigned short maxOneTimeFeedDP1;
_BUR_LOCAL unsigned short maxOneTimeFeedDP2;
_BUR_LOCAL unsigned short maxFeedTimeDP2;
_BUR_LOCAL unsigned short maxWashTimeCP1;
_BUR_LOCAL signed short PH;
_BUR_LOCAL signed short RH;
_BUR_LOCAL plcbit FlowIndic;
_BUR_LOCAL plcbit P_LL;
_BUR_LOCAL plcbit P_HH;
_BUR_LOCAL plcbit Level_HH;
_BUR_LOCAL plcbit Level_H;
_BUR_LOCAL signed short PH_LowLimit;
_BUR_LOCAL signed short PH_WorkLimit;
_BUR_LOCAL signed short RH_HighLimit;
_BUR_LOCAL signed short RH_LowLimit;
_BUR_LOCAL plcbit Level_L;
_BUR_LOCAL plcbit Level_LL;
_BUR_LOCAL struct Valve MV1;
_BUR_LOCAL struct Solval FV1;
_BUR_LOCAL struct Engine DP1;
_BUR_LOCAL struct Engine DP2;
_BUR_LOCAL struct Engine FAN;
_BUR_LOCAL struct Engine CP1;





__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/Program/Variables.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/Library_C/Library_C.fun\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1640595531_4_ */

