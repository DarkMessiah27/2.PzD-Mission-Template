// Info: German Fallschirmjäger 1940 Infantry Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use Olsen_FW_FNC_AddItemRandom

/*Loadouts

    //Kompanietrupp
[this, FSJ40_CC] call Olsen_FW_FNC_GearScript;      Kompanieführer
[this, FSJ40_C2] call Olsen_FW_FNC_GearScript;      Kompanietruppführer

    //Zugtrupp
[this, FSJ40_PC] call Olsen_FW_FNC_GearScript;      Zugführer
[this, FSJ40_P2] call Olsen_FW_FNC_GearScript;      Zugtruppführer
[this, FSJ40_RTO] call Olsen_FW_FNC_GearScript;     Funker
[this, FSJ40_Mess] call Olsen_FW_FNC_GearScript;    Melder
[this, FSJ40_MedP] call Olsen_FW_FNC_GearScript;     Krankenträger

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

// For Kompanieführer and Zugführer
#define FSJ40_Weapon_Officer \
        [ \
            [ \
                [FSJ_Vest_PC], \
                [Ger_Mag_MP40,1], \
                [Ger_Weap_MP38], \
                [Ger_Mag_MP40,3,"vest"] \
            ],[60], \
            [ \
                [FSJ_Vest_CC] \
            ],[20], \
            [ \
                [FSJ_Vest_PC], \
                [Ger_Mag_MP40,1], \
                [Ger_Weap_MP40], \
                [Ger_Mag_MP40,3,"vest"] \
            ],[20] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

// For Kompanietruppführer and Zugtruppführer
#define FSJ40_Weapon_TF \
        [ \
            [ \
                [FSJ_Vest_PC], \
                [Ger_Mag_MP40,1], \
                [Ger_Weap_MP38], \
                [Ger_Mag_MP40,3,"vest"] \
            ],[60], \
            [ \
                [FSJ_Vest_Band], \
                [Ger_Mag_K98,1], \
                [Ger_Acc_K98_Bayo,1,"uniform"], \
                [Ger_Weap_K98_E], \
                [Ger_Mag_K98,24,"vest"] \
            ],[20], \
            [ \
                [Ger_Mag_K98,1], \
                [Ger_Acc_K98_Bayo,1,"uniform"], \
                [Ger_Weap_K98], \
                [Ger_Mag_K98,24,"vest"] \
            ],[13.33], \
            [ \
                [FSJ_Vest_PC], \
                [Ger_Mag_MP40,1], \
                [Ger_Weap_MP40], \
                [Ger_Mag_MP40,3,"vest"] \
            ],[20] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

// For Gruppenführer
#define FSJ40_Weapon_GF \
        [ \
            [ \
                [Ger_Mag_MP40,1], \
                [Ger_Weap_MP38], \
                [Ger_Mag_MP40,3,"vest"] \
            ],[60], \
            [ \
                [Ger_Mag_MP40,1], \
                [Ger_Weap_MP40], \
                [Ger_Mag_MP40,3,"vest"] \
            ],[40] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

// For Stellvertretender Gruppenführer
#define FSJ40_Weapon_SGf \
        [ \
            [ \
                [Ger_Mag_MP40,1], \
                [Ger_Weap_MP38], \
                [Ger_Mag_MP40,6,"vest"] \
            ],[60], \
            [ \
                [Ger_Mag_MP40,1], \
                [Ger_Weap_MP40], \
                [Ger_Mag_MP40,6,"vest"] \
            ],[40] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

// For all men with rifles
#define FSJ40_Weapon_Rifle \
        [ \
            [ \
                [Ger_Mag_K98,1], \
                [Ger_Acc_K98_Bayo,1,"uniform"], \
                [Ger_Weap_K98_E], \
                [Ger_Mag_K98,24,"vest"] \
            ],[60], \
            [ \
                [Ger_Mag_K98,1], \
                [Ger_Acc_K98_Bayo,1,"uniform"], \
                [Ger_Weap_K98], \
                [Ger_Mag_K98,24,"vest"] \
            ],[40] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

// For Kompanieführer, Zugführer
#define FSJ40_Weapon_Officer_Secondary \
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

// For Kompanietruppführer, Zugtruppführer, MG-Richtschütze
#define FSJ40_Weapon_Enlisted_Secondary \
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
    FSJ40_CC = ["FSJ40_CC", {
        params ["_unit"];

        [FSJ_Uni_NI] call Olsen_FW_FNC_AddItem;
        [Ger_BP_Radio] call Olsen_FW_FNC_AddItem;
        [FSJ_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon
        FSJ40_Weapon_Officer;

        //Secondary Weapon
        FSJ40_Weapon_Officer_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Kompanietruppführer
    FSJ40_C2 = ["FSJ40_C2", {
        params ["_unit"];

        [FSJ_Uni_NI] call Olsen_FW_FNC_AddItem;
        [Ger_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [FSJ_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon
        FSJ40_Weapon_TF;

        //Secondary Weapon
        FSJ40_Weapon_Enlisted_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_HE_SC,1] call Olsen_FW_FNC_AddItem;
    }];

//Platoon HQ

    //Zugführer
    FSJ40_PC = ["FSJ40_PC", {
        params ["_unit"];

        [FSJ_Uni_NI] call Olsen_FW_FNC_AddItem;
        [FSJ_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon
        FSJ40_Weapon_Officer;

        //Secondary Weapon
        FSJ40_Weapon_Officer_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Zugtruppführer
    FSJ40_P2 = ["FSJ40_P2", {
        params ["_unit"];

        [FSJ_Uni_SL] call Olsen_FW_FNC_AddItem;
        [Ger_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [FSJ_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon
        FSJ40_Weapon_TF;

        //Secondary Weapon
        FSJ40_Weapon_Enlisted_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_HE_SC,1] call Olsen_FW_FNC_AddItem;
    }];

    //Funker
    FSJ40_RTO = ["FSJ40_RTO", {
        params ["_unit"];

        [FSJ_Uni_Rif] call Olsen_FW_FNC_AddItem;
        [FSJ_Vest_Band] call Olsen_FW_FNC_AddItem;
        [Ger_BP_Radio] call Olsen_FW_FNC_AddItem;
        [FSJ_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        FSJ40_Weapon_Rifle;

        //Extra
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_HE_SC,1] call Olsen_FW_FNC_AddItem;
    }];

    //Melder
    FSJ40_Mess = ["FSJ40_Mess", {
        params ["_unit"];

        [FSJ_Uni_Rif] call Olsen_FW_FNC_AddItem;
        [FSJ_Vest_Band] call Olsen_FW_FNC_AddItem;
        [Ger_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [FSJ_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        FSJ40_Weapon_Rifle;

        //Extra
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_HE_SC,1] call Olsen_FW_FNC_AddItem;
    }];

    //Krankenträger
    FSJ40_MedP = ["FSJ40_MedP", {
        params ["_unit"];

        [FSJ_Uni_Rif] call Olsen_FW_FNC_AddItem;
        [FSJ_Vest_Band] call Olsen_FW_FNC_AddItem;
        [Ger_BP_Med] call Olsen_FW_FNC_AddItem;
        [FSJ_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        FSJ40_Weapon_Rifle;

        //Extra
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        GEN_MedicP_Equipment_Set;
    }];

//Squad

    //Gruppenführer
    FSJ40_SL = ["FSJ40_SL", {
        params ["_unit"];

        [FSJ_Uni_SL] call Olsen_FW_FNC_AddItem;
        [FSJ_Vest_PC] call Olsen_FW_FNC_AddItem;
        [Ger_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [FSJ_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon
        FSJ40_Weapon_GF;

        //Extra
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_MG_50_Mixed_sS,1] call Olsen_FW_FNC_AddItem;
    }];

    //Stellvertretender Gruppenführer
    FSJ40_S2 = ["FSJ40_S2", {
        params ["_unit"];

        [FSJ_Uni_S2] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_MP40] call Olsen_FW_FNC_AddItem;
        [Ger_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [FSJ_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        FSJ40_Weapon_GF;

        //Extra
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_MG_50_Mixed_sS,1] call Olsen_FW_FNC_AddItem;
    }];

    //MG-Richtschütze
    FSJ40_MG = ["FSJ40_MG", {
        params ["_unit"];

        [FSJ_Uni_Rif] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_MG] call Olsen_FW_FNC_AddItem;
        [Ger_BP_MG_r] call Olsen_FW_FNC_AddItemRandom;
        _unit removeItemFromBackpack "fow_50Rnd_792x57";
        [FSJ_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        [GEN_BinoG] call Olsen_FW_FNC_AddItem;

        //Secondary Weapon
        FSJ40_Weapon_Enlisted_Secondary;

        //Primary Weapon
        [Ger_Mag_MG_50_Mixed_sS,1] call Olsen_FW_FNC_AddItem;
        [Ger_Weap_MG34] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_MG_50_Mixed_sS,5,"vest"] call Olsen_FW_FNC_AddItem;

        //Extra
        [Ger_Mag_MG_50_Mixed_sS,3] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //MG-Hilfsschütze
    FSJ40_MGA = ["FSJ40_MGA", {
        params ["_unit"];

        [FSJ_Uni_Rif] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_MGA] call Olsen_FW_FNC_AddItem;
        [Ger_BP_MG_D] call Olsen_FW_FNC_AddItem;
        _unit removeItemFromBackpack "fow_50Rnd_792x57";
        [FSJ_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        [GEN_BinoG] call Olsen_FW_FNC_AddItem;

        //Primary Weapon
        FSJ40_Weapon_Rifle;

        //Extra
        [GEN_ace_sparebarrel] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_MG_50_Mixed_sS,5] call Olsen_FW_FNC_AddItem;
        [Ger_mg_neck] call Olsen_FW_FNC_AddItem;
    }];

    //Scharfschütze
    FSJ40_Mark = ["FSJ40_Mark", {
        params ["_unit"];

        [FSJ_Uni_Rif] call Olsen_FW_FNC_AddItem;
        [FSJ_Vest_Band] call Olsen_FW_FNC_AddItem;
        [Ger_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [FSJ_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        [Ger_Mag_K98,1] call Olsen_FW_FNC_AddItem;
        [Ger_Weap_K98_Zf39] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_K98,24,"vest"] call Olsen_FW_FNC_AddItem;

        //Extra
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_HE_SC,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
    }];

    //Grenadier
    FSJ40_Gren = ["FSJ40_Gren", {
        params ["_unit"];

        [FSJ_Uni_Rif] call Olsen_FW_FNC_AddItem;
        [FSJ_Vest_Band] call Olsen_FW_FNC_AddItem;
        [Ger_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [FSJ_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        FSJ40_Weapon_Rifle;

        //Extra
        [Ger_Acc_K98_GL,1,"vest"] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_RGrn_HE,4] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_RGrn_ATS,4] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Hilfs-Krankenträger
    FSJ40_MedS = ["FSJ40_MedS", {
        params ["_unit"];

        [FSJ_Uni_Rif] call Olsen_FW_FNC_AddItem;
        [Ger_BP_Med] call Olsen_FW_FNC_AddItem;
        [FSJ_Vest_Band] call Olsen_FW_FNC_AddItem;
        [FSJ_Helmet] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_MedicS_Equipment_Set;

        //Primary Weapon
        FSJ40_Weapon_Rifle;

        //Extra
        [
            [//M24
                [Ger_Gren_HE_SC,1]
            ],[66],
            [//M24 Splittering
                [Ger_Gren_Frag_SF,1]
            ],[34]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
    }];

    //Gewehrschütze
    FSJ40_Rif = ["FSJ40_Rif", {
        params ["_unit"];

        [FSJ_Uni_Rif] call Olsen_FW_FNC_AddItem;
        [FSJ_Vest_Band] call Olsen_FW_FNC_AddItem;
        [Ger_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [FSJ_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        FSJ40_Weapon_Rifle;

        //Extra
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_HE_SC,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_MG_50_Mixed_sS,1,"backpack"] call Olsen_FW_FNC_AddItem;
    }];
