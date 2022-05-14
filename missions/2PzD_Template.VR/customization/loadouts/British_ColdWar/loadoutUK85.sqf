// Info: British Army 1985 Cold War Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use Olsen_FW_FNC_AddItemRandom

/*Loadouts

    //Platoon
[this, UK85_PL] call Olsen_FW_FNC_GearScript;			Platoon Leader
[this, UK85_P2] call Olsen_FW_FNC_GearScript;			Platoon Sergeant
[this, UK85_MedP] call Olsen_FW_FNC_GearScript;			Medic

	//Section
[this, UK85_SL] call Olsen_FW_FNC_GearScript;			Section Leader
[this, UK85_TL] call Olsen_FW_FNC_GearScript;			Team Leader
[this, UK85_AT] call Olsen_FW_FNC_GearScript;           AT Rifleman (L14A1)
[this, UK85_ATA] call Olsen_FW_FNC_GearScript;          AT Rifleman Asst.
[this, UK85_MG] call Olsen_FW_FNC_GearScript;           Machinegunner
[this, UK85_MGA] call Olsen_FW_FNC_GearScript;          Machinegunner Asst.
[this, UK85_RifAT] call Olsen_FW_FNC_GearScript;        Rifleman (M72A3)
[this, UK85_MedS] call Olsen_FW_FNC_GearScript;         Rifleman (Medic Asst.)
[this, UK85_Rif] call Olsen_FW_FNC_GearScript;          Rifleman

    //Recon
[this, UK85_RCTL] call Olsen_FW_FNC_GearScript;         Recon Team Leader
[this, UK85_RCTS] call Olsen_FW_FNC_GearScript;         Recon Team Sniper

    //Vehicle Crew
[this, UK85_VCom] call Olsen_FW_FNC_GearScript;         Vehicle Commander
[this, UK85_VCrew] call Olsen_FW_FNC_GearScript;        Vehicle Crew

*/

//======================== Definitions ========================

#define UK85_L1A1 \
		[UKCW_Mag_L1A1_20Rnd, 1] call Olsen_FW_FNC_AddItem; \
		[UKCW_Weap_L1A1] call Olsen_FW_FNC_AddItem; \
		[UKCW_Mag_L1A1_20Rnd, 10, "vest"] call Olsen_FW_FNC_AddItem;

#define UK85_L2A3 \
		[UKCW_Mag_L2A3_30Rnd, 1] call Olsen_FW_FNC_AddItem; \
		[UKCW_Weap_L2A3] call Olsen_FW_FNC_AddItem; \
		[UKCW_Mag_L2A3_30Rnd, 6, "vest"] call Olsen_FW_FNC_AddItem;

#define UK85_L7A2 \
        [UKCW_Mag_L7A2_100Rnd_Red, 1] call Olsen_FW_FNC_AddItem; \
		[UKCW_Weap_L7A2] call Olsen_FW_FNC_AddItem; \
		[UKCW_Mag_L7A2_100Rnd_Red, 3, "backpack"] call Olsen_FW_FNC_AddItem;

#define UK85_L14A1 \
        [UKCW_Mag_CG_HEDP, 1] call Olsen_FW_FNC_AddItem; \
        [UKCW_Weap_CarlGustaf] call Olsen_FW_FNC_AddItem; \
        [UKCW_Mag_CG_HEAT, 1, "backpack"] call Olsen_FW_FNC_AddItem; \
        [UKCW_Mag_CG_HEDP, 1, "backpack"] call Olsen_FW_FNC_AddItem;

#define UK85_L42A1 \
        [UKCW_Mag_L41A1, 1] call Olsen_FW_FNC_AddItem; \
		[UKCW_Weap_L42A1] call Olsen_FW_FNC_AddItem; \
		[UKCW_Mag_L41A1, 20, "vest"] call Olsen_FW_FNC_AddItem;

//======================== Loadouts ========================

