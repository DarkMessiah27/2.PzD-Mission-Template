// Info: German Wehrmacht 1944 Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use Olsen_FW_FNC_AddItemRandom

/*Loadouts

    //Zugtrupp
[this, WHR44_PC] call Olsen_FW_FNC_GearScript;        Zugführer
[this, WHR44_P2] call Olsen_FW_FNC_GearScript;        Zugtruppführer
[this, WHR44_RTO] call Olsen_FW_FNC_GearScript;       Funker
[this, WHR44_Mess] call Olsen_FW_FNC_GearScript;      Melder
[this, WHR44_MedP] call Olsen_FW_FNC_GearScript;      Krankenträger

    //Gruppe
[this, WHR44_SL] call Olsen_FW_FNC_GearScript;        Gruppenführer
[this, WHR44_S2] call Olsen_FW_FNC_GearScript;        Stellvertretender Gruppenführer
[this, WHR44_S3] call Olsen_FW_FNC_GearScript;        Gefreiter
[this, WHR44_MG] call Olsen_FW_FNC_GearScript;        MG-Richtschütze
[this, WHR44_MGA] call Olsen_FW_FNC_GearScript;       MG-Hilfsschütze
[this, WHR44_Gren] call Olsen_FW_FNC_GearScript;      Grenadier
[this, WHR44_MedS] call Olsen_FW_FNC_GearScript;      Hilfs-Krankenträger
[this, WHR44_Rif] call Olsen_FW_FNC_GearScript;       Gewehrschütze

    //Weapon Truppen
[this, WHR44_HMGSL] call Olsen_FW_FNC_GearScript;     HMG Truppführer
[this, WHR44_HMGG] call Olsen_FW_FNC_GearScript;      HMG Richtschütze
[this, WHR44_HMGA] call Olsen_FW_FNC_GearScript;      HMG Munitionsträger

[this, WHR44_ATSL] call Olsen_FW_FNC_GearScript;      Panzerschreck Truppführer
[this, WHR44_ATG] call Olsen_FW_FNC_GearScript;       Panzerschreck Richtschütze
[this, WHR44_ATA] call Olsen_FW_FNC_GearScript;       Panzerschreck Munitionsträger

    //Tank Crew
[this, WHR44_VCom] call Olsen_FW_FNC_GearScript;      Besatzungsführer
[this, WHR44_VCrew] call Olsen_FW_FNC_GearScript;     Besatzung
*/

//======================== Definitions ========================

#define WHR44_Weapon_SMG \
        [Ger_Mag_MP40,1] call Olsen_FW_FNC_AddItem; \
        [Ger_Weap_MP40] call Olsen_FW_FNC_AddItem; \
        [Ger_Mag_MP40,6,"vest"] call Olsen_FW_FNC_AddItem;

