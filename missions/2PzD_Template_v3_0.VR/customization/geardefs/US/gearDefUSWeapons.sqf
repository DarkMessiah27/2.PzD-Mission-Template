//======================== US Weapon Definitions ========================

//Primary
#define US_Weap_M1903A1                 "fow_w_m1903A1"
#define US_Weap_M1903A1_S               "fow_w_m1903A1_sniper"
#define US_Weap_M1903A3                 "LIB_M1903A3_Springfield"
#define US_Weap_M1903A4                 "LIB_M1903A4_Springfield"
#define US_Weap_M1G                     "LIB_M1_Garand"
#define US_Weap_M1C                     "fow_w_m1_carbine"
#define US_Weap_M1A1C                   "LIB_M1A1_Carbine"
#define US_Weap_M2C                     "fow_w_m2_carbine_2PzD"
#define US_Weap_M1928                   "LIB_M1928_Thompson"
#define US_Weap_M1928_D                 "LIB_M1928_Thompson_d"
#define US_Weap_M1928A1                 "LIB_M1928A1_Thompson"
#define US_Weap_M1T                     "LIB_M1A1_Thompson"
#define US_Weap_M1A1T                   "fow_w_m1a1_thompson"
#define US_Weap_M3GG                    "fow_w_m3"
#define US_Weap_M50                     "fow_w_m55_reising"
#define US_Weap_M55                     "fow_w_m55_reising"
#define US_Weap_BAR                     "LIB_M1918A2_BAR"
#define US_Weap_M1919A4                 "LIB_M1919A4"
#define US_Weap_M1919A6                 "fow_w_m1919a6"
#define US_Weap_M12                     "fow_w_M1912"
#define US_Weap_M37                     "fow_w_ithaca37"
#define US_Weap_Flame                   "LIB_M2_Flamethrower"
/* To use the flamethrower weapon, ammo, and backpack use this code:

        //Primary Weapon
        [US_BP_Flame] call Olsen_FW_FNC_AddItem;
        [US_Mag_Flame,1,"backpack"] call Olsen_FW_FNC_AddItem;
        [US_Weap_Flame] call Olsen_FW_FNC_AddItem;
        _unit removeItem US_BP_Flame;
        [US_BP_Flame_Final] call Olsen_FW_FNC_AddItem;

This will give them a backpack large enough to hold the ammo, which is very large, then give them the mag and the weapon (which will automatically load the mag)
Then it removes the large backpack and gives them a backpack that can't hold anything extra,
Letting them keep the large backpack would allow them to put other items in the backpack, since the ammo is a 'magazine' and gets loaded into the weapon.
*/

//Secondary
#define US_Weap_M1911                       "LIB_Colt_M1911"

//Launcher
#define US_Weap_Bazoo                       "fow_w_m1a1_bazooka"
#define US_Weap_MortB                       "LIB_M2_60_Barrel"
#define US_Weap_MortT                       "LIB_M2_60_Tripod"
#define US_Weap_M1919A4_T                   "LIB_M2_Tripod"

//Attachments
#define US_Acc_M1_Bayo                      "LIB_ACC_M1_Bayo"
#define US_Acc_M1G_GL                       "LIB_ACC_GL_M7"
#define US_Acc_BAR_Bipod                    "LIB_M1918A2_BAR_Bipod"

//Ammo
#define US_Mag_M1903                        "LIB_5Rnd_762x63"

#define US_Mag_M1G                          "LIB_8Rnd_762x63"
#define US_Mag_M1G_AP                       "LIB_8Rnd_762x63_AP_2PzD"
#define US_Mag_M1G_Heavy                    "LIB_8Rnd_762x63_M1"
#define US_Mag_M1G_Mixed_AP                 "LIB_8Rnd_762x63_Mixed_AP_M2_2PzD"
#define US_Mag_M1G_Mixed_Ball               "LIB_8Rnd_762x63_Mixed_Ball_M2_2PzD"
#define US_Mag_M1G_Mixed_Heavy              "LIB_8Rnd_762x63_Mixed_HeavyBall_M1_2PzD"
#define US_Mag_M1G_Tracer                   "LIB_8Rnd_762x63_t"

