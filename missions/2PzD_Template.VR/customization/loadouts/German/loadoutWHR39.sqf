// Info: German Wehrmacht 1939 Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use Olsen_FW_FNC_AddItemRandom

/*Loadouts

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
[this, WHR39_Gren] call Olsen_FW_FNC_GearScript;         Grenadier
[this, WHR39_MedS] call Olsen_FW_FNC_GearScript;         Hilfs-Krankenträger
[this, WHR39_Rif] call Olsen_FW_FNC_GearScript;          Gewehrschütze

    //Weapon Truppen
[this, WHR39_HMGSL] call Olsen_FW_FNC_GearScript;        HMG Truppführer
[this, WHR39_HMGG] call Olsen_FW_FNC_GearScript;         HMG Richtschütze
[this, WHR39_HMGA] call Olsen_FW_FNC_GearScript;         HMG Munitionsträger

    //Recon
[this, WHR39_RCTL] call Olsen_FW_FNC_GearScript;         Recon Truppführer
[this, WHR39_RCTS] call Olsen_FW_FNC_GearScript;         Recon Scharfschüte

    //Tank Crew
[this, WHR39_VCom] call Olsen_FW_FNC_GearScript;         Besatzungsführer
[this, WHR39_VCrew] call Olsen_FW_FNC_GearScript;        Besatzung
*/

//======================== Definitions ========================

