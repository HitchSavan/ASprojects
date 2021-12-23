
FUNCTION_BLOCK Valve
	VAR_INPUT
		ESD_stop : BOOL;
		remote : BOOL := 1;
		local : BOOL;
		CCMCCW : BOOL;
		CCMCW : BOOL;
	END_VAR
	VAR_OUTPUT
		closing : BOOL;
		opening : BOOL;
		open : BOOL;
		ready : BOOL := 1;
		termalTrip : BOOL;
		torqueTrip : BOOL;
		stop : BOOL;
		error : ErrorStates;
	END_VAR
	VAR_IN_OUT
		com_oper : Com_operStates;
	END_VAR
	VAR
		state : ValveStatusStates;
		counter : UINT;
		time2Open : UINT := 10;
		time2Close : UINT := 10;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK Engine (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		ready : BOOL := 1;
		local : BOOL := 0;
		remote : BOOL := 1;
		alarm_stop_button_pressed : BOOL := FALSE;
		time2Start : UINT := 10;
		time2Stop : UINT := 10;
	END_VAR
	VAR_OUTPUT
		error : ErrorStates := NOERROR;
	END_VAR
	VAR_IN_OUT
		com_oper : Com_operStates;
		work : BOOL;
	END_VAR
	VAR
		counter : USINT := 0;
		start : BOOL;
		stop : BOOL;
		state : EngineStatusStates := STOPPED;
	END_VAR
	VAR_OUTPUT
		workTime : UINT;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK Solval
	VAR_INPUT
		ESD_stop : BOOL;
		remote : BOOL := 1;
		local : BOOL;
	END_VAR
	VAR_OUTPUT
		opened : BOOL;
		ready : BOOL := 1;
		openClose : BOOL;
		error : ErrorStates;
	END_VAR
	VAR_IN_OUT
		com_oper : Com_operStates;
	END_VAR
	VAR
		state : ValveStatusStates := CLOSED;
	END_VAR
END_FUNCTION_BLOCK
