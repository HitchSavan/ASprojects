
#include <bur/plctypes.h>

#ifdef _DEFAULT_INCLUDES
	#include <AsDefault.h>
#endif

void _INIT ProgramInit(void)
{
	
}

void _CYCLIC ProgramCyclic(void)
{
	Engine(&FAN);
	Engine(&CP1);
	Engine(&DP1);
	Engine(&DP2);
	Solval(&FV1);
	Valve(&MV1);
	
	if(FAN.work && FlowIndic) {
		if(Level_H && Level_LL && Level_L) {
			if(P_HH == 0) {
				CP1.com_oper = 1;
			}
			if(CP1.work) {
				if(PH <= PH_LowLimit) {
					DP1.com_oper = 1;
				}
				if(RH > RH_HighLimit) {
					DP2.com_oper = 1;
				}
			}
			if((CP1.workTime >= maxWashTimeCP1) || (DP1.workTime >= maxFeedTimeDP1) || (DP2.workTime >= maxFeedTimeDP2)) {
				MV1.com_oper = 1;
			}
		} else {
			if(!(MV1.open)) {
				FV1.com_oper = 1;
			}
		}
	}
	
	if(!FAN.work || !FlowIndic || !(Level_H && Level_LL && Level_L) || (P_LL && (CP1.workTime > afterStart)) || P_HH) {
		CP1.com_oper = 2;
	}
	if(!FAN.work || !FlowIndic || !(Level_H && Level_LL && Level_L) || !(CP1.work) || (PH > PH_WorkLimit) || (DP1.workTime >= maxOneTimeFeedDP1)) {
		DP1.com_oper = 2;
	}
	if(!FAN.work || !FlowIndic || !(Level_H && Level_LL && Level_L) || !(CP1.work) || (RH < RH_LowLimit) || (DP2.workTime >= maxOneTimeFeedDP2)) {
		DP2.com_oper = 2;
	}
	if(!FAN.work || !FlowIndic || (Level_H && Level_LL && Level_L) || MV1.open) {
		FV1.com_oper = 2;
	}
	if(!FAN.work || !FlowIndic || !(Level_H && Level_LL && Level_L)) {
		MV1.com_oper = 2;
	}
	
	if(Level_HH || (Level_H && ((!(Level_L) || !(Level_LL)))) || (!(Level_H) && !(Level_LL) && Level_L)) {
		TriggersError = 1;
		FAN.com_oper = 2;
		CP1.com_oper = 2;
		DP1.com_oper = 2;
		DP2.com_oper = 2;
		FV1.com_oper = 2;
		MV1.com_oper = 2;
	} else {
		TriggersError = 0;
	}
	if(TriggersError) {
		if(ERROR == 0) {
			ERROR = 51;
		} else {
			ERROR = 0;
		}
	} else {
		ERROR = 252;
	}
	
	if(Level_LL) {
		visu_LL = 11;
	} else {
		visu_LL = 252;
	}	
	if(Level_L) {
		visu_L = 11;
	} else {
		visu_L = 252;
	}	
	if(Level_H) {
		visu_H = 11;
	} else {
		visu_H = 252;
	}	
	if(Level_HH) {
		visu_HH = 11;
	} else {
		visu_HH = 252;
	}
	
	if(FAN.work) {
		visu_FAN = 226;
	} else {
		visu_FAN = 252;
	}
	if(CP1.work) {
		visu_CP1 = 226;
	} else {
		visu_CP1 = 252;
	}
	if(FV1.opened) {
		visu_FV1 = 226;
	} else {
		visu_FV1 = 252;
	}
	if(MV1.open) {
		visu_MV1 = 226;
	} else {
		visu_MV1 = 252;
	}
	if(DP1.work) {
		visu_DP1 = 226;
	} else {
		visu_DP1 = 252;
	}
	if(DP2.work) {
		visu_DP2 = 226;
	} else {
		visu_DP2 = 252;
	}
}
void _EXIT ProgramExit(void)
{
	// Insert code here 

}

