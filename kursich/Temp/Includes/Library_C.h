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

typedef enum Com_operStates
{	NONE,
	START,
	STOP
} Com_operStates;

typedef enum EngineStatusStates
{	STOPPED,
	STARTED,
	TRY2START,
	TRY2STOP
} EngineStatusStates;

typedef enum ValveStatusStates
{	OPENED,
	CLOSED,
	OPENING,
	CLOSING,
	TRY2CLOSE,
	TRY2OPEN
} ValveStatusStates;

typedef struct Valve
{
	/* VAR_OUTPUT (analog) */
	enum ErrorStates error;
	/* VAR_IN_OUT (analog and digital) */
	enum Com_operStates* com_oper;
	/* VAR (analog) */
	enum ValveStatusStates state;
	unsigned short counter;
	unsigned short time2Open;
	unsigned short time2Close;
	/* VAR_INPUT (digital) */
	plcbit ESD_stop;
	plcbit remote;
	plcbit local;
	plcbit CCMCCW;
	plcbit CCMCW;
	/* VAR_OUTPUT (digital) */
	plcbit closing;
	plcbit opening;
	plcbit open;
	plcbit ready;
	plcbit termalTrip;
	plcbit torqueTrip;
	plcbit stop;
} Valve_typ;

typedef struct Engine
{
	/* VAR_INPUT (analog) */
	unsigned short time2Start;
	unsigned short time2Stop;
	/* VAR_OUTPUT (analog) */
	enum ErrorStates error;
	unsigned short workTime;
	/* VAR_IN_OUT (analog and digital) */
	enum Com_operStates* com_oper;
	plcbit* work;
	/* VAR (analog) */
	unsigned char counter;
	enum EngineStatusStates state;
	/* VAR_INPUT (digital) */
	plcbit ready;
	plcbit local;
	plcbit remote;
	plcbit alarm_stop_button_pressed;
	/* VAR (digital) */
	plcbit start;
	plcbit stop;
} Engine_typ;

typedef struct Solval
{
	/* VAR_OUTPUT (analog) */
	enum ErrorStates error;
	/* VAR_IN_OUT (analog and digital) */
	enum Com_operStates* com_oper;
	/* VAR (analog) */
	enum ValveStatusStates state;
	/* VAR_INPUT (digital) */
	plcbit ESD_stop;
	plcbit remote;
	plcbit local;
	/* VAR_OUTPUT (digital) */
	plcbit opened;
	plcbit ready;
	plcbit openClose;
} Solval_typ;



/* Prototyping of functions and function blocks */
_BUR_PUBLIC void Valve(struct Valve* inst);
_BUR_PUBLIC void Engine(struct Engine* inst);
_BUR_PUBLIC void Solval(struct Solval* inst);


#ifdef __cplusplus
};
#endif
#endif /* _LIBRARY_C_ */

