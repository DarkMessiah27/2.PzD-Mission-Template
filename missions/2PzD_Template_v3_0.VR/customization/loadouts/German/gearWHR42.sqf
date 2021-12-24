// Info: German Wehrmacht 1942 Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use Olsen_FW_FNC_AddItemRandom

/*Loadouts

    //Zugtrupp
[this, WHR42_PC] call Olsen_FW_FNC_GearScript;        Zugführer
[this, WHR42_P2] call Olsen_FW_FNC_GearScript;        Zugtruppführer
[this, WHR42_RTO] call Olsen_FW_FNC_GearScript;       Funker
[this, WHR42_Mess] call Olsen_FW_FNC_GearScript;      Melder
[this, WHR42_MedP] call Olsen_FW_FNC_GearScript;      Krankenträger

    //Gruppe
[this, WHR42_SL] call Olsen_FW_FNC_GearScript;        Gruppenführer
[this, WHR42_S2] call Olsen_FW_FNC_GearScript;        Stellvertretender Gruppenführer
[this, WHR42_S3] call Olsen_FW_FNC_GearScript;        Gefreiter
[this, WHR42_MG] call Olsen_FW_FNC_GearScript;        MG-Richtschütze
[this, WHR42_MGA] call Olsen_FW_FNC_GearScript;       MG-Hilfsschütze
[this, WHR42_Gren] call Olsen_FW_FNC_GearScript;      Grenadier
[this, WHR42_MedS] call Olsen_FW_FNC_GearScript;      Hilfs-Krankenträger
[this, WHR42_Rif] call Olsen_FW_FNC_GearScript;       Gewehrschütze

[this, WHR42_HMGSL] call Olsen_FW_FNC_GearScript;     HMG Truppführer
[this, WHR42_HMGG] call Olsen_FW_FNC_GearScript;      HMG Richtschütze
[this, WHR42_HMGA] call Olsen_FW_FNC_GearScript;      HMG Munitionsträger

    //Tank Crew
[this, WHR42_VCom] call Olsen_FW_FNC_GearScript;      Besatzungsführer
[this, WHR42_VCrew] call Olsen_FW_FNC_GearScript;     Besatzung
*/

//======================== Definitions ========================

#define WHR42_Weapon_SMG \
        [Ger_Mag_MP40,1] call Olsen_FW_FNC_AddItem; \
        [Ger_Weap_MP40] call Olsen_FW_FNC_AddItem; \
        [Ger_Mag_MP40,6,"vest"] call Olsen_FW_FNC_AddItem;

#define WHR42_Weapon_Rifleman \
        [Ger_Mag_K98,1] call Olsen_FW_FNC_AddItem; \
        [Ger_Acc_K98_Bayo,1,"uniform"] call Olsen_FW_FNC_AddItem; \
        [Ger_Weap_K98] call Olsen_FW_FNC_AddItem; \
        [Ger_Mag_K98,12,"vest"] call Olsen_FW_FNC_AddItem;

