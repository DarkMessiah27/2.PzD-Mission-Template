// Info: Finnish Army 1939 Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use Olsen_FW_FNC_AddItemRandom

/* Loadouts

    //Platoon HQ
[this, F39_PC] call Olsen_FW_FNC_GearScript;          Platoon Commander
[this, F39_PSgt] call Olsen_FW_FNC_GearScript;        Platoon Sergeant
[this, F39_Mess] call Olsen_FW_FNC_GearScript;        Messenger
[this, F39_MedP] call Olsen_FW_FNC_GearScript;        Medic
[this, F39_RTO] call Olsen_FW_FNC_GearScript;         Radio Operator

    //Squad
[this, F39_SL] call Olsen_FW_FNC_GearScript;          Squad Leader
[this, F39_TL] call Olsen_FW_FNC_GearScript;          Team Leader
[this, F39_SMG] call Olsen_FW_FNC_GearScript;         Submachine Gunner
[this, F39_Gren] call Olsen_FW_FNC_GearScript;        Grenadier
[this, F39_MedS] call Olsen_FW_FNC_GearScript;        Assistant Medic
[this, F39_Rif] call Olsen_FW_FNC_GearScript;         Rifleman
[this, F39_MG] call Olsen_FW_FNC_GearScript;          Machine Gunner
[this, F39_MGA] call Olsen_FW_FNC_GearScript;         MG Assistant

    //Heavy Weapons Teams
[this, F39_HMGTL] call Olsen_FW_FNC_GearScript;       HMG Team Leader
[this, F39_HMGG] call Olsen_FW_FNC_GearScript;        HMG Gunner

[this, F39_ATRTL] call Olsen_FW_FNC_GearScript;       AT Rifle Team Leader
[this, F39_ATRG] call Olsen_FW_FNC_GearScript;        AT Rifle Gunner

    //Vehicle Crew
[this, F39_VCom] call Olsen_FW_FNC_GearScript;        Tank Commander
[this, F39_VCrew] call Olsen_FW_FNC_GearScript;       Tank Crew
*/

//======================== Definitions ========================

