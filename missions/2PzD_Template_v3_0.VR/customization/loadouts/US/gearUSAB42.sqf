// Info: US Army 1942 Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use Olsen_FW_FNC_AddItemRandom

/*Loadouts

    //Platoon HQ
[this, USAB42_PC] call Olsen_FW_FNC_GearScript;           Platoon Commander
[this, USAB42_PSGT] call Olsen_FW_FNC_GearScript;         Platoon Sergeant/Platoon Guide
[this, USAB42_Mess] call Olsen_FW_FNC_GearScript;         Messenger
[this, USAB42_MedP] call Olsen_FW_FNC_GearScript;         Medic

    //Squad
[this, USAB42_SL] call Olsen_FW_FNC_GearScript;           Squad Leader
[this, USAB42_S2] call Olsen_FW_FNC_GearScript;           Assistant Squad Leader
[this, USAB42_MedS] call Olsen_FW_FNC_GearScript;         Assistant Medic
[this, USAB42_MG] call Olsen_FW_FNC_GearScript;           Machine Gunner
[this, USAB42_MGA] call Olsen_FW_FNC_GearScript;          Assistant Machine Gunner
[this, USAB42_AR] call Olsen_FW_FNC_GearScript;           Automatic Rifleman
[this, USAB42_AAR] call Olsen_FW_FNC_GearScript;          Assistant Automatic Rifleman
[this, USAB42_Rif] call Olsen_FW_FNC_GearScript;          Rifleman

    //Weapons Teams
[this, USAB42_MGTL] call Olsen_FW_FNC_GearScript;         Machine Gun Team Leader
[this, USAB42_MG] call Olsen_FW_FNC_GearScript;           Machine Gunner

[this, USAB42_BzkaTL] call Olsen_FW_FNC_GearScript;       Bazooka Team Leader
[this, USAB42_BzkaG] call Olsen_FW_FNC_GearScript;        Bazooka Gunner
*/

//======================== Definitions ========================

// ========================= Parachute ========================
// Set the variable below to "true" or "false" depending on what you want

#define spawnWithParachute false

