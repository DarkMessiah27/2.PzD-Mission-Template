// Info: US Army 1944 Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use Olsen_FW_FNC_AddItemRandom

/*Loadouts

    //Platoon HQ
[this, USAB44_PC] call Olsen_FW_FNC_GearScript;           Platoon Commander
[this, USAB44_PSGT] call Olsen_FW_FNC_GearScript;         Platoon Sergeant/Platoon Guide
[this, USAB44_PRTO] call Olsen_FW_FNC_GearScript;         Radio Operator
[this, USAB44_Mess] call Olsen_FW_FNC_GearScript;         Messenger
[this, USAB44_MedP] call Olsen_FW_FNC_GearScript;         Medic

    //Squad
[this, USAB44_SL] call Olsen_FW_FNC_GearScript;           Squad Leader
[this, USAB44_S2] call Olsen_FW_FNC_GearScript;           Assistant Squad Leader
[this, USAB44_MedS] call Olsen_FW_FNC_GearScript;         Assistant Medic
[this, USAB44_MG] call Olsen_FW_FNC_GearScript;           Machine Gunner
[this, USAB44_MGA] call Olsen_FW_FNC_GearScript;          Assistant Machine Gunner
[this, USAB44_AR] call Olsen_FW_FNC_GearScript;           Automatic Rifleman
[this, USAB44_AAR] call Olsen_FW_FNC_GearScript;          Assistant Automatic Rifleman
[this, USAB44_Rif] call Olsen_FW_FNC_GearScript;          Rifleman

    //Weapons Teams
[this, USAB42_MGTL] call Olsen_FW_FNC_GearScript;         Machine Gun Team Leader
[this, USAB42_MG] call Olsen_FW_FNC_GearScript;           Machine Gunner

[this, USAB44_BzkaTL] call Olsen_FW_FNC_GearScript;       Bazooka Team Leader
[this, USAB44_BzkaG] call Olsen_FW_FNC_GearScript;        Bazooka Gunner
*/

//======================== Definitions ========================

// For Platoon Commander, Squad Leader, Assistant Squad Leader
#define USAB44_Weapon_Leader \
        [US_Mag_M3GG,1] call Olsen_FW_FNC_AddItem; \
        [US_Weap_M3GG] call Olsen_FW_FNC_AddItem; \
        [US_Mag_M3GG,5,"vest"] call Olsen_FW_FNC_AddItem;

// For Radiomen, Messengers and Medics
#define USAB44_Weapon_Rifle_Light \
        [US_Mag_M1C,1] call Olsen_FW_FNC_AddItem; \
        [US_Weap_M1A1C] call Olsen_FW_FNC_AddItem; \
        [US_Mag_M1C,4,"vest"] call Olsen_FW_FNC_AddItem;

// For Automatic Riflemen
#define USAB44_Weapon_AR \
        [US_Mag_BAR_Mixed_Ball,1] call Olsen_FW_FNC_AddItem; \
        [US_Weap_BAR] call Olsen_FW_FNC_AddItem; \
        [US_Acc_BAR_Bipod] call Olsen_FW_FNC_AddItem; \
        [US_Mag_BAR_Mixed_Ball,6,"vest"] call Olsen_FW_FNC_AddItem; \
        [US_Mag_BAR_Mixed_Ball,9,"backpack"] call Olsen_FW_FNC_AddItem;

// For Riflemen
#define USAB44_Weapon_Rifle \
        [US_Mag_M1G,1] call Olsen_FW_FNC_AddItem; \
        [US_Acc_M1_Bayo,1,"uniform"] call Olsen_FW_FNC_AddItem; \
        [US_Weap_M1G] call Olsen_FW_FNC_AddItem; \
        [US_Mag_M1G,10,"vest"] call Olsen_FW_FNC_AddItem;

