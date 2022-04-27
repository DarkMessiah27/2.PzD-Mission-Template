//======================== British Cold War Equipment Definitions ========================

//Uniform
#define UKCW_Uni                  		"cwr3_b_uk_uniform_dpm"
#define UKCW_Uni_Ghillie				"cwr3_b_vest_ghillie"
#define UKCW_Uni_Ghillie_D				"cwr3_b_vest_ghillie_des"
#define UKCW_Uni_VCrew					"cwr3_i_uniform_coverall_grey"

//Vests
#define UKCW_Vest						"cwr3_b_uk_vest_58webbing"
#define UKCW_Vest_Medic					"cwr3_b_uk_vest_58webbing_medic"
#define UKCW_Vest_MG					"cwr3_b_uk_vest_58webbing_mg"
#define UKCW_Vest_Officer				"cwr3_b_uk_vest_58webbing_officer"
#define UKCW_Vest_Sapper				"cwr3_b_uk_vest_58webbing_sapper"

//Backpack
#define UKCW_BP							"cwr3_b_uk_backpack"
#define UKCW_BP_Medic					"cwr3_b_uk_backpack_medic_empty"
#define UKCW_BP_Radio					"cwr3_b_backpack_radio" // DO NOT USE THIS DIRECTLY. USE THE UKCW_Radio_LR defined below!

//Headgear
#define UKCW_Helm						"cwr3_b_uk_headgear_mk5_helmet_scrim"
#define UKCW_Helm_F						"cwr3_b_uk_headgear_mk5_helmet_scrim_camo"
#define UKCW_Helm_r						["cwr3_b_uk_headgear_mk5_helmet_scrim"],["cwr3_b_uk_headgear_mk5_helmet_scrim_camo"]
#define UKCW_Beret						"cwr3_b_uk_headgear_beret_infantry"
#define UKCW_Beret_Tank					"cwr3_b_uk_headgear_beret_headset_tank"

//Misc
#define UKCW_Radio_PRC117F              "ACRE_PRC117F"
#define UKCW_CargoSling                 "slr_slingload_CargoSling"

#define UKCW_Radio_LR \
    [UKCW_BP_Radio] call Olsen_FW_FNC_AddItemRandom; \
    clearAllItemsFromBackpack _unit; \
    _unit addItemToBackpack UKCW_Radio_PRC117F;
#define UK_Leader_Equipment_Set \
    [GEN_Bino] call Olsen_FW_FNC_AddItem; \
    [GEN_ace_maptools,1,"uniform"] call Olsen_FW_FNC_AddItem;
