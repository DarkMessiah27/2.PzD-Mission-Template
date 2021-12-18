// Info: United States Marine Corps 1942 Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use Olsen_FW_FNC_AddItemRandom

/*Loadouts

    //Platoon HQ
[this, USMC42_PC] call Olsen_FW_FNC_GearScript;           Platoon Commander
[this, USMC42_PSGT] call Olsen_FW_FNC_GearScript;         Platoon Sergeant/Platoon Guide
[this, USMC42_Mess] call Olsen_FW_FNC_GearScript;         Messenger
[this, USMC42_MedP] call Olsen_FW_FNC_GearScript;         Medic

    //Squad
[this, USMC42_SL] call Olsen_FW_FNC_GearScript;           Squad Leader
[this, USMC42_S2] call Olsen_FW_FNC_GearScript;           Assistant Squad Leader
[this, USMC42_MedS] call Olsen_FW_FNC_GearScript;         Assistant Medic
[this, USMC42_AR] call Olsen_FW_FNC_GearScript;           Automatic Rifleman
[this, USMC42_AAR] call Olsen_FW_FNC_GearScript;          Assistant Automatic Rifleman
[this, USMC42_Rif] call Olsen_FW_FNC_GearScript;          Rifleman

    //Weapons Teams
[this, USMC42_MGTL] call Olsen_FW_FNC_GearScript;         Machine Gun Team Leader
[this, USMC42_MG] call Olsen_FW_FNC_GearScript;           Machine Gunner

[this, USMC42_BzkaTL] call Olsen_FW_FNC_GearScript;       Bazooka Team Leader
[this, USMC42_BzkaG] call Olsen_FW_FNC_GearScript;        Bazooka Gunner

    //Tank Crew
[this, USMC42_VCom] call Olsen_FW_FNC_GearScript;         Tank Commander
[this, USMC42_VCrew] call Olsen_FW_FNC_GearScript;        Tank Crew
*/

//======================== Definitions ========================

// For Platoon Commander, Squad Leader
#define USMC42_Weapon_Leader \
                [US_Vest_M1T] call Olsen_FW_FNC_AddItem; \
                [US_Mag_M1T_20,1] call Olsen_FW_FNC_AddItem; \
                [US_Weap_M1T] call Olsen_FW_FNC_AddItem; \
                [US_Mag_M1T_20,5,"vest"] call Olsen_FW_FNC_AddItem;

