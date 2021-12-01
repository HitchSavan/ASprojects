
TYPE
	ErrorStates : 
		(
		NOERROR,
		FALSESTART,
		FALSESTOP,
		FAIL2START,
		FAIL2STOP
		);
	StatusStates : 
		(
		STOPPED,
		STARTED,
		TRY2START,
		TRY2STOP
		);
	Com_operStates : 
		(
		NONE,
		START,
		STOP
		);
END_TYPE
