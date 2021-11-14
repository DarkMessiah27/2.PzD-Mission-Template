// Info: German Fallschirmjäger 1940 Infantry Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use Olsen_FW_FNC_AddItemRandom

/*Loadouts

    //Kompanietrupp
[this, FSJP40Jun_CC] call Olsen_FW_FNC_GearScript;      Kompanieführer
[this, FSJP40Jun_C2] call Olsen_FW_FNC_GearScript;      Kompanietruppführer

    //Zugtrupp
[this, FSJP40Jun_PC] call Olsen_FW_FNC_GearScript;      Zugführer
[this, FSJP40Jun_P2] call Olsen_FW_FNC_GearScript;      Zugtruppführer
[this, FSJP40Jun_RTO] call Olsen_FW_FNC_GearScript;     Funker
[this, FSJP40Jun_Mess] call Olsen_FW_FNC_GearScript;    Melder
[this, FSJP40Jun_Med] call Olsen_FW_FNC_GearScript;     Krankenträger

    //Gruppe
[this, FSJP40Jun_SL] call Olsen_FW_FNC_GearScript;      Gruppenführer
[this, FSJP40Jun_S2] call Olsen_FW_FNC_GearScript;      Stellvertretender Gruppenführer
[this, FSJP40Jun_MG] call Olsen_FW_FNC_GearScript;      MG-Richtschütze
[this, FSJP40Jun_MGA] call Olsen_FW_FNC_GearScript;     MG-Hilfsschütze
[this, FSJP40Jun_Gren] call Olsen_FW_FNC_GearScript;    Grenadier
[this, FSJP40Jun_Mark] call Olsen_FW_FNC_GearScript;    Scharfschütze
[this, FSJP40Jun_Rif] call Olsen_FW_FNC_GearScript;     Gewehrschütze
*/

//======================== Definitions ========================

