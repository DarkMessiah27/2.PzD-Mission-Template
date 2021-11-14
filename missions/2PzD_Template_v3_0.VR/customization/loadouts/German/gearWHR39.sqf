// Info: German Wehrmacht 1939 Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use Olsen_FW_FNC_AddItemRandom

/*Loadouts

    //Kompanietrupp
[this, WHR39_CC] call Olsen_FW_FNC_GearScript;           Kompanieführer
[this, WHR39_C2] call Olsen_FW_FNC_GearScript;           Kompanietruppführer

    //Zugtrupp
[this, WHR39_PC] call Olsen_FW_FNC_GearScript;           Zugführer
[this, WHR39_P2] call Olsen_FW_FNC_GearScript;           Zugtruppführer
[this, WHR39_RTO] call Olsen_FW_FNC_GearScript;          Funker
[this, WHR39_Mess] call Olsen_FW_FNC_GearScript;         Melder
[this, WHR39_MedP] call Olsen_FW_FNC_GearScript;         Krankenträger

    //Gruppe
[this, WHR39_SL] call Olsen_FW_FNC_GearScript;           Gruppenführer
[this, WHR39_S2] call Olsen_FW_FNC_GearScript;           Stellvertretender Gruppenführer
[this, WHR39_S3] call Olsen_FW_FNC_GearScript;           Gefreiter
[this, WHR39_MG] call Olsen_FW_FNC_GearScript;           MG-Richtschütze
[this, WHR39_MGA] call Olsen_FW_FNC_GearScript;          MG-Hilfsschütze
[this, WHR39_MGAB] call Olsen_FW_FNC_GearScript;         MG-Munitionsträger
[this, WHR39_Gren] call Olsen_FW_FNC_GearScript;         Grenadier
[this, WHR39_MedS] call Olsen_FW_FNC_GearScript;         Hilfs-Krankenträger
[this, WHR39_Rif] call Olsen_FW_FNC_GearScript;          Gewehrschütze

    //Weapon Truppen
[this, WHR39_MortSL] call Olsen_FW_FNC_GearScript;       Mortar Truppführer
[this, WHR39_MortG] call Olsen_FW_FNC_GearScript;        Mortar Granatwerferschützen
[this, WHR39_MortA] call Olsen_FW_FNC_GearScript;        Mortar Munitionsträger

[this, WHR39_HMGSL] call Olsen_FW_FNC_GearScript;        HMG Truppführer
[this, WHR39_HMGG] call Olsen_FW_FNC_GearScript;         HMG Richtschütze
[this, WHR39_HMGA] call Olsen_FW_FNC_GearScript;         HMG Munitionsträger

[this, WHR39_ATRSL] call Olsen_FW_FNC_GearScript;        Panzerbüchse Truppführer
[this, WHR39_ATRG] call Olsen_FW_FNC_GearScript;         Panzerbüchse Richtschütze
[this, WHR39_ATRA] call Olsen_FW_FNC_GearScript;         Panzerbüchse Munitionsträger

    //Tank Crew
[this, WHR39_VCom] call Olsen_FW_FNC_GearScript;         Besatzungsführer
[this, WHR39_VCrew] call Olsen_FW_FNC_GearScript;        Besatzung
*/

//======================== Definitions ========================

