// Info: German Fallschirmjäger 1944 Infantry Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use Olsen_FW_FNC_AddItemRandom

/*Loadouts

    //Zugtrupp
[this, FSJ44_PC] call Olsen_FW_FNC_GearScript;      Zugführer
[this, FSJ44_P2] call Olsen_FW_FNC_GearScript;      Zugtruppführer
[this, FSJ44_RTO] call Olsen_FW_FNC_GearScript;     Funker
[this, FSJ44_Mess] call Olsen_FW_FNC_GearScript;    Melder
[this, FSJ44_MedP] call Olsen_FW_FNC_GearScript;    Krankenträger

    //Gruppe
[this, FSJ44_SL] call Olsen_FW_FNC_GearScript;      Gruppenführer
[this, FSJ44_S2] call Olsen_FW_FNC_GearScript;      Stellvertretender Gruppenführer
[this, FSJ44_MG] call Olsen_FW_FNC_GearScript;      MG-Richtschütze
[this, FSJ44_MGA] call Olsen_FW_FNC_GearScript;     MG-Hilfsschütze
[this, FSJ44_Gren] call Olsen_FW_FNC_GearScript;    Grenadier
[this, FSJ44_MedS] call Olsen_FW_FNC_GearScript;    Hilfs-Krankenträger
[this, FSJ44_Mark] call Olsen_FW_FNC_GearScript;    Scharfschütze
[this, FSJ44_Rif] call Olsen_FW_FNC_GearScript;     Gewehrschütze
*/

//======================== Definitions ========================

// ========================= Parachute ========================
// Set the variable below to "true" or "false" depending on what you want

#define spawnWithParachute false

// ============================================================

