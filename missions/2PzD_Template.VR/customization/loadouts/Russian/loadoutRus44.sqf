// Info: Red Army 1944 Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use Olsen_FW_FNC_AddItemRandom

/* Loadouts

    //Platoon HQ
[this, R44_PC] call Olsen_FW_FNC_GearScript;          Platoon Commander
[this, R44_PSgt] call Olsen_FW_FNC_GearScript;        Platoon Sergeant
[this, R44_Mess] call Olsen_FW_FNC_GearScript;        Messenger
[this, R44_MedP] call Olsen_FW_FNC_GearScript;        Medic
[this, R44_RTO] call Olsen_FW_FNC_GearScript;         Radio Operator

    //Squad
[this, R44_SL] call Olsen_FW_FNC_GearScript;          Squad Leader
[this, R44_TL] call Olsen_FW_FNC_GearScript;          Team Leader
[this, R44_SMG] call Olsen_FW_FNC_GearScript;         Submachine Gunner
[this, R44_Gren] call Olsen_FW_FNC_GearScript;        Grenadier
[this, R44_MedS] call Olsen_FW_FNC_GearScript;        Assistant Medic
[this, R44_Rif] call Olsen_FW_FNC_GearScript;         Rifleman
[this, R44_MG] call Olsen_FW_FNC_GearScript;          Machine Gunner
[this, R44_MGA] call Olsen_FW_FNC_GearScript;         MG Assistant

    //Heavy Weapons Teams
[this, R44_HMGTL] call Olsen_FW_FNC_GearScript;       HMG Team Leader
[this, R44_HMGG] call Olsen_FW_FNC_GearScript;        HMG Gunner

[this, R44_ATRTL] call Olsen_FW_FNC_GearScript;       AT Rifle Team Leader
[this, R44_ATRG] call Olsen_FW_FNC_GearScript;        AT Rifle Gunner

    //Vehicle Crew
[this, R44_VCom] call Olsen_FW_FNC_GearScript;        Tank Commander
[this, R44_VCrew] call Olsen_FW_FNC_GearScript;       Tank Crew
*/

//======================== Definitions ========================

