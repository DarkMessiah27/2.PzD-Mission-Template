//======================== Luftwaffe and Fallschirmjäger Equipment Definitions ========================

//===== Luftwaffe Equipment Definitions =====

//Uniform
#define Luft_Uni_Pilot                  "U_LIB_GER_LW_pilot"

//Vests
#define Luft_Vest_Pilot                 "V_LIB_GER_TankPrivateBelt"

//Headgear
#define Luft_Helmet                     "fow_h_ger_m40_luftwaffe_01"
#define Luft_Helmet_n                   "fow_h_ger_m40_luftwaffe_02"
#define Luft_Helmet_r                   ["fow_h_ger_m40_luftwaffe_01"],["fow_h_ger_m40_luftwaffe_02"]
#define Luft_Helmet_Pilot               "H_LIB_GER_LW_PilotHelmet"

//===== Fallschirmjäger Equipment Definitions =====

//Uniform
#define FSJ_Uni_SL                      "fow_u_ger_fall_01_sergeant"
#define FSJ_Uni_S2                      "fow_u_ger_fall_01_corporal"
#define FSJ_Uni_Rif                     "fow_u_ger_fall_01_lance_corporal"
#define FSJ_Uni_NI                      "fow_u_ger_fall_01_private"

#define FSJ_UniC_SL                     "fow_u_ger_fall_03_sergeant"
#define FSJ_UniC_S2                     "fow_u_ger_fall_03_corporal"
#define FSJ_UniC_Rif                    "fow_u_ger_fall_03_lance_corporal"
#define FSJ_UniC_NI                     "fow_u_ger_fall_03_private"

#define FSJ_UniC2_SL                    "fow_u_ger_fall_04_sergeant"
#define FSJ_UniC2_S2                    "fow_u_ger_fall_04_corporal"
#define FSJ_UniC2_Rif                   "fow_u_ger_fall_04_lance_corporal"
#define FSJ_UniC2_NI                    "fow_u_ger_fall_04_private"

#define FSJ_UniI_SL                     "fow_u_ger_fall_02_sergeant"
#define FSJ_UniI_S2                     "fow_u_ger_fall_02_corporal"
#define FSJ_UniI_Rif                    "fow_u_ger_fall_02_lance_corporal"
#define FSJ_UniI_NI                     "fow_u_ger_fall_02_private"

#define FSJ_Uni_VCom                    "fow_u_ger_fall_01_sergeant"
#define FSJ_Uni_VCrew                   "fow_u_ger_fall_01_lance_corporal"

//Vests
#define FSJ_Vest_CC                     "fow_v_heer_p38"
#define FSJ_Vest_PC                     "fow_v_heer_mp40_nco"
#define FSJ_Vest_Band                   "fow_v_fall_bandoleer"

#define FSJ_Vest_VCrew                  "V_LIB_GER_TankPrivateBelt"

//Headgear
#define FSJ_Hat_O                       "H_LIB_GER_OfficerCap"
#define FSJ_Hat_W                       "fow_h_ger_m38_feldmutze"
#define FSJ_Hat                         "H_LIB_GER_Cap"
#define FSJ_Helmet                      "fow_h_ger_m40_fall_01"
#define FSJ_Helmet_n                    "fow_h_ger_m40_fall_01_net"
#define FSJ_HelmetC                     "fow_h_ger_m40_fall_01_camo"
#define FSJ_HelmetI                     "fow_h_ger_m40_fall_02_camo"
#define FSJ_Helmet_r                    ["fow_h_ger_m40_fall_01"],["fow_h_ger_m40_fall_01_camo"]
#define FSJ_HelmetI_r                   ["fow_h_ger_m40_fall_01"],["fow_h_ger_m40_fall_01_camo"],["fow_h_ger_m40_fall_01_net"],["fow_h_ger_m40_fall_02_camo"]

#define FSJ_Hat_VCom                    ["H_LIB_GER_TankOfficerCap"],["H_LIB_GER_TankOfficerCap2"]
#define FSJ_Hat_VCrew                   ["H_LIB_GER_TankPrivateCap"],["H_LIB_GER_TankPrivateCap2"]

//Backpack
#define FSJ_BP_Parachute				"B_LIB_GER_LW_Paradrop"

//Parachute or backpack
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
                    [Ger_BP_MG_r] call Olsen_FW_FNC_AddItemRandom; \
                }; \
                case "MGA": \
                { \
                    [Ger_BP_MG_D] call Olsen_FW_FNC_AddItemRandom; \
                }; \
                default \
                { \
                    [Ger_BP_r] call Olsen_FW_FNC_AddItemRandom; \
                }; \
            }; \
        };

// We don't have any separete composition for Winter Fallschirmjäger yet. Putting this here for the time being.
#define FSJ_Helmet_Winter				"H_LIB_GER_FSJ_M44_Helmet_Winter"