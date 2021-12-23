// Info: German Fallschirmjäger 1940 Infantry Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use Olsen_FW_FNC_AddItemRandom

/*Loadouts

    //Zugtrupp
[this, FSJ40_PC] call Olsen_FW_FNC_GearScript;      Zugführer
[this, FSJ40_P2] call Olsen_FW_FNC_GearScript;      Zugtruppführer
[this, FSJ40_RTO] call Olsen_FW_FNC_GearScript;     Funker
[this, FSJ40_Mess] call Olsen_FW_FNC_GearScript;    Melder
[this, FSJ40_MedP] call Olsen_FW_FNC_GearScript;    Krankenträger

    //Gruppe
[this, FSJ40_SL] call Olsen_FW_FNC_GearScript;      Gruppenführer
[this, FSJ40_S2] call Olsen_FW_FNC_GearScript;      Stellvertretender Gruppenführer
[this, FSJ40_MG] call Olsen_FW_FNC_GearScript;      MG-Richtschütze
[this, FSJ40_MGA] call Olsen_FW_FNC_GearScript;     MG-Hilfsschütze
[this, FSJ40_Gren] call Olsen_FW_FNC_GearScript;    Grenadier
[this, FSJ40_MedS] call Olsen_FW_FNC_GearScript;    Hilfs-Krankenträger
[this, FSJ40_Mark] call Olsen_FW_FNC_GearScript;    Scharfschütze
[this, FSJ40_Rif] call Olsen_FW_FNC_GearScript;     Gewehrschütze
*/

//======================== Definitions ========================

// ========================= Parachute ========================
// Set the variable below to "true" or "false" depending on what you want

#define spawnWithParachute false

// ============================================================

#define FSJ40_Weapon_SMG \
        [Ger_Vest_MP40] call Olsen_FW_FNC_AddItem; \
        [Ger_Mag_MP40,1] call Olsen_FW_FNC_AddItem; \
        [Ger_Weap_MP38] call Olsen_FW_FNC_AddItem; \
        [Ger_Mag_MP40,6,"vest"] call Olsen_FW_FNC_AddItem;

#define FSJ40_Weapon_Rifle \
        [Ger_Mag_K98,1] call Olsen_FW_FNC_AddItem; \
        [Ger_Acc_K98_Bayo,1,"uniform"] call Olsen_FW_FNC_AddItem; \
        [Ger_Weap_K98_E] call Olsen_FW_FNC_AddItem; \
        [Ger_Mag_K98,24,"vest"] call Olsen_FW_FNC_AddItem;

#define FSJ40_Weapon_MG \
        [Ger_Mag_MG_50_Mixed_sS,1] call Olsen_FW_FNC_AddItem; \
        [Ger_Weap_MG34] call Olsen_FW_FNC_AddItem; \
        [Ger_Mag_MG_50_Mixed_sS,5,"vest"] call Olsen_FW_FNC_AddItem;

#define FSJ40_Weapon_Secondary \
        [Ger_Mag_P38,1] call Olsen_FW_FNC_AddItem; \
        [Ger_Weap_P38] call Olsen_FW_FNC_AddItem; \
        [Ger_Mag_P38,1,"uniform"] call Olsen_FW_FNC_AddItem;

#define FSJ40_Weapon_Sniper \
        [Ger_Mag_K98,1] call Olsen_FW_FNC_AddItem; \
        [Ger_Weap_K98_Zf39] call Olsen_FW_FNC_AddItem; \
        [Ger_Mag_K98,24,"vest"] call Olsen_FW_FNC_AddItem;

//======================== Loadouts ========================

