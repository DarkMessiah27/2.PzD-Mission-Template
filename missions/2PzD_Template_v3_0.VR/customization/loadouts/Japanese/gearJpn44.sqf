// Info: Imperial Japanese Army 1944 Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use Olsen_FW_FNC_AddItemRandom

/*Loadouts

    //Platoon
[this, IJA44_PC] call Olsen_FW_FNC_GearScript;           Platoon Commander
[this, IJA44_Med] call Olsen_FW_FNC_GearScript;          Medic
[this, IJA44_Mark] call Olsen_FW_FNC_GearScript;         Marksman
[this, IJA44_SL] call Olsen_FW_FNC_GearScript;           Squad Leader
[this, IJA44_TL] call Olsen_FW_FNC_GearScript;           Team Leader
[this, IJA44_MG] call Olsen_FW_FNC_GearScript;           Machine Gunner
[this, IJA44_MGA] call Olsen_FW_FNC_GearScript;          Machine Gun Assistant
[this, IJA44_MGAB] call Olsen_FW_FNC_GearScript;         Machine Gun Ammo Bearer
[this, IJA44_Gren] call Olsen_FW_FNC_GearScript;         Grenadier
[this, IJA44_MedS] call Olsen_FW_FNC_GearScript;         Assistant Medic
[this, IJA44_Rif] call Olsen_FW_FNC_GearScript;          Rifleman

[this, IJA44_VCom] call Olsen_FW_FNC_GearScript;          Tank Commander
[this, IJA44_VCrew] call Olsen_FW_FNC_GearScript;         Tank Crewmember
*/

//======================== Definitions ========================

//For Platoon Commanders
#define IJA42_Weapon_SMG \
				[IJA_Mag_Type100,1] call Olsen_FW_FNC_AddItem; \
                [IJA_Weap_Type100] call Olsen_FW_FNC_AddItem; \
                [IJA_Mag_Type100,5] call Olsen_FW_FNC_AddItem;

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
    IJA44_PC = ["IJA44_PC", {
        params ["_unit"];

        [IJA_Uni_Khaki] call Olsen_FW_FNC_AddItem;
        [IJA_Vest_O] call Olsen_FW_FNC_AddItem;
        [IJA_Hat_O_R] call Olsen_FW_FNC_AddItemRandom;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Primary Weapon
        IJA42_Weapon_SMG;

        //Secondary Weapon
        IJA42_Weapon_Pistol;

        //Extra
        [IJA_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
    }];

    //Medic
    IJA44_Med = ["IJA44_Med", {
        params ["_unit"];

        [IJA_Hat_O_R] call Olsen_FW_FNC_AddItemRandom;
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
    IJA44_Mark = ["IJA44_Mark", {
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
    IJA44_SL = ["IJA44_SL", {
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
    IJA44_TL = ["IJA44_TL", {
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
        [IJA_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [IJA_Mag_Type99_M_Mixed_Ball,4,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

    //Machine Gunner
    IJA44_MG = ["IJA44_MG", {
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
    IJA44_MGA = ["IJA44_MGA", {
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
        [GEN_BinoG] call Olsen_FW_FNC_AddItem;
        [GEN_ace_sparebarrel] call Olsen_FW_FNC_AddItem;
        [IJA_Mag_Type99_M_Mixed_Ball,4,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

    //Machine Gun Ammo Bearer
    IJA44_MGAB = ["IJA44_MGAB", {
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
    IJA44_Gren = ["IJA44_Gren", {
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
    IJA44_MedS = ["IJA44_MedS", {
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
    IJA44_Rif = ["IJA44_Rif", {
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
    IJA44_VCom = ["IJA44_VCom", {
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
    IJA44_VCrew = ["IJA44_VCrew", {
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