//For Kompanieführer and Zugführer
#define WHR39_Weapon_Officer \
        [ \
            [ \
                [Ger_Vest_C2] \
            ],[80], \
            [ \
                [Ger_Vest_PC], \
                [Ger_Mag_MP40,1], \
                [Ger_Weap_MP38], \
                [Ger_Mag_MP40,3,"vest"] \
            ],[20], \
            [ \
                [Ger_Vest_PC], \
                [Ger_Mag_MP35_32,1], \
                [Ger_Weap_MP35], \
                [Ger_Mag_MP35_32,3,"vest"] \
            ],[10], \
            [ \
                [Ger_Vest_PC], \
                [Ger_Mag_MP28_32,1], \
                [Ger_Weap_MP28], \
                [Ger_Mag_MP28_32,3,"vest"] \
            ],[5], \
            [ \
                [Ger_Vest_PC], \
                [Ger_Mag_P08_D,1], \
                [Ger_Weap_MP18], \
                [Ger_Mag_P08_D,3,"vest"] \
            ],[1] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

//Besatzungsführer
#define WHR39_Weapon_BF \
        [ \
            [ \
                [Ger_Vest_VCrew] \
            ],[80], \
            [ \
                [Ger_Vest_PC], \
                [Ger_Mag_MP40,1], \
                [Ger_Weap_MP38], \
                [Ger_Mag_MP40,3,"vest"] \
            ],[20] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

//For Kompanietruppführer and Zugtruppführer
#define WHR39_Weapon_TF \
        [ \
            [ \
                [Ger_Vest_K98IFA], \
                [Ger_Mag_K98,1], \
                [Ger_Acc_K98_Bayo,1,"uniform"], \
                [Ger_Weap_K98_E], \
                [Ger_Mag_K98,12,"vest"] \
            ],[60], \
            [ \
                [Ger_Vest_K98IFA], \
                [Ger_Mag_K98,1], \
                [Ger_Weap_K98b], \
                [Ger_Mag_K98,12,"vest"] \
            ],[30], \
            [ \
                [Ger_Vest_K98IFA], \
                [Ger_Mag_K98,1], \
                [Ger_Weap_G98], \
                [Ger_Mag_K98,12,"vest"] \
            ],[10], \
            [ \
                [Ger_Vest_PC], \
                [Ger_Mag_MP40,1], \
                [Ger_Weap_MP38], \
                [Ger_Mag_MP40,3,"vest"] \
            ],[20], \
            [ \
                [Ger_Vest_PC], \
                [Ger_Mag_MP35_32,1], \
                [Ger_Weap_MP35], \
                [Ger_Mag_MP35_32,3,"vest"] \
            ],[10], \
            [ \
                [Ger_Vest_PC], \
                [Ger_Mag_MP28_32,1], \
                [Ger_Weap_MP28], \
                [Ger_Mag_MP28_32,3,"vest"] \
            ],[5], \
            [ \
                [Ger_Vest_PC], \
                [Ger_Mag_P08_D,1], \
                [Ger_Weap_MP18], \
                [Ger_Mag_P08_D,3,"vest"] \
            ],[1] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

// For Gruppenführer
#define WHR39_Weapon_GF \
        [ \
            [ \
                [Ger_Vest_K98IFA], \
                [Ger_Mag_K98,1], \
                [Ger_Acc_K98_Bayo,1,"uniform"], \
                [Ger_Weap_K98_E], \
                [Ger_Mag_K98,12,"vest"] \
            ],[60], \
            [ \
                [Ger_Vest_K98IFA], \
                [Ger_Mag_K98,1], \
                [Ger_Weap_K98b], \
                [Ger_Mag_K98,12,"vest"] \
            ],[30], \
            [ \
                [Ger_Vest_K98IFA], \
                [Ger_Mag_K98,1], \
                [Ger_Weap_G98], \
                [Ger_Mag_K98,12,"vest"] \
            ],[10], \
            [ \
                [Ger_Vest_SL], \
                [Ger_Mag_MP40,1], \
                [Ger_Weap_MP38], \
                [Ger_Mag_MP40,3,"vest"] \
            ],[20], \
            [ \
                [Ger_Vest_SL], \
                [Ger_Mag_MP35_32,1], \
                [Ger_Weap_MP35], \
                [Ger_Mag_MP35_32,3,"vest"] \
            ],[10], \
            [ \
                [Ger_Vest_SL], \
                [Ger_Mag_MP28_32,1], \
                [Ger_Weap_MP28], \
                [Ger_Mag_MP28_32,3,"vest"] \
            ],[5], \
            [ \
                [Ger_Vest_SL], \
                [Ger_Mag_P08_D,1], \
                [Ger_Weap_MP18], \
                [Ger_Mag_P08_D,3,"vest"] \
            ],[1] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

// For Gefreiter
#define WHR39_Weapon_Gef \
        [ \
            [ \
                [Ger_Vest_K98], \
                [Ger_Mag_K98,1], \
                [Ger_Acc_K98_Bayo,1,"uniform"], \
                [Ger_Weap_K98_E], \
                [Ger_Mag_K98,12,"vest"] \
            ],[60], \
            [ \
                [Ger_Vest_K98], \
                [Ger_Mag_K98,1], \
                [Ger_Weap_K98b], \
                [Ger_Mag_K98,12,"vest"] \
            ],[30], \
            [ \
                [Ger_Vest_K98], \
                [Ger_Mag_K98,1], \
                [Ger_Weap_G98], \
                [Ger_Mag_K98,12,"vest"] \
            ],[10], \
            [ \
                [Ger_Vest_MP40], \
                [Ger_Mag_MP40,1], \
                [Ger_Weap_MP38], \
                [Ger_Mag_MP40,6,"vest"] \
            ],[20], \
            [ \
                [Ger_Vest_MP40], \
                [Ger_Mag_MP35_32,1], \
                [Ger_Weap_MP35], \
                [Ger_Mag_MP35_32,6,"vest"] \
            ],[10], \
            [ \
                [Ger_Vest_MP40], \
                [Ger_Mag_MP28_32,1], \
                [Ger_Weap_MP28], \
                [Ger_Mag_MP28_32,6,"vest"] \
            ],[5], \
            [ \
                [Ger_Vest_MP40], \
                [Ger_Mag_P08_D,1], \
                [Ger_Weap_MP18], \
                [Ger_Mag_P08_D,6,"vest"] \
            ],[1] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

// For all men with rifles
#define WHR39_Weapon_Rifleman \
        [ \
            [ \
                [Ger_Mag_K98,1], \
                [Ger_Acc_K98_Bayo,1,"uniform"], \
                [Ger_Weap_K98_E], \
                [Ger_Mag_K98,12,"vest"] \
            ],[60], \
            [ \
                [Ger_Mag_K98,1], \
                [Ger_Weap_K98b], \
                [Ger_Mag_K98,12,"vest"] \
            ],[30], \
            [ \
                [Ger_Mag_K98,1], \
                [Ger_Weap_G98], \
                [Ger_Mag_K98,12,"vest"] \
            ],[10] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

#define WHR39_Weapon_MG \
        [ \
            [ \
                [Ger_Mag_MG_50_Mixed_sS,1], \
                [Ger_Weap_MG34], \
                [Ger_Mag_MG_50_Mixed_sS,5,"vest"], \
                [Ger_Mag_MG_50_Mixed_sS,3] \
            ],[90], \
            [ \
                [Ger_Mag_MG30_Mixed_sS,1], \
                [Ger_Weap_MG30], \
                [Ger_Mag_MG30_Mixed_sS,5,"vest"], \
                [Ger_Mag_MG30_Mixed_sS,3] \
            ],[10] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

//1 for Gruppe leaders, 2 for Gewehrschütze, 3 for MG-Hilfsschütze, 5 for MG-Munitionsträger
#define WHR39_Weapon_MG_Ammo(COUNT) \
        _weaponsArray = []; \
        { \
            _weapon = primaryWeapon _x; \
            if ( \
                _weapon == Ger_Weap_MG34 \
                || {_weapon == Ger_Weap_MG42} \
                || {_weapon == Rus_Weap_DP} \
                || {_weapon == Ger_Weap_MG30} \
            ) then { \
                _weaponsArray pushBack _weapon; \
            }; \
        } forEach units _unit; \
        if (count _weaponsArray != 0) then { \
            _ammobearer = selectRandom _weaponsArray; \
            switch (_ammobearer) do { \
                case Ger_Weap_MG34: { \
                    [Ger_Mag_MG_50_Mixed_sS,COUNT,"backpack"] call Olsen_FW_FNC_AddItem; \
                }; \
                case Ger_Weap_MG30: { \
                    [Ger_Mag_MG30_Mixed_sS,COUNT,"backpack"] call Olsen_FW_FNC_AddItem; \
                }; \
            }; \
        };

//For Kompanieführer, Zugführer and Besatzungsführer
#define WHR39_Weapon_Officer_Secondary \
        [ \
            [ \
                [Ger_Mag_P08,1], \
                [Ger_Weap_P08], \
                [Ger_Mag_P08,2,"uniform"] \
            ],[53], \
            [ \
                [Ger_Mag_P38,1], \
                [Ger_Weap_P38], \
                [Ger_Mag_P38,2,"uniform"] \
            ],[37], \
            [ \
                [Ger_Mag_PP,1], \
                [Ger_Weap_PP], \
                [Ger_Mag_PP,2,"uniform"] \
            ],[10], \
            [ \
                [Ger_Mag_PPK,1], \
                [Ger_Weap_PPK], \
                [Ger_Mag_PPK,2,"uniform"] \
            ],[10], \
            [ \
                [Ger_Mag_M1916,1], \
                [Ger_Weap_M1916], \
                [Ger_Mag_M1916,2,"uniform"] \
            ],[5], \
            [ \
                [Ger_Mag_M1930,1], \
                [Ger_Weap_M1930], \
                [Ger_Mag_M1930,2,"uniform"] \
            ],[5], \
            [ \
                [Ger_Mag_P08,1], \
                [Ger_Weap_LP08], \
                [Ger_Mag_P08,2,"uniform"] \
            ],[5], \
            [ \
                [Ger_Mag_M172_20,1], \
                [Ger_Weap_M172], \
                [Ger_Mag_M172_20,2,"uniform"] \
            ],[1] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

//For Kompanietruppführer, MG-Richtschütze, Mortar Truppführer, Mortar Granatwerferschützen,
//HMG Richtschütze, Panzerbüchse Richtschütze, Besatzung
#define WHR39_Weapon_Enlisted_Secondary \
        [ \
            [ \
                [Ger_Mag_P08,1], \
                [Ger_Weap_P08], \
                [Ger_Mag_P08,2,"uniform"] \
            ],[58], \
            [ \
                [Ger_Mag_P38,1], \
                [Ger_Weap_P38], \
                [Ger_Mag_P38,2,"uniform"] \
            ],[42], \
            [ \
                [Ger_Mag_P08,1], \
                [Ger_Weap_LP08], \
                [Ger_Mag_P08,2,"uniform"] \
            ],[5], \
            [ \
                [Ger_Mag_M1916,1], \
                [Ger_Weap_M1916], \
                [Ger_Mag_M1916,2,"uniform"] \
            ],[2], \
            [ \
                [Ger_Mag_M172_20,1], \
                [Ger_Weap_M172], \
                [Ger_Mag_M172_20,2,"uniform"] \
            ],[0.5] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

//======================== Loadouts ========================

//Company HQ

    //Kompanieführer
    WHR39_CC = ["WHR39_CC", {
        params ["_unit"];

        [Ger_Uni_CC] call Olsen_FW_FNC_AddItem;
        [Ger_Hat_Officer] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon
        WHR39_Weapon_Officer;

        //Secondary Weapon
        WHR39_Weapon_Officer_Secondary;
    }];

    //Kompanietruppführer
    WHR39_C2 = ["WHR39_C2", {
        params ["_unit"];

        [Ger_Uni_SL] call Olsen_FW_FNC_AddItem;
        [Ger_Hat] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon
        WHR39_Weapon_TF;

        //Secondary Weapon
        WHR39_Weapon_Enlisted_Secondary;
    }];

//Platoon HQ

    //Zugführer
    WHR39_PC = ["WHR39_PC", {
        params ["_unit"];

        [Ger_Uni_PC] call Olsen_FW_FNC_AddItem;
        [Ger_Hat_Officer] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon
        WHR39_Weapon_Officer;

        //Secondary Weapon
        WHR39_Weapon_Officer_Secondary;
    }];

    //Zugtruppführer
    WHR39_P2 = ["WHR39_P2", {
        params ["_unit"];

        [Ger_Uni_SL] call Olsen_FW_FNC_AddItem;

        [Ger_BP_AF] call Olsen_FW_FNC_AddItem;
        [Ger_Hat] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon
        WHR39_Weapon_TF;

        //Extra
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_HE_SC,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Funker
    WHR39_RTO = ["WHR39_RTO", {
        params ["_unit"];

        [Ger_Uni_Rif_E] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_K98] call Olsen_FW_FNC_AddItem;
        [Ger_BP_Radio] call Olsen_FW_FNC_AddItem;
        [Ger_Hat] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        [GEN_Headset] call Olsen_FW_FNC_AddItem;

        //Primary Weapon
        WHR39_Weapon_Rifleman;
    }];

    //Melder
    WHR39_Mess = ["WHR39_Mess", {
        params ["_unit"];

        [Ger_Uni_Rif_E] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_K98] call Olsen_FW_FNC_AddItem;
        [Ger_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        WHR39_Weapon_Rifleman;

        //Extra
        [Ger_Gren_HE_SC,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Krankenträger
    WHR39_MedP = ["WHR39_MedP", {
        params ["_unit"];

        [Ger_Uni_Med] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_Med] call Olsen_FW_FNC_AddItem;
        [Ger_BP_Med] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Secondary Weapon
        WHR39_Weapon_Enlisted_Secondary;

        //Extra
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        GEN_MedicP_Equipment_Set;
    }];

//Squad

    //Gruppenführer
    WHR39_SL = ["WHR39_SL", {
        params ["_unit"];

        [Ger_Uni_SL] call Olsen_FW_FNC_AddItem;
        [Ger_BP_AF] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon
        WHR39_Weapon_GF;

        //Extra
        [Ger_Gren_HE_SC,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        WHR39_Weapon_MG_Ammo(1);
    }];

    //Stellvertretender Gruppenführer
    WHR39_S2 = ["WHR39_S2", {
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
        WHR39_Weapon_Rifleman;

        //Extra
        [Ger_Gren_HE_SC,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        WHR39_Weapon_MG_Ammo(1);
    }];

    //Gefreiter
    WHR39_S3 = ["WHR39_S3", {
        params ["_unit"];

        [Ger_Uni_S3_E] call Olsen_FW_FNC_AddItem;
        [Ger_BP_T34] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        WHR39_Weapon_Gef;

        //Extra
        [Ger_Gren_HE_SC,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        WHR39_Weapon_MG_Ammo(1);
    }];

    //MG-Richtschütze
    WHR39_MG = ["WHR39_MG", {
        params ["_unit"];

        [Ger_Uni_Rif_E] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_MG] call Olsen_FW_FNC_AddItem;
        [Ger_BP_MG_D] call Olsen_FW_FNC_AddItem;
        [Ger_mg_neck] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Secondary Weapon
        WHR39_Weapon_Enlisted_Secondary;

        //Primary Weapon
        WHR39_Weapon_MG;

        //Extra
    }];

    //MG-Hilfsschütze
    WHR39_MGA = ["WHR39_MGA", {
        params ["_unit"];

        [Ger_Uni_Rif_E] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_MGA] call Olsen_FW_FNC_AddItem;
        [Ger_BP_MG_D] call Olsen_FW_FNC_AddItem;
        [Ger_mg_neck] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        [GEN_ace_sparebarrel] call Olsen_FW_FNC_AddItem;

        //Primary Weapon
        WHR39_Weapon_Rifleman;

        //Extra
        WHR39_Weapon_MG_Ammo(3);
    }];

    //MG-Munitionsträger
    WHR39_MGAB = ["WHR39_MGAB", {
        params ["_unit"];

        [Ger_Uni_Rif_E] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_K98] call Olsen_FW_FNC_AddItem;
        [Ger_BP_MG_D] call Olsen_FW_FNC_AddItem;
        [Ger_mg_neck] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        WHR39_Weapon_Rifleman;

        //Extra
        WHR39_Weapon_MG_Ammo(5);
    }];

    //Grenadier
    WHR39_Gren = ["WHR39_Gren", {
        params ["_unit"];

        [Ger_Uni_Rif_E] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_K98] call Olsen_FW_FNC_AddItem;
        [Ger_BP_Gren] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        WHR39_Weapon_Rifleman;

        //Extra
        [Ger_Gren_HE_SC,8,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

    //Hilfs-Krankenträger
    WHR39_MedS = ["WHR39_MedS", {
        params ["_unit"];

        [Ger_Uni_Rif_E] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_K98] call Olsen_FW_FNC_AddItem;
        [Ger_BP_Med] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_MedicS_Equipment_Set;

        //Primary Weapon
        WHR39_Weapon_Rifleman;

        //Extra
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_HE_SC,1] call Olsen_FW_FNC_AddItem;
    }];

    //Gewehrschütze
    WHR39_Rif = ["WHR39_Rif", {
        params ["_unit"];

        [Ger_Uni_Rif_E] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_K98] call Olsen_FW_FNC_AddItem;
        [Ger_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        WHR39_Weapon_Rifleman;

        //Extra
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_HE_SC,1] call Olsen_FW_FNC_AddItem;
        WHR39_Weapon_MG_Ammo(1);
    }];

//Weapon Truppen

    //Mortar Team
    //Mortar Truppführer
    WHR39_MortSL = ["WHR39_MortSL", {
        params ["_unit"];

        [Ger_Uni_S3_E] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_HGun] call Olsen_FW_FNC_AddItem;
        [Ger_BP_T34] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Mortar_Equipment_Set;

        WHR39_Weapon_Enlisted_Secondary;

        //Launcher
        [Ger_Weap_MortB,1] call Olsen_FW_FNC_AddItem;

        //Extra
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_Mort_HE,4,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

    //Mortar Granatwerferschützen
    WHR39_MortG = ["WHR39_MortG", {
        params ["_unit"];

        [Ger_Uni_Rif_E] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_HGun] call Olsen_FW_FNC_AddItem;
        [Ger_BP_T34] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Mortar_Equipment_Set;

        WHR39_Weapon_Enlisted_Secondary;

        //Launcher
        [Ger_Weap_MortT,1] call Olsen_FW_FNC_AddItem;

        //Extra
        [Ger_Mag_Mort_HE,4,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

    //Mortar Munitionsträger
    WHR39_MortA = ["WHR39_MortA", {
        params ["_unit"];

        [Ger_Uni_Rif_E] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_K98] call Olsen_FW_FNC_AddItem;
        [Ger_BP_T34] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Mortar_Equipment_Set;

        //Primary Weapon
        WHR39_Weapon_Rifleman;

        //Extra
        [Ger_Mag_Mort_HE,4,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

    //HMG Team
    //HMG Truppführer
    WHR39_HMGSL = ["WHR39_HMGSL", {
        params ["_unit"];

        [Ger_Uni_S3_E] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_MGA] call Olsen_FW_FNC_AddItem;
        [Ger_BP_MG_B] call Olsen_FW_FNC_AddItem;
        [Ger_mg_neck] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;
        [GEN_ace_sparebarrel] call Olsen_FW_FNC_AddItem;

        //Primary Weapon
        WHR39_Weapon_Rifleman;

        //Launcher
        [Ger_Weap_MG_T,1] call Olsen_FW_FNC_AddItem;

        //Extra
        [Ger_Mag_MG_250_Mixed_sS,2,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

    //HMG Richtschütze
    WHR39_HMGG = ["WHR39_HMGG", {
        params ["_unit"];

        [Ger_Uni_Rif_E] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_MG] call Olsen_FW_FNC_AddItem;
        [Ger_BP_MG_B] call Olsen_FW_FNC_AddItem;
        [Ger_mg_neck] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Secondary Weapon
        WHR39_Weapon_Enlisted_Secondary;

        //Primary Weapon
        [Ger_Mag_MG_250_Mixed_sS,1] call Olsen_FW_FNC_AddItem;
        [Ger_Weap_MG34] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_MG_250_Mixed_sS,4,"backpack"] call Olsen_FW_FNC_AddItem;

        //Extra
    }];

    //HMG Munitionsträger
    WHR39_HMGA = ["WHR39_HMGA", {
        params ["_unit"];

        [Ger_Uni_Rif_E] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_K98] call Olsen_FW_FNC_AddItem;
        [Ger_BP_MG_B] call Olsen_FW_FNC_AddItem;
        [Ger_mg_neck] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        WHR39_Weapon_Rifleman;

        //Extra
        [Ger_Mag_MG_250_Mixed_sS,3,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

    //Panzerbüchse Team
    //Panzerbüchse Truppführer
    WHR39_ATRSL = ["WHR39_ATRSL", {
        params ["_unit"];

        [Ger_Uni_S3_E] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_K98] call Olsen_FW_FNC_AddItem;
        [Ger_BP_T34] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon
        WHR39_Weapon_Rifleman;

        //Extra
        [Ger_Mag_PzB39,20,"backpack"] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

    //Panzerbüchse Richtschütze
    WHR39_ATRG = ["WHR39_ATRG", {
        params ["_unit"];

        [Ger_Uni_Rif_E] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_MG] call Olsen_FW_FNC_AddItem;
        [Ger_BP_T34] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Secondary Weapon
        WHR39_Weapon_Enlisted_Secondary;

        //Primary Weapon
        [Ger_Mag_PzB39,1] call Olsen_FW_FNC_AddItem;
        [Ger_Weap_PzB39] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_PzB39,20,"vest"] call Olsen_FW_FNC_AddItem;
    }];

    //Panzerbüchse Munitionsträger
    WHR39_ATRAB = ["WHR39_ATRAB", {
        params ["_unit"];

        [Ger_Uni_Rif_E] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_K98] call Olsen_FW_FNC_AddItem;
        [Ger_BP_T34] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        WHR39_Weapon_Rifleman;

        //Extra
        [Ger_Mag_PzB39,20,"backpack"] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Frag_P,1] call Olsen_FW_FNC_AddItem;
    }];

//Tank Crew

    //Besatzungsführer
    WHR39_VCom = ["WHR39_VCom", {
        params ["_unit"];

        [Ger_Uni_VCom] call Olsen_FW_FNC_AddItem;
        [Ger_BP_VCrew] call Olsen_FW_FNC_AddItem;
        [Ger_Hat_VCom_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_Tank_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon
        WHR39_Weapon_BF;

        //Secondary Weapon
        WHR39_Weapon_Officer_Secondary;
    }];

    //Besatzung
    WHR39_VCrew = ["WHR39_VCrew", {
        params ["_unit"];

        [Ger_Uni_VCrew] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_VCrew] call Olsen_FW_FNC_AddItem;
        [Ger_BP_VCrew] call Olsen_FW_FNC_AddItem;
        [Ger_Hat_VCrew_r] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_Tank_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Secondary Weapon
        WHR39_Weapon_Enlisted_Secondary;

        //Extra
        [GEN_Toolkit] call Olsen_FW_FNC_AddItem;
    }];