#define WHR42_Weapon_MG \
        [ \
            [ \
                [Ger_Mag_MG_50_Mixed_SmE,1], \
                [Ger_Weap_MG34], \
                [Ger_Mag_MG_50_Mixed_SmE,5,"vest"] \
            ],[50], \
            [ \
                [Ger_Mag_MG_50_Mixed_SmE,1], \
                [Ger_Weap_MG42], \
                [Ger_Mag_MG_50_Mixed_SmE,5,"vest"] \
            ],[50] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

#define WHR42_Weapon_Grenadier \
        [Ger_Mag_K98,1] call Olsen_FW_FNC_AddItem; \
        [Ger_Acc_K98_Bayo,1,"uniform"] call Olsen_FW_FNC_AddItem; \
        [Ger_Weap_K98] call Olsen_FW_FNC_AddItem; \
        [Ger_Acc_K98_GL,1,"vest"] call Olsen_FW_FNC_AddItem; \
        [Ger_Mag_K98,12,"vest"] call Olsen_FW_FNC_AddItem; \
        [Ger_Mag_RGrn_HE,4] call Olsen_FW_FNC_AddItem; \
        [Ger_Mag_RGrn_ATL,4] call Olsen_FW_FNC_AddItem;

#define WHR42_Weapon_Secondary \
        [Ger_Mag_P38,1] call Olsen_FW_FNC_AddItem; \
        [Ger_Weap_P38] call Olsen_FW_FNC_AddItem; \
        [Ger_Mag_P38,1,"uniform"] call Olsen_FW_FNC_AddItem;

//======================== Loadouts ========================

//Platoon HQ

    //Zugführer
    WHR42_PC = ["WHR42_PC", {
        params ["_unit"];

        [Ger_Uni_PC] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_PC] call Olsen_FW_FNC_AddItem;
        [Ger_Hat_Officer] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon
        WHR42_Weapon_SMG;

        //Secondary Weapon
        WHR42_Weapon_Secondary;

        //Extra
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,2] call Olsen_FW_FNC_AddItem;
    }];

    //Zugtruppführer
    WHR42_P2 = ["WHR42_P2", {
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
        WHR42_Weapon_SMG;

        //Extra
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Frag_P,2] call Olsen_FW_FNC_AddItem;
    }];

    //Funker
    WHR42_RTO = ["WHR42_RTO", {
        params ["_unit"];

        [Ger_Uni_Rif_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Vest_K98] call Olsen_FW_FNC_AddItem;
        [Ger_BP_Radio] call Olsen_FW_FNC_AddItem;
        [Ger_Hat] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        [GEN_Headset] call Olsen_FW_FNC_AddItem;

        //Primary Weapon
        WHR42_Weapon_Rifleman;
    }];

    //Melder
    WHR42_Mess = ["WHR42_Mess", {
        params ["_unit"];

        [Ger_Uni_Rif_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Vest_K98] call Olsen_FW_FNC_AddItem;
        [Ger_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        WHR42_Weapon_Rifleman;

        //Extra
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Krankenträger
    WHR42_MedP = ["WHR42_MedP", {
        params ["_unit"];

        [Ger_Uni_Med] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_Med] call Olsen_FW_FNC_AddItem;
        [Ger_BP_Med] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Secondary Weapon
        WHR42_Weapon_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        GEN_MedicP_Equipment_Set;
    }];

//Squad

    //Gruppenführer
    WHR42_SL = ["WHR42_SL", {
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
        WHR42_Weapon_SMG;

        //Extra
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_MG_50_Mixed_SmE,1] call Olsen_FW_FNC_AddItem;
    }];

    //Stellvertretender Gruppenführer
    WHR42_S2 = ["WHR42_S2", {
        params ["_unit"];

        [Ger_Uni_S2_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Vest_K98] call Olsen_FW_FNC_AddItem;
        [Ger_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        [GEN_BinoG] call Olsen_FW_FNC_AddItem;

        //Primary Weapon
        WHR42_Weapon_Rifleman;

        //Extra
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_MG_50_Mixed_SmE,1] call Olsen_FW_FNC_AddItem;
    }];

    //Gefreiter
    WHR42_S3 = ["WHR42_S3", {
        params ["_unit"];

        [Ger_Uni_S2_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Vest_MP40] call Olsen_FW_FNC_AddItem;
        [Ger_BP_T34] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        WHR42_Weapon_SMG;

        //Extra
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_MG_50_Mixed_SmE,1] call Olsen_FW_FNC_AddItem;
    }];

    //MG-Richtschütze
    WHR42_MG = ["WHR42_MG", {
        params ["_unit"];

        [Ger_Uni_Rif_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Vest_MG] call Olsen_FW_FNC_AddItem;
        [Ger_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Secondary Weapon
        WHR42_Weapon_Secondary;

        //Primary Weapon
        WHR42_Weapon_MG;

        //Extra
        [Ger_Mag_MG_50_Mixed_SmE,3] call Olsen_FW_FNC_AddItem;
    }];

    //MG-Hilfsschütze
    WHR42_MGA = ["WHR42_MGA", {
        params ["_unit"];

        [Ger_Uni_Rif_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Vest_K98] call Olsen_FW_FNC_AddItem;
        [Ger_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        [GEN_ace_sparebarrel] call Olsen_FW_FNC_AddItem;

        //Primary Weapon
        WHR42_Weapon_Rifleman;

        //Extra
        [Ger_Mag_MG_50_Mixed_SmE,3] call Olsen_FW_FNC_AddItem;
    }];

    //Grenadier
    WHR42_Gren = ["WHR42_Gren", {
        params ["_unit"];

        [Ger_Uni_Rif_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Vest_K98] call Olsen_FW_FNC_AddItem;
        [Ger_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        WHR42_Weapon_Grenadier;

        //Extra
        [Ger_Gren_Frag_P,2] call Olsen_FW_FNC_AddItem;
    }];

    //Hilfs-Krankenträger
    WHR42_MedS = ["WHR42_MedS", {
        params ["_unit"];

        [Ger_Uni_Rif_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Vest_K98] call Olsen_FW_FNC_AddItem;
        [Ger_BP_Med] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_MedicS_Equipment_Set;

        //Primary Weapon
        WHR42_Weapon_Rifleman;

        //Extra
        [Ger_Gren_Frag_P,2] call Olsen_FW_FNC_AddItem;
    }];

    //Gewehrschütze
    WHR42_Rif = ["WHR42_Rif", {
        params ["_unit"];

        [Ger_Uni_Rif_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Vest_K98] call Olsen_FW_FNC_AddItem;
        [Ger_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        WHR42_Weapon_Rifleman;

        //Extra
        [Ger_Gren_Frag_P,2] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_MG_50_Mixed_SmE,2,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

//Weapon Truppen

    //HMG Team
    //HMG Truppführer
    WHR42_HMGSL = ["WHR42_HMGSL", {
        params ["_unit"];

        [Ger_Uni_S3_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Vest_K98] call Olsen_FW_FNC_AddItem;
        [Ger_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;
        [GEN_ace_sparebarrel] call Olsen_FW_FNC_AddItem;

        //Primary Weapon
        WHR42_Weapon_Rifleman;

        //Launcher
        [Ger_Weap_MG_T,1] call Olsen_FW_FNC_AddItem;

        //Extra
        [Ger_Mag_MG_50_Mixed_SmE,2] call Olsen_FW_FNC_AddItem;
    }];

    //HMG Richtschütze
    WHR42_HMGG = ["WHR42_HMGG", {
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
        WHR42_Weapon_Secondary;

        //Primary Weapon
        [Ger_Mag_MG_50_Mixed_SmE,5] call Olsen_FW_FNC_AddItem;
        WHR42_Weapon_MG;
        [Ger_Mag_MG_50_Mixed_SmE,5] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_MG_50_Mixed_SmE,3] call Olsen_FW_FNC_AddItem;

        //Extra
        [Ger_Mag_MG_50_Mixed_SmE,10] call Olsen_FW_FNC_AddItem;
    }];

    //HMG Munitionsträger
    WHR42_HMGA = ["WHR42_HMGA", {
        params ["_unit"];

        [Ger_Uni_Rif_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Vest_K98] call Olsen_FW_FNC_AddItem;
        [Ger_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        WHR42_Weapon_Rifleman;

        //Extra
        [Ger_Mag_MG_50_Mixed_SmE,10] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_MG_50_Mixed_SmE,3] call Olsen_FW_FNC_AddItem;
    }];

//Tank Crew

    //Besatzungsführer
    WHR42_VCom = ["WHR42_VCom", {
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
        WHR42_Weapon_SMG;

        //Secondary Weapon
        WHR42_Weapon_Secondary;
    }];

    //Besatzung
    WHR42_VCrew = ["WHR42_VCrew", {
        params ["_unit"];

        [Ger_Uni_VCrew] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_VCrew] call Olsen_FW_FNC_AddItem;
        [Ger_BP_VCrew] call Olsen_FW_FNC_AddItem;
        [Ger_Hat_VCrew_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_Tank_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Secondary Weapon
        WHR42_Weapon_Secondary;

        //Extra
        [GEN_Toolkit] call Olsen_FW_FNC_AddItem;
    }];