// For Platoon Commander, Squad Leader, Assistant Squad Leader
#define USAB42_Weapon_Leader \
        [ \
            [ \
                [USAB_Vest_M1C], \
                [US_Mag_M1C,1], \
                [US_Weap_M1C], \
                [US_Mag_M1C,5,"vest"] \
            ],[50], \
            [ \
                [USAB_Vest_M1T], \
                [US_Mag_M1T_30,1], \
                [US_Weap_M1A1T], \
                [US_Mag_M1T_30,5,"vest"] \
            ],[50] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

// For Radiomen, Messengers and Medics
#define USAB42_Weapon_Rifle_Light \
        [ \
            [ \
                [US_Mag_M1G,1], \
                [US_Acc_M1_Bayo,1,"uniform"], \
                [US_Weap_M1G], \
                [US_Mag_M1G,10,"vest"] \
            ],[60], \
            [ \
                [US_Mag_M1C,1], \
                [US_Weap_M1C], \
                [US_Mag_M1C,5,"vest"] \
            ],[40] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

// For Automatic Riflemen
#define USAB42_Weapon_AR \
        [US_Mag_BAR_Mixed_Ball,1] call Olsen_FW_FNC_AddItem; \
        [US_Weap_BAR] call Olsen_FW_FNC_AddItem; \
        [US_Acc_BAR_Bipod] call Olsen_FW_FNC_AddItem; \
        [US_Mag_BAR_Mixed_Ball,6,"vest"] call Olsen_FW_FNC_AddItem; \
        [US_Mag_BAR_Mixed_Ball,9,"backpack"] call Olsen_FW_FNC_AddItem;

// For Riflemen
#define USAB42_Weapon_Rifle \
        [US_Mag_M1G,1] call Olsen_FW_FNC_AddItem; \
        [US_Acc_M1_Bayo,1,"uniform"] call Olsen_FW_FNC_AddItem; \
        [US_Weap_M1G] call Olsen_FW_FNC_AddItem; \
        [US_Mag_M1G,10,"vest"] call Olsen_FW_FNC_AddItem;

// For Machinegunners
#define USAB42_Weapon_MG \
        [US_Mag_M1919_50_Mixed_Ball,1] call Olsen_FW_FNC_AddItem; \
        [US_Weap_M1919A4] call Olsen_FW_FNC_AddItem; \
        [US_Mag_M1919_50_Mixed_Ball,6] call Olsen_FW_FNC_AddItem;

// Colt M1911 Pistol
#define USAB42_Weapon_Secondary \
        [US_Mag_M1911,1] call Olsen_FW_FNC_AddItem; \
        [US_Weap_M1911] call Olsen_FW_FNC_AddItem; \
        [US_Mag_M1911,3,"uniform"] call Olsen_FW_FNC_AddItem;

//======================== Loadouts ========================

//Platoon HQ

    //Platoon Commander
    USAB42_PC = ["USAB42_PC", {
        params ["_unit"];

        [USAB_UniK_LT] call Olsen_FW_FNC_AddItem;
        USAB_Backpack("PC");
        [USAB_Helm_2LT_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon
        USAB42_Weapon_Leader;

        //Secondary Weapon
        USAB42_Weapon_Secondary;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Platoon Sergeant
    USAB42_PSGT = ["USAB42_PSGT", {
        params ["_unit"];

        [USAB_UniK_SGT] call Olsen_FW_FNC_AddItem;
        USAB_Backpack("PSGT");
        [USAB_Helm_NCO_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon
        USAB42_Weapon_Rifle;

        //Secondary Weapon
        USAB42_Weapon_Secondary;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Messenger
    USAB42_Mess = ["USAB42_Mess", {
        params ["_unit"];

        [USAB_Vest_M1C] call Olsen_FW_FNC_AddItem;
        [USAB_UniK_PFC] call Olsen_FW_FNC_AddItem;
        USAB_Backpack("Mess");
        [USAB_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        USAB42_Weapon_Rifle_Light;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Medic
    USAB42_MedP = ["USAB42_MedP", {
        params ["_unit"];

        [USAB_UniK_Med] call Olsen_FW_FNC_AddItem;
        [US_Vest_Med] call Olsen_FW_FNC_AddItem;
        USAB_Backpack("Med");
        [USAB_Helm_Med_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        USAB42_Weapon_Rifle_Light;

        //Extra
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        GEN_MedicP_Equipment_Set;
    }];

//Squad

    //Squad Leader
    USAB42_SL = ["USAB42_SL", {
        params ["_unit"];

        [USAB_UniK_SGT] call Olsen_FW_FNC_AddItem;
        USAB_Backpack("SL");
        [USAB_Helm_NCO_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon
        USAB42_Weapon_Leader;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Assistant Squad Leader
    USAB42_S2 = ["USAB42_S2", {
        params ["_unit"];

        [USAB_UniK_CPL] call Olsen_FW_FNC_AddItem;
        USAB_Backpack("S2");
        [USAB_Helm_NCO_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        USAB42_Weapon_Leader;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [GEN_BinoUS] call Olsen_FW_FNC_AddItem;
    }];

    //Automatic Rifleman
    USAB42_AR = ["USAB42_AR", {
        params ["_unit"];

        [USAB_UniK_CPL] call Olsen_FW_FNC_AddItem;
        [USAB_Vest_BAR] call Olsen_FW_FNC_AddItem;
        USAB_Backpack("AR");
        [USAB_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        USAB42_Weapon_AR;

        //Extra
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Automatic Rifle Assistant
    USAB42_AAR = ["USAB42_AAR", {
        params ["_unit"];

        [USAB_UniK_PFC] call Olsen_FW_FNC_AddItem;
        [USAB_Vest_M1G] call Olsen_FW_FNC_AddItem;
        USAB_Backpack("AAR");
        [USAB_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon
        USAB42_Weapon_Rifle;

        //Extra
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [US_Mag_BAR_Mixed_Ball,10] call Olsen_FW_FNC_AddItem;
    }];

    //Assistant Medic
    USAB42_MedS = ["USAB42_MedS", {
        params ["_unit"];

        [USAB_UniK_PVT] call Olsen_FW_FNC_AddItem;
        [USAB_Vest_M1G] call Olsen_FW_FNC_AddItem;
        USAB_Backpack("Med");
        [USAB_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_MedicS_Equipment_Set

        //Primary Weapon
        USAB42_Weapon_Rifle_Light;

        //Extra
        [GEN_Gren_Frag_P,2] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Rifleman
    USAB42_Rif = ["USAB42_Rif", {
        params ["_unit"];

        [USAB_UniK_PVT] call Olsen_FW_FNC_AddItem;
        [USAB_Vest_M1G] call Olsen_FW_FNC_AddItem;
        USAB_Backpack("Rif");
        [USAB_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        USAB42_Weapon_Rifle;

        //Extra
        [GEN_Gren_Frag_P,2] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

//Machine Gun Team

    //Machine Gun Team Leader
    // ======= WILL BE USELESS WHEN SPAWNED WITH A PARACHUTE =======
    USAB42_MGTL = ["USAB42_MGTL", {
        params ["_unit"];

        [USAB_UniK_CPL] call Olsen_FW_FNC_AddItem;
        [USAB_Vest_M1G] call Olsen_FW_FNC_AddItem;
        USAB_Backpack("MGTL");
        [USAB_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        [US_Weap_M1919A4_T] call Olsen_FW_FNC_AddItem;

        //Primary Weapon
        USAB42_Weapon_Rifle;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1919_50_Mixed_Ball,12] call Olsen_FW_FNC_AddItem;
        [GEN_BinoUS] call Olsen_FW_FNC_AddItem;
    }];

    //Machine Gunner
    // ======= WILL BE USELESS WHEN SPAWNED WITH A PARACHUTE =======
    USAB42_MG = ["USAB42_MG", {
        params ["_unit"];

        [USAB_UniK_PFC] call Olsen_FW_FNC_AddItem;
        [USAB_Vest_MGA] call Olsen_FW_FNC_AddItem;
        USAB_Backpack("MG");
        [USAB_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Secondary Weapon
        USAB42_Weapon_Secondary;

        //Primary Weapon
        USAB42_Weapon_MG;
    }];

//Bazooka Team

    //Bazooka Team Leader
    // ======= SEVERALLY LIMITED IN AMMO WHEN SPAWNED WITH A PARACHUTE =======
    USAB42_BzkaTL = ["USAB42_BzkaTL", {
        params ["_unit"];

        [USAB_Vest_M1G] call Olsen_FW_FNC_AddItem;
        [USAB_UniK_CPL] call Olsen_FW_FNC_AddItem;
        USAB_Backpack("BzkaTL");
        [USAB_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        USAB42_Weapon_Rifle;

        //Extra
        [US_Mag_Bazoo,3,"backpack"] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [GEN_BinoUS] call Olsen_FW_FNC_AddItem;
    }];

    //Bazooka Gunner
    // ======= SEVERALLY LIMITED IN AMMO WHEN SPAWNED WITH A PARACHUTE =======
    USAB42_BzkaG = ["USAB42_BzkaG", {
        params ["_unit"];

        [USAB_Vest_M1G] call Olsen_FW_FNC_AddItem;
        [USAB_UniK_PFC] call Olsen_FW_FNC_AddItem;
        USAB_Backpack("BzkaG");
        [USAB_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        USAB42_Weapon_Rifle;

        //Extra
        [US_Mag_Bazoo,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_Bazoo] call Olsen_FW_FNC_AddItem;
        [US_Mag_Bazoo,3,"backpack"] call Olsen_FW_FNC_AddItem;
    }];
