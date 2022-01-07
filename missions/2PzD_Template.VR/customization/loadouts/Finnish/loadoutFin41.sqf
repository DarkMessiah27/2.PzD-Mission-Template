// Info: Finnish Army 1941 Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use Olsen_FW_FNC_AddItemRandom

/* Loadouts

    //Platoon HQ
[this, F41_PC] call Olsen_FW_FNC_GearScript;          Platoon Commander
[this, F41_PSgt] call Olsen_FW_FNC_GearScript;        Platoon Sergeant
[this, F41_Mess] call Olsen_FW_FNC_GearScript;        Messenger
[this, F41_MedP] call Olsen_FW_FNC_GearScript;        Medic
[this, F41_RTO] call Olsen_FW_FNC_GearScript;         Radio Operator

    //Squad
[this, F41_SL] call Olsen_FW_FNC_GearScript;          Squad Leader
[this, F41_TL] call Olsen_FW_FNC_GearScript;          Team Leader
[this, F41_SMG] call Olsen_FW_FNC_GearScript;         Submachine Gunner
[this, F41_Gren] call Olsen_FW_FNC_GearScript;        Grenadier
[this, F41_MedS] call Olsen_FW_FNC_GearScript;        Assistant Medic
[this, F41_Rif] call Olsen_FW_FNC_GearScript;         Rifleman
[this, F41_MG] call Olsen_FW_FNC_GearScript;          Machine Gunner
[this, F41_MGA] call Olsen_FW_FNC_GearScript;         MG Assistant

    //Heavy Weapons Teams
[this, F41_HMGTL] call Olsen_FW_FNC_GearScript;       HMG Team Leader
[this, F41_HMGG] call Olsen_FW_FNC_GearScript;        HMG Gunner

[this, F41_ATRTL] call Olsen_FW_FNC_GearScript;       AT Rifle Team Leader
[this, F41_ATRG] call Olsen_FW_FNC_GearScript;        AT Rifle Gunner

    //Vehicle Crew
[this, F41_VCom] call Olsen_FW_FNC_GearScript;        Tank Commander
[this, F41_VCrew] call Olsen_FW_FNC_GearScript;       Tank Crew
*/

//======================== Definitions ========================