//submachine gunners
#define R44_Weapon_SMG \
        [ \
            [/*PPSh-41, Stick*/ \
                [Rus_Vest_PPSH_S1], \
                [Rus_Mag_PPSH_S,1], \
                [Rus_Weap_PPSH], \
                [Rus_Mag_PPSH_S,3,"vest"], \
                [Rus_Mag_PPSH_D,2,"vest"] \
            ],[50], \
            [/*PPSh-41, Drum*/ \
                [Rus_Vest_PPSH_D1], \
                [Rus_Mag_PPSH_D,1], \
                [Rus_Weap_PPSH], \
                [Rus_Mag_PPSH_D,3,"vest"] \
            ],[50] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

//For riflemen
#define R44_Weapon_Rifleman \
        [ \
            [/*Mosin M91/30*/ \
                [Rus_Vest_Mosin], \
                [Rus_Mag_Mosin,1], \
                [Rus_Weap_MosM9130], \
                [Rus_Acc_Mos_Bayo], \
                [Rus_Mag_Mosin,12,"vest"] \
            ],[70], \
            [/*SVT*/ \
                [Rus_Vest_SVT], \
                [Rus_Mag_SVT,1], \
                [Rus_Weap_SVT40], \
                [Rus_Mag_SVT,6,"vest"] \
            ],[30] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;


//For all loadouts with pistols
#define R44_Weapon_Secondary \
        [ \
            [/*TT-33*/ \
                [Rus_Mag_TT33,1], \
                [Rus_Weap_TT33], \
                [Rus_Mag_TT33,2,"uniform"] \
            ],[70], \
            [/*M1895*/ \
                [Rus_Mag_M1895,1], \
                [Rus_Weap_M1895], \
                [Rus_Mag_M1895,2,"uniform"] \
            ],[30] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

//======================== Loadouts ========================

//Platoon HQ

    //Platoon Commander
    R44_PC = ["R44_PC", {
        params ["_unit"];

        [Rus_Uni44_PC] call Olsen_FW_FNC_AddItemRandom;
        [Rus_Hat_PC] call Olsen_FW_FNC_AddItem;
        Rus_Face;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon
        R44_Weapon_SMG;

        //Secondary Weapon
        R44_Weapon_Secondary;
    }];

    //Platoon Sergeant
    R44_PSgt = ["R44_PSgt", {
        params ["_unit"];

        [Rus_Uni44_SL] call Olsen_FW_FNC_AddItem;
        [Rus_BP] call Olsen_FW_FNC_AddItem;
        [Rus_Hat_PC] call Olsen_FW_FNC_AddItem;
        Rus_Face;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon
        R44_Weapon_SMG;

        //Secondary Weapon
        R44_Weapon_Secondary;

        //Extra
        [Rus_Gren_Frag_S,1] call Olsen_FW_FNC_AddItem;
        [Rus_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Medic
    R44_MedP = ["R44_MedP", {
        params ["_unit"];

        [Rus_Uni44_Rif] call Olsen_FW_FNC_AddItem;
        [Rus_BP_Med] call Olsen_FW_FNC_AddItem;
        [Rus_Hat] call Olsen_FW_FNC_AddItem;
        Rus_Face;

        //Primary Weapon & Vest
        R44_Weapon_Rifleman;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Extra
        GEN_MedicP_Equipment_Set;
    }];

    //Messenger
    R44_Mess = ["R44_Mess", {
        params ["_unit"];

        [Rus_Uni44_Rif] call Olsen_FW_FNC_AddItem;
        [Rus_Hat] call Olsen_FW_FNC_AddItem;
        Rus_Face;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon & Vest
        R44_Weapon_Rifleman;

        //Extra
        [Rus_Gren_Frag_S,1] call Olsen_FW_FNC_AddItem;
    }];

    //Radio Operator
    R44_RTO = ["R44_RTO", {
        params ["_unit"];

        [Rus_Uni44_Rif] call Olsen_FW_FNC_AddItem;
        [Rus_BP_Radio] call Olsen_FW_FNC_AddItem;
        [Rus_Hat] call Olsen_FW_FNC_AddItem;

        //Primary Weapon & Vest
        R44_Weapon_Rifleman

        //Assigned Items
        GEN_Default_Equipment;
        [GEN_Headset] call Olsen_FW_FNC_AddItem;
    }];

//Squad

    //Squad Leader
    R44_SL = ["R44_SL", {
        params ["_unit"];

        [Rus_Uni44_SL] call Olsen_FW_FNC_AddItem;
        [Rus_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [Rus_Helmet] call Olsen_FW_FNC_AddItem;
        Rus_Face;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon
        R44_Weapon_SMG;

        //Extra
        [Rus_Gren_Frag_S,1] call Olsen_FW_FNC_AddItem;
        [Rus_Mag_DP_Tracer,1,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

    //Team Leader
    R44_TL = ["R44_TL", {
        params ["_unit"];

        [Rus_Uni44_TL] call Olsen_FW_FNC_AddItem;
        [Rus_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [Rus_Helmet] call Olsen_FW_FNC_AddItem;
        Rus_Face;

        //Primary Weapon
        R44_Weapon_SMG;

        //Assigned Items
        GEN_Default_Equipment_Set;
        [GEN_BinoG] call Olsen_FW_FNC_AddItem;

        //Extra
        [Rus_Gren_Frag_S,1] call Olsen_FW_FNC_AddItem;
        [Rus_Mag_DP_Tracer,1,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

    //Submachine Gunner
    R44_SMG = ["R44_SMG", {
        params ["_unit"];

        [Rus_Uni44_Rif] call Olsen_FW_FNC_AddItem;
        [Rus_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [Rus_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        Rus_Face;

        //Primary Weapon
        R44_Weapon_SMG;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Extra
        [Rus_Gren_Frag_S,1] call Olsen_FW_FNC_AddItem;
        [Rus_Mag_DP_Tracer,1,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

    //Grenadier
    R44_Gren = ["R44_Gren", {
        params ["_unit"];

        [Rus_Uni44_Rif] call Olsen_FW_FNC_AddItem;
        [Rus_Vest_Mosin] call Olsen_FW_FNC_AddItem;
        [Rus_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [Rus_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        Rus_Face;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon & Vest
        [Rus_Mag_Mosin,1] call Olsen_FW_FNC_AddItem;
        [Rus_Weap_MosM9130] call Olsen_FW_FNC_AddItem;
        [Rus_Acc_Mos_GL] call Olsen_FW_FNC_AddItem;
        [Rus_Mag_Mosin,12,"vest"] call Olsen_FW_FNC_AddItem;

        //Extra
        [Rus_Mag_RGrn_HE,8] call Olsen_FW_FNC_AddItem;
    }];

    //Assistant Medic
    R44_MedS = ["R44_MedS", {
        params ["_unit"];

        [Rus_Uni44_Rif] call Olsen_FW_FNC_AddItem;
        [Rus_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [Rus_Hat] call Olsen_FW_FNC_AddItem;
        Rus_Face;

        //Primary Weapon & Vest
        R44_Weapon_Rifleman;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_MedicS_Equipment_Set;

        //Extra
        [Rus_Gren_Frag_S,1] call Olsen_FW_FNC_AddItem;
        [Rus_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
    }];

    //Rifleman
    R44_Rif = ["R44_Rif", {
        params ["_unit"];

        [Rus_Uni44_Rif] call Olsen_FW_FNC_AddItem;
        [Rus_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [Rus_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        Rus_Face;

        //Primary Weapon & Vest
        R44_Weapon_Rifleman;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Extra
        [Rus_Gren_Frag_S,1] call Olsen_FW_FNC_AddItem;
        [Rus_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [Rus_Mag_DP_Tracer,1,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

    //Machine Gunner
    R44_MG = ["R44_MG", {
        params ["_unit"];

        [Rus_Uni44_Rif] call Olsen_FW_FNC_AddItem;
        [Rus_Vest_MG_r] call Olsen_FW_FNC_AddItemRandom;
        [Rus_BP_MG] call Olsen_FW_FNC_AddItem;
        [Rus_Helmet] call Olsen_FW_FNC_AddItem;
        Rus_Face;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        [Rus_Mag_DP_Tracer,1] call Olsen_FW_FNC_AddItem;
        [Rus_Weap_DP] call Olsen_FW_FNC_AddItem;
        [Rus_Mag_DP_Tracer,3,"vest"] call Olsen_FW_FNC_AddItem;
        [Rus_Mag_DP_Tracer,6,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

    //MG Assistant
    R44_MGA = ["R44_MGA", {
        params ["_unit"];

        [Rus_Uni44_Rif] call Olsen_FW_FNC_AddItem;
        [Rus_BP_MG] call Olsen_FW_FNC_AddItem;
        [Rus_Helmet] call Olsen_FW_FNC_AddItem;
        Rus_Face;

        //Primary Weapon & Vest
        R44_Weapon_Rifleman;

        //Assigned Items
        GEN_Default_Equipment_Set;
        [Rus_Gren_Frag_S,1] call Olsen_FW_FNC_AddItem;

        //Extra
        [Rus_Mag_DP_Tracer,6,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

//Heavy Weapons Teams

    //HMG Team Leader
    R44_HMGTL = ["R44_HMGTL", {
        params ["_unit"];

        [Rus_Uni44_TL] call Olsen_FW_FNC_AddItem;
        [Rus_Vest_HGun] call Olsen_FW_FNC_AddItem;
        [Rus_Weap_HMG_T] call Olsen_FW_FNC_AddItem;
        [Rus_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        Rus_Face;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Secondary Weapon
        R44_Weapon_Secondary;
    }];

    //HMG Gunner
    R44_HMGG = ["R44_HMGG", {
        params ["_unit"];

        [Rus_Uni44_Rif] call Olsen_FW_FNC_AddItem;
        [Rus_Vest_HGun] call Olsen_FW_FNC_AddItem;
        [Rus_Weap_HMG_G] call Olsen_FW_FNC_AddItem;
        [Rus_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        Rus_Face;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Secondary Weapon
        R44_Weapon_Secondary;
    }];

    //Anti-Tank Rifle Team Leader
    R44_ATRTL = ["R44_ATRTL", {
        params ["_unit"];

        [Rus_Uni44_TL] call Olsen_FW_FNC_AddItem;
        [Pol_BP_Batoh] call Olsen_FW_FNC_AddItem;
        [Rus_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        Rus_Face;

        //Primary Weapon
        R44_Weapon_SMG;

        //Assigned Items
        GEN_Default_Equipment_Set;
        [GEN_BinoG] call Olsen_FW_FNC_AddItem;

        //Extra
        [Rus_Mag_PTRD,20,"backpack"] call Olsen_FW_FNC_AddItem;
        [Rus_Gren_Frag_S,1] call Olsen_FW_FNC_AddItem;
    }];

    //Anti-Tank Rifle Gunner
    R44_ATRG = ["R44_ATRG", {
        params ["_unit"];

        [Rus_Uni44_Rif] call Olsen_FW_FNC_AddItem;
        [Pol_BP_Batoh] call Olsen_FW_FNC_AddItem;
        [Rus_Helmet_r] call Olsen_FW_FNC_AddItemRandom;
        Rus_Face;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        R44_Weapon_SMG;

        //Anti-Tank Rifle
        [Rus_Weap_PTRD,1,"backpack"] call Olsen_FW_FNC_AddItem;
        [Rus_Mag_PTRD,20,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

//Vehicle Crew

    //Tank Commander
    R44_VCom = ["R44_VCom", {
        params ["_unit"];

        [Rus_Uni_VCrew] call Olsen_FW_FNC_AddItem;
        [Rus_Hat_VCrew_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_Tank_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon
        R44_Weapon_SMG;

        //Secondary Weapon
        R44_Weapon_Secondary;
    }];

    //Tank Crew
    R44_VCrew = ["R44_VCrew", {
        params ["_unit"];

        [Rus_Uni_VCrew] call Olsen_FW_FNC_AddItem;
        [Rus_Vest_VCrew] call Olsen_FW_FNC_AddItem;
        [Rus_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [Rus_Hat_VCrew_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_Tank_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Secondary Weapon
        R44_Weapon_Secondary;

        //Extra
        [Rus_Toolkit] call Olsen_FW_FNC_AddItem;
    }];
