// Info: German Wehrmacht 1940 Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use Olsen_FW_FNC_AddItemRandom

/*Loadouts

    //Kompanietrupp
[this, WHR40_CC] call Olsen_FW_FNC_GearScript;        Kompanieführer
[this, WHR40_C2] call Olsen_FW_FNC_GearScript;        Kompanietruppführer

    //Zugtrupp
[this, WHR40_PC] call Olsen_FW_FNC_GearScript;        Zugführer
[this, WHR40_P2] call Olsen_FW_FNC_GearScript;        Zugtruppführer
[this, WHR40_RTO] call Olsen_FW_FNC_GearScript;       Funker
[this, WHR40_Mess] call Olsen_FW_FNC_GearScript;      Melder
[this, WHR40_MedP] call Olsen_FW_FNC_GearScript;      Krankenträger

    //Gruppe
[this, WHR40_SL] call Olsen_FW_FNC_GearScript;        Gruppenführer
[this, WHR40_S2] call Olsen_FW_FNC_GearScript;        Stellvertretender Gruppenführer
[this, WHR40_S3] call Olsen_FW_FNC_GearScript;        Gefreiter
[this, WHR40_MG] call Olsen_FW_FNC_GearScript;        MG-Richtschütze
[this, WHR40_MGA] call Olsen_FW_FNC_GearScript;       MG-Hilfsschütze
[this, WHR40_MGAB] call Olsen_FW_FNC_GearScript;      MG-Munitionsträger
[this, WHR40_Gren] call Olsen_FW_FNC_GearScript;      Grenadier
[this, WHR40_MedS] call Olsen_FW_FNC_GearScript;      Hilfs-Krankenträger
[this, WHR40_Rif] call Olsen_FW_FNC_GearScript;       Gewehrschütze

    //Weapon Truppen
[this, WHR40_MortSL] call Olsen_FW_FNC_GearScript;    Mortar Truppführer
[this, WHR40_MortG] call Olsen_FW_FNC_GearScript;     Mortar Granatwerferschützen
[this, WHR40_MortA] call Olsen_FW_FNC_GearScript;     Mortar Munitionsträger

[this, WHR40_HMGSL] call Olsen_FW_FNC_GearScript;     HMG Truppführer
[this, WHR40_HMGG] call Olsen_FW_FNC_GearScript;      HMG Richtschütze
[this, WHR40_HMGA] call Olsen_FW_FNC_GearScript;      HMG Munitionsträger

[this, WHR40_ATRSL] call Olsen_FW_FNC_GearScript;     Panzerbüchse Truppführer
[this, WHR40_ATRG] call Olsen_FW_FNC_GearScript;      Panzerbüchse Richtschütze
[this, WHR40_ATRA] call Olsen_FW_FNC_GearScript;      Panzerbüchse Munitionsträger

    //Tank Crew
[this, WHR40_VCom] call Olsen_FW_FNC_GearScript;      Besatzungsführer
[this, WHR40_VCrew] call Olsen_FW_FNC_GearScript;     Besatzung
*/

//======================== Definitions ========================

