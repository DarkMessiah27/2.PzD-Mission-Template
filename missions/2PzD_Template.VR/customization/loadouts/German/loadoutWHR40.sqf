// Info: German Wehrmacht 1940 Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use Olsen_FW_FNC_AddItemRandom

/*Loadouts

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
[this, WHR40_Gren] call Olsen_FW_FNC_GearScript;      Grenadier
[this, WHR40_MedS] call Olsen_FW_FNC_GearScript;      Hilfs-Krankenträger
[this, WHR40_Rif] call Olsen_FW_FNC_GearScript;       Gewehrschütze

    //Weapon Truppen
[this, WHR40_HMGSL] call Olsen_FW_FNC_GearScript;     HMG Truppführer
[this, WHR40_HMGG] call Olsen_FW_FNC_GearScript;      HMG Richtschütze
[this, WHR40_HMGA] call Olsen_FW_FNC_GearScript;      HMG Munitionsträger

    //Recon
[this, WHR40_RCTL] call Olsen_FW_FNC_GearScript;      Recon Truppführer
[this, WHR40_RCTS] call Olsen_FW_FNC_GearScript;      Recon Scharfschütze

    //Tank Crew
[this, WHR40_VCom] call Olsen_FW_FNC_GearScript;      Besatzungsführer
[this, WHR40_VCrew] call Olsen_FW_FNC_GearScript;     Besatzung
*/

//======================== Definitions ========================

