// Info: Red Army 1941 Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use Olsen_FW_FNC_AddItemRandom

/* Loadouts

    //Platoon HQ
[this, R41_PC] call Olsen_FW_FNC_GearScript;          Platoon Commander
[this, R41_PSgt] call Olsen_FW_FNC_GearScript;        Platoon Sergeant
[this, R41_Mess] call Olsen_FW_FNC_GearScript;        Messenger
[this, R41_MedP] call Olsen_FW_FNC_GearScript;        Medic
[this, R41_RTO] call Olsen_FW_FNC_GearScript;         Radio Operator

    //Squad
[this, R41_SL] call Olsen_FW_FNC_GearScript;          Squad Leader
[this, R41_TL] call Olsen_FW_FNC_GearScript;          Team Leader
[this, R41_SMG] call Olsen_FW_FNC_GearScript;         Submachine Gunner
[this, R41_Gren] call Olsen_FW_FNC_GearScript;        Grenadier
[this, R41_MedS] call Olsen_FW_FNC_GearScript;        Assistant Medic
[this, R41_Rif] call Olsen_FW_FNC_GearScript;         Rifleman
[this, R41_MG] call Olsen_FW_FNC_GearScript;          Machine Gunner
[this, R41_MGA] call Olsen_FW_FNC_GearScript;         MG Assistant

    //Heavy Weapons Teams
[this, R41_HMGTL] call Olsen_FW_FNC_GearScript;       HMG Team Leader
[this, R41_HMGG] call Olsen_FW_FNC_GearScript;        HMG Gunner

[this, R41_ATRTL] call Olsen_FW_FNC_GearScript;       AT Rifle Team Leader
[this, R41_ATRG] call Olsen_FW_FNC_GearScript;        AT Rifle Gunner

    //Recon
[this, R41_RCTL] call Olsen_FW_FNC_GearScript;        Recon Team Leader
[this, R41_RCTS] call Olsen_FW_FNC_GearScript;        Recon Member

    //Vehicle Crew
[this, R41_VCom] call Olsen_FW_FNC_GearScript;        Tank Commander
[this, R41_VCrew] call Olsen_FW_FNC_GearScript;       Tank Crew
*/

//======================== Definitions ========================