#define WHR39_Weapon_Leader \
        [ \
            [ \
                [Ger_Vest_PC], \
                [Ger_Mag_MP40,1], \
                [Ger_Weap_MP38], \
                [Ger_Mag_MP40,6,"vest"] \
            ],[34], \
            [ \
                [Ger_Vest_PC], \
                [Ger_Mag_MP35_32,1], \
                [Ger_Weap_MP35], \
                [Ger_Mag_MP35_32,6,"vest"] \
            ],[33], \
            [ \
                [Ger_Vest_PC], \
                [Ger_Mag_MP28_32,1], \
                [Ger_Weap_MP28], \
                [Ger_Mag_MP28_32,6,"vest"] \
            ],[33] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

#define WHR39_Weapon_Rifleman \
        [ \
            [ \
                [Ger_Mag_K98,1], \
                [Ger_Acc_K98_Bayo,1,"uniform"], \
                [Ger_Weap_K98_E], \
                [Ger_Mag_K98,12,"vest"] \
            ],[50], \
            [ \
                [Ger_Mag_K98,1], \
                [Ger_Weap_K98b], \
                [Ger_Mag_K98,12,"vest"] \
            ],[30], \
            [ \
                [Ger_Mag_K98,1], \
                [Ger_Weap_G98], \
                [Ger_Mag_K98,12,"vest"] \
            ],[20] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

#define WHR39_Weapon_MG \
        [ \
            [ \
                [Ger_Mag_MG_50_Mixed_sS,1], \
                [Ger_Weap_MG34], \
                [Ger_Mag_MG_50_Mixed_sS,5,"vest"], \
                [Ger_Mag_MG_50_Mixed_sS,3] \
            ],[70], \
            [ \
                [Ger_Mag_MG30_Mixed_sS,1], \
                [Ger_Weap_MG30], \
                [Ger_Mag_MG30_Mixed_sS,5,"vest"], \
                [Ger_Mag_MG30_Mixed_sS,3] \
            ],[30] \
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

#define WHR39_Weapon_Secondary \
        [Ger_Mag_P08,1] call Olsen_FW_FNC_AddItem; \
        [Ger_Weap_P08] call Olsen_FW_FNC_AddItem; \
        [Ger_Mag_P08,1,"uniform"] call Olsen_FW_FNC_AddItem;

#define WHR39_Recon_Primary \
        [Ger_Mag_K98,1] call Olsen_FW_FNC_AddItem; \
        [Ger_Weap_K98_Zf39] call Olsen_FW_FNC_AddItem; \
        [Ger_Mag_K98,12] call Olsen_FW_FNC_AddItem;

//======================== Loadouts ========================

//Platoon HQ

    //Zugführer
    WHR39_PC = ["WHR39_PC", {
        params ["_unit"];

        [Ger_Uni_PC] call Olsen_FW_FNC_AddItem;
        [Ger_Hat_Officer] call Olsen_FW_FNC_AddItem;
        [Ger_BP_Radio] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon
        WHR39_Weapon_Leader;

        //Secondary Weapon
        WHR39_Weapon_Secondary;

        //Extra
        [Ger_Gren_Frag_M24,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,2] call Olsen_FW_FNC_AddItem;
    }];

    //Zugtruppführer
    WHR39_P2 = ["WHR39_P2", {
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
        WHR39_Weapon_Rifleman;

        //Extra
        [Ger_Gren_Frag_M24,2] call Olsen_FW_FNC_AddItem;
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
        [Ger_Gren_Frag_M24,1] call Olsen_FW_FNC_AddItem;
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
        WHR39_Weapon_Secondary;

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
        WHR39_Weapon_Leader;

        //Extra
        [Ger_Gren_Frag_M24,1] call Olsen_FW_FNC_AddItem;
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
        [Ger_Gren_Frag_M24,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        WHR39_Weapon_MG_Ammo(1);
    }];

    //Gefreiter
    WHR39_S3 = ["WHR39_S3", {
        params ["_unit"];

        [Ger_Uni_S3_E] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_K98] call Olsen_FW_FNC_AddItem;
        [Ger_BP_T34] call Olsen_FW_FNC_AddItem;
        [Ger_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        WHR39_Weapon_Rifleman;

        //Extra
        [Ger_Gren_Frag_M24,1] call Olsen_FW_FNC_AddItem;
        [Ger_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        WHR39_Weapon_MG_Ammo(1);
    }];

    //MG-Richtschütze
    WHR39_MG = ["WHR39_MG", {
        params ["_unit"];

        [Ger_Uni_Rif_E] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_MG] call Olsen_FW_FNC_AddItem;
        [Ger_BP_MG_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Secondary Weapon
        WHR39_Weapon_Secondary;

        //Primary Weapon
        WHR39_Weapon_MG;
    }];

    //MG-Hilfsschütze
    WHR39_MGA = ["WHR39_MGA", {
        params ["_unit"];

        [Ger_Uni_Rif_E] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_K98] call Olsen_FW_FNC_AddItem;
        [Ger_BP_MG_r] call Olsen_FW_FNC_AddItemRandom;
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

    //Grenadier
    WHR39_Gren = ["WHR39_Gren", {
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
        [Ger_Gren_Frag_M24,8,"backpack"] call Olsen_FW_FNC_AddItem;
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
        [Ger_Gren_Frag_M24,2] call Olsen_FW_FNC_AddItem;
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
        [Ger_Gren_Frag_M24,2] call Olsen_FW_FNC_AddItem;
        WHR39_Weapon_MG_Ammo(1);
    }];

//Weapon Truppen

    //HMG Team
    //HMG Truppführer
    WHR39_HMGSL = ["WHR39_HMGSL", {
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
        WHR39_Weapon_Rifleman;

        //Launcher
        [Ger_Weap_MG_T,1] call Olsen_FW_FNC_AddItem;

        //Extra
        [Ger_Mag_MG_50_Mixed_sS,10,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

    //HMG Richtschütze
    WHR39_HMGG = ["WHR39_HMGG", {
        params ["_unit"];

        [Ger_Uni_Rif_E] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_MG] call Olsen_FW_FNC_AddItem;
        [Ger_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Secondary Weapon
        WHR39_Weapon_Secondary;

        //Primary Weapon
        [Ger_Mag_MG_50_Mixed_sS,5] call Olsen_FW_FNC_AddItem;
        [Ger_Weap_MG34] call Olsen_FW_FNC_AddItem;
        [Ger_Mag_MG_50_Mixed_sS,20,"backpack"] call Olsen_FW_FNC_AddItem;

        //Extra
    }];

    //HMG Munitionsträger
    WHR39_HMGA = ["WHR39_HMGA", {
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
        [Ger_Mag_MG_50_Mixed_sS,15,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

    //Recon Team leader
    WHR39_RCTL = ["WHR39_RCTL", {
        params ["_unit"];

        [Ger_Uni_Rif_E] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_K98] call Olsen_FW_FNC_AddItem;
        [Ger_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon
        WHR39_Weapon_Rifleman;
    }];

    //Recon Team Sniper
    WHR39_RCTS = ["WHR39_RCTS", {
        params ["_unit"];

        [Ger_Uni_Rif_E] call Olsen_FW_FNC_AddItem;
        [Ger_Vest_K98] call Olsen_FW_FNC_AddItem;
        [Ger_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [Ger_Helmet] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        WHR39_Recon_Primary;
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
        WHR39_Weapon_Leader;

        //Secondary Weapon
        WHR39_Weapon_Secondary;
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
        WHR39_Weapon_Secondary;

        //Extra
        [GEN_Toolkit] call Olsen_FW_FNC_AddItem;
    }];
