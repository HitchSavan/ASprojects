
TYPE
	ErrorStates : 
		(
		NOERROR,
		FALSESTART,
		FALSESTOP,
		FAIL2START,
		FAIL2STOP
		);
	Com_operStates : 
		(
		NONE,
		START,
		STOP
		);
	EngineStatusStates : 
		(
		STOPPED,
		STARTED,
		TRY2START,
		TRY2STOP
		);
	ValveStatusStates : 
		(
		OPENED,
		CLOSED,
		OPENING,
		CLOSING,
		TRY2CLOSE,
		TRY2OPEN
		);
END_TYPE