//Platoon HQ

    //Zugführer
    FSJ40_PC = ["FSJ40_PC", {
        params ["_unit"];

        [FSJ_Uni_NI] call Olsen_FW_FNC_AddItem;
        FSJ_Backpack("PC");
        [FSJ_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon
        FSJ40_Weapon_SMG;

        //Secondary Weapon
        FSJ40_Weapon_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Zugtruppführer
    FSJ40_P2 = ["FSJ40_P2", {
        params ["_unit"];

        [FSJ_Uni_Rif] call Olsen_FW_FNC_AddItem;
        FSJ_Backpack("P2");
        [FSJ_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon
        FSJ40_Weapon_SMG;

        //Secondary Weapon
        FSJ40_Weapon_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Frag_SF,2] call Olsen_FW_FNC_AddItem;
    }];

    //Funker
    FSJ40_RTO = ["FSJ40_RTO", {
        params ["_unit"];

        [FSJ_Uni_Rif] call Olsen_FW_FNC_AddItem;
        [FSJ_Vest_Band] call Olsen_FW_FNC_AddItem;
        FSJ_Backpack("RTO");
        [FSJ_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        FSJ40_Weapon_Rifle;

        //Extra
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Frag_SF,2] call Olsen_FW_FNC_AddItem;
    }];

    //Melder
    FSJ40_Mess = ["FSJ40_Mess", {
        params ["_unit"];

        [FSJ_Uni_Rif] call Olsen_FW_FNC_AddItem;
        [FSJ_Vest_Band] call Olsen_FW_FNC_AddItem;
        FSJ_Backpack("Mess");
        [FSJ_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        FSJ40_Weapon_Rifle;

        //Extra
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Frag_SF,2] call Olsen_FW_FNC_AddItem;
    }];

    //Krankenträger
    FSJ40_MedP = ["FSJ40_MedP", {
        params ["_unit"];

        [FSJ_Uni_Rif] call Olsen_FW_FNC_AddItem;
        [FSJ_Vest_Band] call Olsen_FW_FNC_AddItem;
        FSJ_Backpack("Med");
        [FSJ_Helmet] call Olsen_FW_FNC_AddItem;
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
    FSJ40_SL = ["FSJ40_SL", {
        params ["_unit"];

        [FSJ_Uni_Rif] call Olsen_FW_FNC_AddItem;
        FSJ_Backpack("SL");
        [FSJ_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon
        FSJ40_Weapon_SMG;

        //Extra
        [Ger_Gren_Frag_SF,2] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_MG_50_Mixed_sS,1] call Olsen_FW_FNC_AddItem;
    }];

    //Stellvertretender Gruppenführer
    FSJ40_S2 = ["FSJ40_S2", {
        params ["_unit"];

        [FSJ_Uni_Rif] call Olsen_FW_FNC_AddItem;
        FSJ_Backpack("S2");
        [FSJ_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        FSJ40_Weapon_SMG;

        //Extra
        [Ger_Gren_Frag_SF,2] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_MG_50_Mixed_sS,1] call Olsen_FW_FNC_AddItem;
    }];

    //MG-Richtschütze
    FSJ40_MG = ["FSJ40_MG", {
        params ["_unit"];

        [FSJ_Uni_Rif] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_MG] call Olsen_FW_FNC_AddItem;
        FSJ_Backpack("MG");
        [FSJ_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        FSJ40_Weapon_MG;

        //Secondary Weapon
        FSJ40_Weapon_Secondary;

        //Extra
        [Ger_Mag_MG_50_Mixed_sS,3] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //MG-Hilfsschütze
    FSJ40_MGA = ["FSJ40_MGA", {
        params ["_unit"];

        [FSJ_Uni_Rif] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_K98IFA] call Olsen_FW_FNC_AddItem;
        FSJ_Backpack("MGA");
        [FSJ_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        FSJ40_Weapon_Rifle;

        //Extra
        [GEN_ace_sparebarrel] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_MG_50_Mixed_sS,5] call Olsen_FW_FNC_AddItem;
    }];

    //Scharfschütze
    FSJ40_Mark = ["FSJ40_Mark", {
        params ["_unit"];

        [FSJ_Uni_Rif] call Olsen_FW_FNC_AddItem;
        [FSJ_Vest_Band] call Olsen_FW_FNC_AddItem;
        FSJ_Backpack("Mark");
        [FSJ_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        FSJ40_Weapon_Sniper;

        //Extra
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Frag_SF,2] call Olsen_FW_FNC_AddItem;
    }];

    //Grenadier
    FSJ40_Gren = ["FSJ40_Gren", {
        params ["_unit"];

        [FSJ_Uni_Rif] call Olsen_FW_FNC_AddItem;
        [FSJ_Vest_Band] call Olsen_FW_FNC_AddItem;
        FSJ_Backpack("Gren");
        [FSJ_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        FSJ40_Weapon_Rifle;

        //Extra
        [Ger_Acc_K98_GL,1,"vest"] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Frag_SF,12] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Hilfs-Krankenträger
    FSJ40_MedS = ["FSJ40_MedS", {
        params ["_unit"];

        [FSJ_Uni_Rif] call Olsen_FW_FNC_AddItem;
        FSJ_Backpack("Med");
        [FSJ_Vest_Band] call Olsen_FW_FNC_AddItem;
        [FSJ_Helmet] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_MedicS_Equipment_Set;

        //Primary Weapon
        FSJ40_Weapon_Rifle;

        //Extra
        [Ger_Gren_Frag_SF,2] call Olsen_FW_FNC_AddItem;
    }];

    //Gewehrschütze
    FSJ40_Rif = ["FSJ40_Rif", {
        params ["_unit"];

        [FSJ_Uni_Rif] call Olsen_FW_FNC_AddItem;
        [FSJ_Vest_Band] call Olsen_FW_FNC_AddItem;
        FSJ_Backpack("Rif");
        [FSJ_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        FSJ40_Weapon_Rifle;

        //Extra
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Frag_SF,2] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_MG_50_Mixed_sS,1,"backpack"] call Olsen_FW_FNC_AddItem;
    }];
