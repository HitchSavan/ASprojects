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
/* Datatypes and datatypes of function blocks */
typedef enum AnimState
{	IDLE,
	ANIMATING,
	ANIMATION_END
} AnimState;

typedef struct Q_PositionAnimator
{
	/* VAR_INPUT (analog) */
	float startPosition;
	float endPosition;
	signed short velocity;
	/* VAR_OUTPUT (analog) */
	enum AnimState status;
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

