// Info: Red Army 1939 Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use Olsen_FW_FNC_AddItemRandom

/* Loadouts

    //Platoon HQ
[this, R39_PC] call Olsen_FW_FNC_GearScript;          Platoon Commander
[this, R39_PSgt] call Olsen_FW_FNC_GearScript;        Platoon Sergeant
[this, R39_Mess] call Olsen_FW_FNC_GearScript;        Messenger
[this, R39_MedP] call Olsen_FW_FNC_GearScript;        Medic
[this, R39_RTO] call Olsen_FW_FNC_GearScript;         Radio Operator

    //Squad
[this, R39_SL] call Olsen_FW_FNC_GearScript;          Squad Leader
[this, R39_TL] call Olsen_FW_FNC_GearScript;          Team Leader
[this, R39_SMG] call Olsen_FW_FNC_GearScript;         Submachine Gunner
[this, R39_Gren] call Olsen_FW_FNC_GearScript;        Grenadier
[this, R39_MedS] call Olsen_FW_FNC_GearScript;        Assistant Medic

[this, R39_Rif] call Olsen_FW_FNC_GearScript;         Rifleman
[this, R39_AutoRif] call Olsen_FW_FNC_GearScript;     Automatic Rifleman
[this, R39_MG] call Olsen_FW_FNC_GearScript;          Machine Gunner
[this, R39_MGA] call Olsen_FW_FNC_GearScript;         MG Assistant

    //Heavy Weapons Teams
[this, R39_HMGTL] call Olsen_FW_FNC_GearScript;       HMG Team Leader
[this, R39_HMGG] call Olsen_FW_FNC_GearScript;        HMG Gunner

[this, R39_ATRTL] call Olsen_FW_FNC_GearScript;       AT Rifle Team Leader
[this, R39_ATRG] call Olsen_FW_FNC_GearScript;        AT Rifle Gunner

    //Recon
[this, R39_RCTL] call Olsen_FW_FNC_GearScript;        Recon Team Leader
[this, R39_RCTS] call Olsen_FW_FNC_GearScript;        Recon Member

    //Vehicle Crew
[this, R39_VCom] call Olsen_FW_FNC_GearScript;        Tank Commander
[this, R39_VCrew] call Olsen_FW_FNC_GearScript;       Tank Crew
*/

//======================== Definitions ========================

//For Rifleman
#define R39_Weapon_Rifleman \
                [Rus_Vest_Mosin] call Olsen_FW_FNC_AddItem; \
                [Rus_Mag_Mosin,1] call Olsen_FW_FNC_AddItem; \
                [Rus_Weap_MosM9130] call Olsen_FW_FNC_AddItem; \
                [Rus_Mag_Mosin,12,"vest"] call Olsen_FW_FNC_AddItem;

//For Automatic Rifleman
#define R39_Weapon_Automatic_Rifleman \
                [Rus_Vest_SVT] call Olsen_FW_FNC_AddItem; \
                [Rus_Mag_SVT,1] call Olsen_FW_FNC_AddItem; \
                [Rus_Weap_SVT38] call Olsen_FW_FNC_AddItem; \
                [Rus_Mag_SVT,5,"vest"] call Olsen_FW_FNC_AddItem;

