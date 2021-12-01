// Info: United States Marine Corps 1944 Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use Olsen_FW_FNC_AddItemRandom

/*Loadouts

    //Platoon HQ
[this, USMC44_PC] call Olsen_FW_FNC_GearScript;           Platoon Commander
[this, USMC44_PSGT] call Olsen_FW_FNC_GearScript;         Platoon Sergeant/Platoon Guide
[this, USMC44_PRTO] call Olsen_FW_FNC_GearScript;         Platoon Radio Operator
[this, USMC44_Mess] call Olsen_FW_FNC_GearScript;         Messenger
[this, USMC44_MedP] call Olsen_FW_FNC_GearScript;         Medic

    //Squad
[this, USMC44_SL] call Olsen_FW_FNC_GearScript;           Squad Leader
[this, USMC44_S2] call Olsen_FW_FNC_GearScript;           Assistant Squad Leader
[this, USMC44_TL] call Olsen_FW_FNC_GearScript;           Team Leader
[this, USMC44_MedS] call Olsen_FW_FNC_GearScript;         Assistant Medic
[this, USMC44_AR] call Olsen_FW_FNC_GearScript;           Automatic Rifleman
[this, USMC44_AAR] call Olsen_FW_FNC_GearScript;          Assistant Automatic Rifleman
[this, USMC44_Rif] call Olsen_FW_FNC_GearScript;          Rifleman

    //Weapons Teams
[this, USMC44_MGTL] call Olsen_FW_FNC_GearScript;         Machine Gun Team Leader
[this, USMC44_MG] call Olsen_FW_FNC_GearScript;           Machine Gunner

[this, USMC44_BzkaTL] call Olsen_FW_FNC_GearScript;       Bazooka Team Leader
[this, USMC44_BzkaG] call Olsen_FW_FNC_GearScript;        Bazooka Gunner

    //Tank Crew
[this, USMC44_VCom] call Olsen_FW_FNC_GearScript;         Tank Commander
[this, USMC44_VCrew] call Olsen_FW_FNC_GearScript;        Tank Crew
*/

//======================== Definitions ========================

// For Platoon Commander, Squad Leader
#define USMC44_Weapon_Leader \
        [USMC_Vest_M1T] call Olsen_FW_FNC_AddItem; \
        [US_Mag_M1T_30,1] call Olsen_FW_FNC_AddItem; \
        [US_Weap_M1A1T] call Olsen_FW_FNC_AddItem; \
        [US_Mag_M1T_30,5,"vest"] call Olsen_FW_FNC_AddItem;

// For Riflemen
#define USMC44_Weapon_Rifle \
        [USMC_Vest_M1G] call Olsen_FW_FNC_AddItem; \
        [US_Mag_M1G,1] call Olsen_FW_FNC_AddItem; \
        [US_Acc_M1_Bayo,1,"uniform"] call Olsen_FW_FNC_AddItem; \
        [US_Weap_M1G] call Olsen_FW_FNC_AddItem; \
        [US_Mag_M1G,10,"backpack"] call Olsen_FW_FNC_AddItem;

// For Radiomen, Messengers and Medics
#define USMC44_Weapon_Rifle_Light \
        [US_Mag_M1C,1] call Olsen_FW_FNC_AddItem; \
        [US_Weap_M1C] call Olsen_FW_FNC_AddItem; \
        [US_Mag_M1C,5,"vest"] call Olsen_FW_FNC_AddItem;

// For Automatic Riflemen
#define USMC44_Weapon_AR \
        [US_Mag_BAR_Mixed_Ball,1] call Olsen_FW_FNC_AddItem; \
        [US_Weap_BAR] call Olsen_FW_FNC_AddItem; \
        [US_Acc_BAR_Bipod] call Olsen_FW_FNC_AddItem; \
        [US_Mag_BAR_Mixed_Ball,6,"vest"] call Olsen_FW_FNC_AddItem; \
        [US_Mag_BAR_Mixed_Ball,9,"backpack"] call Olsen_FW_FNC_AddItem;