//For Riflemen
#define F39_Weapon_Rifleman \
        [ \
            [ \
                [Fin_Vest_Mosin], \
                [Fin_Mag_Mos,1], \
                [Fin_Weap_MosM27], \
                [Fin_Mag_Mos,12,"vest"] \
            ],[50], \
            [ \
                [Fin_Vest_Mosin], \
                [Fin_Mag_Mos,1], \
                [Fin_Weap_MosM91], \
                [Fin_Mag_Mos,12,"vest"] \
            ],[50] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

//For Submachine Gunners
#define F39_Weapon_SMG \
        [ \
            [ \
                [Fin_Mag_SIG,1], \
                [Fin_Weap_SIG], \
                [Fin_Mag_SIG,4,"vest"] \
            ],[40], \
            [ \
                [Fin_Mag_Suomi_S20,1], \
                [Fin_Weap_Suomi], \
                [Fin_Mag_Suomi_S20,5,"vest"] \
            ],[40], \
			[ \
                [Fin_Mag_Suomi_D,1], \
                [Fin_Weap_Suomi], \
                [Fin_Mag_Suomi_D,2,"vest"] \
            ],[20] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

//For Machinegunners
#define F39_Weapon_MG \
		[Fin_Vest_MG] call Olsen_FW_FNC_AddItem; \
        [Fin_Mag_Lahti_S_T,1] call Olsen_FW_FNC_AddItem; \
        [Fin_Weap_Lahti_S] call Olsen_FW_FNC_AddItem; \
        [Fin_Mag_Lahti_S_T,3,"vest"] call Olsen_FW_FNC_AddItem;
        [Fin_Mag_Lahti_S_T,8,"backpack"] call Olsen_FW_FNC_AddItem;

//For Assistant Machinegunners
#define F39_Weapon_MGA \
        [ \
            [ \
                [Fin_Vest_MGA], \
                [Fin_Mag_Mos,1], \
                [Fin_Weap_MosM91], \
                [Fin_Mag_Mos,12,"vest"] \
            ],[70], \
            [ \
                [Fin_Vest_MGA], \
                [Fin_Mag_SIG,1], \
                [Fin_Weap_SIG], \
                [Fin_Mag_SIG,4,"vest"] \
            ],[30] \
        ] call Olsen_FW_FNC_AddItemRandomPercent;

//Pistol
#define F39_Weapon_Secondary \
        [Fin_Mag_LahtiL35,1] call Olsen_FW_FNC_AddItem; \
        [Fin_Weap_LahtiL35] call Olsen_FW_FNC_AddItem; \
        [Fin_Mag_LahtiL35,3,"uniform"] call Olsen_FW_FNC_AddItem;

//======================== Loadouts ========================

//Platoon HQ

//Platoon Commander
    F39_PC = ["F39_PC", {
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
        F39_Weapon_SMG;

		//Secondary Weapon
		F39_Weapon_Secondary;

        //Extra
        [Fin_Gren_Frag_M32,2,"vest"] call Olsen_FW_FNC_AddItem;
        [Rus_Gren_Smoke,1,"vest"] call Olsen_FW_FNC_AddItem;
    }];

//Platoon Sergeant
    F39_PSgt = ["F39_PSgt", {
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
        F39_Weapon_SMG;

        //Extra
        [Fin_Gren_Frag_M32,2,"vest"] call Olsen_FW_FNC_AddItem;
        [Rus_Gren_Smoke,1,"vest"] call Olsen_FW_FNC_AddItem;
	}];

//Medic
    F39_MedP = ["F39_MedP", {
        params ["_unit"];

        [Fin_Uni_r] call Olsen_FW_FNC_AddItemRandom;

        //Primary Weapon & Vest
        F39_Weapon_Rifleman;

        [Fin_BP_Med] call Olsen_FW_FNC_AddItem;
        [Fin_Hat] call Olsen_FW_FNC_AddItem;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Extra
		[Fin_MedicalBand] call Olsen_FW_FNC_AddItem;
        [Rus_Gren_Smoke,1,"vest"] call Olsen_FW_FNC_AddItem;
        GEN_MedicP_Equipment_Set;
		Remove_Helm_If_Needed;
    }];

//Messenger
    F39_Mess = ["F39_Mess", {
        params ["_unit"];

        [Fin_Uni_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon & Vest
        F39_Weapon_Rifleman;

        [Fin_Hat] call Olsen_FW_FNC_AddItem;
        Fin_Face;

        //Extra
        [Fin_Gren_Frag_M32,1,"vest"] call Olsen_FW_FNC_AddItem;
		Remove_Helm_If_Needed;
    }];

//Radio Operator
    F39_RTO = ["F39_RTO", {
        params ["_unit"];

        [Fin_Uni_Rif] call Olsen_FW_FNC_AddItem;
        [Rus_BP_Radio] call Olsen_FW_FNC_AddItem;
        [Fin_Hat] call Olsen_FW_FNC_AddItem;

        //Primary Weapon & Vest
        F39_Weapon_Rifleman;

        //Assigned Items
        GEN_Default_Equipment_Set;
        [GEN_Headset] call Olsen_FW_FNC_AddItem;

    }];

//Squad 

//Squad Leader
    F39_SL = ["F39_SL", {
        params ["_unit"];

        [Fin_Uni_SL] call Olsen_FW_FNC_AddItemRandom;
		[Fin_Vest_SMG] call Olsen_FW_FNC_AddItem;
        [Fin_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [Fin_Helmet_Early_r] call Olsen_FW_FNC_AddItemRandom;
        Fin_Face;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon & Vest
        F39_Weapon_SMG;

        //Extra
        [Fin_Gren_Frag_M32,1,"vest"] call Olsen_FW_FNC_AddItem;
		[Rus_Gren_Smoke,1,"vest"] call Olsen_FW_FNC_AddItem;
		Remove_Helm_If_Needed;
    }];

	//Team Leader
    F39_TL = ["F39_TL", {
        params ["_unit"];

        [Fin_Uni_TL] call Olsen_FW_FNC_AddItemRandom;
        [Fin_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [Fin_Helmet_Early_r] call Olsen_FW_FNC_AddItemRandom;
        Fin_Face;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon & Vest
        F39_Weapon_Rifleman;

        //Extra
        [Fin_Gren_Frag_M32,1,"vest"] call Olsen_FW_FNC_AddItem;
        [Fin_Mag_Lahti_S_T,1,"backpack"] call Olsen_FW_FNC_AddItem;
		Remove_Helm_If_Needed;
    }];

	//Submachine Gunner
    F39_SMG = ["F39_SMG", {
        params ["_unit"];

        [Fin_Uni_r] call Olsen_FW_FNC_AddItemRandom;
        [Fin_Vest_SMG] call Olsen_FW_FNC_AddItem;
        [Fin_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [Fin_Helmet_Early_r] call Olsen_FW_FNC_AddItemRandom;
        Fin_Face;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        F39_Weapon_SMG;

        //Extra
        [Fin_Gren_Frag_M32,1,"vest"] call Olsen_FW_FNC_AddItem;
        [Fin_Mag_Lahti_S_T,1,"backpack"] call Olsen_FW_FNC_AddItem;
		Remove_Helm_If_Needed;
    }];

	//Grenadier
    F39_Gren = ["F39_Gren", {
        params ["_unit"];

        [Fin_Uni_r] call Olsen_FW_FNC_AddItemRandom;
        [Fin_BP_Molotov] call Olsen_FW_FNC_AddItemRandom;
        [Fin_Helmet_Early_r] call Olsen_FW_FNC_AddItemRandom;
        Fin_Face;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
		F39_Weapon_Rifleman;

        //Extra
        //The molotov backpack automatically comes with 3 molotovs, don't add more!
        [Fin_Mag_Lahti_S_T,1,"backpack"] call Olsen_FW_FNC_AddItem;
		Remove_Helm_If_Needed;
    }];

 //Assistant Medic
    F39_MedS = ["F39_MedS", {
        params ["_unit"];

        [Fin_Uni_r] call Olsen_FW_FNC_AddItemRandom;
        [Fin_BP_Med] call Olsen_FW_FNC_AddItemRandom;
        [Fin_Hat] call Olsen_FW_FNC_AddItem;
        Fin_Face;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_MedicS_Equipment_Set;

        //Primary Weapon & Vest
        F39_Weapon_Rifleman;

        //Extra
        [Fin_Gren_Frag_M32,1,"vest"] call Olsen_FW_FNC_AddItem;
		Remove_Helm_If_Needed;
    }];

	//Rifleman
    F39_Rif = ["F39_Rif", {
        params ["_unit"];

        [Fin_Uni_r] call Olsen_FW_FNC_AddItemRandom;
        [Fin_BP_r] call Olsen_FW_FNC_AddItemRandom;
        [Fin_Helmet_Early_r] call Olsen_FW_FNC_AddItemRandom;
        Fin_Face;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon & Vest
        F39_Weapon_Rifleman;

        //Extra
        [Fin_Gren_Frag_M32,2,"vest"] call Olsen_FW_FNC_AddItem;
        [Fin_Mag_Lahti_S_T,1,"backpack"] call Olsen_FW_FNC_AddItem;
		Remove_Helm_If_Needed;
    }];

	//Machine Gunner
    F39_MG = ["F39_MG", {
        params ["_unit"];

        [Fin_Uni_r] call Olsen_FW_FNC_AddItemRandom;
        [Fin_BP_MG] call Olsen_FW_FNC_AddItem;
        [Fin_Helmet_Early_r] call Olsen_FW_FNC_AddItemRandom;
        Fin_Face;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        F39_Weapon_MG;

        //Secondary Weapon
        F39_Weapon_Secondary;

        //Extra
        [Fin_Gren_Frag_M32,1,"vest"] call Olsen_FW_FNC_AddItem;
    }];

	//MG Assistant
    F39_MGA = ["F39_MGA", {
        params ["_unit"];

        [Fin_Uni_r] call Olsen_FW_FNC_AddItemRandom;
        [Fin_BP_MG] call Olsen_FW_FNC_AddItem;
        [Fin_Helmet_Early_r] call Olsen_FW_FNC_AddItemRandom;
        Fin_Face;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        F39_Weapon_MGA;
        
        //Extra
		[Fin_Gren_Frag_M32,1,"vest"] call Olsen_FW_FNC_AddItem;
		[Fin_Gren_Molotov,1,"vest"] call Olsen_FW_FNC_AddItem;
        [Fin_Mag_Lahti_S_T,6,"backpack"] call Olsen_FW_FNC_AddItem;
		Remove_Helm_If_Needed;
    }];

	//Heavy Weapons Teams

    //HMG Team Leader
    F39_HMGTL = ["F39_HMGTL", {
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
        F39_Weapon_SMG;

		//Extra
		[Fin_Gren_Frag_M32,1,"vest"] call Olsen_FW_FNC_AddItem;
		[Rus_Gren_Smoke,1,"vest"] call Olsen_FW_FNC_AddItem;
    }];

    //HMG Gunner
    F39_HMGG = ["F39_HMGG", {
        params ["_unit"];

        [Fin_Uni_r] call Olsen_FW_FNC_AddItemRandom;
        [Fin_Vest_HGun] call Olsen_FW_FNC_AddItem;
        [Fin_BP_HMG_Gun] call Olsen_FW_FNC_AddItem;
        [Fin_Helmet_Early_r] call Olsen_FW_FNC_AddItemRandom;
        Fin_Face;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon
        F39_Weapon_SMG;

        //Secondary Weapon
        F39_Weapon_Secondary;

		//Extra
		Remove_Helm_If_Needed;
    }];

	//Anti-Tank Rifle Team Leader
    F39_ATRTL = ["F39_ATRTL", {
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
        F39_Weapon_SMG;

        //Extra
        [Fin_Gren_Frag_M32,1] call Olsen_FW_FNC_AddItem;
		[Rus_Gren_Smoke,1] call Olsen_FW_FNC_AddItem;
		[Fin_Mag_AT_Rifle,1,"vest"] call Olsen_FW_FNC_AddItem;
    }];

    //Anti-Tank Rifle Gunner
    F39_ATRG = ["F39_ATRG", {
        params ["_unit"];

        [Fin_Uni_r] call Olsen_FW_FNC_AddItemRandom;
        [Fin_BP_AT_Gun] call Olsen_FW_FNC_AddItem;
        [Fin_Helmet_Early_r] call Olsen_FW_FNC_AddItemRandom;
        Fin_Face;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        F39_Weapon_Rifleman;

		//Extra
		[Fin_Mag_AT_Rifle,3,"vest"] call Olsen_FW_FNC_AddItem;
		Remove_Helm_If_Needed;
    }];

	//Vehicle Crew

    //Tank Commander
    F39_VCom = ["F39_VCom", {
        params ["_unit"];

        [Fin_Uni_TankCom] call Olsen_FW_FNC_AddItem;
        [Fin_Vest_VCrew] call Olsen_FW_FNC_AddItem;
        [Fin_Hat_Tank] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_Tank_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon
        F39_Weapon_SMG;

        //Secondary Weapon
        F39_Weapon_Secondary;
    }];

    //Tank Crew
    F39_VCrew = ["F39_VCrew", {
        params ["_unit"];

        [Fin_Uni_TankCrew] call Olsen_FW_FNC_AddItem;
        [Fin_Vest_VCrew] call Olsen_FW_FNC_AddItem;
        [Fin_Hat_Tank] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_Tank_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Secondary Weapon
        F39_Weapon_Secondary;

        //Extra
        [GEN_Toolkit] call Olsen_FW_FNC_AddItem;
    }];