// For Kompanieführer and Zugführer
#define FSJP40Jun_Weapon_Officer \
        [ \
            [ \
                [FSJ_Vest_PC], \
                [Ger_Mag_MP40,3,"vest"] \
            ],[60], \
            [ \
                [FSJ_Vest_CC] \
            ],[20], \
            [ \
                [FSJ_Vest_PC], \
                [Ger_Mag_MP40,3,"vest"] \
            ],[20] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

// For Kompanietruppführer and Zugtruppführer
#define FSJP40Jun_Weapon_TF \
        [ \
            [ \
                [FSJ_Vest_PC], \
                [Ger_Mag_MP40,3,"vest"] \
            ],[60], \
            [ \
                [FSJ_Vest_Band], \
                [Ger_Mag_K98,24,"vest"] \
            ],[20], \
            [ \
                [FSJ_Vest_PC], \
                [Ger_Mag_MP40,3,"vest"] \
            ],[20] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

// For Kompanieführer, Zugführer
#define FSJP40Jun_Weapon_Officer_Secondary \
        [ \
            [ \
                [Ger_Mag_P38,1], \
                [Ger_Weap_P38], \
                [Ger_Mag_P38,2,"uniform"] \
            ],[45], \
            [ \
                [Ger_Mag_P08,1], \
                [Ger_Weap_P08], \
                [Ger_Mag_P08,2,"uniform"] \
            ],[41], \
            [ \
                [Ger_Mag_PPK,1], \
                [Ger_Weap_PPK], \
                [Ger_Mag_PPK,2,"uniform"] \
            ],[10], \
            [ \
                [Pol_Mag_Radom,1], \
                [Pol_Weap_Radom], \
                [Pol_Mag_Radom,2,"uniform"] \
            ],[2], \
            [ \
                [UK_Mag_HiPower,1], \
                [UK_Weap_HiPower], \
                [UK_Mag_HiPower,2,"uniform"] \
            ],[2], \
            [ \
                [Ger_Mag_M1916,1], \
                [Ger_Weap_M1916], \
                [Ger_Mag_M1916,2,"uniform"] \
            ],[1], \
            [ \
                [Ger_Mag_M172_20,1], \
                [Ger_Weap_M172], \
                [Ger_Mag_M172_20,2,"uniform"] \
            ],[1] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

// For all enlisted men
#define FSJP40Jun_Weapon_Enlisted_Secondary \
        [ \
            [ \
                [Ger_Mag_P38,1], \
                [Ger_Weap_P38], \
                [Ger_Mag_P38,2,"uniform"] \
            ],[50], \
            [ \
                [Ger_Mag_P08,1], \
                [Ger_Weap_P08], \
                [Ger_Mag_P08,2,"uniform"] \
            ],[46], \
            [ \
                [Pol_Mag_Radom,1], \
                [Pol_Weap_Radom], \
                [Pol_Mag_Radom,2,"uniform"] \
            ],[2], \
            [ \
                [UK_Mag_HiPower,1], \
                [UK_Weap_HiPower], \
                [UK_Mag_HiPower,2,"uniform"] \
            ],[2], \
            [ \
                [Ger_Mag_M1916,1], \
                [Ger_Weap_M1916], \
                [Ger_Mag_M1916,2,"uniform"] \
            ],[1], \
            [ \
                [Ger_Mag_M172_20,1], \
                [Ger_Weap_M172], \
                [Ger_Mag_M172_20,2,"uniform"] \
            ],[1] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

//======================== Loadouts ========================

//Company HQ

    //Kompanieführer
    FSJP40Jun_CC = ["FSJP40Jun_CC", {
        params ["_unit"];

        [FSJ_Uni_NI] call Olsen_FW_FNC_AddItem;
        [GEN_BP_Para] call Olsen_FW_FNC_AddItem;
        [FSJ_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon
        FSJP40Jun_Weapon_Officer;

        //Secondary Weapon
        FSJP40Jun_Weapon_Officer_Secondary;
    }];

    //Kompanietruppführer
    FSJP40Jun_C2 = ["FSJP40Jun_C2", {
        params ["_unit"];

        [FSJ_Uni_NI] call Olsen_FW_FNC_AddItem;
        [GEN_BP_Para] call Olsen_FW_FNC_AddItem;
        [FSJ_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon
        FSJP40Jun_Weapon_TF;

        //Secondary Weapon
        FSJP40Jun_Weapon_Enlisted_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
    }];

//Platoon HQ

    //Zugführer
    FSJP40Jun_PC = ["FSJP40Jun_PC", {
        params ["_unit"];

        [FSJ_Uni_NI] call Olsen_FW_FNC_AddItem;
        [GEN_BP_Para] call Olsen_FW_FNC_AddItem;
        [FSJ_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon
        FSJP40Jun_Weapon_Officer;

        //Secondary Weapon
        FSJP40Jun_Weapon_Officer_Secondary;
    }];

    //Zugtruppführer
    FSJP40Jun_P2 = ["FSJP40Jun_P2", {
        params ["_unit"];

        [FSJ_Uni_SL] call Olsen_FW_FNC_AddItem;
        [GEN_BP_Para] call Olsen_FW_FNC_AddItem;
        [FSJ_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon
        FSJP40Jun_Weapon_TF;

        //Secondary Weapon
        FSJP40Jun_Weapon_Enlisted_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
    }];

    //Funker
    FSJP40Jun_RTO = ["FSJP40Jun_RTO", {
        params ["_unit"];

        [FSJ_Uni_Rif] call Olsen_FW_FNC_AddItem;
        [FSJ_Vest_Band] call Olsen_FW_FNC_AddItem;
        [GEN_BP_Para] call Olsen_FW_FNC_AddItem;
        [FSJ_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        [Ger_Mag_K98,24,"vest"] call Olsen_FW_FNC_AddItem;

        //Secondary Weapon
        FSJP40Jun_Weapon_Enlisted_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
    }];

    //Melder
    FSJP40Jun_Mess = ["FSJP40Jun_Mess", {
        params ["_unit"];

        [FSJ_Uni_Rif] call Olsen_FW_FNC_AddItem;
        [FSJ_Vest_Band] call Olsen_FW_FNC_AddItem;
        [GEN_BP_Para] call Olsen_FW_FNC_AddItem;
        [FSJ_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        [Ger_Mag_K98,24,"vest"] call Olsen_FW_FNC_AddItem;

        //Secondary Weapon
        FSJP40Jun_Weapon_Enlisted_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
    }];

    //Krankenträger
    FSJP40Jun_Med = ["FSJP40Jun_Med", {
        params ["_unit"];

        [FSJ_Uni_Rif] call Olsen_FW_FNC_AddItem;
        [FSJ_Vest_Band] call Olsen_FW_FNC_AddItem;
        [GEN_BP_Para] call Olsen_FW_FNC_AddItem;
        [FSJ_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        [Ger_Mag_K98,24,"vest"] call Olsen_FW_FNC_AddItem;

        //Secondary Weapon
        FSJP40Jun_Weapon_Enlisted_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        FSJ_Medic_Equipment;
    }];

//Squad

    //Gruppenführer
    FSJP40Jun_SL = ["FSJP40Jun_SL", {
        params ["_unit"];

        [FSJ_Uni_SL] call Olsen_FW_FNC_AddItem;
        [FSJ_Vest_PC] call Olsen_FW_FNC_AddItem;
        [GEN_BP_Para] call Olsen_FW_FNC_AddItem;
        [FSJ_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon
        [Ger_Mag_MP40,3,"vest"] call Olsen_FW_FNC_AddItem;

        //Secondary Weapon
        FSJP40Jun_Weapon_Enlisted_Secondary;

        //Extra
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Stellvertretender Gruppenführer
    FSJP40Jun_S2 = ["FSJP40Jun_S2", {
        params ["_unit"];

        [FSJ_Uni_S2] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_MP40] call Olsen_FW_FNC_AddItem;
        [GEN_BP_Para] call Olsen_FW_FNC_AddItem;
        [FSJ_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        [Ger_Mag_MP40,6,"vest"] call Olsen_FW_FNC_AddItem;

        //Secondary Weapon
        FSJP40Jun_Weapon_Enlisted_Secondary;

        //Extra
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //MG-Richtschütze
    FSJP40Jun_MG = ["FSJP40Jun_MG", {
        params ["_unit"];

        [FSJ_Uni_Rif] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_MG] call Olsen_FW_FNC_AddItem;
        [GEN_BP_Para] call Olsen_FW_FNC_AddItem;
        [FSJ_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        [GEN_BinoG] call Olsen_FW_FNC_AddItem;

        //Secondary Weapon
        FSJP40Jun_Weapon_Enlisted_Secondary;

        //Primary Weapon
        [Ger_Mag_MG_50_Mixed_sS,5,"vest"] call Olsen_FW_FNC_AddItem;

        //Extra
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //MG-Hilfsschütze
    FSJP40Jun_MGA = ["FSJP40Jun_MGA", {
        params ["_unit"];

        [FSJ_Uni_Rif] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_MGA] call Olsen_FW_FNC_AddItem;
        [GEN_BP_Para] call Olsen_FW_FNC_AddItem;
        [FSJ_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        [GEN_BinoG] call Olsen_FW_FNC_AddItem;

        //Primary Weapon
        [Ger_Mag_K98,24,"vest"] call Olsen_FW_FNC_AddItem;

        //Secondary Weapon
        FSJP40Jun_Weapon_Enlisted_Secondary;

        //Extra
        [GEN_ace_sparebarrel] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Scharfschütze
    FSJP40Jun_Mark = ["FSJP40Jun_Mark", {
        params ["_unit"];

        [FSJ_Uni_Rif] call Olsen_FW_FNC_AddItem;
        [FSJ_Vest_Band] call Olsen_FW_FNC_AddItem;
        [GEN_BP_Para] call Olsen_FW_FNC_AddItem;
        [FSJ_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        [Ger_Mag_K98,24,"vest"] call Olsen_FW_FNC_AddItem;

        //Secondary Weapon
        FSJP40Jun_Weapon_Enlisted_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
    }];

    //Grenadier
    FSJP40Jun_Gren = ["FSJP40Jun_Gren", {
        params ["_unit"];

        [FSJ_Uni_Rif] call Olsen_FW_FNC_AddItem;
        [FSJ_Vest_Band] call Olsen_FW_FNC_AddItem;
        [GEN_BP_Para] call Olsen_FW_FNC_AddItem;
        [FSJ_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        [Ger_Mag_K98,24,"vest"] call Olsen_FW_FNC_AddItem;

        //Secondary Weapon
        FSJP40Jun_Weapon_Enlisted_Secondary;

        //Extra
        [Ger_Mag_RGrn_HE,4] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_RGrn_ATS,4] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Gewehrschütze
    FSJP40Jun_Rif = ["FSJP40Jun_Rif", {
        params ["_unit"];

        [FSJ_Uni_Rif] call Olsen_FW_FNC_AddItem;
        [FSJ_Vest_Band] call Olsen_FW_FNC_AddItem;
        [GEN_BP_Para] call Olsen_FW_FNC_AddItem;
        [FSJ_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        [Ger_Mag_K98,24,"vest"] call Olsen_FW_FNC_AddItem;

        //Secondary Weapon
        FSJP40Jun_Weapon_Enlisted_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
    }];