#define WHR40_Weapon_Leader \
        [ \
            [ \
                [Ger_Vest_PC], \
                [Ger_Mag_MP40,1], \
                [Ger_Weap_MP38], \
                [Ger_Mag_MP40,6,"vest"] \
            ],[65], \
            [ \
                [Ger_Vest_PC], \
                [Ger_Mag_MP40,1], \
                [Ger_Weap_MP40], \
                [Ger_Mag_MP40,6,"vest"] \
            ],[35] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

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

#define WHR40_Weapon_MG \
        [Ger_Mag_MG_50_Mixed_sS,1] call Olsen_FW_FNC_AddItem; \
        [Ger_Weap_MG34] call Olsen_FW_FNC_AddItem; \
        [Ger_Mag_MG_50_Mixed_sS,5,"vest"] call Olsen_FW_FNC_AddItem;

#define WHR40_Weapon_Secondary \
        [Ger_Mag_P08,1] call Olsen_FW_FNC_AddItem; \
        [Ger_Weap_P08] call Olsen_FW_FNC_AddItem; \
        [Ger_Mag_P08,1,"uniform"] call Olsen_FW_FNC_AddItem;

#define WHR40_Recon_Primary \
        [Ger_Mag_K98,1] call Olsen_FW_FNC_AddItem; \
        [Ger_Weap_K98_Zf39] call Olsen_FW_FNC_AddItem; \
        [Ger_Mag_K98,12] call Olsen_FW_FNC_AddItem;

//======================== Loadouts ========================

//Platoon HQ

    //Zugführer
    WHR40_PC = ["WHR40_PC", {
        params ["_unit"];

        [Ger_Uni_PC] call Olsen_FW_FNC_AddItem;
        [Ger_Hat_Officer] call Olsen_FW_FNC_AddItem;
        [Ger_BP_Radio] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon
        WHR40_Weapon_Leader;

        //Secondary Weapon
        WHR40_Weapon_Secondary;
        
        //Extra
        [Ger_Gren_Frag_M24,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,2] call Olsen_FW_FNC_AddItem;
    }];

    //Zugtruppführer
    WHR40_P2 = ["WHR40_P2", {
        params ["_unit"];

        [Ger_Uni_SL] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_K98] call Olsen_FW_FNC_AddItem;
        [Ger_BP_AF] call Olsen_FW_FNC_AddItem;
        [Ger_Hat] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon
        WHR40_Weapon_Rifleman;

        //Extra
        [Ger_Gren_Frag_M24,2] call Olsen_FW_FNC_AddItem;
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
        GEN_Default_Equipment_Set;
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
        GEN_Default_Equipment_Set;

        //Primary Weapon
        WHR40_Weapon_Rifleman;

        //Extra
        [Ger_Gren_Frag_M24,1] call Olsen_FW_FNC_AddItem;
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
        GEN_Default_Equipment_Set;

        //Primary Weapon
        WHR40_Weapon_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        GEN_MedicP_Equipment_Set;
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
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon
        WHR40_Weapon_Leader;

        //Extra
        [Ger_Gren_Frag_M24,1] call Olsen_FW_FNC_AddItem;
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
        GEN_Default_Equipment_Set;
        [GEN_BinoG] call Olsen_FW_FNC_AddItem;

        //Primary Weapon
        WHR40_Weapon_Rifleman;

        //Extra
        [Ger_Gren_Frag_M24,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_MG_50_Mixed_sS,1] call Olsen_FW_FNC_AddItem;
    }];

    //Gefreiter
    WHR40_S3 = ["WHR40_S3", {
        params ["_unit"];

        [Ger_Uni_S3_E] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_K98] call Olsen_FW_FNC_AddItem;
        [Ger_BP_T34] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        WHR40_Weapon_Rifleman;

        //Extra
        [Ger_Gren_Frag_M24,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_MG_50_Mixed_sS,1] call Olsen_FW_FNC_AddItem;
    }];

    //MG-Richtschütze
    WHR40_MG = ["WHR40_MG", {
        params ["_unit"];

        [Ger_Uni_Rif_E_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Vest_MG] call Olsen_FW_FNC_AddItem;
        [Ger_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Secondary Weapon
        WHR40_Weapon_Secondary;

        //Primary Weapon
        WHR40_Weapon_MG;

        //Extra
        [Ger_Mag_MG_50_Mixed_sS,3] call Olsen_FW_FNC_AddItem;
    }];

    //MG-Hilfsschütze
    WHR40_MGA = ["WHR40_MGA", {
        params ["_unit"];

        [Ger_Uni_Rif_E_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Vest_K98] call Olsen_FW_FNC_AddItem;
        [Ger_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        [GEN_ace_sparebarrel] call Olsen_FW_FNC_AddItem;

        //Primary Weapon
        WHR40_Weapon_Rifleman;

        //Extra
        [Ger_Mag_MG_50_Mixed_sS,3] call Olsen_FW_FNC_AddItem;
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
        GEN_Default_Equipment_Set;

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
        GEN_Default_Equipment_Set;
        GEN_MedicS_Equipment_Set;

        //Primary Weapon
        WHR40_Weapon_Rifleman;

        //Extra
        [Ger_Gren_Frag_M24,2] call Olsen_FW_FNC_AddItem;
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
        GEN_Default_Equipment_Set;

        //Primary Weapon
        WHR40_Weapon_Rifleman;

        //Extra
        [Ger_Gren_Frag_M24,2] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_MG_50_Mixed_sS,1,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

//Weapon Truppen

    //HMG Team
    //HMG Truppführer
    WHR40_HMGSL = ["WHR40_HMGSL", {
        params ["_unit"];

        [Ger_Uni_S3_E] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_K98] call Olsen_FW_FNC_AddItem;
        [Ger_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;
        [GEN_ace_sparebarrel] call Olsen_FW_FNC_AddItem;

        //Primary Weapon
        WHR40_Weapon_Rifleman;

        //Launcher
        [Ger_Weap_MG_T,1] call Olsen_FW_FNC_AddItem;

        //Extra
        [Ger_Mag_MG_50_Mixed_sS,10] call Olsen_FW_FNC_AddItem;
    }];

    //HMG Richtschütze
    WHR40_HMGG = ["WHR40_HMGG", {
        params ["_unit"];

        [Ger_Uni_Rif_E_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Vest_MG] call Olsen_FW_FNC_AddItem;
        [Ger_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Secondary Weapon
        WHR40_Weapon_Secondary;

        //Primary Weapon
        [Ger_Mag_MG_50_Mixed_sS,5] call Olsen_FW_FNC_AddItem;
        [Ger_Weap_MG34] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_MG_50_Mixed_sS,5] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_MG_50_Mixed_sS,3] call Olsen_FW_FNC_AddItem;

        //Extra
        [Ger_Mag_MG_50_Mixed_sS,10] call Olsen_FW_FNC_AddItem;
    }];

    //HMG Munitionsträger
    WHR40_HMGA = ["WHR40_HMGA", {
        params ["_unit"];

        [Ger_Uni_Rif_E_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Vest_K98] call Olsen_FW_FNC_AddItem;
        [Ger_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        WHR40_Weapon_Rifleman;

        //Extra
        [Ger_Mag_MG_50_Mixed_sS,10] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_MG_50_Mixed_sS,5] call Olsen_FW_FNC_AddItem;
    }];

    //Recon Team leader
    WHR40_RCTL = ["WHR40_RCTL", {
        params ["_unit"];

        [Ger_Uni_S3_E] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_K98] call Olsen_FW_FNC_AddItem;
        [Ger_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon
        WHR40_Weapon_Rifleman;

        //Extra        
        [Ger_Gren_Frag_M24,2] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Recon Team Sniper
    WHR40_RCTS = ["WHR40_RCTS", {
        params ["_unit"];

        [Ger_Uni_Rif_E_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Vest_K98] call Olsen_FW_FNC_AddItem;
        [Ger_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        WHR40_Recon_Primary;

        //Extra        
        [Ger_Gren_Frag_M24,2] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
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
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon
        WHR40_Weapon_Leader;

        //Secondary Weapon
        WHR40_Weapon_Secondary;
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
        GEN_Default_Equipment_Set;

        //Secondary Weapon
        WHR40_Weapon_Secondary;

        //Extra
        [GEN_Toolkit] call Olsen_FW_FNC_AddItem;
    }];