#define US_Mag_M1C                          "LIB_15Rnd_762x33"
#define US_Mag_M1C_Tracer                   "LIB_15Rnd_762x33_t"
#define US_Mag_M2C                          "LIB_30Rnd_762x33_2PzD"
#define US_Mag_M2C_Tracer                   "LIB_30Rnd_762x33_Tracer_2PzD"

#define US_Mag_M1T_30                       "LIB_30Rnd_45ACP"
#define US_Mag_M1T_30_Tracer                "LIB_30Rnd_45ACP_t"
#define US_Mag_M1T_20                       "LIB_20Rnd_45ACP_M1_2PzD"
#define US_Mag_M1T_20_Tracer                "LIB_20Rnd_45ACP_M1_Tracer_2PzD"
#define US_Mag_M1T_50                       "LIB_50Rnd_45ACP"
#define US_Mag_M1T_50_Tracer                "LIB_50Rnd_45ACP_Tracer_2PzD"

#define US_Mag_M3GG                         "LIB_30Rnd_M3_GreaseGun_45ACP"
#define US_Mag_M3GG_Tracer                  "LIB_30Rnd_M3_GreaseGun_t_45ACP"

#define US_Mag_M50_20                       "fow_20Rnd_45acp"
#define US_Mag_M50_20_Tracer                "fow_20Rnd_45acp_Tracer_2PzD"
#define US_Mag_M50_12                       "fow_12Rnd_45acp_2PzD"
#define US_Mag_M50_12_Tracer                "fow_12Rnd_45acp_Tracer_2PzD"

#define US_Mag_BAR_Mixed_Ball               "LIB_20Rnd_762x63"
#define US_Mag_BAR_Mixed_Heavy              "LIB_20Rnd_762x63_M1"
#define US_Mag_BAR_Mixed_AP                 "LIB_20Rnd_762x63_Mixed_AP_2PzD"
#define US_Mag_BAR_Tracer                   "LIB_20Rnd_762x63_Tracer_2PzD"
#define US_Mag_BAR_Ball                     "LIB_20Rnd_762x63_Ball_M2_NoTrace_2PzD"
#define US_Mag_BAR_Heavy                    "LIB_20Rnd_762x63_HeavyBall_M1_NoTrace_2PzD"
#define US_Mag_BAR_AP                       "LIB_20Rnd_762x63_AP_NoTrace_2PzD"