//For Submachine Gunners
#define R39_Weapon_SMG \
                [ \
            [/*PPD34 (Stick)*/ \
                [Rus_Vest_PPSH_S2], \
                [Rus_Mag_PPD34,1], \
                [Rus_Weap_PPD34], \
                [Rus_Mag_PPD34,4,"vest"] \
            ],[60], \
            [/*PPD34_38 (Drum)*/ \
                [Rus_Vest_PPSH_D2], \
                [Rus_Mag_PPD34_38,1], \
                [Rus_Weap_PPD34_38], \
                [Rus_Mag_PPD34_38,6,"vest"] \
            ],[40] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

//For Machine Gunners 
#define R39_Weapon_DP \
                [Rus_Vest_MG] call Olsen_FW_FNC_AddItem; \
                [Rus_Mag_DP_Tracer,1] call Olsen_FW_FNC_AddItem; \
                [Rus_Weap_DP] call Olsen_FW_FNC_AddItem; \
                [Rus_Mag_DP_Tracer,3,"vest"] call Olsen_FW_FNC_AddItem; \
                [Rus_Mag_DP_Tracer,6,"backpack"] call Olsen_FW_FNC_AddItem;


//For all loadouts with pistols
#define R39_Weapon_Secondary \
        [ \
            [/*TT-33*/ \
                [Rus_Mag_TT33,1], \
                [Rus_Weap_TT33], \
                [Rus_Mag_TT33,2,"uniform"] \
            ],[20], \
            [/*M1895*/ \
                [Rus_Mag_M1895,1], \
                [Rus_Weap_M1895], \
                [Rus_Mag_M1895,2,"uniform"] \
            ],[80] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

//Recon Team Weapon
#define R39_Recon_Primary \
        [Rus_Mag_Mosin_Tracer,1] call Olsen_FW_FNC_AddItem; \
        [Rus_Weap_MosM9130_S] call Olsen_FW_FNC_AddItem; \
        [Rus_Mag_Mosin_Tracer,12] call Olsen_FW_FNC_AddItem;

//======================== Loadouts ========================

//Platoon HQ

    //Platoon Commander
    R39_PC = ["R39_PC", {
        params ["_unit"];

        [Rus_Uni39_PC] call Olsen_FW_FNC_AddItemRandom;
        [Rus_Vest_PC] call Olsen_FW_FNC_AddItem;
        [Rus_BP_Radio] call Olsen_FW_FNC_AddItem;
        [Rus_Hat_PC] call Olsen_FW_FNC_AddItem;
        Rus_Face;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon

        //Secondary Weapon
        R39_Weapon_Secondary;
    }];

    //Platoon Sergeant
    R39_PSgt = ["R39_PSgt", {
        params ["_unit"];

        [Rus_Uni39_SL] call Olsen_FW_FNC_AddItem;
        [Rus_BP39] call Olsen_FW_FNC_AddItem;
        [Rus_Hat_PC] call Olsen_FW_FNC_AddItem;
        Rus_Face;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon & Vest
        R39_Weapon_Rifleman;

        //Secondary Weapon
        R39_Weapon_Secondary;

        //Extra
        [Rus_Gren_Frag_S,1] call Olsen_FW_FNC_AddItem;
        [Rus_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Medic
    R39_MedP = ["R39_MedP", {
        params ["_unit"];

        [Rus_Uni39_Rif] call Olsen_FW_FNC_AddItem;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon & Vest
        R39_Weapon_Rifleman;

        [Rus_BP_Med] call Olsen_FW_FNC_AddItem;
        [Rus_Hat39] call Olsen_FW_FNC_AddItem;
        Rus_Face;

        //Extra
        GEN_MedicP_Equipment_Set;
    }];

    //Messenger
    R39_Mess = ["R39_Mess", {
        params ["_unit"];

        [Rus_Uni39_Rif] call Olsen_FW_FNC_AddItem;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon & Vest
        R39_Weapon_Rifleman;

        [Rus_Hat39] call Olsen_FW_FNC_AddItem;
        Rus_Face;

        //Extra
        [Rus_Gren_Frag_S,1] call Olsen_FW_FNC_AddItem;
    }];

    //Radio Operator
    R39_RTO = ["R39_RTO", {
        params ["_unit"];

        [Rus_Uni39_Rif] call Olsen_FW_FNC_AddItem;
        [Rus_BP_Radio] call Olsen_FW_FNC_AddItem;
        [Rus_Hat39] call Olsen_FW_FNC_AddItem;
        Rus_Face;

        //Assigned Items
        GEN_Default_Equipment_Set;
        [GEN_Headset] call Olsen_FW_FNC_AddItem;

        //Primary Weapon & Vest
        R39_Weapon_Rifleman;

    }];

//Squad

    //Squad Leader
    R39_SL = ["R39_SL", {
        params ["_unit"];

        [Rus_Uni39_SL] call Olsen_FW_FNC_AddItem;
        [Rus_BP39] call Olsen_FW_FNC_AddItem;
        [Rus_Helmet39_r] call Olsen_FW_FNC_AddItemRandom;
        Rus_Face;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon & Vest
        R39_Weapon_Rifleman;

        //Extra
        [Rus_Mag_DP_Tracer,1,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

    //Team Leader
    R39_TL = ["R39_TL", {
        params ["_unit"];

        [Rus_Uni39_TL] call Olsen_FW_FNC_AddItem;
        [Rus_BP39] call Olsen_FW_FNC_AddItem;
        [Rus_Helmet39_r] call Olsen_FW_FNC_AddItemRandom;
        Rus_Face;

        //Assigned Items
        GEN_Default_Equipment_Set;
        [GEN_BinoG] call Olsen_FW_FNC_AddItem;
        
        //Primary Weapon & Vest
        R39_Weapon_Rifleman;

        //Extra
        [Rus_Gren_Frag_S2,1] call Olsen_FW_FNC_AddItem;
        [Rus_Mag_DP_Tracer,1,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

    //Submachine Gunner
    R39_SMG = ["R39_SMG", {
        params ["_unit"];

        [Rus_Uni39_Rif] call Olsen_FW_FNC_AddItem;
        [Rus_Vest_PPSH_D1] call Olsen_FW_FNC_AddItem;
        [Rus_BP39] call Olsen_FW_FNC_AddItem;
        [Rus_Helmet39_r] call Olsen_FW_FNC_AddItemRandom;
        Rus_Face;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        R39_Weapon_SMG;

        //Extra
        [Rus_Gren_Frag_S2,1] call Olsen_FW_FNC_AddItem;
        [Rus_Mag_DP_Tracer,1,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

    //Grenadier
    R39_Gren = ["R39_Gren", {
        params ["_unit"];

        [Rus_Uni39_Rif] call Olsen_FW_FNC_AddItem;
        [Rus_BP39] call Olsen_FW_FNC_AddItem;
        [Rus_Helmet39_r] call Olsen_FW_FNC_AddItemRandom;
        Rus_Face;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon & Vest
        R39_Weapon_Rifleman;

        //Extra
        [Rus_Gren_Frag_S2,6] call Olsen_FW_FNC_AddItem;
    }];

    //Assistant Medic
    R39_MedS = ["R39_MedS", {
        params ["_unit"];

        [Rus_Uni39_Rif] call Olsen_FW_FNC_AddItem;
        [Rus_BP39] call Olsen_FW_FNC_AddItem;
        [Rus_Hat39] call Olsen_FW_FNC_AddItem;
        Rus_Face;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_MedicS_Equipment_Set;

        //Primary Weapon & Vest
        R39_Weapon_Rifleman;
    }];

    //Rifleman
    R39_Rif = ["R39_Rif", {
        params ["_unit"];

        [Rus_Uni39_Rif] call Olsen_FW_FNC_AddItem;
        [Rus_BP39] call Olsen_FW_FNC_AddItem;
        [Rus_Helmet39_r] call Olsen_FW_FNC_AddItemRandom;
        Rus_Face;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon & Vest
        R39_Weapon_Rifleman;

        //Extra
        [Rus_Gren_Frag_S2,2] call Olsen_FW_FNC_AddItem;
        [Rus_Mag_DP_Tracer,1,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

    //Automatic Rifleman
    R39_AutoRif = ["R39_AutoRif", {
        params ["_unit"];

        [Rus_Uni39_Rif] call Olsen_FW_FNC_AddItem;
        [Rus_BP39] call Olsen_FW_FNC_AddItem;
        [Rus_Helmet39_r] call Olsen_FW_FNC_AddItemRandom;
        Rus_Face;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon & Vest
        R39_Weapon_Automatic_Rifleman;

        //Extra
        [Rus_Mag_DP_Tracer,1,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

    //Machine Gunner
    R39_MG = ["R39_MG", {
        params ["_unit"];

        [Rus_Uni39_Rif] call Olsen_FW_FNC_AddItem;
        [Rus_BP_MG] call Olsen_FW_FNC_AddItem;
        [Rus_Helmet39_r] call Olsen_FW_FNC_AddItemRandom;
        Rus_Face;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon & Vest
        R39_Weapon_DP;

        //Secondary Weapon
        R39_Weapon_Secondary;
    }];

    //MG Assistant
    R39_MGA = ["R39_MGA", {
        params ["_unit"];

        [Rus_Uni39_Rif] call Olsen_FW_FNC_AddItem;
        [Rus_BP_MG] call Olsen_FW_FNC_AddItem;
        [Rus_Helmet39_r] call Olsen_FW_FNC_AddItemRandom;
        Rus_Face;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon & Vest
        R39_Weapon_Rifleman;

        //Extra
        [Rus_Mag_DP_Tracer,6,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

//Heavy Weapons Teams

    //HMG Team Leader
    R39_HMGTL = ["R39_HMGTL", {
        params ["_unit"];

        [Rus_Uni39_TL] call Olsen_FW_FNC_AddItem;
        [Rus_Weap_HMG_T] call Olsen_FW_FNC_AddItem;
        [Rus_Helmet39_r] call Olsen_FW_FNC_AddItemRandom;
        Rus_Face;
        
        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon & Vest
        R39_Weapon_SMG;

        //Secondary Weapon
        R39_Weapon_Secondary;
    }];

    //HMG Gunner
    R39_HMGG = ["R39_HMGG", {
        params ["_unit"];

        [Rus_Uni39_Rif] call Olsen_FW_FNC_AddItem;
        [Rus_Weap_HMG_G] call Olsen_FW_FNC_AddItem;
        [Rus_Helmet39_r] call Olsen_FW_FNC_AddItemRandom;
        Rus_Face;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon & Vest
        R39_Weapon_Rifleman;

        //Secondary Weapon
        R39_Weapon_Secondary;
    }];

    //Anti-Tank Rifle Team Leader
    R39_ATRTL = ["R39_ATRTL", {
        params ["_unit"];

        [Rus_Uni39_TL] call Olsen_FW_FNC_AddItem;
        [Pol_BP_Batoh] call Olsen_FW_FNC_AddItem;
        [Rus_Helmet39_r] call Olsen_FW_FNC_AddItemRandom;
        Rus_Face;

        //Assigned Items
        GEN_Default_Equipment_Set;
        [GEN_BinoG] call Olsen_FW_FNC_AddItem;

        //Primary Weapon & Vest
        R39_Weapon_SMG;

        //Extra
        [Rus_Mag_PTRD,20,"backpack"] call Olsen_FW_FNC_AddItem;
        [Rus_Gren_Frag_S2,1] call Olsen_FW_FNC_AddItem;
    }];

    //Anti-Tank Rifle Gunner
    R39_ATRG = ["R39_ATRG", {
        params ["_unit"];

        [Rus_Uni39_Rif] call Olsen_FW_FNC_AddItem;
        [Pol_BP_Batoh] call Olsen_FW_FNC_AddItem;
        [Rus_Helmet39_r] call Olsen_FW_FNC_AddItemRandom;
        Rus_Face;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        R39_Weapon_Rifleman;

        //Extra
        [Rus_Weap_PTRD,1,"backpack"] call Olsen_FW_FNC_AddItem;
        [Rus_Mag_PTRD,20,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

    //Recon Team leader
    R39_RCTL = ["R39_RCTL", {
        params ["_unit"];

        [Rus_Uni39_Snip] call Olsen_FW_FNC_AddItem;
        [Rus_BP39] call Olsen_FW_FNC_AddItem;
        [Rus_Hat39] call Olsen_FW_FNC_AddItemRandom;
        Rus_Face;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon
        R39_Weapon_Rifleman;

        //Extra
        [Rus_Gren_Frag_S2,2] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Recon Team Sniper
    R39_RCTS = ["R39_RCTS", {
        params ["_unit"];

        [Rus_Uni39_Snip] call Olsen_FW_FNC_AddItem;
        [Rus_Vest_Mosin] call Olsen_FW_FNC_AddItem;
        [Rus_BP39] call Olsen_FW_FNC_AddItem;
        [Rus_Hat39] call Olsen_FW_FNC_AddItemRandom;
        Rus_Face;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        R39_Recon_Primary;

        //Extra
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

//Vehicle Crew

    //Tank Commander
    R39_VCom = ["R39_VCom", {
        params ["_unit"];

        [Rus_Uni_VCrew] call Olsen_FW_FNC_AddItem;
        [Rus_Vest_PC] call Olsen_FW_FNC_AddItem;
        [Rus_Hat_VCrew_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_Tank_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Secondary Weapon
        R39_Weapon_Secondary;
    }];

    //Tank Crew
    R39_VCrew = ["R39_VCrew", {
        params ["_unit"];

        [Rus_Uni_VCrew] call Olsen_FW_FNC_AddItem;
        [Rus_Vest_VCrew] call Olsen_FW_FNC_AddItem;
        [Rus_BP39] call Olsen_FW_FNC_AddItem;
        [Rus_Hat_VCrew_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_Tank_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Secondary Weapon
        R39_Weapon_Secondary;

        //Extra
        [GEN_Toolkit] call Olsen_FW_FNC_AddItem;
    }];
