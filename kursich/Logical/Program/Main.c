
#include <bur/plctypes.h>

#ifdef _DEFAULT_INCLUDES
	#include <AsDefault.h>
#endif

void _INIT ProgramInit(void)
{
	
	Engine_0.ready = 1;
	Engine_0.local = 0;
	Engine_0.remote = 0;
	Engine_0.alarm_stop_button_pressed = 0;
	Engine_0.time2Start = 10;
	Engine_0.time2Stop = 10;
	Engine_0.com_oper = 0;
	Engine_0.work = 0;

}

void _CYCLIC ProgramCyclic(void)
{
	Engine(&Engine_0);
	
}

void _EXIT ProgramExit(void)
{
	// Insert code here 

}