#define WHR44_Weapon_Rifleman \
        [ \
            [ \
                [Ger_Vest_K98], \
                [Ger_Mag_K98,1], \
                [Ger_Acc_K98_Bayo,1,"uniform"], \
                [Ger_Weap_K98], \
                [Ger_Mag_K98,12,"vest"] \
            ],[50], \
            [ \
                [Ger_Vest_G43], \
                [Ger_Mag_G43,1], \
                [Ger_Weap_G43], \
                [Ger_Mag_G43,6,"vest"] \
            ],[30], \
            [ \
                [Ger_Vest_StG44], \
                [Ger_Mag_StG44,1], \
                [Ger_Weap_StG44], \
                [Ger_Mag_StG44,6,"vest"] \
            ],[20] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

#define WHR44_Weapon_MG \
        [Ger_Mag_MG_50_Mixed_SmE,1] call Olsen_FW_FNC_AddItem; \
        [Ger_Weap_MG42] call Olsen_FW_FNC_AddItem; \
        [Ger_Mag_MG_50_Mixed_SmE,5,"vest"] call Olsen_FW_FNC_AddItem;

#define WHR44_Weapon_Grenadier \
        [ \
            [ \
                [Ger_Vest_K98], \
                [Ger_Mag_K98,1], \
                [Ger_Acc_K98_Bayo,1,"uniform"], \
                [Ger_Weap_K98], \
                [Ger_Acc_K98_GL,1,"vest"], \
                [Ger_Mag_K98,12,"vest"], \
                [Ger_Mag_RGrn_HE,4], \
                [Ger_Mag_RGrn_ATL,4] \
            ],[80], \
            [ \
                [Ger_Vest_StG44], \
                [Ger_Mag_StG44,1], \
                [Ger_Weap_StG44], \
                [Ger_Acc_K98_GL,1,"vest"], \
                [Ger_Mag_StG44,6,"vest"], \
                [Ger_Mag_RGrn_HE,4], \
                [Ger_Mag_RGrn_ATL,4] \
            ],[20] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

#define WHR44_Weapon_Secondary \
        [Ger_Mag_P38,1] call Olsen_FW_FNC_AddItem; \
        [Ger_Weap_P38] call Olsen_FW_FNC_AddItem; \
        [Ger_Mag_P38,1,"uniform"] call Olsen_FW_FNC_AddItem;

//======================== Loadouts ========================

//Platoon HQ

    //Zugführer
    WHR44_PC = ["WHR44_PC", {
        params ["_unit"];

        [Ger_Uni_PC] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_PC] call Olsen_FW_FNC_AddItem;
        [Ger_Hat_Officer] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon
        WHR44_Weapon_SMG;

        //Secondary Weapon
        WHR44_Weapon_Secondary;

        //Extra
        [Ger_Gren_Frag_M24,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,2] call Olsen_FW_FNC_AddItem;
    }];

    //Zugtruppführer
    WHR44_P2 = ["WHR44_P2", {
        params ["_unit"];

        [Ger_Uni_SL] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_SL] call Olsen_FW_FNC_AddItem;
        [Ger_BP_AF] call Olsen_FW_FNC_AddItem;
        [Ger_Hat] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon
        WHR44_Weapon_SMG;

        //Extra
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Frag_M24,2] call Olsen_FW_FNC_AddItem;
    }];

    //Funker
    WHR44_RTO = ["WHR44_RTO", {
        params ["_unit"];

        [Ger_Uni_Rif_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_BP_Radio] call Olsen_FW_FNC_AddItem;
        [Ger_Hat] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        [GEN_Headset] call Olsen_FW_FNC_AddItem;

        //Primary Weapon
        WHR44_Weapon_Rifleman;
    }];

    //Melder
    WHR44_Mess = ["WHR44_Mess", {
        params ["_unit"];

        [Ger_Uni_Rif_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        WHR44_Weapon_Rifleman;

        //Extra
        [Ger_Gren_Frag_M24,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Krankenträger
    WHR44_MedP = ["WHR44_MedP", {
        params ["_unit"];

        [Ger_Uni_Med] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_Med] call Olsen_FW_FNC_AddItem;
        [Ger_BP_Med] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Secondary Weapon
        WHR44_Weapon_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        GEN_MedicP_Equipment_Set;
    }];

//Squad

    //Gruppenführer
    WHR44_SL = ["WHR44_SL", {
        params ["_unit"];

        [Ger_Uni_SL] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_SL] call Olsen_FW_FNC_AddItem;
        [Ger_BP_AF] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon
        WHR44_Weapon_SMG;

        //Extra
        [Ger_Gren_Frag_M24,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_MG_50_Mixed_SmE,1] call Olsen_FW_FNC_AddItem;
    }];

    //Stellvertretender Gruppenführer
    WHR44_S2 = ["WHR44_S2", {
        params ["_unit"];

        [Ger_Uni_S2_L] call Olsen_FW_FNC_AddItem;
        [Ger_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        [GEN_BinoG] call Olsen_FW_FNC_AddItem;

        //Primary Weapon
        WHR44_Weapon_Rifleman;

        //Extra
        [Ger_Gren_Frag_M24,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_MG_50_Mixed_SmE,1] call Olsen_FW_FNC_AddItem;
    }];

    //Gefreiter
    WHR44_S3 = ["WHR44_S3", {
        params ["_unit"];

        [Ger_Uni_S3_L] call Olsen_FW_FNC_AddItem;
        [Ger_BP_T34] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        WHR44_Weapon_SMG;

        //Extra
        [Ger_Gren_Frag_M24,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_MG_50_Mixed_SmE,1] call Olsen_FW_FNC_AddItem;
    }];

    //MG-Richtschütze
    WHR44_MG = ["WHR44_MG", {
        params ["_unit"];

        [Ger_Uni_Rif_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Vest_MG] call Olsen_FW_FNC_AddItem;
        [Ger_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Secondary Weapon
        WHR44_Weapon_Secondary;

        //Primary Weapon
        WHR44_Weapon_MG;

        //Extra
        [Ger_Mag_MG_50_Mixed_SmE,3] call Olsen_FW_FNC_AddItem;
    }];

    //MG-Hilfsschütze
    WHR44_MGA = ["WHR44_MGA", {
        params ["_unit"];

        [Ger_Uni_Rif_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        [GEN_ace_sparebarrel] call Olsen_FW_FNC_AddItem;

        //Primary Weapon
        WHR44_Weapon_Rifleman;

        //Extra
        [Ger_Mag_MG_50_Mixed_SmE,3] call Olsen_FW_FNC_AddItem;
    }];

    //Grenadier
    WHR44_Gren = ["WHR44_Gren", {
        params ["_unit"];

        [Ger_Uni_Rif_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        WHR44_Weapon_Grenadier;
    }];

    //Hilfs-Krankenträger
    WHR44_MedS = ["WHR44_MedS", {
        params ["_unit"];

        [Ger_Uni_Rif_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_BP_Med] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_MedicS_Equipment_Set;

        //Primary Weapon
        WHR44_Weapon_Rifleman;

        //Extra
        [Ger_Gren_Frag_M24,2] call Olsen_FW_FNC_AddItem;
    }];

    //Gewehrschütze
    WHR44_Rif = ["WHR44_Rif", {
        params ["_unit"];

        [Ger_Uni_Rif_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        WHR44_Weapon_Rifleman;

        //Launcher
        [Ger_Weap_PzFaust_60] call Olsen_FW_FNC_AddItem;;

        //Extra
        [Ger_Gren_Frag_M24,2] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_MG_50_Mixed_SmE,3,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

//Weapon Truppen

    //HMG Team
    //HMG Truppführer
    WHR44_HMGSL = ["WHR44_HMGSL", {
        params ["_unit"];

        [Ger_Uni_S3_L] call Olsen_FW_FNC_AddItem;
        [Ger_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;
        [GEN_ace_sparebarrel] call Olsen_FW_FNC_AddItem;

        //Primary Weapon
        WHR44_Weapon_Rifleman;

        //Launcher
        [Ger_Weap_MG_T,1] call Olsen_FW_FNC_AddItem;

        //Extra
        [Ger_Mag_MG_50_Mixed_SmE,10] call Olsen_FW_FNC_AddItem;
    }];

    //HMG Richtschütze
    WHR44_HMGG = ["WHR44_HMGG", {
        params ["_unit"];

        [Ger_Uni_Rif_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Vest_MG] call Olsen_FW_FNC_AddItem;
        [Ger_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Secondary Weapon
        WHR44_Weapon_Secondary;

        //Primary Weapon
        [Ger_Mag_MG_50_Mixed_SmE,5] call Olsen_FW_FNC_AddItem;
        WHR44_Weapon_MG;
        [Ger_Mag_MG_50_Mixed_SmE,5] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_MG_50_Mixed_SmE,3] call Olsen_FW_FNC_AddItem;

        //Extra
        [Ger_Mag_MG_50_Mixed_SmE,10] call Olsen_FW_FNC_AddItem;
    }];

    //HMG Munitionsträger
    WHR44_HMGA = ["WHR44_HMGA", {
        params ["_unit"];

        [Ger_Uni_Rif_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        WHR44_Weapon_Rifleman;

        //Extra
        [Ger_Mag_MG_50_Mixed_SmE,10] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_MG_50_Mixed_SmE,3] call Olsen_FW_FNC_AddItem;
    }];

    //Panzerschreck Team
    //Panzerschreck Truppführer
    WHR44_ATSL = ["WHR44_ATSL", {
        params ["_unit"];

        [Ger_Uni_S3_L] call Olsen_FW_FNC_AddItem;
        [Ger_BP_Pzr] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        WHR44_Weapon_SMG;

        //Extra
        [Ger_Mag_Pzschrck,5] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Panzerschreck Richtschütze
    WHR44_ATG = ["WHR44_ATG", {
        params ["_unit"];

        [Ger_Uni_Rif_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Vest_HGun] call Olsen_FW_FNC_AddItem;
        [Ger_BP_Pzr] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Secondary Weapon
        WHR44_Weapon_Secondary;

        //Launcher
        [Ger_Weap_Pzschrck] call Olsen_FW_FNC_AddItem;

        //Extra
        [Ger_Mag_Pzschrck,5] call Olsen_FW_FNC_AddItem;
    }];

    //Panzerschreck Munitionsträger
    WHR44_ATA = ["WHR44_ATA", {
        params ["_unit"];

        [Ger_Uni_Rif_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_BP_Pzr] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        WHR44_Weapon_Rifleman;

        //Extra
        [Ger_Mag_Pzschrck,5] call Olsen_FW_FNC_AddItem;
    }];

//Tank Crew

    //Besatzungsführer
    WHR44_VCom = ["WHR44_VCom", {
        params ["_unit"];

        [Ger_Uni_VCom] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_PC] call Olsen_FW_FNC_AddItem;
        [Ger_BP_VCrew] call Olsen_FW_FNC_AddItem;
        [Ger_Hat_VCom_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_Tank_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon
        WHR44_Weapon_SMG;

        //Secondary Weapon
        WHR44_Weapon_Secondary;
    }];

    //Besatzung
    WHR44_VCrew = ["WHR44_VCrew", {
        params ["_unit"];

        [Ger_Uni_VCrew] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_VCrew] call Olsen_FW_FNC_AddItem;
        [Ger_BP_VCrew] call Olsen_FW_FNC_AddItem;
        [Ger_Hat_VCrew_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_Tank_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Secondary Weapon
        WHR44_Weapon_Secondary;

        //Extra
        [GEN_Toolkit] call Olsen_FW_FNC_AddItem;
    }];
