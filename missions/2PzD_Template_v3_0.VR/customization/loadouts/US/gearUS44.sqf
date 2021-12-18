// Info: US Army 1944 Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use Olsen_FW_FNC_AddItemRandom

/*Loadouts

    //Platoon HQ
[this, US44_PC] call Olsen_FW_FNC_GearScript;         Platoon Commander
[this, US44_PSGT] call Olsen_FW_FNC_GearScript;       Platoon Sergeant/Platoon Guide
[this, US44_PRTO] call Olsen_FW_FNC_GearScript;       Radio Operator
[this, US44_Mess] call Olsen_FW_FNC_GearScript;       Messenger
[this, US44_MedP] call Olsen_FW_FNC_GearScript;       Medic

    //Squad
[this, US44_SL] call Olsen_FW_FNC_GearScript;         Squad Leader
[this, US44_S2] call Olsen_FW_FNC_GearScript;         Assistant Squad Leader
[this, US44_MedS] call Olsen_FW_FNC_GearScript;       Assistant Medic
[this, US44_AR] call Olsen_FW_FNC_GearScript;         Automatic Rifleman
[this, US44_AAR] call Olsen_FW_FNC_GearScript;        Assistant Automatic Rifleman
[this, US44_Rif] call Olsen_FW_FNC_GearScript;        Rifleman

    //Weapons Teams
[this, US44_MGTL] call Olsen_FW_FNC_GearScript;       Machine Gun Team Leader
[this, US44_MG] call Olsen_FW_FNC_GearScript;         Machine Gunner

[this, US44_BzkaTL] call Olsen_FW_FNC_GearScript;     Bazooka Team Leader
[this, US44_BzkaG] call Olsen_FW_FNC_GearScript;      Bazooka Gunner

    //Tank Crew
[this, US44_VCom] call Olsen_FW_FNC_GearScript;       Tank Commander
[this, US44_VCrew] call Olsen_FW_FNC_GearScript;      Tank Crew
*/

//======================== Definitions ========================

