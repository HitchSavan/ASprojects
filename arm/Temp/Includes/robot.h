/* Automation Studio generated header file */
/* Do not edit ! */
/* robot  */

#ifndef _ROBOT_
#define _ROBOT_
#ifdef __cplusplus
extern "C" 
{
#endif

#include <bur/plctypes.h>

#ifndef _BUR_PUBLIC
#define _BUR_PUBLIC
#endif
/* Constants */
#ifdef _REPLACE_CONST
 #define ANIMATING 1U
 #define ANIMATION_END 2U
#else
 #ifndef _GLOBAL_CONST
   #define _GLOBAL_CONST _WEAK const
 #endif
 _GLOBAL_CONST unsigned char ANIMATING;
 _GLOBAL_CONST unsigned char ANIMATION_END;
#endif




/* Datatypes and datatypes of function blocks */
typedef struct Q_PositionAnimator
{
	/* VAR_INPUT (analog) */
	float startPosition;
	float endPosition;
	signed short velocity;
	/* VAR_OUTPUT (analog) */
	signed char status;
	float position;
	/* VAR_INPUT (digital) */
	plcbit reverse;
	plcbit enabled;
} Q_PositionAnimator_typ;



/* Prototyping of functions and function blocks */
_BUR_PUBLIC void Q_PositionAnimator(struct Q_PositionAnimator* inst);


#ifdef __cplusplus
};
#endif
#endif /* _ROBOT_ */

