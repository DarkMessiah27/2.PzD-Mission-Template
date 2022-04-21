//======================== Finnish Misc Equipment/Uniform Definitions ========================

// Items in this file do not belong to any of the more specific uniform definition files.

//========= Uniforms =========

//Vests
#define Fin_Vest_PC                             "V_NORTH_FIN_Officer_Assault_2"
#define Fin_Vest_SMG							"V_NORTH_FIN_Assault_1"
#define Fin_Vest_SMG_S							"V_NORTH_FIN_Assault_3"
#define Fin_Vest_Mosin                          "V_NORTH_FIN_Rifleman_2"
#define Fin_Vest_MG                             "V_NORTH_FIN_LMG_1"
#define Fin_Vest_MGA                            "V_NORTH_FIN_Pioneer_1"
#define Fin_Vest_HGun                           "V_NORTH_FIN_Rifleman_11"
#define Fin_Vest_Medic							"V_NORTH_FIN_Generic_4"

#define Fin_Vest_VCrew							"V_NORTH_FIN_Generic_2"

//Backpack
#define Fin_BP                                  "NORTH_FIN_BreadBag"

#define Fin_BP_r                                ["NORTH_FIN_BreadBag"],["NORTH_FIN_BreadBag3"],["NORTH_fin_GasmaskBag"]

#define Fin_BP_MG                               "NORTH_fin_GasmaskBag"
#define Fin_BP_Med                              "NORTH_fin_GasmaskBag"
#define Fin_BP_Molotov						    "NORTH_fin_MolotovBag"
#define Fin_BP_Patrol							"NORTH_fin_Silpuli"
#define Fin_BP_PzSchreck						"NORTH_fin_Panzerschreck_frame"
#define Fin_BP_Radio                            "NORTH_fin_Kyynel"


#define Fin_BP_HMG_Tripod						"NORTH_Maxim_Tripod_Bag"
#define Fin_BP_HMG_Gun							"NORTH_Maxim_Gun_Bag"

//Facewear 
#define Fin_MedicalBand							"G_NORTH_FIN_Medicalarmband"
#define Fin_Gloves							    "G_NORTH_FIN_Gloves"
#define Fin_Balaclava							"G_NORTH_FIN_Balaclava_3"

//Function
#define Remove_Helm_If_Needed \
	if (uniform _unit == "U_NORTH_FIN_M27_Snowsuit_Hooded_2" || uniform _unit == "U_NORTH_FIN_M27_Snowsuit_Hooded_5") then { \
		removeHeadgear _unit; \
	};