#define US_Mag_M1919_50_AP                  "LIB_50Rnd_762x63_AP_NoTrace_2PzD"
#define US_Mag_M1919_50_Ball                "LIB_50Rnd_762x63_NoTrace_2PzD"
#define US_Mag_M1919_50_Heavy               "LIB_50Rnd_762x63_M1_NoTrace_2PzD"
#define US_Mag_M1919_50_Mixed_AP            "LIB_50Rnd_762x63_AP_2PzD"
#define US_Mag_M1919_50_Mixed_Ball          "LIB_50Rnd_762x63"
#define US_Mag_M1919_50_Mixed_Heavy         "LIB_50Rnd_762x63_M1"
#define US_Mag_M1919_50_Trace               "LIB_50Rnd_762x63_TraceOnly_2PzD"
#define US_Mag_M1919_100_AP                 "LIB_100Rnd_762x63_AP_NoTrace_2PzD"
#define US_Mag_M1919_100_Ball               "LIB_100Rnd_762x63_NoTrace_2PzD"
#define US_Mag_M1919_100_Heavy              "LIB_100Rnd_762x63_M1_NoTrace_2PzD"
#define US_Mag_M1919_100_Mixed_AP           "LIB_100Rnd_762x63_AP_2PzD"
#define US_Mag_M1919_100_Mixed_Ball         "LIB_100Rnd_762x63"
#define US_Mag_M1919_100_Mixed_Heavy        "LIB_100Rnd_762x63_M1"
#define US_Mag_M1919_100_Trace              "LIB_100Rnd_762x63_TraceOnly_2PzD"
#define US_Mag_M1919_150_AP                 "LIB_150Rnd_762x63_AP_NoTrace_2PzD"
#define US_Mag_M1919_150_Ball               "LIB_150Rnd_762x63_NoTrace_2PzD"
#define US_Mag_M1919_150_Heavy              "LIB_150Rnd_762x63_M1_NoTrace_2PzD"
#define US_Mag_M1919_150_Mixed_AP           "LIB_150Rnd_762x63_AP_2PzD"
#define US_Mag_M1919_150_Mixed_Ball         "LIB_150Rnd_762x63_2PzD"
#define US_Mag_M1919_150_Mixed_Heavy        "LIB_150Rnd_762x63_M1_2PzD"
#define US_Mag_M1919_150_Trace              "LIB_150Rnd_762x63_TraceOnly_2PzD"
#define US_Mag_M1919_200_AP                 "LIB_200Rnd_762x63_AP_NoTrace_2PzD"
#define US_Mag_M1919_200_Ball               "LIB_200Rnd_762x63_NoTrace_2PzD"
#define US_Mag_M1919_200_Heavy              "LIB_200Rnd_762x63_M1_NoTrace_2PzD"
#define US_Mag_M1919_200_Mixed_AP           "LIB_200Rnd_762x63_AP_2PzD"
#define US_Mag_M1919_200_Mixed_Ball         "LIB_200Rnd_762x63_2PzD"
#define US_Mag_M1919_200_Mixed_Heavy        "LIB_200Rnd_762x63_M1_2PzD"
#define US_Mag_M1919_200_Trace              "LIB_200Rnd_762x63_TraceOnly_2PzD"
#define US_Mag_M1919_250_AP                 "LIB_250Rnd_762x63_AP_NoTrace_2PzD"
#define US_Mag_M1919_250_Ball               "LIB_250Rnd_762x63_NoTrace_2PzD"
#define US_Mag_M1919_250_Heavy              "LIB_250Rnd_762x63_M1_NoTrace_2PzD"
#define US_Mag_M1919_250_Mixed_AP           "LIB_250Rnd_762x63_AP_2PzD"
#define US_Mag_M1919_50_Mixed_Ball          "LIB_50Rnd_762x63"
#define US_Mag_M1919_250_Mixed_Heavy        "LIB_250Rnd_762x63_M1_2PzD"
#define US_Mag_M1919_250_Trace              "LIB_250Rnd_762x63_TraceOnly_2PzD"

#define US_Mag_M12_Buck00                   "fow_6Rnd_12G_Pellets"
#define US_Mag_M12_Buck4                    "fow_6Rnd_12G_Pellets_No4_Buck_2PzD"
#define US_Mag_M12_Slug                     "fow_6Rnd_12G_Slug"
#define US_Mag_M37_Buck00                   "fow_5Rnd_12G_Pellets"
#define US_Mag_M37_Buck4                    "fow_5Rnd_12G_Pellets_No4_Buck_2PzD"
#define US_Mag_M37_Slug                     "fow_5Rnd_12G_Slug"

#define US_Mag_M1911                        "LIB_7Rnd_45ACP"
#define US_Mag_M1911_Tracer                 "LIB_7Rnd_45ACP_t"

#define US_Mag_RGrn_AT                      "LIB_1Rnd_G_M9A1"
#define US_Mag_RGrn_HE                      "LIB_1Rnd_G_Mk2"
#define US_Mag_Bazoo                        "LIB_1Rnd_60mm_M6"
#define US_Mag_Mort_HE                      "LIB_1Rnd_60mm_Mo_HE"
#define US_Mag_Mort_Smoke                   "LIB_1Rnd_60mm_Mo_Smoke"
#define US_Mag_Mort_Illum                   "LIB_1Rnd_60mm_Mo_Illum"
#define US_Mag_Flame                        "LIB_M2_Flamethrower_Mag"

//Grenades
#define US_Gren_Frag                        "fow_e_mk2"

//Mines
#define US_Mine_AP_Wire                     "LIB_US_M3_MINE_mag"
#define US_Mine_AT_M4A1                     "LIB_US_M1A1_ATMINE_mag"