// For Riflemen
#define USMC42_Weapon_Rifle \
        [ \
            [/*M1903A1*/ \
                [US_Vest_M1G], \
                [US_Mag_M1903,1], \
                [US_Weap_M1903A1], \
                [US_Mag_M1903,12,"vest"] \
            ],[70], \
            [/*M1 Carbine*/ \
                [US_Vest_M1C], \
                [US_Mag_M1C,1], \
                [US_Weap_M1C], \
                [US_Mag_M1C,5,"vest"] \
            ],[30] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

// For Radiomen, Messengers, Medics and Tank Crew
#define USMC42_Weapon_Rifle_Light \
        [US_Mag_M1C,1] call Olsen_FW_FNC_AddItem; \
        [US_Weap_M1C] call Olsen_FW_FNC_AddItem; \
        [US_Mag_M1C,5,"vest"] call Olsen_FW_FNC_AddItem;

// For Automatic Riflemen
#define USMC42_Weapon_AR \
        [US_Mag_BAR_Mixed_Ball,1] call Olsen_FW_FNC_AddItem; \
        [US_Weap_BAR] call Olsen_FW_FNC_AddItem; \
        [US_Acc_BAR_Bipod] call Olsen_FW_FNC_AddItem; \
        [US_Mag_BAR_Mixed_Ball,6,"vest"] call Olsen_FW_FNC_AddItem; \
        [US_Mag_BAR_Mixed_Ball,9,"backpack"] call Olsen_FW_FNC_AddItem;

// For Machinegunners
#define USMC42_Weapon_MG \
        [US_Mag_M1919_50_Mixed_Ball,1] call Olsen_FW_FNC_AddItem; \
        [US_Weap_M1919A4] call Olsen_FW_FNC_AddItem; \
        [US_Mag_M1919_50_Mixed_Ball,6] call Olsen_FW_FNC_AddItem;

// Colt M1911 Pistol
#define USMC42_Weapon_Secondary \
        [US_Mag_M1911,1] call Olsen_FW_FNC_AddItem; \
        [US_Weap_M1911] call Olsen_FW_FNC_AddItem; \
        [US_Mag_M1911,3,"uniform"] call Olsen_FW_FNC_AddItem;

//======================== Loadouts ========================

//Platoon HQ

    //Platoon Commander
    USMC42_PC = ["USMC42_PC", {
        params ["_unit"];

        [USMC_Uni_LT] call Olsen_FW_FNC_AddItem;
        [US_Helm_2LT] call Olsen_FW_FNC_AddItem;
        [USMC_BP_O] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon
        USMC42_Weapon_Leader;

        //Secondary Weapon
        USMC42_Weapon_Secondary;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Platoon Sergeant
    USMC42_PSGT = ["USMC42_PSGT", {
        params ["_unit"];

        [USMC_Uni_SGT] call Olsen_FW_FNC_AddItem;
        [USMC_BP_M1928] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_e_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon
        USMC42_Weapon_Rifle;

        //Secondary Weapon
        USMC42_Weapon_Secondary;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Messenger
    USMC42_Mess = ["USMC42_Mess", {
        params ["_unit"];

        [US_Vest_M1C] call Olsen_FW_FNC_AddItem;
        [USMC_Uni_PFC] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_e_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        USMC42_Weapon_Rifle_Light;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Medic
    USMC42_MedP = ["USMC42_MedP", {
        params ["_unit"];

        [USMC_Uni_Med] call Olsen_FW_FNC_AddItem;
        [US_Vest_Med] call Olsen_FW_FNC_AddItem;
        [USMC_BP_M1928] call Olsen_FW_FNC_AddItem;
        [US_Helm_Med_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        USMC42_Weapon_Rifle_Light;

        //Extra
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        GEN_MedicP_Equipment_Set;
    }];

//Squad

    //Squad Leader
    USMC42_SL = ["USMC42_SL", {
        params ["_unit"];

        [USMC_Uni_SGT] call Olsen_FW_FNC_AddItem;
        [USMC_BP_M1928] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_e_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon
        USMC42_Weapon_Leader;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Assistant Squad Leader
    USMC42_S2 = ["USMC42_S2", {
        params ["_unit"];

        [USMC_Uni_CPL] call Olsen_FW_FNC_AddItem;
        [USMC_BP_M1928] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_e_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        USMC42_Weapon_Leader;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [GEN_BinoUS] call Olsen_FW_FNC_AddItem;
    }];

    //Automatic Rifleman
    USMC42_AR = ["USMC42_AR", {
        params ["_unit"];

        [USMC_Uni_CPL] call Olsen_FW_FNC_AddItem;
        [US_Vest_BAR] call Olsen_FW_FNC_AddItem;
        [USMC_BP_M1928] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_e_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        USMC42_Weapon_AR;

        //Extra
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Assistant Automatic Rifleman
    USMC42_AAR = ["USMC42_AAR", {
        params ["_unit"];

        [USMC_Uni_PFC] call Olsen_FW_FNC_AddItem;
        [USMC_BP_M1928] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_e_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon
        USMC42_Weapon_Rifle;

        //Extra
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [US_Mag_BAR_Mixed_Ball,10,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

    //Assistant Medic
    USMC42_MedS = ["USMC42_MedS", {
        params ["_unit"];
 
        [US_Vest_M1C] call Olsen_FW_FNC_AddItem;
        [USMC_Uni_PVT] call Olsen_FW_FNC_AddItem;
        [USMC_BP_M1928] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_e_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_MedicS_Equipment_Set;

        //Primary Weapon
        USMC42_Weapon_Rifle_Light;

        //Extra
        [GEN_Gren_Frag_P,2] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [US_Mag_BAR_Mixed_Ball,5,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

    //Rifleman
    USMC42_Rif = ["USMC42_Rif", {
        params ["_unit"];

        [USMC_Uni_PVT] call Olsen_FW_FNC_AddItem;
        [USMC_BP_M1928] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_e_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        USMC42_Weapon_Rifle;

        //Extra
        [GEN_Gren_Frag_P,2] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [US_Mag_BAR_Mixed_Ball,5,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

//Machine Gun Team

    //Machine Gun Team Leader
    USMC42_MGTL = ["USMC42_MGTL", {
        params ["_unit"];

        [US_Vest_M1C] call Olsen_FW_FNC_AddItem;
        [USMC_Uni_CPL] call Olsen_FW_FNC_AddItem;
        [USMC_BP_M1928] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_e_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        [US_Weap_M1919A4_T] call Olsen_FW_FNC_AddItem;

        //Primary Weapon
        USMC42_Weapon_Rifle_Light;

        //Extra
        [US_Mag_M1919_50_Mixed_Ball,12] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [GEN_BinoUS] call Olsen_FW_FNC_AddItem;
    }];

    //Machine Gunner
    USMC42_MG = ["USMC42_MG", {
        params ["_unit"];

        [USMC_Uni_PFC] call Olsen_FW_FNC_AddItem;
        [US_Vest_MGA] call Olsen_FW_FNC_AddItem;
        [US_BP_MG] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_e_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Secondary Weapon
        USMC42_Weapon_Secondary;

        //Primary Weapon
        USMC42_Weapon_MG;
    }];

//Bazooka Team

    //Bazooka Team Leader
    USMC42_BzkaTL = ["USMC42_BzkaTL", {
        params ["_unit"];

        [US_Vest_M1C] call Olsen_FW_FNC_AddItem;
        [USMC_Uni_CPL] call Olsen_FW_FNC_AddItem;
        [US_BP_AT] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        USMC42_Weapon_Rifle_Light;

        //Extra
        [US_Mag_Bazoo,3,"backpack"] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [GEN_BinoUS] call Olsen_FW_FNC_AddItem;
    }];

    //Bazooka Gunner
    USMC42_BzkaG = ["USMC42_BzkaG", {
        params ["_unit"];

        [US_Vest_M1C] call Olsen_FW_FNC_AddItem;
        [USMC_Uni_PFC] call Olsen_FW_FNC_AddItem;
        [US_BP_AT] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        USMC42_Weapon_Rifle_Light;

        //Extra
        [US_Mag_Bazoo,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_Bazoo] call Olsen_FW_FNC_AddItem;
        [US_Mag_Bazoo,3,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

//Tank Crew

    //Tank Commander
    USMC42_VCom = ["USMC42_VCom", {
        params ["_unit"];

        [US_Vest_M1C] call Olsen_FW_FNC_AddItem;
        [USMC_Uni_SGT] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_VCrew] call Olsen_FW_FNC_AddItem;
        [USMC_BP_M1928] call Olsen_FW_FNC_AddItem;
        [GEN_Face_Tank_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon
        USMC42_Weapon_Rifle_Light;

        //Secondary Weapon
        USMC42_Weapon_Secondary;
    }];

    //Tank Crew
    USMC42_VCrew = ["USMC42_VCrew", {
        params ["_unit"];

        [US_Vest_Pistol] call Olsen_FW_FNC_AddItem;
        [USMC_Uni_PVT] call Olsen_FW_FNC_AddItem;
        [USMC_BP_M1928] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_VCrew] call Olsen_FW_FNC_AddItem;
        [GEN_Face_Tank_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Secondary Weapon
        USMC42_Weapon_Secondary;

        //Extra
        [GEN_Toolkit] call Olsen_FW_FNC_AddItem;
    }];
