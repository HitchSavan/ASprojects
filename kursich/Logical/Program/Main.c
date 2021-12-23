
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
	} else {
		if(!(Level_H && Level_LL && Level_L)) {
			if(P_LL && P_HH) {
				CP1.com_oper = 2;
			}
			if(!(CP1.work)) {
				if((PH > PH_WorkLimit) && (DP1.workTime >= maxOneTimeFeedDP1)) {
					DP1.com_oper = 2;
				}
				if((RH > RH_LowLimit) && (DP2.workTime >= maxOneTimeFeedDP2)) {
					DP2.com_oper = 2;
				}
			}
			MV1.com_oper = 2;
		} else {
			if(MV1.open) {
				FV1.com_oper = 2;
			}
		}
	}
}
void _EXIT ProgramExit(void)
{
	// Insert code here 

}

