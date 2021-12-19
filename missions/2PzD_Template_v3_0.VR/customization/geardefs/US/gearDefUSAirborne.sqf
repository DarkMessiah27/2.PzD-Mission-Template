//======================== US Airborne Uniform Definitions ========================

//Airborne Uniform
#define USAB_UniK_CPT           "U_LIB_US_AB_Uniform_M42"
#define USAB_UniK_LT            "U_LIB_US_AB_Uniform_M42"
#define USAB_UniK_SSGT          "U_LIB_US_AB_Uniform_M42"
#define USAB_UniK_SGT           "U_LIB_US_AB_Uniform_M42_NCO"
#define USAB_UniK_CPL           "U_LIB_US_AB_Uniform_M42_corporal"
#define USAB_UniK_PFC           "U_LIB_US_AB_Uniform_M42"
#define USAB_UniK_PVT           "U_LIB_US_AB_Uniform_M42"
#define USAB_UniK_Med           "U_LIB_US_AB_Uniform_M42_Medic"            
     
#define USAB_UniG_LT            "U_LIB_US_AB_Uniform_M42"         
#define USAB_UniG_SGT           "U_LIB_US_AB_Uniform_M42_NCO"
#define USAB_UniG_CPL           "U_LIB_US_AB_Uniform_M42_corporal"
#define USAB_UniG_PFC           "U_LIB_US_AB_Uniform_M42"
#define USAB_UniG_PVT           "U_LIB_US_AB_Uniform_M42"
#define USAB_UniG_Med           "U_LIB_US_AB_Uniform_M42_Medic"       

//Airborne Vests
#define USAB_Vest_NCO_M1C       "V_LIB_US_AB_Vest_Carbine_nco"
#define USAB_Vest_NCO_M1T       "V_LIB_US_AB_Vest_Thompson_nco"
#define USAB_Vest_M1G           "V_LIB_US_AB_Vest_Garand"
#define USAB_Vest_M1G_Gren      "V_LIB_US_AB_Vest_Grenadier"
#define USAB_Vest_M1C           "V_LIB_US_AB_Vest_Carbine"
#define USAB_Vest_M1T           "V_LIB_US_AB_Vest_Thompson"
#define USAB_Vest_BAR           "V_LIB_US_AB_Vest_Bar"
#define USAB_Vest_MGA           "V_LIB_US_AB_Vest_Grenadier"
#define USAB_Vest_Mort          "V_LIB_US_Vest_Medic"

//Airborne Backpack
#define USAB_BP_Parachute		"B_LIB_US_Type5"
#define USAB_BP_r               ["B_LIB_US_M36"],["B_LIB_US_M36"],["B_LIB_US_M36_Rope"],["B_LIB_US_M36_Rope"]
#define USAB_BP_M1928           "B_LIB_US_Backpack"
#define USAB_BP_M36             "B_LIB_US_M36"
#define USAB_BP_M36R            "B_LIB_US_M36_Rope"
#define USAB_BP_AT              "B_LIB_US_RocketBag_Big_Empty"
#define USAB_BP_Med             "B_LIB_US_MedicBackpack_Big_Empty"
#define USAB_BP_MG              "B_LIB_US_MGbag_Big_Empty"
#define USAB_Bando              "B_LIB_US_Bandoleer"

//Parachute or backpack
//spawnWithParachute variable is defined in the loadout files.
#define USAB_Backpack(unitType) \
        if (spawnWithParachute) then \
        { \
            [USAB_BP_Parachute] call Olsen_FW_FNC_AddItem; \
        } \
        else \
        { \
            switch (unitType) do \
            { \
                case "MGTL": \
                { \
                    [USAB_BP_M1928] call Olsen_FW_FNC_AddItemRandom; \
                }; \
                case "MG": \
                { \
                    [USAB_BP_MG] call Olsen_FW_FNC_AddItemRandom; \
                }; \
				case "BzkaTL"; \
				case "BzkaG": \
                { \
                    [USAB_BP_AT] call Olsen_FW_FNC_AddItemRandom; \
                }; \
				case "RTO": \
                { \
                    [US_BP_Radio] call Olsen_FW_FNC_AddItemRandom; \
                }; \
                default \
                { \
                    [USAB_BP_r] call Olsen_FW_FNC_AddItemRandom; \
                }; \
            }; \
        };

//Airborne Headgear
#define USAB_Helm_CPT_r         ["H_LIB_US_AB_Helmet_CO_1"],["H_LIB_US_AB_Helmet_CO_2"]
#define USAB_Helm_LT_r          ["H_LIB_US_AB_Helmet_CO_1"],["H_LIB_US_AB_Helmet_CO_2"]
#define USAB_Helm_2LT_r         ["H_LIB_US_AB_Helmet_CO_1"],["H_LIB_US_AB_Helmet_CO_2"]
#define USAB_Helm_Med_r         "H_LIB_US_AB_Helmet_Medic_1"
#define USAB_Helm_NCO_r         ["H_LIB_US_AB_Helmet_NCO_1"],["H_LIB_US_AB_Helmet_NCO_2"]
#define USAB_Helm_r             ["H_LIB_US_AB_Helmet_Clear_2"],["H_LIB_US_AB_Helmet_Plain_1"]

#define USAB_Helm_VCrew         "H_LIB_US_Helmet_Tank"