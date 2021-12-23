//======================== Luftwaffe and Fallschirmjäger Equipment Definitions ========================

//===== Luftwaffe Equipment Definitions =====

//Uniform
#define Luft_Uni_Pilot                  "U_LIB_GER_LW_pilot"

//Vests
#define Luft_Vest_Pilot                 "V_LIB_GER_TankPrivateBelt"

//Headgear
#define Luft_Helmet_Pilot               "H_LIB_GER_LW_PilotHelmet"

//===== Fallschirmjäger Equipment Definitions =====

//Uniform
#define FSJ_Uni_Rif                     "U_LIB_FSJ_Soldier_dak"
#define FSJ_Uni_NI                      "U_LIB_FSJ_Soldier"
#define FSJ_Unic_Rif                    "U_LIB_FSJ_Soldier_camo"
#define FSJ_Unic_NI                     "U_LIB_FSJ_Soldier"

//Vests
#define FSJ_Vest_Band                   "V_LIB_GER_FSJ_VestKar98"

#define FSJ_Vest_VCrew                  "V_LIB_GER_TankPrivateBelt"

//Headgear
#define FSJ_Hat_O                       "H_LIB_GER_OfficerCap"
#define FSJ_Hat                         "H_LIB_GER_Cap"
#define FSJ_Helmet                      "H_LIB_GER_FSJ_M38_Helmet"
#define FSJ_Helmet_r                    ["H_LIB_GER_FSJ_M44_Helmet"],["H_LIB_GER_FSJ_M44_HelmetCamo1"]

#define FSJ_Hat_VCom                    ["H_LIB_GER_TankOfficerCap"],["H_LIB_GER_TankOfficerCap2"]
#define FSJ_Hat_VCrew                   ["H_LIB_GER_TankPrivateCap"],["H_LIB_GER_TankPrivateCap2"]

//Backpack
#define FSJ_BP_Parachute				"B_LIB_GER_LW_Paradrop"

//Parachute or backpack
//spawnWithParachute variable is defined in the loadout files.
#define FSJ_Backpack(unitType) \
        if (spawnWithParachute) then \
        { \
            [FSJ_BP_Parachute] call Olsen_FW_FNC_AddItem; \
        } \
        else \
        { \
            switch (unitType) do \
            { \
                case "RTO": \
                { \
                    [Ger_BP_Radio] call Olsen_FW_FNC_AddItemRandom; \
                }; \
                case "Med": \
                { \
                    [Ger_BP_Med] call Olsen_FW_FNC_AddItemRandom; \
                }; \
                case "MG": \
                { \
                    [Ger_BP_MG_R] call Olsen_FW_FNC_AddItemRandom; \
                }; \
                case "MGA": \
                { \
                    [Ger_BP_MG_R] call Olsen_FW_FNC_AddItemRandom; \
                }; \
                default \
                { \
                    [Ger_BP_R] call Olsen_FW_FNC_AddItemRandom; \
                }; \
            }; \
        };

// We don't have any separete composition for Winter Fallschirmjäger yet. Putting this here for the time being.
#define FSJ_Helmet_Winter				"H_LIB_GER_FSJ_M44_Helmet_Winter"