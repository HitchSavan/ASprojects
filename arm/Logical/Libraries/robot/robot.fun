
FUNCTION_BLOCK Q_PositionAnimator (*TODO: Add your comment here*) (*$GROUP=User,$CAT=User,$GROUPICON=User.png,$CATICON=User.png*)
	VAR_INPUT
		startPosition : REAL := 0.0;
		endPosition : REAL := 0.0;
		reverse : BOOL := FALSE;
		enabled : BOOL := FALSE;
	END_VAR
	VAR_OUTPUT
		status : SINT := 0;
		position : REAL;
	END_VAR
	VAR_INPUT
		velocity : INT := 1;
	END_VAR
END_FUNCTION_BLOCK
