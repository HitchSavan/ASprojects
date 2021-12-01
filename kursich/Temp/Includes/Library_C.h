/* Automation Studio generated header file */
/* Do not edit ! */
/* Library_C  */

#ifndef _LIBRARY_C_
#define _LIBRARY_C_
#ifdef __cplusplus
extern "C" 
{
#endif

#include <bur/plctypes.h>

#ifndef _BUR_PUBLIC
#define _BUR_PUBLIC
#endif
/* Datatypes and datatypes of function blocks */
typedef enum ErrorStates
{	NOERROR,
	FALSESTART,
	FALSESTOP,
	FAIL2START,
	FAIL2STOP
} ErrorStates;

typedef enum StatusStates
{	STOPPED,
	STARTED,
	TRY2START,
	TRY2STOP
} StatusStates;

typedef enum Com_operStates
{	NONE,
	START,
	STOP
} Com_operStates;

typedef struct Engine
{
	/* VAR_INPUT (analog) */
	unsigned short time2Start;
	unsigned short time2Stop;
	/* VAR_OUTPUT (analog) */
	enum ErrorStates error;
	/* VAR_IN_OUT (analog and digital) */
	enum Com_operStates* com_oper;
	plcbit* work;
	/* VAR (analog) */
	unsigned char counter;
	enum StatusStates state;
	/* VAR_INPUT (digital) */
	plcbit ready;
	plcbit local;
	plcbit remote;
	plcbit alarm_stop_button_pressed;
	/* VAR (digital) */
	plcbit start;
	plcbit stop;
} Engine_typ;



/* Prototyping of functions and function blocks */
_BUR_PUBLIC void Engine(struct Engine* inst);


#ifdef __cplusplus
};
#endif
#endif /* _LIBRARY_C_ */