// For Machinegunners
#define USMC44_Weapon_MG \
        [US_Mag_M1919_250_Mixed_Ball,1] call Olsen_FW_FNC_AddItem; \
        [US_Weap_M1919A4] call Olsen_FW_FNC_AddItem; \
        [US_Mag_M1919_250_Mixed_Ball,3,"backpack"] call Olsen_FW_FNC_AddItem;

// For Tank Crew
#define USMC44_Weapon_M3GG \
        [US_Mag_M3GG,1] call Olsen_FW_FNC_AddItem; \
        [US_Weap_M3GG] call Olsen_FW_FNC_AddItem; \
        [US_Mag_M3GG,3,"vest"] call Olsen_FW_FNC_AddItem;

// Colt M1911 Pistol
#define USMC44_Weapon_Secondary \
        [US_Mag_M1911,1] call Olsen_FW_FNC_AddItem; \
        [US_Weap_M1911] call Olsen_FW_FNC_AddItem; \
        [US_Mag_M1911,3,"uniform"] call Olsen_FW_FNC_AddItem;

//======================== Loadouts ========================

//Platoon HQ

    //Platoon Commander
    USMC44_PC = ["USMC44_PC", {
        params ["_unit"];

        [USMC_Uni_LT] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_2LT] call Olsen_FW_FNC_AddItem;
        [USMC_BP_O] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon
        USMC44_Weapon_Leader;

        //Secondary Weapon
        USMC44_Weapon_Secondary;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Platoon Sergeant
    USMC44_PSGT = ["USMC44_PSGT", {
        params ["_unit"];

        [USMC_Uni_SGT] call Olsen_FW_FNC_AddItem;
        [USMC_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USMC_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon
        USMC44_Weapon_Leader;

        //Secondary Weapon
        USMC44_Weapon_Secondary;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Platoon Radio Operator
    USMC44_PRTO = ["USMC44_PRTO", {
        params ["_unit"];

        [US_Vest_M1C] call Olsen_FW_FNC_AddItem;
        [USMC_Uni_CPL] call Olsen_FW_FNC_AddItem;
        [USMC_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USMC_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        USMC44_Weapon_Rifle_Light;

        //Extra
        [GEN_Radio_HH] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Messenger
    USMC44_Mess = ["USMC44_Mess", {
        params ["_unit"];

        [US_Vest_M1C] call Olsen_FW_FNC_AddItem;
        [USMC_Uni_PFC] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        USMC44_Weapon_Rifle_Light;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Medic
    USMC44_MedP = ["USMC44_MedP", {
        params ["_unit"];

        [USMC_Uni_Med] call Olsen_FW_FNC_AddItem;
        [USMC_Vest_Med] call Olsen_FW_FNC_AddItem;
        [USMC_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USMC_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        USMC44_Weapon_Rifle_Light;

        //Extra
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        GEN_MedicP_Equipment_Set;
    }];

//Squad

    //Squad Leader
    USMC44_SL = ["USMC44_SL", {
        params ["_unit"];

        [USMC_Uni_SGT] call Olsen_FW_FNC_AddItem;
        [USMC_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USMC_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon
        USMC44_Weapon_Leader;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Assistant Squad Leader
    USMC44_S2 = ["USMC44_S2", {
        params ["_unit"];

        [USMC_Uni_CPL] call Olsen_FW_FNC_AddItem;
        [USMC_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USMC_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        USMC44_Weapon_Leader;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [GEN_BinoUS] call Olsen_FW_FNC_AddItem;
    }];

    //Automatic Rifleman
    USMC44_AR = ["USMC44_AR", {
        params ["_unit"];

        [USMC_Uni_CPL] call Olsen_FW_FNC_AddItem;
        [USMC_Vest_BAR] call Olsen_FW_FNC_AddItem;
        [USMC_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USMC_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        USMC44_Weapon_AR;

        //Extra
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Assistant Automatic Rifleman
    USMC44_AAR = ["USMC44_AAR", {
        params ["_unit"];

        [USMC_Uni_PFC] call Olsen_FW_FNC_AddItem;
        [USMC_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USMC_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon
        USMC44_Weapon_Rifle;

        //Extra
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [US_Mag_BAR_Mixed_Ball,10,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

    //Assistant Medic
    USMC44_MedS = ["USMC44_MedS", {
        params ["_unit"];

        [USMC_Uni_PVT] call Olsen_FW_FNC_AddItemRandom;
        [USMC_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USMC_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_MedicS_Equipment_Set;

        //Primary Weapon
        USMC44_Weapon_Rifle;

        //Extra
        [GEN_Gren_Frag_P,2] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [US_Mag_BAR_Mixed_Ball,5,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

    //Rifleman
    USMC44_Rif = ["USMC44_Rif", {
        params ["_unit"];

        [USMC_Uni_PVT] call Olsen_FW_FNC_AddItemRandom;
        [USMC_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USMC_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        USMC44_Weapon_Rifle;

        //Extra
        [GEN_Gren_Frag_P,2] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [US_Mag_BAR_Mixed_Ball,5,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

//Machine Gun Team

    //Machine Gun Team Leader
    USMC44_MGTL = ["USMC44_MGTL", {
        params ["_unit"];

        [USMC_Uni_CPL] call Olsen_FW_FNC_AddItem;
        [USMC_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USMC_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        USMC44_Weapon_Leader;

        //Extra
        [US_Mag_M1919_250_Mixed_Ball,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [GEN_BinoUS] call Olsen_FW_FNC_AddItem;
    }];

    //Machine Gunner
    USMC44_MG = ["USMC44_MG", {
        params ["_unit"];

        [USMC_Uni_PFC] call Olsen_FW_FNC_AddItem;
        [USMC_Vest_MGA] call Olsen_FW_FNC_AddItem;
        [US_BP_MG] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Secondary Weapon
        USMC44_Weapon_Secondary;

        //Primary Weapon
        USMC44_Weapon_MG;
    }];

//Bazooka Team

    //Bazooka Team Leader
    USMC44_BzkaTL = ["USMC44_BzkaTL", {
        params ["_unit"];

        [USMC_Uni_CPL] call Olsen_FW_FNC_AddItem;
        [US_BP_AT] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        USMC44_Weapon_Leader;

        //Extra
        [US_Mag_Bazoo,3,"backpack"] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [GEN_BinoUS] call Olsen_FW_FNC_AddItem;
    }];

    //Bazooka Gunner
    USMC44_BzkaG = ["USMC44_BzkaG", {
        params ["_unit"];

        [USMC_Uni_PFC] call Olsen_FW_FNC_AddItem;
        [US_BP_AT] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        USMC44_Weapon_Rifle;

        //Extra
        [US_Mag_Bazoo,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_Bazoo] call Olsen_FW_FNC_AddItem;
        [US_Mag_Bazoo,3,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

//Tank Crew

    //Tank Commander
    USMC44_VCom = ["USMC44_VCom", {
        params ["_unit"];

        [US_Vest_M1C] call Olsen_FW_FNC_AddItem;
        [USMC_Uni_SGT] call Olsen_FW_FNC_AddItem;
        [USMC_Helm_VCrew] call Olsen_FW_FNC_AddItem;
        [USMC_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_Tank_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon
        USMC44_Weapon_M3GG;

        //Secondary Weapon
        USMC44_Weapon_Secondary;
    }];

    //Tank Crew
    USMC44_VCrew = ["USMC44_VCrew", {
        params ["_unit"];

        [US_Vest_M1C] call Olsen_FW_FNC_AddItem;
        [USMC_Uni_PVT] call Olsen_FW_FNC_AddItemRandom;
        [USMC_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USMC_Helm_VCrew] call Olsen_FW_FNC_AddItem;
        [GEN_Face_Tank_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        USMC44_Weapon_M3GG;

        //Extra
        [GEN_Toolkit] call Olsen_FW_FNC_AddItem;
    }];
