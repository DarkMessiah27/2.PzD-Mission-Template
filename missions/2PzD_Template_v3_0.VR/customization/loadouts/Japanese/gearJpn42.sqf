// Info: Imperial Japanese Army 1942 Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use Olsen_FW_FNC_AddItemRandom

/*Loadouts

    //Platoon
[this, IJA42_PC] call Olsen_FW_FNC_GearScript;           Platoon Commander
[this, IJA42_MedP] call Olsen_FW_FNC_GearScript;         Medic
[this, IJA42_Mark] call Olsen_FW_FNC_GearScript;         Marksman
[this, IJA42_SL] call Olsen_FW_FNC_GearScript;           Squad Leader
[this, IJA42_TL] call Olsen_FW_FNC_GearScript;           Team Leader
[this, IJA42_MG] call Olsen_FW_FNC_GearScript;           Machine Gunner
[this, IJA42_MGA] call Olsen_FW_FNC_GearScript;          Machine Gun Assistant
[this, IJA42_MGAB] call Olsen_FW_FNC_GearScript;         Machine Gun Ammo Bearer
[this, IJA42_Gren] call Olsen_FW_FNC_GearScript;         Grenadier
[this, IJA42_MedS] call Olsen_FW_FNC_GearScript;         Assistant Medic
[this, IJA42_Rif] call Olsen_FW_FNC_GearScript;          Rifleman
[this, IJA42_KMortG] call Olsen_FW_FNC_GearScript;       Type 89 Gunner
[this, IJA42_KMortA] call Olsen_FW_FNC_GearScript;       Type 89 Assistant
[this, IJA42_KMortAB] call Olsen_FW_FNC_GearScript;      Type 89 Ammo Bearer
*/

//======================== Definitions ========================

//For Platoon Commanders
#define IJA42_Weapon_SMG \
				[IJA_Mag_Type100,1] call Olsen_FW_FNC_AddItem; \
                [IJA_Weap_Type100] call Olsen_FW_FNC_AddItem; \
                [IJA_Mag_Type100,3] call Olsen_FW_FNC_AddItem;

#define IJA42_Weapon_Pistol \
				[IJA_Mag_Type14,1] call Olsen_FW_FNC_AddItem; \
                [IJA_Weap_Type14] call Olsen_FW_FNC_AddItem; \
                [IJA_Mag_Type14,3,"uniform"] call Olsen_FW_FNC_AddItem;

// For all men with rifles
#define IJA42_Weapon_Rifle \
		       [IJA_Mag_Type99_R,1] call Olsen_FW_FNC_AddItem; \
               [IJA_Weap_Type99_R] call Olsen_FW_FNC_AddItem; \
               [IJA_Weap_Type99_B] call Olsen_FW_FNC_AddItem; \
			   [IJA_Mag_Type99_R,12,"vest"] call Olsen_FW_FNC_AddItem;

// For Machine Gunners
#define IJA42_Weapon_MG \
    		   [IJA_Mag_Type99_M_Mixed_Ball,1] call Olsen_FW_FNC_AddItem; \
               [IJA_Weap_Type99_M] call Olsen_FW_FNC_AddItem; \
               [IJA_Mag_Type99_M_Mixed_Ball,6,"vest"] call Olsen_FW_FNC_AddItem;


// For Marksmen
#define IJA42_Weapon_Sniper \
		      [IJA_Mag_Type99_R,1] call Olsen_FW_FNC_AddItem; \
              [IJA_Weap_Type99_S] call Olsen_FW_FNC_AddItem; \
              [IJA_Mag_Type99_R,8,"vest"] call Olsen_FW_FNC_AddItem;

//======================== Loadouts ========================