//For Riflemen
#define F41_Weapon_Rifleman \
        [ \
            [ \
                [Fin_Vest_Mosin], \
                [Fin_Mag_Mos,1], \
                [Fin_Weap_MosM30], \
                [Fin_Mag_Mos,12,"vest"] \
            ],[40], \
            [ \
                [Fin_Vest_Mosin], \
                [Fin_Mag_Mos,1], \
                [Fin_Weap_MosM39], \
                [Fin_Mag_Mos,12,"vest"] \
            ],[40], \
            [ \
                [Fin_Vest_Mosin], \
                [Rus_Mag_SVT,1], \
                [Rus_Weap_SVT38], \
                [Rus_Mag_SVT,6,"vest"] \
            ],[20] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

//For Submachine Gunners
#define F41_Weapon_SMG \
                [Fin_Mag_Suomi_D,1] call Olsen_FW_FNC_AddItem; \
                [Fin_Weap_Suomi] call Olsen_FW_FNC_AddItem; \
                [Fin_Mag_Suomi_D,1,"vest"] call Olsen_FW_FNC_AddItem; \
                [Fin_Mag_Suomi_S20,2,"vest"] call Olsen_FW_FNC_AddItem; \

//For Machinegunners
#define F41_Weapon_MG \
		[Fin_Vest_MG] call Olsen_FW_FNC_AddItem; \
        [Rus_Mag_DP_Tracer,1] call Olsen_FW_FNC_AddItem; \
        [Rus_Weap_DP] call Olsen_FW_FNC_AddItem; \
        [Rus_Mag_DP_Tracer,3,"vest"] call Olsen_FW_FNC_AddItem;
        [Rus_Mag_DP_Tracer,6,"backpack"] call Olsen_FW_FNC_AddItem;

//For Assistant Machinegunners
#define F41_Weapon_MGA \
        [ \
            [ \
                [Fin_Vest_MGA], \
                [Fin_Mag_Mos,1], \
                [Fin_Weap_MosM30], \
                [Fin_Mag_Mos,12,"vest"] \
            ],[70], \
            [ \
                [Fin_Vest_MGA], \
                [Fin_Mag_Suomi_S20,1], \
                [Fin_Weap_Suomi], \
                [Fin_Mag_Suomi_S20,5,"vest"] \
            ],[30] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

//Pistol
#define F41_Weapon_Secondary \
        [Fin_Mag_LahtiL35,1] call Olsen_FW_FNC_AddItem; \
        [Fin_Weap_LahtiL35] call Olsen_FW_FNC_AddItem; \
        [Fin_Mag_LahtiL35,3,"uniform"] call Olsen_FW_FNC_AddItem;

//======================== Loadouts ========================

//Platoon HQ

//Platoon Commander
    F41_PC = ["F41_PC", {
        params ["_unit"];

        [Fin_Uni_PC] call Olsen_FW_FNC_AddItem;
		[Fin_Hat_PC] call Olsen_FW_FNC_AddItem;
        [Fin_Vest_PC] call Olsen_FW_FNC_AddItem;
        [Fin_BP] call Olsen_FW_FNC_AddItem;
		Fin_Face;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon
        F41_Weapon_SMG;

		//Secondary Weapon
		F41_Weapon_Secondary;

        //Extra
        [Fin_Gren_Frag_M32,2,"vest"] call Olsen_FW_FNC_AddItem;
        [Rus_Gren_Smoke,1,"vest"] call Olsen_FW_FNC_AddItem;
    }];

//Platoon Sergeant
    F41_PSgt = ["F41_PSgt", {
        params ["_unit"];

        [Fin_Uni_PSgt] call Olsen_FW_FNC_AddItem;
		[Fin_Vest_PC] call Olsen_FW_FNC_AddItem;
        [Fin_BP] call Olsen_FW_FNC_AddItem;
        [Fin_Hat] call Olsen_FW_FNC_AddItem;
        Fin_Face;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon & Vest
        F41_Weapon_SMG;

        //Extra
        [Fin_Gren_Frag_M32,2,"vest"] call Olsen_FW_FNC_AddItem;
        [Rus_Gren_Smoke,1,"vest"] call Olsen_FW_FNC_AddItem;
	}];

//Medic
    F41_MedP = ["F41_MedP", {
        params ["_unit"];

        [Fin_Uni_r] call Olsen_FW_FNC_AddItemRandom;
        [Fin_BP_Med] call Olsen_FW_FNC_AddItem;
        [Fin_Hat] call Olsen_FW_FNC_AddItem;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon & Vest
        F41_Weapon_Rifleman;

        //Extra
		[Fin_MedicalBand] call Olsen_FW_FNC_AddItem;
        [Rus_Gren_Smoke,1,"vest"] call Olsen_FW_FNC_AddItem;
        GEN_MedicP_Equipment_Set;
		Remove_Helm_If_Needed;
    }];

//Messenger
    F41_Mess = ["F41_Mess", {
        params ["_unit"];

        [Fin_Uni_r] call Olsen_FW_FNC_AddItemRandom;
        [Fin_Hat] call Olsen_FW_FNC_AddItem;
        Fin_Face;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon & Vest
        F41_Weapon_Rifleman;

        //Extra
        [Fin_Gren_Frag_M32,1,"vest"] call Olsen_FW_FNC_AddItem;
		Remove_Helm_If_Needed;
    }];

//Radio Operator
    F41_RTO = ["F41_RTO", {
        params ["_unit"];

        [Fin_Uni_Rif] call Olsen_FW_FNC_AddItem;
        [Rus_BP_Radio] call Olsen_FW_FNC_AddItem;
        [Fin_Hat] call Olsen_FW_FNC_AddItem;

        //Assigned Items
        GEN_Default_Equipment_Set;
        [GEN_Headset] call Olsen_FW_FNC_AddItem;

        //Primary Weapon & Vest
        F41_Weapon_Rifleman;
    }];

//Squad 

//Squad Leader
    F41_SL = ["F41_SL", {
        params ["_unit"];

        [Fin_Uni_SL] call Olsen_FW_FNC_AddItemRandom;
		[Fin_Vest_SMG] call Olsen_FW_FNC_AddItem;
        [Fin_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [Fin_Hat_SL] call Olsen_FW_FNC_AddItemRandom;
        Fin_Face;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon & Vest
        F41_Weapon_SMG;

        //Extra
        [Fin_Gren_Frag_M32,1,"vest"] call Olsen_FW_FNC_AddItem;
		[Rus_Gren_Smoke,1,"vest"] call Olsen_FW_FNC_AddItem;
    }];

	//Team Leader
    F41_TL = ["F41_TL", {
        params ["_unit"];

        [Fin_Uni_TL] call Olsen_FW_FNC_AddItemRandom;
        [Fin_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [Fin_Helmet_Late_r] call Olsen_FW_FNC_AddItemRandom;
        Fin_Face;

        //Assigned Items
        GEN_Default_Equipment_Set;
        [GEN_BinoG] call Olsen_FW_FNC_AddItem;

        //Primary Weapon & Vest
        F41_Weapon_Rifleman;

        //Extra
        [Fin_Gren_Frag_M32,1,"vest"] call Olsen_FW_FNC_AddItem;
        [Rus_Mag_DP_Tracer,1,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

	//Submachine Gunner
    F41_SMG = ["F41_SMG", {
        params ["_unit"];

        [Fin_Uni_r] call Olsen_FW_FNC_AddItemRandom;
        [Fin_Vest_SMG] call Olsen_FW_FNC_AddItem;
        [Fin_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [Fin_Helmet_Late_r] call Olsen_FW_FNC_AddItemRandom;
        Fin_Face;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        F41_Weapon_SMG;

        //Extra
        [Fin_Gren_Frag_M32,1,"vest"] call Olsen_FW_FNC_AddItem;
        [Rus_Mag_DP_Tracer,1,"backpack"] call Olsen_FW_FNC_AddItem;
		Remove_Helm_If_Needed;
    }];

	//Grenadier
    F41_Gren = ["F41_Gren", {
        params ["_unit"];

        [Fin_Uni_r] call Olsen_FW_FNC_AddItemRandom;
        [Fin_BP_Molotov] call Olsen_FW_FNC_AddItemRandom;
        [Fin_Helmet_Late_r] call Olsen_FW_FNC_AddItemRandom;
        Fin_Face;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
		F41_Weapon_Rifleman;

        //Extra
        //The molotov backpack automatically comes with 3 molotovs, don't add more!
        [Rus_Mag_DP_Tracer,1,"backpack"] call Olsen_FW_FNC_AddItem;
		Remove_Helm_If_Needed;
    }];

 //Assistant Medic
    F41_MedS = ["F41_MedS", {
        params ["_unit"];

        [Fin_Uni_r] call Olsen_FW_FNC_AddItemRandom;
        [Fin_BP_Med] call Olsen_FW_FNC_AddItemRandom;
        [Fin_Hat] call Olsen_FW_FNC_AddItem;
        Fin_Face;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_MedicS_Equipment_Set;

        //Primary Weapon & Vest
        F41_Weapon_Rifleman;

        //Extra
        [Fin_Gren_Frag_M32,1,"vest"] call Olsen_FW_FNC_AddItem;
		Remove_Helm_If_Needed;
    }];

	//Rifleman
    F41_Rif = ["F41_Rif", {
        params ["_unit"];

        [Fin_Uni_r] call Olsen_FW_FNC_AddItemRandom;
        [Fin_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [Fin_Helmet_Late_r] call Olsen_FW_FNC_AddItemRandom;
        Fin_Face;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon & Vest
        F41_Weapon_Rifleman;

        //Extra
        [Fin_Gren_Frag_M32,2,"vest"] call Olsen_FW_FNC_AddItem;
        [Rus_Mag_DP_Tracer,1,"backpack"] call Olsen_FW_FNC_AddItem;
		Remove_Helm_If_Needed;
    }];

	//Machine Gunner
    F41_MG = ["F41_MG", {
        params ["_unit"];

        [Fin_Uni_r] call Olsen_FW_FNC_AddItemRandom;
        [Fin_BP_MG] call Olsen_FW_FNC_AddItem;
        [Fin_Helmet_Late_r] call Olsen_FW_FNC_AddItemRandom;
        Fin_Face;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        F41_Weapon_MG;

        //Secondary Weapon
        F41_Weapon_Secondary;

        //Extra
        [Fin_Gren_Frag_M32,1,"vest"] call Olsen_FW_FNC_AddItem;
    }];

	//MG Assistant
    F41_MGA = ["F41_MGA", {
        params ["_unit"];

        [Fin_Uni_r] call Olsen_FW_FNC_AddItemRandom;
        [Fin_BP_MG] call Olsen_FW_FNC_AddItem;
        [Fin_Helmet_Late_r] call Olsen_FW_FNC_AddItemRandom;
        Fin_Face;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        F41_Weapon_MGA;
        
        //Extra
		[Fin_Gren_Frag_M32,1,"vest"] call Olsen_FW_FNC_AddItem;
		[Fin_Gren_Molotov,1,"vest"] call Olsen_FW_FNC_AddItem;
        [Rus_Mag_DP_Tracer,6,"backpack"] call Olsen_FW_FNC_AddItem;
		Remove_Helm_If_Needed;
    }];

	//Heavy Weapons Teams

    //HMG Team Leader
    F41_HMGTL = ["F41_HMGTL", {
        params ["_unit"];

        [Fin_Uni_TL] call Olsen_FW_FNC_AddItem;
        [Fin_Vest_HGun] call Olsen_FW_FNC_AddItem;
        [Fin_BP_HMG_Tripod] call Olsen_FW_FNC_AddItem;
        [Fin_Hat] call Olsen_FW_FNC_AddItemRandom;
        Fin_Face;
        
        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon
        F41_Weapon_SMG;

		//Extra
		[Fin_Gren_Frag_M32,1,"vest"] call Olsen_FW_FNC_AddItem;
		[Rus_Gren_Smoke,1] call Olsen_FW_FNC_AddItem;
    }];

    //HMG Gunner
    F41_HMGG = ["F41_HMGG", {
        params ["_unit"];

        [Fin_Uni_r] call Olsen_FW_FNC_AddItemRandom;
        [Fin_Vest_HGun] call Olsen_FW_FNC_AddItem;
        [Fin_BP_HMG_Gun] call Olsen_FW_FNC_AddItem;
        [Fin_Helmet_Late_r] call Olsen_FW_FNC_AddItemRandom;
        Fin_Face;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon
        F41_Weapon_SMG;

        //Secondary Weapon
        F41_Weapon_Secondary;

		//Extra
		Remove_Helm_If_Needed;
    }];

	//Anti-Tank Rifle Team Leader
    F41_ATRTL = ["F41_ATRTL", {
        params ["_unit"];

        [Fin_Uni_TL] call Olsen_FW_FNC_AddItem;
        [Fin_Vest_SMG] call Olsen_FW_FNC_AddItem;
        [Fin_BP_AT_Tripod] call Olsen_FW_FNC_AddItem;
        [Fin_Hat] call Olsen_FW_FNC_AddItemRandom;
        Fin_Face;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon
        F41_Weapon_SMG;

        //Extra
        [Fin_Gren_Frag_M32,1] call Olsen_FW_FNC_AddItem;
		[Rus_Gren_Smoke,1] call Olsen_FW_FNC_AddItem;
		[Fin_Mag_AT_Rifle,1,"vest"] call Olsen_FW_FNC_AddItem;
    }];

    //Anti-Tank Rifle Gunner
    F41_ATRG = ["F41_ATRG", {
        params ["_unit"];

        [Fin_Uni_r] call Olsen_FW_FNC_AddItemRandom;
        [Fin_BP_AT_Gun] call Olsen_FW_FNC_AddItem;
        [Fin_Helmet_Late_r] call Olsen_FW_FNC_AddItemRandom;
        Fin_Face;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        F41_Weapon_Rifleman;

		//Extra
		[Fin_Mag_AT_Rifle,3,"vest"] call Olsen_FW_FNC_AddItem;
		Remove_Helm_If_Needed;
    }];

	//Vehicle Crew

    //Tank Commander
    F41_VCom = ["F41_VCom", {
        params ["_unit"];

        [Fin_Uni_TankCom] call Olsen_FW_FNC_AddItem;
        [Fin_Vest_VCrew] call Olsen_FW_FNC_AddItem;
        [Fin_Hat_Tank] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_Tank_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon
        F41_Weapon_SMG;

        //Secondary Weapon
        F41_Weapon_Secondary;
    }];

    //Tank Crew
    F41_VCrew = ["F41_VCrew", {
        params ["_unit"];

        [Fin_Uni_TankCrew] call Olsen_FW_FNC_AddItem;
        [Fin_Vest_VCrew] call Olsen_FW_FNC_AddItem;
        [Fin_Hat_Tank] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_Tank_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Secondary Weapon
        F41_Weapon_Secondary;

        //Extra
        [GEN_Toolkit] call Olsen_FW_FNC_AddItem;
    }];