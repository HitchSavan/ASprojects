
FUNCTION_BLOCK Engine (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		ready : BOOL;
		local : BOOL;
		remote : BOOL;
		alarm_stop_button_pressed : BOOL;
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
		state : StatusStates := STOP;
	END_VAR
END_FUNCTION_BLOCK