//For Kompanieführer and Zugführer
#define WHR40_Weapon_Officer \
        [ \
            [ \
                [Ger_Vest_PC], \
                [Ger_Mag_MP40,1], \
                [Ger_Weap_MP38], \
                [Ger_Mag_MP40,3,"vest"] \
            ],[60], \
            [ \
                [Ger_Vest_C2] \
            ],[20], \
            [ \
                [Ger_Vest_PC], \
                [Ger_Mag_MP40,1], \
                [Ger_Weap_MP40], \
                [Ger_Mag_MP40,3,"vest"] \
            ],[20] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

//For Besatzungsführer
#define WHR40_Weapon_BF \
        [ \
            [ \
                [Ger_Vest_PC], \
                [Ger_Mag_MP40,1], \
                [Ger_Weap_MP38], \
                [Ger_Mag_MP40,3,"vest"] \
            ],[60], \
            [ \
                [Ger_Vest_VCrew] \
            ],[20], \
            [ \
                [Ger_Vest_PC], \
                [Ger_Mag_MP40,1], \
                [Ger_Weap_MP38], \
                [Ger_Mag_MP40,3,"vest"] \
            ],[20] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

//For Kompanietruppführer and Zugtruppführer
#define WHR40_Weapon_TF \
        [ \
            [ \
                [Ger_Vest_SL], \
                [Ger_Mag_MP40,1], \
                [Ger_Weap_MP38], \
                [Ger_Mag_MP40,6,"vest"] \
            ],[60], \
            [ \
                [Ger_Vest_K98IFA], \
                [Ger_Mag_K98,1], \
                [Ger_Acc_K98_Bayo,1,"uniform"], \
                [Ger_Weap_K98_E], \
                [Ger_Mag_K98,12,"vest"] \
            ],[20], \
            [ \
                [Ger_Vest_PC], \
                [Ger_Mag_MP40,1], \
                [Ger_Weap_MP38], \
                [Ger_Mag_MP40,3,"vest"] \
            ],[20], \
            [ \
                [Ger_Vest_K98IFA], \
                [Ger_Mag_K98,1], \
                [Ger_Acc_K98_Bayo,1,"uniform"], \
                [Ger_Weap_K98], \
                [Ger_Mag_K98,12,"vest"] \
            ],[10] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

// For Gruppenführer
#define WHR40_Weapon_GF \
        [ \
            [ \
                [Ger_Vest_SL], \
                [Ger_Mag_MP40,1], \
                [Ger_Weap_MP38], \
                [Ger_Mag_MP40,6,"vest"] \
            ],[90], \
            [ \
                [Ger_Vest_K98IFA], \
                [Ger_Mag_K98,1], \
                [Ger_Acc_K98_Bayo,1,"uniform"], \
                [Ger_Weap_K98_E], \
                [Ger_Mag_K98,12,"vest"] \
            ],[20], \
            [ \
                [Ger_Vest_SL], \
                [Ger_Mag_MP40,1], \
                [Ger_Weap_MP38], \
                [Ger_Mag_MP40,6,"vest"] \
            ],[20], \
            [ \
                [Ger_Vest_K98IFA], \
                [Ger_Mag_K98,1], \
                [Ger_Acc_K98_Bayo,1,"uniform"], \
                [Ger_Weap_K98], \
                [Ger_Mag_K98,12,"vest"] \
            ],[10] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

// For Gefreiter
#define WHR40_Weapon_Gef \
        [ \
            [ \
                [Ger_Vest_MP40], \
                [Ger_Mag_MP40,1], \
                [Ger_Weap_MP38], \
                [Ger_Mag_MP40,6,"vest"] \
            ],[60], \
            [ \
                [Ger_Vest_K98], \
                [Ger_Mag_K98,1], \
                [Ger_Acc_K98_Bayo,1,"uniform"], \
                [Ger_Weap_K98_E], \
                [Ger_Mag_K98,12,"vest"] \
            ],[20], \
            [ \
                [Ger_Vest_MP40], \
                [Ger_Mag_MP40,1], \
                [Ger_Weap_MP38], \
                [Ger_Mag_MP40,6,"vest"] \
            ],[20], \
            [ \
                [Ger_Vest_K98], \
                [Ger_Mag_K98,1], \
                [Ger_Acc_K98_Bayo,1,"uniform"], \
                [Ger_Weap_K98], \
                [Ger_Mag_K98,12,"vest"] \
            ],[10] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

// For all men with rifles
#define WHR40_Weapon_Rifleman \
        [ \
            [ \
                [Ger_Mag_K98,1], \
                [Ger_Acc_K98_Bayo,1,"uniform"], \
                [Ger_Weap_K98_E], \
                [Ger_Mag_K98,12,"vest"] \
            ],[60], \
            [ \
                [Ger_Mag_K98,1], \
                [Ger_Acc_K98_Bayo,1,"uniform"], \
                [Ger_Weap_K98], \
                [Ger_Mag_K98,12,"vest"] \
            ],[40] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

//For Kompanieführer, Zugführer and Besatzungsführer
#define WHR40_Weapon_Officer_Secondary \
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
            ],[0.5] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

//For Kompanietruppführer, MG-Richtschütze, Mortar Truppführer, Mortar Granatwerferschützen,
//HMG Richtschütze, Panzerbüchse Richtschütze, Besatzung
#define WHR40_Weapon_Enlisted_Secondary \
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
            ],[0.5] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

//======================== Loadouts ========================

//Company HQ

    //Kompanieführer
    WHR40_CC = ["WHR40_CC", {
        params ["_unit"];

        [Ger_Uni_CC] call Olsen_FW_FNC_AddItem;
        [Ger_BP_Radio] call Olsen_FW_FNC_AddItem;
        [Ger_Hat_Officer] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment;
        GEN_Leader_Equipment;

        //Primary Weapon
        WHR40_Weapon_Officer;

        //Secondary Weapon
        WHR40_Weapon_Officer_Secondary;
    }];

    //Kompanietruppführer
    WHR40_C2 = ["WHR40_C2", {
        params ["_unit"];

        [Ger_Uni_SL] call Olsen_FW_FNC_AddItem;
        [Ger_Hat] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment;
        GEN_Leader_Equipment;

        //Primary Weapon
        WHR40_Weapon_TF;

        //Secondary Weapon
        WHR40_Weapon_Enlisted_Secondary;
    }];

//Platoon HQ

    //Zugführer
    WHR40_PC = ["WHR40_PC", {
        params ["_unit"];

        [Ger_Uni_PC] call Olsen_FW_FNC_AddItem;
        [Ger_Hat_Officer] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment;
        GEN_Leader_Equipment;

        //Primary Weapon
        WHR40_Weapon_Officer;

        //Secondary Weapon
        WHR40_Weapon_Officer_Secondary;
    }];

    //Zugtruppführer
    WHR40_P2 = ["WHR40_P2", {
        params ["_unit"];

        [Ger_Uni_SL] call Olsen_FW_FNC_AddItem;
        [Ger_BP_AF] call Olsen_FW_FNC_AddItem;
        [Ger_Hat] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment;
        GEN_Leader_Equipment;

        //Primary Weapon
        WHR40_Weapon_TF;

        //Extra
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_HE_SC,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Funker
    WHR40_RTO = ["WHR40_RTO", {
        params ["_unit"];

        [Ger_Uni_Rif_E_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Vest_K98] call Olsen_FW_FNC_AddItem;
        [Ger_BP_Radio] call Olsen_FW_FNC_AddItem;
        [Ger_Hat] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment;
        [GEN_Headset] call Olsen_FW_FNC_AddItem;

        //Primary Weapon
        WHR40_Weapon_Rifleman;
    }];

    //Melder
    WHR40_Mess = ["WHR40_Mess", {
        params ["_unit"];

        [Ger_Uni_Rif_E_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Vest_K98] call Olsen_FW_FNC_AddItem;
        [Ger_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment;

        //Primary Weapon
        WHR40_Weapon_Rifleman;

        //Extra
        [Ger_Gren_HE_SC,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Krankenträger
    WHR40_MedP = ["WHR40_MedP", {
        params ["_unit"];

        [Ger_Uni_Med] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_Med] call Olsen_FW_FNC_AddItem;
        [Ger_BP_Med] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment;

        //Primary Weapon
        WHR40_Weapon_Enlisted_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        GEN_MedicP_Equipment;
    }];

//Squad

    //Gruppenführer
    WHR40_SL = ["WHR40_SL", {
        params ["_unit"];

        [Ger_Uni_SL] call Olsen_FW_FNC_AddItem;
        [Ger_BP_AF] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment;
        GEN_Leader_Equipment;

        //Primary Weapon
        WHR40_Weapon_GF;

        //Extra
        [Ger_Gren_HE_SC,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_MG_50_Mixed_sS,1] call Olsen_FW_FNC_AddItem;
    }];

    //Stellvertretender Gruppenführer
    WHR40_S2 = ["WHR40_S2", {
        params ["_unit"];

        [Ger_Uni_S2_E] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_K98] call Olsen_FW_FNC_AddItem;
        [Ger_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment;
        [GEN_BinoG] call Olsen_FW_FNC_AddItem;

        //Primary Weapon
        WHR40_Weapon_Rifleman;

        //Extra
        [Ger_Gren_HE_SC,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_MG_50_Mixed_sS,1] call Olsen_FW_FNC_AddItem;
    }];

    //Gefreiter
    WHR40_S3 = ["WHR40_S3", {
        params ["_unit"];

        [Ger_Uni_S3_E] call Olsen_FW_FNC_AddItem;
        [Ger_BP_T34] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment;

        //Primary Weapon
        WHR40_Weapon_Gef;

        //Extra
        [Ger_Gren_HE_SC,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_MG_50_Mixed_sS,1] call Olsen_FW_FNC_AddItem;
    }];

    //MG-Richtschütze
    WHR40_MG = ["WHR40_MG", {
        params ["_unit"];

        [Ger_Uni_Rif_E_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Vest_MG] call Olsen_FW_FNC_AddItem;
        [Ger_BP_MG_D] call Olsen_FW_FNC_AddItem;
        [Ger_mg_neck] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment;

        //Secondary Weapon
        WHR40_Weapon_Enlisted_Secondary;

        //Primary Weapon
        [Ger_Mag_MG_50_Mixed_sS,1] call Olsen_FW_FNC_AddItem;
        [Ger_Weap_MG34] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_MG_50_Mixed_sS,5,"vest"] call Olsen_FW_FNC_AddItem;

        //Extra
        [Ger_Mag_MG_50_Mixed_sS,3] call Olsen_FW_FNC_AddItem;
    }];

    //MG-Hilfsschütze
    WHR40_MGA = ["WHR40_MGA", {
        params ["_unit"];

        [Ger_Uni_Rif_E_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Vest_MGA] call Olsen_FW_FNC_AddItem;
        [Ger_BP_MG_D] call Olsen_FW_FNC_AddItem;
        [Ger_mg_neck] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment;
        [GEN_ace_sparebarrel] call Olsen_FW_FNC_AddItem;

        //Primary Weapon
        WHR40_Weapon_Rifleman;

        //Extra
        [Ger_Mag_MG_50_Mixed_sS,3] call Olsen_FW_FNC_AddItem;
    }];

    //MG-Munitionsträger
    WHR40_MGAB = ["WHR40_MGAB", {
        params ["_unit"];

        [Ger_Uni_Rif_E_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Vest_K98] call Olsen_FW_FNC_AddItem;
        [Ger_BP_MG_D] call Olsen_FW_FNC_AddItem;
        [Ger_mg_neck] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment;

        //Primary Weapon
        WHR40_Weapon_Rifleman;

        //Extra
        [Ger_Mag_MG_50_Mixed_sS,5] call Olsen_FW_FNC_AddItem;
    }];

    //Grenadier
    WHR40_Gren = ["WHR40_Gren", {
        params ["_unit"];

        [Ger_Uni_Rif_E_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Vest_K98] call Olsen_FW_FNC_AddItem;
        [Ger_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment;

        //Primary Weapon
        WHR40_Weapon_Rifleman;

        //Extra
        [Ger_Acc_K98_GL,1,"vest"] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_RGrn_HE,4] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_RGrn_ATS,4] call Olsen_FW_FNC_AddItem;
    }];

    //Hilfs-Krankenträger
    WHR40_MedS = ["WHR40_MedS", {
        params ["_unit"];

        [Ger_Uni_Rif_E_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Vest_K98] call Olsen_FW_FNC_AddItem;
        [Ger_BP_Med] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment;
        GEN_MedicS_Equipment;

        //Primary Weapon
        WHR40_Weapon_Rifleman;

        //Extra
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_HE_SC,1] call Olsen_FW_FNC_AddItem;
    }];

    //Gewehrschütze
    WHR40_Rif = ["WHR40_Rif", {
        params ["_unit"];

        [Ger_Uni_Rif_E_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Vest_K98] call Olsen_FW_FNC_AddItem;
        [Ger_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment;

        //Primary Weapon
        WHR40_Weapon_Rifleman;

        //Extra
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_HE_SC,1] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_MG_50_Mixed_sS,1,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

//Weapon Truppen

    //Mortar Team
    //Mortar Truppführer
    WHR40_MortSL = ["WHR40_MortSL", {
        params ["_unit"];

        [Ger_Uni_S3_E] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_HGun] call Olsen_FW_FNC_AddItem;
        [Ger_BP_T34] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment;
        GEN_Mortar_Equipment;

        //Secondary Weapon
        WHR40_Weapon_Officer_Secondary;

        //Launcher
        [Ger_Weap_MortB,1] call Olsen_FW_FNC_AddItem;

        //Extra
        [Ger_Mag_Mort_HE,4] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Mortar Granatwerferschützen
    WHR40_MortG = ["WHR40_MortG", {
        params ["_unit"];

        [Ger_Uni_Rif_E_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Vest_HGun] call Olsen_FW_FNC_AddItem;
        [Ger_BP_T34] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment;
        GEN_Mortar_Equipment;

        //Secondary Weapon
        WHR40_Weapon_Officer_Secondary;

        //Launcher
        [Ger_Weap_MortT,1] call Olsen_FW_FNC_AddItem;

        //Extra
        [Ger_Mag_Mort_HE,4] call Olsen_FW_FNC_AddItem;
    }];

    //Mortar Munitionsträger
    WHR40_MortA = ["WHR40_MortA", {
        params ["_unit"];

        [Ger_Uni_Rif_E_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Vest_K98] call Olsen_FW_FNC_AddItem;
        [Ger_BP_T34] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment;
        GEN_Mortar_Equipment;

        //Primary Weapon
        WHR40_Weapon_Rifleman;

        //Extra
        [Ger_Mag_Mort_HE,4] call Olsen_FW_FNC_AddItem;
    }];

    //HMG Team
    //HMG Truppführer
    WHR40_HMGSL = ["WHR40_HMGSL", {
        params ["_unit"];

        [Ger_Uni_S3_E] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_MGA] call Olsen_FW_FNC_AddItem;
        [Ger_BP_MG_B] call Olsen_FW_FNC_AddItem;
        [Ger_mg_neck] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment;
        GEN_Leader_Equipment;
        [GEN_ace_sparebarrel] call Olsen_FW_FNC_AddItem;

        //Primary Weapon
        WHR40_Weapon_Rifleman;

        //Launcher
        [Ger_Weap_MG_T,1] call Olsen_FW_FNC_AddItem;

        //Extra
        [Ger_Mag_MG_250_Mixed_sS,2] call Olsen_FW_FNC_AddItem;
    }];

    //HMG Richtschütze
    WHR40_HMGG = ["WHR40_HMGG", {
        params ["_unit"];

        [Ger_Uni_Rif_E_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Vest_MG] call Olsen_FW_FNC_AddItem;
        [Ger_BP_MG_B] call Olsen_FW_FNC_AddItem;
        [Ger_mg_neck] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment;
        GEN_Leader_Equipment;

        //Secondary Weapon
        WHR40_Weapon_Officer_Secondary;

        //Primary Weapon
        [Ger_Mag_MG_250_Mixed_sS,1] call Olsen_FW_FNC_AddItem;
        [Ger_Weap_MG34] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_MG_250_Mixed_sS,1] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_MG_150_Mixed_sS,1] call Olsen_FW_FNC_AddItem;

        //Extra
        [Ger_Mag_MG_250_Mixed_sS,2] call Olsen_FW_FNC_AddItem;
    }];

    //HMG Munitionsträger
    WHR40_HMGA = ["WHR40_HMGA", {
        params ["_unit"];

        [Ger_Uni_Rif_E_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Vest_K98] call Olsen_FW_FNC_AddItem;
        [Ger_BP_MG_B] call Olsen_FW_FNC_AddItem;
        [Ger_mg_neck] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment;

        //Primary Weapon
        WHR40_Weapon_Rifleman;

        //Extra
        [Ger_Mag_MG_250_Mixed_sS,2] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_MG_150_Mixed_sS,1] call Olsen_FW_FNC_AddItem;
    }];

    //Panzerbüchse Team
    //Panzerbüchse Truppführer
    WHR40_ATRSL = ["WHR40_ATRSL", {
        params ["_unit"];

        [Ger_Uni_S3_E] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_K98] call Olsen_FW_FNC_AddItem;
        [Ger_BP_T34] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment;
        GEN_Leader_Equipment;

        //Primary Weapon
        WHR40_Weapon_Rifleman;

        //Extra
        [Ger_Mag_PzB39,20,"backpack"] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Panzerbüchse Richtschütze
    WHR40_ATRG = ["WHR40_ATRG", {
        params ["_unit"];

        [Ger_Uni_Rif_E_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Vest_MG] call Olsen_FW_FNC_AddItem;
        [Ger_BP_T34] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment;
        GEN_Leader_Equipment;

        //Secondary Weapon
        WHR40_Weapon_Officer_Secondary;

        //Primary Weapon
        [Ger_Mag_PzB39,1] call Olsen_FW_FNC_AddItem;
        [Ger_Weap_PzB39] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_PzB39,20] call Olsen_FW_FNC_AddItem;
    }];

    //Panzerbüchse Munitionsträger
    WHR40_ATRAB = ["WHR40_ATRAB", {
        params ["_unit"];

        [Ger_Uni_Rif_E_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Vest_K98] call Olsen_FW_FNC_AddItem;
        [Ger_BP_T34] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment;

        //Primary Weapon
        WHR40_Weapon_Rifleman;

        //Extra
        [Ger_Mag_PzB39,20,"backpack"] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
    }];

//Tank Crew

    //Besatzungsführer
    WHR40_VCom = ["WHR40_VCom", {
        params ["_unit"];

        [Ger_Uni_VCom] call Olsen_FW_FNC_AddItem;
        [Ger_BP_VCrew] call Olsen_FW_FNC_AddItem;
        [Ger_Hat_VCom_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_Tank_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment;
        GEN_Leader_Equipment;

        //Primary Weapon
        WHR40_Weapon_BF;

        //Secondary Weapon
        WHR40_Weapon_Officer_Secondary;
    }];

    //Besatzung
    WHR40_VCrew = ["WHR40_VCrew", {
        params ["_unit"];

        [Ger_Uni_VCrew] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_VCrew] call Olsen_FW_FNC_AddItem;
        [Ger_BP_VCrew] call Olsen_FW_FNC_AddItem;
        [Ger_Hat_VCrew_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_Tank_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment;

        //Secondary Weapon
        WHR40_Weapon_Officer_Secondary;

        //Extra
        [GEN_Toolkit] call Olsen_FW_FNC_AddItem;
    }];