// For Machinegunners
#define USAB44_Weapon_MG \
        [US_Mag_M1919_250_Mixed_Ball,1] call Olsen_FW_FNC_AddItem; \
        [US_Weap_M1919A4] call Olsen_FW_FNC_AddItem; \
        [US_Mag_M1919_250_Mixed_Ball,3] call Olsen_FW_FNC_AddItem;

// Colt M1911 Pistol
#define USAB44_Weapon_Secondary \
        [US_Mag_M1911,1] call Olsen_FW_FNC_AddItem; \
        [US_Weap_M1911] call Olsen_FW_FNC_AddItem; \
        [US_Mag_M1911,3,"uniform"] call Olsen_FW_FNC_AddItem;

//======================== Loadouts ========================

//Platoon HQ

    //Platoon Commander
    USAB44_PC = ["USAB44_PC", {
        params ["_unit"];

        [USAB_Vest_NCO_M1T] call Olsen_FW_FNC_AddItem;
        [USAB_UniG_LT] call Olsen_FW_FNC_AddItem;
        [USAB_Helm_2LT_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon
        USAB44_Weapon_Leader;

        //Secondary Weapon
        USAB44_Weapon_Secondary;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Platoon Sergeant
    USAB44_PSGT = ["USAB44_PSGT", {
        params ["_unit"];

        [USAB_Vest_M1G] call Olsen_FW_FNC_AddItem;
        [USAB_UniG_SGT] call Olsen_FW_FNC_AddItem;
        [USAB_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USAB_Helm_NCO_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon
        USAB44_Weapon_Rifle;

        //Secondary Weapon
        USAB44_Weapon_Secondary;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Radio Operator
    USAB44_PRTO = ["USAB44_PRTO", {
        params ["_unit"];

        [USAB_Vest_M1C] call Olsen_FW_FNC_AddItem;
        [USAB_UniG_CPL] call Olsen_FW_FNC_AddItem;
        [USAB_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USAB_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        USAB44_Weapon_Rifle_Light;

        //Extra
        [GEN_Radio_HH] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Messenger
    USAB44_Mess = ["USAB44_Mess", {
        params ["_unit"];

        [USAB_Vest_M1C] call Olsen_FW_FNC_AddItem;
        [USAB_UniG_PFC] call Olsen_FW_FNC_AddItem;
        [USAB_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        USAB44_Weapon_Rifle_Light;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Medic
    USAB44_MedP = ["USAB44_MedP", {
        params ["_unit"];

        [USAB_UniG_Med] call Olsen_FW_FNC_AddItem;
        [US_Vest_Med] call Olsen_FW_FNC_AddItem;
        [USAB_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USAB_Helm_Med_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        USAB44_Weapon_Rifle_Light;

        //Extra
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        GEN_MedicP_Equipment_Set;
    }];

//Squad

    //Squad Leader
    USAB44_SL = ["USAB44_SL", {
        params ["_unit"];

        [USAB_Vest_NCO_M1T] call Olsen_FW_FNC_AddItem;
        [USAB_UniG_SGT] call Olsen_FW_FNC_AddItem;
        [USAB_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USAB_Helm_NCO_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon
        USAB44_Weapon_Leader;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Assistant Squad Leader
    USAB44_S2 = ["USAB44_S2", {
        params ["_unit"];

        [USAB_Vest_M1T] call Olsen_FW_FNC_AddItem;
        [USAB_UniG_CPL] call Olsen_FW_FNC_AddItem;
        [USAB_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USAB_Helm_NCO_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        USAB44_Weapon_Leader;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [GEN_BinoUS] call Olsen_FW_FNC_AddItem;
    }];

    //Automatic Rifleman
    USAB44_AR = ["USAB44_AR", {
        params ["_unit"];

        [USAB_UniG_CPL] call Olsen_FW_FNC_AddItem;
        [USAB_Vest_BAR] call Olsen_FW_FNC_AddItem;
        [USAB_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USAB_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        USAB44_Weapon_AR;

        //Extra
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Automatic Rifle Assistant
    USAB44_AAR = ["USAB44_AAR", {
        params ["_unit"];

        [USAB_UniG_PFC] call Olsen_FW_FNC_AddItem;
        [USAB_Vest_M1G] call Olsen_FW_FNC_AddItem;
        [USAB_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USAB_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon
        USAB44_Weapon_Rifle;

        //Extra
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [US_Mag_BAR_Mixed_Ball,10] call Olsen_FW_FNC_AddItem;
    }];

    //Assistant Medic
    USAB44_MedS = ["USAB44_MedS", {
        params ["_unit"];

        [USAB_UniG_PVT] call Olsen_FW_FNC_AddItem;
        [USAB_Vest_M1G] call Olsen_FW_FNC_AddItem;
        [USAB_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USAB_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_MedicS_Equipment_Set;

        //Primary Weapon
        USAB44_Weapon_Rifle;

        //Extra
        [GEN_Gren_Frag_P,2] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Rifleman
    USAB44_Rif = ["USAB44_Rif", {
        params ["_unit"];

        [USAB_UniG_PVT] call Olsen_FW_FNC_AddItem;
        [USAB_Vest_M1G] call Olsen_FW_FNC_AddItem;
        [USAB_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [USAB_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        USAB44_Weapon_Rifle;

        //Extra
        [GEN_Gren_Frag_P,2] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

//Machine Gun Team

    //Machine Gun Team Leader
    USAB44_MGTL = ["USAB44_MGTL", {
        params ["_unit"];

        [USAB_UniG_CPL] call Olsen_FW_FNC_AddItem;
        [USAB_Vest_M1G] call Olsen_FW_FNC_AddItem;
        [USAB_BP_M1928] call Olsen_FW_FNC_AddItem;
        [USAB_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        [US_Weap_M1919A4_T] call Olsen_FW_FNC_AddItem;

        //Primary Weapon
        USAB44_Weapon_Rifle;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1919_250_Mixed_Ball,2] call Olsen_FW_FNC_AddItem;
        [GEN_BinoUS] call Olsen_FW_FNC_AddItem;
    }];

    //Machine Gunner
    USAB44_MG = ["USAB44_MG", {
        params ["_unit"];

        [USAB_UniG_PFC] call Olsen_FW_FNC_AddItem;
        [USAB_Vest_MGA] call Olsen_FW_FNC_AddItem;
        [USAB_BP_MG] call Olsen_FW_FNC_AddItem;
        [USAB_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Secondary Weapon
        USAB44_Weapon_Secondary;

        //Primary Weapon
        USAB44_Weapon_MG;
    }];

//Bazooka Team

    //Bazooka Team Leader
    USAB44_BzkaTL = ["USAB44_BzkaTL", {
        params ["_unit"];

        [USAB_Vest_M1G] call Olsen_FW_FNC_AddItem;
        [USAB_UniG_CPL] call Olsen_FW_FNC_AddItem;
        [USAB_BP_AT] call Olsen_FW_FNC_AddItem;
        [USAB_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        USAB44_Weapon_Rifle;

        //Extra
        [US_Mag_Bazoo,3,"backpack"] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [GEN_BinoUS] call Olsen_FW_FNC_AddItem;
    }];

    //Bazooka Gunner
    USAB44_BzkaG = ["USAB44_BzkaG", {
        params ["_unit"];

        [USAB_Vest_M1G] call Olsen_FW_FNC_AddItem;
        [USAB_UniG_PFC] call Olsen_FW_FNC_AddItem;
        [USAB_BP_AT] call Olsen_FW_FNC_AddItem;
        [USAB_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        USAB44_Weapon_Rifle;

        //Extra
        [US_Mag_Bazoo,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_Bazoo] call Olsen_FW_FNC_AddItem;
        [US_Mag_Bazoo,3,"backpack"] call Olsen_FW_FNC_AddItem;
    }];