//Platoon

    //Platoon Leader
	UK85_PL = ["UK85_PL", {
        params ["_unit"];

		[UKCW_Uni] call Olsen_FW_FNC_AddItem;
		[UKCW_Vest_Officer] call Olsen_FW_FNC_AddItem;
		[UKCW_Helm_r] call Olsen_FW_FNC_AddItemRandom;
		UKCW_Radio_LR;

        //Assigned Items
        GEN_Default_Equipment_Set;
        UK_Leader_Equipment_Set;

        //Primary Weapon
        UK85_L2A3;

        //Extra
        [UKCW_Gren_Frag,2] call Olsen_FW_FNC_AddItem;
		[GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
		[GEN_Gren_Smoke_B,1] call Olsen_FW_FNC_AddItem;
        [GEN_Radio_SR,1] call Olsen_FW_FNC_AddItem;
    }];

	//Platoon Sergeant
	UK85_P2 = ["UK85_P2", {
        params ["_unit"];

		[UKCW_Uni] call Olsen_FW_FNC_AddItem;
		[UKCW_Vest] call Olsen_FW_FNC_AddItem;
		[UKCW_Helm_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        UK_Leader_Equipment_Set;

        //Primary Weapon
        UK85_L1A1;

        //Extra
        [UKCW_Gren_Frag,2] call Olsen_FW_FNC_AddItem;
		[GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
        [GEN_Radio_SR,1] call Olsen_FW_FNC_AddItem;
    }];

	//Medic
	UK85_MedP = ["UK85_MedP", {
        params ["_unit"];

		[UKCW_Uni] call Olsen_FW_FNC_AddItem;
		[UKCW_Vest_Medic] call Olsen_FW_FNC_AddItem;
		[UKCW_Beret] call Olsen_FW_FNC_AddItem;
        [UKCW_BP_Medic] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_MedicP_Equipment_Set;
        UK_Leader_Equipment_Set;

        //Primary Weapon
        UK85_L2A3;

        //Extra
        [UKCW_Gren_Frag,2] call Olsen_FW_FNC_AddItem;
		[GEN_Gren_Smoke_W,1] call Olsen_FW_FNC_AddItem;
    }];

//Squad

    //Section Leader
	UK85_SL = ["UK85_SL", {
        params ["_unit"];

		[UKCW_Uni] call Olsen_FW_FNC_AddItem;
		[UKCW_Vest] call Olsen_FW_FNC_AddItem;
		[UKCW_Helm_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        UK_Leader_Equipment_Set;

        //Primary Weapon
        UK85_L1A1;

        //Extra
        [UKCW_Gren_Frag,2] call Olsen_FW_FNC_AddItem;
		[GEN_Gren_Smoke_W,2] call Olsen_FW_FNC_AddItem;
        [GEN_Radio_SR,1] call Olsen_FW_FNC_AddItem;
        [UKCW_Mag_L7A2_100Rnd_Red,1] call Olsen_FW_FNC_AddItem;
    }];

    //Team Leader
	UK85_TL = ["UK85_TL", {
        params ["_unit"];

		[UKCW_Uni] call Olsen_FW_FNC_AddItem;
		[UKCW_Vest] call Olsen_FW_FNC_AddItem;
		[UKCW_Helm_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        [GEN_Bino] call Olsen_FW_FNC_AddItem;

        //Primary Weapon
        UK85_L1A1;

        //Extra
        [UKCW_Gren_Frag,2] call Olsen_FW_FNC_AddItem;
		[GEN_Gren_Smoke_W,2] call Olsen_FW_FNC_AddItem;
        [UKCW_Mag_L7A2_100Rnd_Red,1] call Olsen_FW_FNC_AddItem;
    }];

    //AT Rifleman (L14A1)
	UK85_AT = ["UK85_AT", {
        params ["_unit"];

		[UKCW_Uni] call Olsen_FW_FNC_AddItem;
		[UKCW_Vest] call Olsen_FW_FNC_AddItem;
		[UKCW_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [UKCW_BP] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        UK85_L1A1;

        //Launcher 
        UK85_L14A1;

        //Extra
        [UKCW_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
    }];

    //AT Rifleman Asst.
	UK85_ATA = ["UK85_ATA", {
        params ["_unit"];

		[UKCW_Uni] call Olsen_FW_FNC_AddItem;
		[UKCW_Vest] call Olsen_FW_FNC_AddItem;
		[UKCW_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [UKCW_BP] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        UK85_L1A1;

        //Extra
        [UKCW_Gren_Frag,2] call Olsen_FW_FNC_AddItem;
        [UKCW_Mag_CG_HEAT, 2, "backpack"] call Olsen_FW_FNC_AddItem;
        [UKCW_Mag_CG_HEDP, 2, "backpack"] call Olsen_FW_FNC_AddItem;
    }];

    //Machinegunner
	UK85_MG = ["UK85_MG", {
        params ["_unit"];

		[UKCW_Uni] call Olsen_FW_FNC_AddItem;
		[UKCW_Vest_MG] call Olsen_FW_FNC_AddItem;
		[UKCW_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [UKCW_BP] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        UK85_L7A2;

        //Extra
        [UKCW_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
    }];

    //Machinegunner Asst.
	UK85_MGA = ["UK85_MGA", {
        params ["_unit"];

		[UKCW_Uni] call Olsen_FW_FNC_AddItem;
		[UKCW_Vest_MG] call Olsen_FW_FNC_AddItem;
		[UKCW_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [UKCW_BP] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        UK85_L1A1;

        //Extra
        [UKCW_Gren_Frag,2,"vest"] call Olsen_FW_FNC_AddItem;
        [UKCW_Mag_L7A2_100Rnd_Red, 5, "backpack"] call Olsen_FW_FNC_AddItem;
    }];

    //Rifleman (M72A3)
	UK85_RifAT = ["UK85_RifAT", {
        params ["_unit"];

		[UKCW_Uni] call Olsen_FW_FNC_AddItem;
		[UKCW_Vest] call Olsen_FW_FNC_AddItem;
		[UKCW_Helm_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        UK85_L1A1;

        //Launcher
        [UKCW_Weap_M72A3] call Olsen_FW_FNC_AddItem;

        //Extra
        [UKCW_Gren_Frag,2] call Olsen_FW_FNC_AddItem;
        [UKCW_Mag_L7A2_100Rnd_Red,1] call Olsen_FW_FNC_AddItem;
    }];

    //Rifleman (Medic Asst.)
	UK85_MedS = ["UK85_MedS", {
        params ["_unit"];

		[UKCW_Uni] call Olsen_FW_FNC_AddItem;
		[UKCW_Vest_Medic] call Olsen_FW_FNC_AddItem;
		[UKCW_Helm_r] call Olsen_FW_FNC_AddItemRandom;
        [UKCW_BP_Medic] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_MedicS_Equipment_Set;

        //Primary Weapon
        UK85_L1A1;

        //Extra
        [UKCW_Gren_Frag,2] call Olsen_FW_FNC_AddItem;
    }];

    //Rifleman
	UK85_Rif = ["UK85_Rif", {
        params ["_unit"];

		[UKCW_Uni] call Olsen_FW_FNC_AddItem;
		[UKCW_Vest] call Olsen_FW_FNC_AddItem;
		[UKCW_Helm_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        UK85_L1A1;

        //Extra
        [UKCW_Gren_Frag,2] call Olsen_FW_FNC_AddItem;
        [UKCW_Mag_L7A2_100Rnd_Red,1] call Olsen_FW_FNC_AddItem;
    }];

//Recon Team

    //Recon Team Leader 
    UK85_RCTL = ["UK85_RCTL", {
        params ["_unit"];

		[UKCW_Uni_Ghillie_D] call Olsen_FW_FNC_AddItem;
		[UKCW_Vest] call Olsen_FW_FNC_AddItem;

        //Assigned Items
        GEN_Default_Equipment_Set;
        UK_Leader_Equipment_Set;

        //Primary Weapon
        UK85_L1A1;

        //Extra
        [UKCW_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_G,2]  call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_O,2]  call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_R,2]  call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,2] call Olsen_FW_FNC_AddItem;
    }];

    //Recon Team Sniper
    UK85_RCTS = ["UK85_RCTS", {
        params ["_unit"];

		[UKCW_Uni_Ghillie_D] call Olsen_FW_FNC_AddItem;
		[UKCW_Vest] call Olsen_FW_FNC_AddItem;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        UK85_L42A1;

        //Extra
        [UKCW_Gren_Frag,1] call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_G,2]  call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_O,2]  call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_R,2]  call Olsen_FW_FNC_AddItem;
        [GEN_Gren_Smoke_W,2] call Olsen_FW_FNC_AddItem;
    }];

//Vehicle Crew

    //Vehicle Commander
    UK85_VCom = ["UK85_VCom", {
        params ["_unit"];

		[UKCW_Uni_VCrew] call Olsen_FW_FNC_AddItem;
		[UKCW_Vest] call Olsen_FW_FNC_AddItem;
		[UKCW_Beret_Tank] call Olsen_FW_FNC_AddItem;
        [UKCW_BP] call Olsen_FW_FNC_AddItem;

        //Assigned Items
        GEN_Default_Equipment_Set;
        UK_Leader_Equipment_Set;

        //Primary Weapon
        UK85_L2A3;

        //Extra
		[GEN_Gren_Smoke_W,2] call Olsen_FW_FNC_AddItem;
    }];

    //Vehicle Crew
    UK85_VCrew = ["UK85_VCrew", {
        params ["_unit"];

		[UKCW_Uni_VCrew] call Olsen_FW_FNC_AddItem;
		[UKCW_Vest] call Olsen_FW_FNC_AddItem;
		[UKCW_Beret_Tank] call Olsen_FW_FNC_AddItem;
        [UKCW_BP] call Olsen_FW_FNC_AddItem;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        UK85_L2A3;

        //Extra
        [GEN_Toolkit,1,"backpack"] call Olsen_FW_FNC_AddItem;
    }];