//For Rifleman
#define R41_Weapon_Rifleman \
        [ \
            [/*Mosin M91/30*/ \
                [Rus_Vest_Mosin], \
                [Rus_Mag_Mosin,1], \
                [Rus_Weap_MosM9130], \
                [Rus_Mag_Mosin,12,"vest"] \
            ],[70], \
            [/*SVT*/ \
                [Rus_Vest_SVT], \
                [Rus_Mag_SVT,1], \
                [Rus_Weap_SVT40], \
                [Rus_Mag_SVT,6,"vest"] \
            ],[30] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

//For Submachine Gunners
#define R41_Weapon_SMG \
                [ \
            [/*PPD40*/ \
                [Rus_Mag_PPD40,1], \
                [Rus_Weap_PPD40], \
                [RRus_Mag_PPD40,2,"vest"] \
            ],[70], \
            [/*PPSh41*/ \
                [Rus_Mag_PPSH_D,1], \
                [Rus_Weap_PPSH], \
                [Rus_Mag_PPSH_D,1,"vest"], \
                [Rus_Mag_PPSH_S,3,"vest"] \
            ],[30] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

//For Machine Gunners 
#define R41_Weapon_DP \
                [Rus_Vest_MG] call Olsen_FW_FNC_AddItem; \
                [Rus_Mag_DP_Tracer,1] call Olsen_FW_FNC_AddItem; \
                [Rus_Weap_DP] call Olsen_FW_FNC_AddItem; \
                [Rus_Mag_DP_Tracer,3,"vest"] call Olsen_FW_FNC_AddItem; \
                [Rus_Mag_DP_Tracer,6,"backpack"] call Olsen_FW_FNC_AddItem;

//For all loadouts with pistols
#define R41_Weapon_Secondary \
        [ \
            [/*TT-33*/ \
                [Rus_Mag_TT33,1], \
                [Rus_Weap_TT33], \
                [Rus_Mag_TT33,2,"uniform"] \
            ],[50], \
            [/*M1895*/ \
                [Rus_Mag_M1895,1], \
                [Rus_Weap_M1895], \
                [Rus_Mag_M1895,2,"uniform"] \
            ],[50] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

//Recon Team Weapon
#define R41_Recon_Primary \
        [Rus_Mag_Mosin_Tracer,1] call Olsen_FW_FNC_AddItem; \
        [Rus_Weap_MosM9130_S] call Olsen_FW_FNC_AddItem; \
        [Rus_Mag_Mosin_Tracer,12] call Olsen_FW_FNC_AddItem;

//======================== Loadouts ========================

//Platoon HQ

    //Platoon Commander
    R41_PC = ["R41_PC", {
        params ["_unit"];

        [Rus_Uni41_PC] call Olsen_FW_FNC_AddItemRandom;
        [Rus_Vest_PC] call Olsen_FW_FNC_AddItem;
        [Rus_BP_Radio] call Olsen_FW_FNC_AddItem;
        [Rus_Hat_PC] call Olsen_FW_FNC_AddItem;
        Rus_Face;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon
        R41_Weapon_SMG;

        //Secondary Weapon
        R41_Weapon_Secondary;
    }];

    //Platoon Sergeant
    R41_PSgt = ["R41_PSgt", {
        params ["_unit"];

        [Rus_Uni41_SL] call Olsen_FW_FNC_AddItem;
        [Rus_BP] call Olsen_FW_FNC_AddItem;
        [Rus_Hat_PC] call Olsen_FW_FNC_AddItem;
        Rus_Face;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon & Vest
        R41_Weapon_Rifleman;

        //Secondary Weapon
        R41_Weapon_Secondary;

        //Extra
        [Rus_Gren_Frag_S2,2] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Medic
    R41_MedP = ["R41_MedP", {
        params ["_unit"];

        [Rus_Uni41_Rif] call Olsen_FW_FNC_AddItem;
        [Rus_BP_Med] call Olsen_FW_FNC_AddItem;
        [Rus_Hat] call Olsen_FW_FNC_AddItem;
        Rus_Face;

        //Assigned Items
        GEN_Default_Equipment_Set;
        
        //Primary Weapon & Vest
        R41_Weapon_Rifleman;

        //Extra
        GEN_MedicP_Equipment_Set;
    }];

    //Messenger
    R41_Mess = ["R41_Mess", {
        params ["_unit"];

        [Rus_Uni41_Rif] call Olsen_FW_FNC_AddItem;
        [Rus_Hat] call Olsen_FW_FNC_AddItem;
        Rus_Face;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon & Vest
        R41_Weapon_Rifleman;

        //Extra
        [Rus_Gren_Frag_S2,1] call Olsen_FW_FNC_AddItem;
    }];

    //Radio Operator
    R41_RTO = ["R41_RTO", {
        params ["_unit"];

        [Rus_Uni41_Rif] call Olsen_FW_FNC_AddItem;
        [Rus_BP_Radio] call Olsen_FW_FNC_AddItem;
        [Rus_Hat] call Olsen_FW_FNC_AddItem;
        Rus_Face;

        //Assigned Items
        GEN_Default_Equipment_Set;
        [GEN_Headset] call Olsen_FW_FNC_AddItem;

        //Primary Weapon & Vest
        R41_Weapon_Rifleman;
    }];

//Squad

    //Squad Leader
    R41_SL = ["R41_SL", {
        params ["_unit"];

        [Rus_Uni41_SL] call Olsen_FW_FNC_AddItem;
        [Rus_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [Rus_Helmet] call Olsen_FW_FNC_AddItem;
        Rus_Face;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon & Vest
        R41_Weapon_Rifleman;

        //Extra
        [Rus_Gren_Frag_S2,1] call Olsen_FW_FNC_AddItem;
        [Rus_Mag_DP_Tracer,1,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

    //Team Leader
    R41_TL = ["R41_TL", {
        params ["_unit"];

        [Rus_Uni41_TL] call Olsen_FW_FNC_AddItem;
        [Rus_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [Rus_Helmet] call Olsen_FW_FNC_AddItem;
        Rus_Face;

        //Assigned Items
        GEN_Default_Equipment_Set;
        [GEN_BinoG] call Olsen_FW_FNC_AddItem;
        
        //Primary Weapon & Vest
        R41_Weapon_Rifleman;

        //Extra
        [Rus_Gren_Frag_S2,1] call Olsen_FW_FNC_AddItem;
        [Rus_Mag_DP_Tracer,1,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

    //Submachine Gunner
    R41_SMG = ["R41_SMG", {
        params ["_unit"];

        [Rus_Uni41_Rif] call Olsen_FW_FNC_AddItem;
        [Rus_Vest_PPSH_D1] call Olsen_FW_FNC_AddItem;
        [Rus_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [Rus_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        Rus_Face;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        R41_Weapon_SMG;

        //Extra
        [Rus_Gren_Frag_S2,1] call Olsen_FW_FNC_AddItem;
        [Rus_Mag_DP_Tracer,1,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

    //Grenadier
    R41_Gren = ["R41_Gren", {
        params ["_unit"];

        [Rus_Uni41_Rif] call Olsen_FW_FNC_AddItem;
        [Rus_Vest_Mosin] call Olsen_FW_FNC_AddItem;
        [Rus_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [Rus_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        Rus_Face;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        [Rus_Mag_Mosin,1] call Olsen_FW_FNC_AddItem;
        [Rus_Weap_MosM9130_LIB] call Olsen_FW_FNC_AddItem;
        [Rus_Acc_Mos_GL] call Olsen_FW_FNC_AddItem;
        [Rus_Mag_Mosin,12,"vest"] call Olsen_FW_FNC_AddItem;

        //Extra
        [Rus_Mag_RGrn_HE,8] call Olsen_FW_FNC_AddItem;
    }];

    //Assistant Medic
    R41_MedS = ["R41_MedS", {
        params ["_unit"];

        [Rus_Uni41_Rif] call Olsen_FW_FNC_AddItem;
        [Rus_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [Rus_Hat] call Olsen_FW_FNC_AddItem;
        Rus_Face;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_MedicS_Equipment_Set;

        //Primary Weapon & Vest
        R41_Weapon_Rifleman;

        //Extra
        [Rus_Gren_Frag_S2,2] call Olsen_FW_FNC_AddItem;
    }];

    //Rifleman
    R41_Rif = ["R41_Rif", {
        params ["_unit"];

        [Rus_Uni41_Rif] call Olsen_FW_FNC_AddItem;
        [Rus_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [Rus_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        Rus_Face;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon & Vest
        R41_Weapon_Rifleman;

        //Extra
        [Rus_Gren_Frag_S2,2] call Olsen_FW_FNC_AddItem;
        [Rus_Mag_DP_Tracer,1,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

    //Machine Gunner
    R41_MG = ["R41_MG", {
        params ["_unit"];

        [Rus_Uni41_Rif] call Olsen_FW_FNC_AddItem;
        [Rus_BP_MG] call Olsen_FW_FNC_AddItem;
        [Rus_Helmet] call Olsen_FW_FNC_AddItem;
        Rus_Face;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon & Vest
        R41_Weapon_DP;

        //Secondary Weapon
        R41_Weapon_Secondary;
    }];

    //MG Assistant
    R41_MGA = ["R41_MGA", {
        params ["_unit"];

        [Rus_Uni41_Rif] call Olsen_FW_FNC_AddItem;
        [Rus_BP_MG] call Olsen_FW_FNC_AddItem;
        [Rus_Helmet] call Olsen_FW_FNC_AddItem;
        Rus_Face;

        //Assigned Items
        GEN_Default_Equipment_Set;
        [Rus_Gren_Frag_S2,1] call Olsen_FW_FNC_AddItem;
        
        //Primary Weapon & Vest
        R41_Weapon_Rifleman;

        //Extra
        [Rus_Mag_DP_Tracer,6,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

//Heavy Weapons Teams

    //HMG Team Leader
    R41_HMGTL = ["R41_HMGTL", {
        params ["_unit"];

        [Rus_Uni41_TL] call Olsen_FW_FNC_AddItem;
        [Rus_Vest_HGun] call Olsen_FW_FNC_AddItem;
        [Rus_Weap_HMG_T] call Olsen_FW_FNC_AddItem;
        [Rus_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        Rus_Face;
        
        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon
        R41_Weapon_SMG;

        //Secondary Weapon
        R41_Weapon_Secondary;
    }];

    //HMG Gunner
    R41_HMGG = ["R41_HMGG", {
        params ["_unit"];

        [Rus_Uni41_Rif] call Olsen_FW_FNC_AddItem;
        [Rus_Vest_HGun] call Olsen_FW_FNC_AddItem;
        [Rus_Weap_HMG_G] call Olsen_FW_FNC_AddItem;
        [Rus_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        Rus_Face;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon
        R41_Weapon_SMG;

        //Secondary Weapon
        R41_Weapon_Secondary;
    }];

    //Anti-Tank Rifle Team Leader
    R41_ATRTL = ["R41_ATRTL", {
        params ["_unit"];

        [Rus_Uni41_TL] call Olsen_FW_FNC_AddItem;
        [Rus_Vest_PPSH_D1] call Olsen_FW_FNC_AddItem;
        [Pol_BP_Batoh] call Olsen_FW_FNC_AddItem;
        [Rus_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        Rus_Face;

        //Assigned Items
        GEN_Default_Equipment_Set;
        [GEN_BinoG] call Olsen_FW_FNC_AddItem;
        
        //Primary Weapon
        R41_Weapon_SMG;

        //Extra
        [Rus_Mag_PTRD,20,"backpack"] call Olsen_FW_FNC_AddItem;
        [Rus_Gren_Frag_S2,1] call Olsen_FW_FNC_AddItem;
    }];

    //Anti-Tank Rifle Gunner
    R41_ATRG = ["R41_ATRG", {
        params ["_unit"];

        [Rus_Uni41_Rif] call Olsen_FW_FNC_AddItem;
        [Rus_Vest_PPSH_D1] call Olsen_FW_FNC_AddItem;
        [Pol_BP_Batoh] call Olsen_FW_FNC_AddItem;
        [Rus_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        Rus_Face;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        R41_Weapon_SMG;

        //Extra
        [Rus_Weap_PTRD,1,"backpack"] call Olsen_FW_FNC_AddItem;
        [Rus_Mag_PTRD,20,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

    //Recon Team leader
    R41_RCTL = ["UK40_RCTL", {
        params ["_unit"];

        [Rus_Uni41_Snip] call Olsen_FW_FNC_AddItem;
        [Rus_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [Rus_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        Rus_Face;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon
        R41_Weapon_Rifleman;

        //Extra
        [Rus_Gren_Frag_S2,2] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Recon Team Sniper
    R41_RCTS = ["UK40_RCTS", {
        params ["_unit"];

        [Rus_Uni41_Snip] call Olsen_FW_FNC_AddItem;
        [Rus_Vest_Mosin] call Olsen_FW_FNC_AddItem;
        [Rus_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [Rus_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        Rus_Face;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        R41_Recon_Primary;

        //Extra
        [Rus_Gren_Frag_S2,2] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

//Vehicle Crew

    //Tank Commander
    R41_VCom = ["R41_VCom", {
        params ["_unit"];

        [Rus_Uni_VCrew] call Olsen_FW_FNC_AddItem;
        [Rus_Vest_PC] call Olsen_FW_FNC_AddItem;
        [Rus_Hat_VCrew_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_Tank_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon
        [Rus_Mag_PPD40,1] call Olsen_FW_FNC_AddItem;
        [Rus_Weap_PPD40] call Olsen_FW_FNC_AddItem;
        [Rus_Mag_PPD40,1,"vest"] call Olsen_FW_FNC_AddItem;

        //Secondary Weapon
        R41_Weapon_Secondary;
    }];

    //Tank Crew
    R41_VCrew = ["R41_VCrew", {
        params ["_unit"];

        [Rus_Uni_VCrew] call Olsen_FW_FNC_AddItem;
        [Rus_Vest_VCrew] call Olsen_FW_FNC_AddItem;
        [Rus_BP] call Olsen_FW_FNC_AddItem;
        [Rus_Hat_VCrew_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_Tank_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Secondary Weapon
        R41_Weapon_Secondary;

        //Extra
        [GEN_Toolkit] call Olsen_FW_FNC_AddItem;
    }];