// For Platoon Commander, Squad Leader
#define US44_Weapon_Leader \
        [ \
            [ \
                [US_Vest_M1C], \
                [US_Mag_M1C,1], \
                [US_Weap_M1C], \
                [US_Mag_M1C,5,"vest"] \
            ],[30], \
            [ \
                [US_Vest_M1T], \
                [US_Mag_M1T_30,1], \
                [US_Weap_M1A1T], \
                [US_Mag_M1T_30,5,"vest"] \
            ],[70] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

// For Radiomen, Messengers and Medics
#define US44_Weapon_Rifle_Light \
        [US_Mag_M1C,1] call Olsen_FW_FNC_AddItem; \
        [US_Weap_M1C] call Olsen_FW_FNC_AddItem; \
        [US_Mag_M1C,5,"backpack"] call Olsen_FW_FNC_AddItem;

// For Automatic Riflemen
#define US44_Weapon_AR \
        [US_Mag_BAR_Mixed_Ball,1] call Olsen_FW_FNC_AddItem; \
        [US_Weap_BAR] call Olsen_FW_FNC_AddItem; \
        [US_Acc_BAR_Bipod] call Olsen_FW_FNC_AddItem; \
        [US_Mag_BAR_Mixed_Ball,6,"vest"] call Olsen_FW_FNC_AddItem; \
        [US_Mag_BAR_Mixed_Ball,9,"backpack"] call Olsen_FW_FNC_AddItem;

// For Riflemen
#define US44_Weapon_Rifle \
        [US_Mag_M1G,1] call Olsen_FW_FNC_AddItem; \
        [US_Acc_M1_Bayo,1,"uniform"] call Olsen_FW_FNC_AddItem; \
        [US_Weap_M1G] call Olsen_FW_FNC_AddItem; \
        [US_Mag_M1G,10,"backpack"] call Olsen_FW_FNC_AddItem;

// For Tank Commander
#define US44_Weapon_VCom \
        [US_Vest_M1T] call Olsen_FW_FNC_AddItem; \
        [US_Mag_M1T_20,1] call Olsen_FW_FNC_AddItem; \
        [US_Weap_M1A1T] call Olsen_FW_FNC_AddItem; \
        [US_Mag_M1T_20,5,"vest"] call Olsen_FW_FNC_AddItem;

// For Machinegunners
#define US44_Weapon_MG \
        [US_Mag_M1919_50_Mixed_Ball,1] call Olsen_FW_FNC_AddItem; \
        [US_Weap_M1919A4] call Olsen_FW_FNC_AddItem; \
        [US_Mag_M1919_50_Mixed_Ball,6] call Olsen_FW_FNC_AddItem;

// Colt M1911 Pistol
#define US44_Weapon_Secondary \
        [US_Mag_M1911,1] call Olsen_FW_FNC_AddItem; \
        [US_Weap_M1911] call Olsen_FW_FNC_AddItem; \
        [US_Mag_M1911,3,"uniform"] call Olsen_FW_FNC_AddItem;

// For Tank Crew
#define US44_Weapon_M3GG \
        [US_Mag_M3GG,1] call Olsen_FW_FNC_AddItem; \
        [US_Weap_M3GG] call Olsen_FW_FNC_AddItem; \
        [US_Mag_M3GG,3,"vest"] call Olsen_FW_FNC_AddItem;

//======================== Loadouts ========================

//Platoon HQ

    //Platoon Commander
    US44_PC = ["US44_PC", {
        params ["_unit"];

        [US_Uni_LT] call Olsen_FW_FNC_AddItem;
        [US_Helm_2LT] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon
        US44_Weapon_Leader;

        //Secondary Weapon
        US44_Weapon_Secondary;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Platoon Sergeant
    US44_PSGT = ["US44_PSGT", {
        params ["_unit"];

        [US_Vest_M1C] call Olsen_FW_FNC_AddItem;
        [US_Uni_SGT] call Olsen_FW_FNC_AddItem;
        [US_BP_M1928] call Olsen_FW_FNC_AddItem;
        [US_Helm_NCO_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon
        US44_Weapon_Rifle_Light;

        //Secondary Weapon
        US44_Weapon_Secondary;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Radio Operator
    US44_PRTO = ["US44_PRTO", {
        params ["_unit"];

        [US_Vest_M1C] call Olsen_FW_FNC_AddItem;
        [US_Uni_CPL] call Olsen_FW_FNC_AddItem;
        [US_BP_M1928] call Olsen_FW_FNC_AddItem;
        [US_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        US44_Weapon_Rifle_Light;

        //Extra
        [GEN_Radio_HH] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Messenger
    US44_Mess = ["US44_Mess", {
        params ["_unit"];

        [US_Vest_M1C] call Olsen_FW_FNC_AddItem;
        [US_Uni_PFC] call Olsen_FW_FNC_AddItem;
        [US_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        US44_Weapon_Rifle_Light;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Medic
    US44_MedP = ["US44_MedP", {
        params ["_unit"];

        [US_Uni_Med] call Olsen_FW_FNC_AddItem;
        [US_Vest_Med] call Olsen_FW_FNC_AddItem;
        [US_BP_M1928] call Olsen_FW_FNC_AddItem;
        [US_Helm_Med_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        US44_Weapon_Rifle_Light;

        //Extra
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        GEN_MedicP_Equipment_Set;
    }];

//Squad

    //Squad Leader
    US44_SL = ["US44_SL", {
        params ["_unit"];

        [US_Uni_SGT] call Olsen_FW_FNC_AddItem;
        [US_BP_M1928] call Olsen_FW_FNC_AddItem;
        [US_Helm_NCO_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon
        US44_Weapon_Leader;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Assistant Squad Leader
    US44_S2 = ["US44_S2", {
        params ["_unit"];

        [US_Uni_CPL] call Olsen_FW_FNC_AddItem;
        [US_BP_M1928] call Olsen_FW_FNC_AddItem;
        [US_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        US44_Weapon_Leader;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [GEN_BinoUS] call Olsen_FW_FNC_AddItem;
    }];

    //Automatic Rifleman
    US44_AR = ["US44_AR", {
        params ["_unit"];

        [US_Uni_CPL] call Olsen_FW_FNC_AddItem;
        [US_Vest_BAR] call Olsen_FW_FNC_AddItem;
        [US_BP_M1928] call Olsen_FW_FNC_AddItem;
        [US_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        US44_Weapon_AR;

        //Extra
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Automatic Rifle Assistant
    US44_AAR = ["US44_AAR", {
        params ["_unit"];

        [US_Uni_PFC] call Olsen_FW_FNC_AddItem;
        [US_Vest_M1G] call Olsen_FW_FNC_AddItem;
        [US_BP_M1928] call Olsen_FW_FNC_AddItem;
        [US_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        US44_Weapon_Rifle;

        //Extra
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [US_Mag_BAR_Mixed_Ball,10,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

    //Assistant Medic
    US44_MedS = ["US44_MedS", {
        params ["_unit"];

        [US_Uni_PFC] call Olsen_FW_FNC_AddItem;
        [US_Vest_M1C] call Olsen_FW_FNC_AddItem;
        [US_BP_M1928] call Olsen_FW_FNC_AddItem;
        [US_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_MedicS_Equipment_Set;

        //Primary Weapon
        US44_Weapon_Rifle_Light;

        //Extra
        [GEN_Gren_Frag_P,2] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [US_Mag_BAR_Mixed_Ball,2,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

    //Rifleman
    US44_Rif = ["US44_Rif", {
        params ["_unit"];

        [US_Uni_PVT] call Olsen_FW_FNC_AddItem;
        [US_Vest_M1G] call Olsen_FW_FNC_AddItem;
        [US_BP_M1928] call Olsen_FW_FNC_AddItem;
        [US_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        US44_Weapon_Rifle;

        //Extra
        [GEN_Gren_Frag_P,2] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [US_Mag_BAR_Mixed_Ball,2,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

//Machine Gun Team

    //Machine Gun Team Leader
    US44_MGTL = ["US44_MGTL", {
        params ["_unit"];

        [US_Uni_CPL] call Olsen_FW_FNC_AddItem;
        [US_Vest_M1G] call Olsen_FW_FNC_AddItem;
        [US_BP_M1928] call Olsen_FW_FNC_AddItem;
        [US_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        US44_Weapon_Rifle;

        //Extra
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [US_Mag_M1919_50_Mixed_Ball,12] call Olsen_FW_FNC_AddItem;
        [GEN_BinoUS] call Olsen_FW_FNC_AddItem;
    }];

    //Machine Gunner
    US44_MG = ["US44_MG", {
        params ["_unit"];

        [US_Uni_PFC] call Olsen_FW_FNC_AddItem;
        [US_Vest_MGA] call Olsen_FW_FNC_AddItem;
        [US_BP_MG] call Olsen_FW_FNC_AddItem;
        [US_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Secondary Weapon
        US44_Weapon_Secondary;

        //Primary Weapon
        US44_Weapon_MG;
    }];

//Bazooka Team

    //Bazooka Team Leader
    US44_BzkaTL = ["US44_BzkaTL", {
        params ["_unit"];

        [US_Vest_M1C] call Olsen_FW_FNC_AddItem;
        [US_Uni_CPL] call Olsen_FW_FNC_AddItem;
        [US_BP_AT] call Olsen_FW_FNC_AddItem;
        [US_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        US44_Weapon_Rifle_Light;

        //Extra
        [US_Mag_Bazoo,3,"backpack"] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [GEN_BinoUS] call Olsen_FW_FNC_AddItem;
    }];

    //Bazooka Gunner
    US44_BzkaG = ["US44_BzkaG", {
        params ["_unit"];

        [US_Vest_M1C] call Olsen_FW_FNC_AddItem;
        [US_Uni_PFC] call Olsen_FW_FNC_AddItem;
        [US_BP_AT] call Olsen_FW_FNC_AddItem;
        [US_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        US44_Weapon_Rifle_Light;

        //Extra
        [US_Mag_Bazoo,1] call Olsen_FW_FNC_AddItem;
        [US_Weap_Bazoo] call Olsen_FW_FNC_AddItem;
        [US_Mag_Bazoo,3,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

//Tank Crew

    //Tank Commander
    US44_VCom = ["US44_VCom", {
        params ["_unit"];

        [US_Vest_M1C] call Olsen_FW_FNC_AddItem;
        [US_Uni_VCrew1] call Olsen_FW_FNC_AddItem;
        [US_Helm_VCrew] call Olsen_FW_FNC_AddItem;
        [GEN_Face_Tank_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon
        US44_Weapon_M3GG;

        //Secondary Weapon
        US44_Weapon_Secondary;
    }];

    //Tank Crew
    US44_VCrew = ["US44_VCrew", {
        params ["_unit"];

        [US_Vest_M1C] call Olsen_FW_FNC_AddItem;
        [US_Uni_VCrew2] call Olsen_FW_FNC_AddItem;
        [US_BP_M1928] call Olsen_FW_FNC_AddItem;
        [US_Helm_VCrew] call Olsen_FW_FNC_AddItem;
        [GEN_Face_Tank_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Weapon
        US44_Weapon_M3GG;

        //Extra
        [GEN_Toolkit] call Olsen_FW_FNC_AddItem;
    }];
