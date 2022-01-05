//======================== Finnish Winter Uniform Definitions ========================

//Uniform
#define Fin_Uni_CC                            "U_NORTH_FIN_M36_W_Greatcoat_CPT"
#define Fin_Uni_CSgt                          "U_NORTH_FIN_M36_W_Greatcoat_SGT"
#define Fin_Uni_PC                            "U_NORTH_FIN_M27_Snowsuit_Half_4"
#define Fin_Uni_PSgt                          "U_NORTH_FIN_M27_Snowsuit_2"
#define Fin_Uni_SL                            "U_NORTH_FIN_M27_Snowsuit_4"
#define Fin_Uni_TL                            "U_NORTH_FIN_M27_Snowsuit_4"
#define Fin_Uni_Rif                           "U_NORTH_FIN_M27_Snowsuit_5"

#define Fin_Uni_r			      ["U_NORTH_FIN_M27_Snowsuit_5"],["U_NORTH_FIN_M27_Snowsuit_Hooded_5"],["U_NORTH_FIN_M27_Snowsuit_Hooded_2"],["U_NORTH_FIN_M27_Snowsuit_2"],["U_NORTH_FIN_M27_Snowsuit_2"],["U_NORTH_FIN_M27_Snowsuit_5"]

//Tank Crew
#define Fin_Uni_TankCom			      "U_NORTH_FIN_M36_Leather_CPL"
#define Fin_Uni_TankCrew                      "U_NORTH_FIN_M36_Leather_Private"

//Headgear
#define Fin_Hat_PC                            "H_NORTH_FIN_M39_furhat_fancy_officer"
#define Fin_Hat_Tank			      "H_NORTH_FIN_M36_fieldcap_worn"
#define Fin_Hat                               "H_NORTH_FIN_M39_furhat_open"

#define Fin_Helmet_Early_r                    ["H_NORTH_FIN_M16_Helmet_Winter_Whitewash"],["H_NORTH_FIN_M16_Helmet_Winter_Whitewash_2"],["H_NORTH_FIN_M39_furhat"],["H_NORTH_FIN_M16_Helmet_Winter_Camo"],["H_NORTH_FIN_M34_Helmet_Winter_Whitewash"]
#define Fin_Helmet_Late_r                     ["H_NORTH_FIN_M38_Helmet_Winter_Camo"],["H_NORTH_FIN_M34_Helmet_Winter_Whitewash"],["H_NORTH_FIN_M37_Helmet_Winter_Whitewash"],["H_NORTH_FIN_M39_furhat"],["H_NORTH_FIN_M18_Helmet_Winter_Camo_2"]

//Facewear                    
#define Fin_Face \
        [ \
            [ \
                [Fin_Gloves] \
            ],[40], \
            [ \
                [Fin_Balaclava], \
                [Fin_Gloves] \
            ],[60] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;



        