//Platoon

    //Platoon Commander
    IJA42_PC = ["IJA42_PC", {
        params ["_unit"];

        [IJA_Uni_Khaki] call Olsen_FW_FNC_AddItem;
        [IJA_Vest_O] call Olsen_FW_FNC_AddItem;
        [IJA_BP] call Olsen_FW_FNC_AddItem;
        [IJA_Hat_O_R] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        IJA_Leader_Equipment;

        //Primary Weapon
        IJA42_Weapon_SMG;

		//Secondary Weapon
        IJA42_Weapon_Pistol;

        //Extra
        [IJA_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
    }];

    //Medic
    IJA42_MedP = ["IJA42_MedP", {
        params ["_unit"];

        [IJA_Uni_R] call Olsen_FW_FNC_AddItemRandom;

        [IJA_Vest_Med] call Olsen_FW_FNC_AddItem;
        [IJA_BP] call Olsen_FW_FNC_AddItem;
        [IJA_Hat] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Secondary Weapon
        IJA42_Weapon_Pistol;

        //Extra
        GEN_MedicP_Equipment_Set;
    }];

    //Marksman
    IJA42_Mark = ["IJA42_Mark", {
        params ["_unit"];

        [IJA_Uni_F] call Olsen_FW_FNC_AddItem;
        [IJA_Vest_Rif] call Olsen_FW_FNC_AddItem;
        [IJA_Helm_F] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        IJA42_Weapon_Sniper;

        //Extra
        [IJA_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
    }];

//Squad

    //Squad Leader
    IJA42_SL = ["IJA42_SL", {
        params ["_unit"];

        [IJA_Uni_R] call Olsen_FW_FNC_AddItemRandom;
        [IJA_Vest_NCO] call Olsen_FW_FNC_AddItem;
        [IJA_BP] call Olsen_FW_FNC_AddItem;
        [IJA_Hat_R] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        IJA_Leader_Equipment;

        //Primary Weapon
        IJA42_Weapon_SMG;

        //Extra
        [IJA_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
    }];

    //Team Leader
    IJA42_TL = ["IJA42_TL", {
        params ["_unit"];

        [IJA_Uni_R] call Olsen_FW_FNC_AddItemRandom;
        [IJA_Vest_MG] call Olsen_FW_FNC_AddItem;
        [IJA_BP] call Olsen_FW_FNC_AddItem;
        [IJA_Helm_R] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        IJA42_Weapon_SMG;

        //Extra
		[GEN_BinoG] call Olsen_FW_FNC_AddItem;
        [IJA_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [IJA_Mag_Type99_M_Mixed_Ball,4,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

    //Machine Gunner
    IJA42_MG = ["IJA42_MG", {
        params ["_unit"];

        [IJA_Uni_R] call Olsen_FW_FNC_AddItemRandom;
        [IJA_Vest_MG] call Olsen_FW_FNC_AddItem;
        [IJA_BP] call Olsen_FW_FNC_AddItem;
        [IJA_Helm_R] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        IJA42_Weapon_MG;

        //Secondary Weapon
        IJA42_Weapon_Pistol;

        //Extra
        [IJA_Mag_Type99_M_Mixed_Ball,4,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

    //Machine Gun Assistant
    IJA42_MGA = ["IJA42_MGA", {
        params ["_unit"];

        [IJA_Uni_R] call Olsen_FW_FNC_AddItemRandom;
        [IJA_Vest_Rif] call Olsen_FW_FNC_AddItem;
        [IJA_BP] call Olsen_FW_FNC_AddItem;
        [IJA_Helm_R] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        IJA42_Weapon_Rifle;

        //Extra
        [GEN_ace_sparebarrel] call Olsen_FW_FNC_AddItem;
        [IJA_Mag_Type99_M_Mixed_Ball,4,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

    //Machine Gun Ammo Bearer
    IJA42_MGAB = ["IJA42_MGAB", {
        params ["_unit"];

        [IJA_Uni_R] call Olsen_FW_FNC_AddItemRandom;
        [IJA_Vest_Rif] call Olsen_FW_FNC_AddItem;
        [IJA_BP] call Olsen_FW_FNC_AddItem;
        [IJA_Helm_R] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        IJA42_Weapon_Rifle;

        //Extra
        [IJA_Mag_Type99_M_Mixed_Ball,10,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

    //Grenadier
    IJA42_Gren = ["IJA42_Gren", {
        params ["_unit"];

        [IJA_Uni_R] call Olsen_FW_FNC_AddItemRandom;
        [IJA_Vest_Gren] call Olsen_FW_FNC_AddItem;
        [IJA_BP] call Olsen_FW_FNC_AddItem;
        [IJA_Helm_R] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        IJA42_Weapon_Rifle;

        //Extra
        [IJA_Mag_RGrn,6] call Olsen_FW_FNC_AddItem;
    }];

    //Assistant Medic
    IJA42_MedS = ["IJA42_MedS", {
        params ["_unit"];

        [IJA_Uni_R] call Olsen_FW_FNC_AddItemRandom;
        [IJA_Vest_Med] call Olsen_FW_FNC_AddItem;
        [IJA_BP] call Olsen_FW_FNC_AddItem;
        [IJA_Helm_R] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_MedicS_Equipment_Set;

        //Primary Weapon
        IJA42_Weapon_Rifle;
    }];

    //Rifleman
    IJA42_Rif = ["IJA42_Rif", {
        params ["_unit"];

        [IJA_Uni_R] call Olsen_FW_FNC_AddItemRandom;
        [IJA_Vest_Rif] call Olsen_FW_FNC_AddItem;
        [IJA_BP] call Olsen_FW_FNC_AddItem;
        [IJA_Helm_R] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        IJA42_Weapon_Rifle;

        //Extra
        [IJA_Gren_Frag,2] call Olsen_FW_FNC_AddItem;
        [IJA_Mag_Type99_M_Mixed_Ball,1,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

    //Tank Commander
    IJA42_VCom = ["IJA42_VCom", {
        params ["_unit"];

        [IJA_Uni_Short] call Olsen_FW_FNC_AddItem;
        [IJA_BP] call Olsen_FW_FNC_AddItem;
        [IJA_Helmet_VCrew] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        IJA_Leader_Equipment;
        GEN_Default_Equipment_Set;

        //Secondary Weapon
        IJA42_Weapon_Pistol;
    }];

    //Tank Crew
    IJA42_VCrew = ["IJA42_VCrew", {
        params ["_unit"];

        [IJA_Uni_Short] call Olsen_FW_FNC_AddItem;
        [IJA_BP] call Olsen_FW_FNC_AddItem;
        [IJA_Helmet_VCrew] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Secondary Weapon
        IJA42_Weapon_Pistol;
    }];