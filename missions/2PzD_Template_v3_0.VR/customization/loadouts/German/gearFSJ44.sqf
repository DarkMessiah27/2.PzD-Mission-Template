// Info: German Fallschirmjäger 1944 Infantry Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use Olsen_FW_FNC_AddItemRandom

/*Loadouts

    //Kompanietrupp
[this, FSJ44_CC] call Olsen_FW_FNC_GearScript;      Kompanieführer
[this, FSJ44_C2] call Olsen_FW_FNC_GearScript;      Kompanietruppführer

    //Zugtrupp
[this, FSJ44_PC] call Olsen_FW_FNC_GearScript;      Zugführer
[this, FSJ44_P2] call Olsen_FW_FNC_GearScript;      Zugtruppführer
[this, FSJ44_RTO] call Olsen_FW_FNC_GearScript;     Funker
[this, FSJ44_Mess] call Olsen_FW_FNC_GearScript;    Melder
[this, FSJ44_MedP] call Olsen_FW_FNC_GearScript;     Krankenträger

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

// For Kompanieführer, Zugführer, Kompanietruppführer, Zugtruppführer
#define FSJ44_Weapon_Officer \
        [ \
            [ \
                [Ger_Mag_MP40,1], \
                [Ger_Weap_MP40], \
                [Ger_Mag_MP40,3,"vest"] \
            ],[99], \
            [ \
                [Ger_Mag_MP40,1], \
                [Ger_Weap_MP38], \
                [Ger_Mag_MP40,3,"vest"] \
            ],[1] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

// For Gruppenführer
#define FSJ44_Weapon_GF \
        [ \
            [ \
                [FSJ_Vest_PC], \
                [Ger_Mag_MP40,1], \
                [Ger_Weap_MP40], \
                [Ger_Mag_MP40,3,"vest"] \
            ],[80], \
            [ \
                [Ger_Vest_StG44], \
                [GEN_Face_Bino], \
                [Ger_Mag_StG44,1], \
                [Ger_Weap_StG44], \
                [Ger_Mag_StG44,6,"vest"] \
            ],[20] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

// For Stellvertretender Gruppenführer
#define FSJ44_Weapon_SGf \
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

// For all men with rifles except the MG-Hilfsschütze & Grenadier
#define FSJ44_Weapon_Rifle \
        [ \
            [ \
                [FSJ_Vest_Band], \
                [Ger_Mag_K98,1], \
                [Ger_Acc_K98_Bayo,1,"uniform"], \
                [Ger_Weap_K98], \
                [Ger_Mag_K98,24,"vest"] \
            ],[55], \
            [ \
                [Ger_Vest_G43], \
                [Ger_Mag_G43,1], \
                [Ger_Weap_G43], \
                [Ger_Mag_G43,6,"vest"] \
            ],[20], \
            [ \
                [Ger_Vest_StG44], \
                [Ger_Mag_StG44,1], \
                [Ger_Weap_StG44], \
                [Ger_Mag_StG44,6,"vest"] \
            ],[15], \
            [ \
                [FSJ_Vest_Band], \
                [Ger_Mag_FG42,1], \
                [Ger_Weap_FG42], \
                [Ger_Mag_FG42,12,"vest"] \
            ],[10] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

// For MG-Richtschütze
#define FSJ44_Weapon_MG \
        [ \
            [ \
                [Ger_Weap_MG34] \
            ],[55], \
            [ \
                [Ger_Weap_MG42] \
            ],[45] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

// For Grenadier
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
            ],[85], \
            [ \
                [Ger_Vest_StG44], \
                [Ger_Mag_StG44,1], \
                [Ger_Weap_StG44], \
                [Ger_Acc_K98_GL,1,"vest"],\
                [Ger_Mag_StG44,6,"vest"], \
                [Ger_Mag_RGrn_HE,4], \
                [Ger_Mag_RGrn_ATL,4] \
            ],[15] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

// For Kompanieführer, Zugführer
#define FSJ44_Weapon_Officer_Secondary \
        [ \
            [ \
                [Ger_Mag_P38,1], \
                [Ger_Weap_P38], \
                [Ger_Mag_P38,2,"uniform"] \
            ],[71], \
            [ \
                [Ger_Mag_P08,1], \
                [Ger_Weap_P08], \
                [Ger_Mag_P08,2,"uniform"] \
            ],[15], \
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
            ],[0.5] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

// For Kompanietruppführer, Zugtruppführer, MG-Richtschütze
#define FSJ44_Weapon_Enlisted_Secondary \
        [ \
            [ \
                [Ger_Mag_P38,1], \
                [Ger_Weap_P38], \
                [Ger_Mag_P38,2,"uniform"] \
            ],[73], \
            [ \
                [Ger_Mag_P08,1], \
                [Ger_Weap_P08], \
                [Ger_Mag_P08,2,"uniform"] \
            ],[23], \
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
            ],[0.5] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

// Panzerfaust
#define FSJ44_Weapon_PzFaust \
        [ \
            [ \
                [Ger_Weap_PzFaust_60] \
            ],[50], \
            [ \
                [Ger_Weap_PzFaust_30] \
            ],[25], \
            [ \
                [Ger_Weap_PzFaust_K] \
            ],[25] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

//======================== Loadouts ========================

//Company HQ

    //Kompanieführer
    FSJ44_CC = ["FSJ44_CC", {
        params ["_unit"];

        [FSJ_UniC_NI] call Olsen_FW_FNC_AddItem;
        [FSJ_Vest_PC] call Olsen_FW_FNC_AddItem;
        [Ger_BP_Radio] call Olsen_FW_FNC_AddItem;
        [FSJ_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment;
        GEN_Leader_Equipment;

        //Primary Weapon
        FSJ44_Weapon_Officer;

        //Secondary Weapon
        FSJ44_Weapon_Officer_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Kompanietruppführer
    FSJ44_C2 = ["FSJ44_C2", {
        params ["_unit"];

        [FSJ_UniC_NI] call Olsen_FW_FNC_AddItem;
        [FSJ_Vest_PC] call Olsen_FW_FNC_AddItem;
        [Ger_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [FSJ_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment;
        GEN_Leader_Equipment;

        //Primary Weapon
        FSJ44_Weapon_Officer;

        //Secondary Weapon
        FSJ44_Weapon_Enlisted_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [
            [//M24
                [Ger_Gren_HE_SC,1]
            ],[66],
            [//M24 Splittering
                [Ger_Gren_Frag_SF,1]
            ],[34]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
    }];

//Platoon HQ

    //Zugführer
    FSJ44_PC = ["FSJ44_PC", {
        params ["_unit"];

        [FSJ_UniC_NI] call Olsen_FW_FNC_AddItem;
        [FSJ_Vest_PC] call Olsen_FW_FNC_AddItem;
        [Ger_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [FSJ_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment;
        GEN_Leader_Equipment;

        //Primary Weapon
        FSJ44_Weapon_Officer;

        //Secondary Weapon
        FSJ44_Weapon_Officer_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Zugtruppführer
    FSJ44_P2 = ["FSJ44_P2", {
        params ["_unit"];

        [FSJ_UniC_SL] call Olsen_FW_FNC_AddItem;
        [FSJ_Vest_PC] call Olsen_FW_FNC_AddItem;
        [Ger_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [FSJ_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment;
        GEN_Leader_Equipment;

        //Primary Weapon
        FSJ44_Weapon_Officer;

        //Secondary Weapon
        FSJ44_Weapon_Enlisted_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [
            [//M24
                [Ger_Gren_HE_SC,1]
            ],[66],
            [//M24 Splittering
                [Ger_Gren_Frag_SF,1]
            ],[34]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
    }];

    //Funker
    FSJ44_RTO = ["FSJ44_RTO", {
        params ["_unit"];

        [FSJ_UniC_Rif] call Olsen_FW_FNC_AddItem;
        [Ger_BP_Radio] call Olsen_FW_FNC_AddItem;
        [FSJ_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment;

        //Primary Weapon
        FSJ44_Weapon_Rifle;

        //Extra
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [
            [//M24
                [Ger_Gren_HE_SC,1]
            ],[66],
            [//M24 Splittering
                [Ger_Gren_Frag_SF,1]
            ],[34]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
    }];

    //Melder
    FSJ44_Mess = ["FSJ44_Mess", {
        params ["_unit"];

        [FSJ_UniC_Rif] call Olsen_FW_FNC_AddItem;
        [Ger_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [FSJ_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment;

        //Primary Weapon
        FSJ44_Weapon_Rifle;

        //Extra
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [
            [//M24
                [Ger_Gren_HE_SC,1]
            ],[66],
            [//M24 Splittering
                [Ger_Gren_Frag_SF,1]
            ],[34]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
    }];

    //Krankenträger
    FSJ44_MedP = ["FSJ44_MedP", {
        params ["_unit"];

        [FSJ_UniC_Rif] call Olsen_FW_FNC_AddItem;
        [Ger_BP_Med] call Olsen_FW_FNC_AddItem;
        [FSJ_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment;

        //Primary Weapon
        FSJ44_Weapon_Rifle;

        //Extra
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        GEN_MedicP_Equipment;
    }];

//Squad

    //Gruppenführer
    FSJ44_SL = ["FSJ44_SL", {
        params ["_unit"];

        [FSJ_UniC_SL] call Olsen_FW_FNC_AddItem;
        [Ger_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [FSJ_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment;
        GEN_Leader_Equipment;

        //Primary Weapon
        FSJ44_Weapon_GF;

        //Extra
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_MG_50_Mixed_SmE,1] call Olsen_FW_FNC_AddItem;
    }];

    //Stellvertretender Gruppenführer
    FSJ44_S2 = ["FSJ44_S2", {
        params ["_unit"];

        [FSJ_UniC_S2] call Olsen_FW_FNC_AddItem;
        [Ger_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [FSJ_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment;

        //Primary Weapon
        FSJ44_Weapon_SGf;

        //Extra
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_MG_50_Mixed_SmE,1] call Olsen_FW_FNC_AddItem;
    }];

    //MG-Richtschütze
    FSJ44_MG = ["FSJ44_MG", {
        params ["_unit"];

        [FSJ_UniC_Rif] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_MG] call Olsen_FW_FNC_AddItem;
        [Ger_BP_MG_r] call Olsen_FW_FNC_AddItemRandom;
        _unit removeItemFromBackpack "fow_50Rnd_792x57";
        [FSJ_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment;
        [GEN_BinoG] call Olsen_FW_FNC_AddItem;

        //Secondary Weapon
        FSJ44_Weapon_Enlisted_Secondary;

        //Primary Weapon
        [Ger_Mag_MG_50_Mixed_SmE,1] call Olsen_FW_FNC_AddItem;
        FSJ44_Weapon_MG;
        [Ger_Mag_MG_50_Mixed_SmE,5,"vest"] call Olsen_FW_FNC_AddItem;

        //Extra
        [Ger_Mag_MG_50_Mixed_SmE,3] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //MG-Hilfsschütze
    FSJ44_MGA = ["FSJ44_MGA", {
        params ["_unit"];

        [FSJ_UniC_Rif] call Olsen_FW_FNC_AddItem;
        [Ger_BP_MG_D] call Olsen_FW_FNC_AddItem;
        _unit removeItemFromBackpack "fow_50Rnd_792x57";
        [FSJ_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment;
        [GEN_BinoG] call Olsen_FW_FNC_AddItem;

        //Primary Weapon
        FSJ44_Weapon_Rifle;

        //Extra
        [GEN_ace_sparebarrel] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_MG_50_Mixed_SmE,5] call Olsen_FW_FNC_AddItem;
        [Ger_mg_neck] call Olsen_FW_FNC_AddItem;
    }];

    //Scharfschütze
    FSJ44_Mark = ["FSJ44_Mark", {
        params ["_unit"];

        [FSJ_UniC_Rif] call Olsen_FW_FNC_AddItem;
        [FSJ_Vest_Band] call Olsen_FW_FNC_AddItem;
        [Ger_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [FSJ_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment;

        //Primary Weapon
        [Ger_Mag_K98,1] call Olsen_FW_FNC_AddItem;
        [Ger_Weap_K98_Zf39] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_K98,24,"vest"] call Olsen_FW_FNC_AddItem;

        //Extra
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [
            [//M24
                [Ger_Gren_HE_SC,1]
            ],[66],
            [//M24 Splittering
                [Ger_Gren_Frag_SF,1]
            ],[34]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_MG_50_Mixed_SmE,1] call Olsen_FW_FNC_AddItem;
    }];

    //Grenadier
    FSJ44_Gren = ["FSJ44_Gren", {
        params ["_unit"];

        [FSJ_UniC_Rif] call Olsen_FW_FNC_AddItem;
        [Ger_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [FSJ_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment;

        //Primary Weapon
        FSJ44_Weapon_Grenadier;

        //Extra
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Hilfs-Krankenträger
    FSJ44_MedS = ["FSJ44_MedS", {
        params ["_unit"];

        [FSJ_Uni_Rif] call Olsen_FW_FNC_AddItem;
        [Ger_BP_Med] call Olsen_FW_FNC_AddItem;
        [FSJ_Helmet] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment;
        GEN_MedicS_Equipment;

        //Primary Weapon
        FSJ44_Weapon_Rifle;

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
    FSJ44_Rif = ["FSJ44_Rif", {
        params ["_unit"];

        [FSJ_UniC_Rif] call Olsen_FW_FNC_AddItem;
        [Ger_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [FSJ_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment;

        //Primary Weapon
        FSJ44_Weapon_Rifle;

        //Launcher
        FSJ44_Weapon_PzFaust;

        //Extra
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [
            [//M24
                [Ger_Gren_HE_SC,1]
            ],[66],
            [//M24 Splittering
                [Ger_Gren_Frag_SF,1]
            ],[34]
        ] call Olsen_FW_FNC_AddItemRandomPercent;
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_MG_50_Mixed_SmE,1,"backpack"] call Olsen_FW_FNC_AddItem;
    }];