#define FSJ44_Weapon_SMG \
        [ \
            [ \
                [Ger_Vest_MP40], \
                [Ger_Mag_MP40,1], \
                [Ger_Weap_MP40], \
                [Ger_Mag_MP40,6,"vest"] \
            ],[80], \
            [ \
                [Ger_Vest_StG44], \
                [Ger_Mag_StG44,1], \
                [Ger_Weap_StG44], \
                [Ger_Mag_StG44,6,"vest"] \
            ],[20] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

#define FSJ44_Weapon_Rifle \
        [ \
            [ \
                [FSJ_Vest_Band], \
                [Ger_Mag_K98,1], \
                [Ger_Acc_K98_Bayo,1,"uniform"], \
                [Ger_Weap_K98], \
                [Ger_Mag_K98,24,"vest"] \
            ],[80], \
            [ \
                [FSJ_Vest_Band], \
                [Ger_Mag_FG42,1], \
                [Ger_Weap_FG42], \
                [Ger_Mag_FG42,15,"vest"] \
            ],[20] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

#define FSJ44_Weapon_MG \
        [ \
            [ \
                [Ger_Mag_MG_50_Mixed_SmE,1], \
                [Ger_Weap_MG34], \
                [Ger_Mag_MG_50_Mixed_SmE,5,"vest"] \
            ],[45], \
            [ \
                [Ger_Mag_MG_50_Mixed_SmE,1], \
                [Ger_Weap_MG42], \
                [Ger_Mag_MG_50_Mixed_SmE,5,"vest"] \
            ],[55] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

#define FSJ44_Weapon_Grenadier \
        [ \
            [ \
                [FSJ_Vest_Band], \
                [Ger_Mag_K98,1], \
                [Ger_Acc_K98_Bayo,1,"uniform"], \
                [Ger_Weap_K98], \
                [Ger_Acc_K98_GL,1,"vest"],\
                [Ger_Mag_K98,24,"vest"], \
                [Ger_Mag_RGrn_HE,4], \
                [Ger_Mag_RGrn_ATL,4] \
            ],[80], \
            [ \
                [Ger_Vest_StG44], \
                [Ger_Mag_StG44,1], \
                [Ger_Weap_StG44], \
                [Ger_Acc_K98_GL,1,"vest"],\
                [Ger_Mag_StG44,6,"vest"], \
                [Ger_Mag_RGrn_HE,4], \
                [Ger_Mag_RGrn_ATL,4] \
            ],[20] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

#define FSJ44_Weapon_Secondary \
        [Ger_Mag_P38,1] call Olsen_FW_FNC_AddItem; \
        [Ger_Weap_P38] call Olsen_FW_FNC_AddItem; \
        [Ger_Mag_P38,1,"uniform"] call Olsen_FW_FNC_AddItem;

#define FSJ44_Weapon_Sniper \
        [Ger_Mag_K98,1] call Olsen_FW_FNC_AddItem; \
        [Ger_Weap_K98_Zf39] call Olsen_FW_FNC_AddItem; \
        [Ger_Mag_K98,24,"vest"] call Olsen_FW_FNC_AddItem;

//======================== Loadouts ========================

//Platoon HQ

    //Zugführer
    FSJ44_PC = ["FSJ44_PC", {
        params ["_unit"];

        [FSJ_Uni_NI] call Olsen_FW_FNC_AddItem;
        FSJ_Backpack("PC");
        [FSJ_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon
        FSJ44_Weapon_SMG;

        //Secondary Weapon
        FSJ44_Weapon_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Frag_SF,2] call Olsen_FW_FNC_AddItem;
    }];

    //Zugtruppführer
    FSJ44_P2 = ["FSJ44_P2", {
        params ["_unit"];

        [FSJ_Unic_Rif] call Olsen_FW_FNC_AddItem;
        FSJ_Backpack("P2");
        [FSJ_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon
        FSJ44_Weapon_SMG;

        //Secondary Weapon
        FSJ44_Weapon_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Frag_SF,2] call Olsen_FW_FNC_AddItem;
    }];

    //Funker
    FSJ44_RTO = ["FSJ44_RTO", {
        params ["_unit"];

        [FSJ_Uni_Rif] call Olsen_FW_FNC_AddItem;
        FSJ_Backpack("RTO");
        [FSJ_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        FSJ44_Weapon_Rifle;

        //Extra
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Frag_SF,2] call Olsen_FW_FNC_AddItem;
    }];

    //Melder
    FSJ44_Mess = ["FSJ44_Mess", {
        params ["_unit"];

        [FSJ_Uni_Rif] call Olsen_FW_FNC_AddItem;
        FSJ_Backpack("Mess");
        [FSJ_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        FSJ44_Weapon_Rifle;

        //Extra
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Frag_SF,2] call Olsen_FW_FNC_AddItem;
    }];

    //Krankenträger
    FSJ44_MedP = ["FSJ44_MedP", {
        params ["_unit"];

        [FSJ_Uni_Rif] call Olsen_FW_FNC_AddItem;
        FSJ_Backpack("Med");
        [FSJ_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        FSJ40_Weapon_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        GEN_MedicP_Equipment_Set;
    }];

//Squad

    //Gruppenführer
    FSJ44_SL = ["FSJ44_SL", {
        params ["_unit"];

        [FSJ_Unic_Rif] call Olsen_FW_FNC_AddItem;
        FSJ_Backpack("SL");
        [FSJ_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon
        FSJ44_Weapon_SMG;

        //Extra
        [Ger_Gren_Frag_SF,2] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_MG_50_Mixed_SmE,1] call Olsen_FW_FNC_AddItem;
    }];

    //Stellvertretender Gruppenführer
    FSJ44_S2 = ["FSJ44_S2", {
        params ["_unit"];

        [FSJ_Unic_Rif] call Olsen_FW_FNC_AddItem;
        FSJ_Backpack("S2");
        [FSJ_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        FSJ44_Weapon_SMG;

        //Extra
        [Ger_Gren_Frag_SF,2] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_MG_50_Mixed_SmE,1] call Olsen_FW_FNC_AddItem;
    }];

    //MG-Richtschütze
    FSJ44_MG = ["FSJ44_MG", {
        params ["_unit"];

        [FSJ_Uni_Rif] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_MG] call Olsen_FW_FNC_AddItem;
        FSJ_Backpack("MG");
        [FSJ_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Secondary Weapon
        FSJ44_Weapon_Secondary;

        //Primary Weapon
        FSJ44_Weapon_MG;

        //Extra
        [Ger_Mag_MG_50_Mixed_SmE,3] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //MG-Hilfsschütze
    FSJ44_MGA = ["FSJ44_MGA", {
        params ["_unit"];

        [FSJ_Uni_Rif] call Olsen_FW_FNC_AddItem;
        FSJ_Backpack("MGA");
        [FSJ_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        FSJ44_Weapon_Rifle;

        //Extra
        [GEN_ace_sparebarrel] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_MG_50_Mixed_SmE,5] call Olsen_FW_FNC_AddItem;
    }];

    //Scharfschütze
    FSJ44_Mark = ["FSJ44_Mark", {
        params ["_unit"];

        [FSJ_Uni_Rif] call Olsen_FW_FNC_AddItem;
        [FSJ_Vest_Band] call Olsen_FW_FNC_AddItem;
        FSJ_Backpack("Mark");
        [FSJ_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        FSJ44_Weapon_Sniper;

        //Extra
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Frag_SF,2] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_MG_50_Mixed_SmE,1] call Olsen_FW_FNC_AddItem;
    }];

    //Grenadier
    FSJ44_Gren = ["FSJ44_Gren", {
        params ["_unit"];

        [FSJ_Uni_Rif] call Olsen_FW_FNC_AddItem;
        FSJ_Backpack("Gren");
        [FSJ_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        FSJ44_Weapon_Grenadier;

        //Extra
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Hilfs-Krankenträger
    FSJ44_MedS = ["FSJ44_MedS", {
        params ["_unit"];

        [FSJ_Uni_Rif] call Olsen_FW_FNC_AddItem;
        FSJ_Backpack("Med");
        [FSJ_Helmet] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_MedicS_Equipment_Set;

        //Primary Weapon
        FSJ44_Weapon_Rifle;

        //Extra
        [Ger_Gren_Frag_SF,2] call Olsen_FW_FNC_AddItem;
    }];

    //Gewehrschütze
    FSJ44_Rif = ["FSJ44_Rif", {
        params ["_unit"];

        [FSJ_Uni_Rif] call Olsen_FW_FNC_AddItem;
        FSJ_Backpack("Rif");
        [FSJ_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        FSJ44_Weapon_Rifle;

        //Launcher
        [Ger_Weap_PzFaust_60] call Olsen_FW_FNC_AddItem;;

        //Extra
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Frag_SF,2] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_MG_50_Mixed_SmE,1,"backpack"] call Olsen_FW_FNC_AddItem;
    }];
