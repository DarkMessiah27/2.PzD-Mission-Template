// Info: Norwegian Army Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use Olsen_FW_FNC_AddItemRandom

/*Loadouts

    Platoon
[this, NOR40_Lt] call Olsen_FW_FNC_GearScript;         Lieutenant
[this, NOR40_Sgt] call Olsen_FW_FNC_GearScript;        Sergeant
[this, NOR40_MedP] call Olsen_FW_FNC_GearScript;       Medic
[this, NOR40_Cpl] call Olsen_FW_FNC_GearScript;        Corporal
[this, NOR40_LCpl] call Olsen_FW_FNC_GearScript;       Lance Corporal
[this, NOR40_AR] call Olsen_FW_FNC_GearScript;         Madsen Gunner
[this, NOR40_AAR] call Olsen_FW_FNC_GearScript;        Madsen Gun Assistant
[this, NOR40_Rif] call Olsen_FW_FNC_GearScript;        Rifleman

	Recon Team
[this, NOR40_RCTL] call Olsen_FW_FNC_GearScript;       Recon Team leader
[this, NOR40_RCTS] call Olsen_FW_FNC_GearScript;       Recon Team sniper
*/

//======================== Definitions ========================

	
#define NOR_Krag \
		[Nor_Mag_M1894,1] call Olsen_FW_FNC_AddItem; \
		[Nor_Wep_M1894] call Olsen_FW_FNC_AddItem; \
		[Nor_Mag_M1894,10,"vest"] call Olsen_FW_FNC_AddItem;

	
#define NOR_M1914 \
		[Nor_Mag_M1914,1] call Olsen_FW_FNC_AddItem; \
		[Nor_Wep_M1914] call Olsen_FW_FNC_AddItem; \
		[Nor_Mag_M1914,2,"vest"] call Olsen_FW_FNC_AddItem;

	
#define NOR_M1914_P \
		[Nor_Mag_M1914_P,1] call Olsen_FW_FNC_AddItem; \
		[Nor_Wep_M1914_P] call Olsen_FW_FNC_AddItem; \
		[Nor_Mag_M1914_P,10,"vest"] call Olsen_FW_FNC_AddItem;

//======================== Loadouts ========================

	//Platoon

    //Lieutenant
    NOR40_Lt = ["NOR40_Lt", {
        params ["_unit"];

        [Nor_Uni_M1914_Sgt] call Olsen_FW_FNC_AddItem;
        [Nor_Vest_Officer] call Olsen_FW_FNC_AddItem;
        [Nor_Hat_Kepi_F] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon
        NOR_Krag;

        //Secondary Weapon
        NOR_M1914_P;

        //Extra
        [Nor_Tin_Grenade,1,"vest"] call Olsen_FW_FNC_AddItem;
        [Nor_Rokboks,1,"vest"] call Olsen_FW_FNC_AddItem;
    }];

    //Sergeant
    NOR40_Sgt = ["NOR40_Sgt", {
        params ["_unit"];

        [Nor_Uni_M1914_Sgt] call Olsen_FW_FNC_AddItem;
        [Nor_Vest_Officer] call Olsen_FW_FNC_AddItem;
        [Nor_Hat_Kepi_S] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon
        NOR_Krag;

        //Secondary Weapon
        NOR_M1914_P;

        //Extra
        [Nor_Tin_Grenade,1,"vest"] call Olsen_FW_FNC_AddItem;
        [Nor_Rokboks,1,"vest"] call Olsen_FW_FNC_AddItem;
    }];

    //Medic								//Missing a medical Armband - Will be added when FIN is done
    NOR40_MedP = ["NOR40_MedP", {
        params ["_unit"];

        [Nor_Uni_M1914] call Olsen_FW_FNC_AddItem;
        [Nor_Vest_Rifleman] call Olsen_FW_FNC_AddItem;
		[Nor_BP_Telemark] call Olsen_FW_FNC_AddItem;
        [Nor_Hat_Fieldcap] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        NOR_Krag;

        //Extra
        GEN_MedicP_Equipment_Set;
        [Nor_Rokboks,1] call Olsen_FW_FNC_AddItem;
    }];

//Squad

    //Corporal
    NOR40_Cpl = ["NOR40_Cpl", {
        params ["_unit"];

        [Nor_Uni_M1914] call Olsen_FW_FNC_AddItem;
        [Nor_Vest_Rifleman] call Olsen_FW_FNC_AddItem;
		[Nor_BP_Telemark] call Olsen_FW_FNC_AddItem;
        [Nor_Helmet_M1931] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon
        NOR_Krag;

        //Extra
        [Nor_Tin_Grenade,1,"vest"] call Olsen_FW_FNC_AddItem;
        [Nor_Rokboks,1,"vest"] call Olsen_FW_FNC_AddItem;
        [Nor_Mag_M1922,2,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

    //Lance Corporal
    NOR40_LCpl = ["NOR40_LCpl", {
        params ["_unit"];

        [Nor_Uni_M1914] call Olsen_FW_FNC_AddItem;
        [Nor_Vest_Rifleman] call Olsen_FW_FNC_AddItem;
		[Nor_BP_Telemark] call Olsen_FW_FNC_AddItem;
        [Nor_Helmet_M1931] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        NOR_Krag;

        //Extra
        [Nor_Tin_Grenade,1,"vest"] call Olsen_FW_FNC_AddItem;
        [Nor_Rokboks,1,"vest"] call Olsen_FW_FNC_AddItem;
        [Nor_Mag_M1914,2,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

    //Madsen Gunner
    NOR40_AR = ["NOR40_AR", {
        params ["_unit"];

        [Nor_Uni_M1914] call Olsen_FW_FNC_AddItem;
        [Nor_Vest_14] call Olsen_FW_FNC_AddItem;
		[Nor_BP_Madsen] call Olsen_FW_FNC_AddItem;
        [Nor_Helmet_M1931] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        NOR_M1914;

    }];

    //Madsen Gun Assistant
    NOR40_AAR = ["NOR40_AAR", {
        params ["_unit"];

        [Nor_Uni_M1914] call Olsen_FW_FNC_AddItem;
        [Nor_Vest_14] call Olsen_FW_FNC_AddItem;
		[Nor_BP_Madsen] call Olsen_FW_FNC_AddItem;
        [Nor_Helmet_M1931] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        NOR_Krag;

        //Extra
		[GEN_BinoR] call Olsen_FW_FNC_AddItem;
        [Nor_Tin_Grenade,1,"vest"] call Olsen_FW_FNC_AddItem;
        [Nor_Mag_M1914,4,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

    //Assistant Medic
    NOR40_MedS = ["NOR40_MedS", {
        params ["_unit"];

        [Nor_Uni_M1914] call Olsen_FW_FNC_AddItem;
        [Nor_Vest_Rifleman] call Olsen_FW_FNC_AddItem;
		[Nor_BP_Telemark] call Olsen_FW_FNC_AddItem;
        [Nor_Helmet_M1931] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
		GEN_MedicS_Equipment_Set;

        //Primary Weapon
        NOR_Krag;

        //Extra
        [Nor_Tin_Grenade,1,"vest"] call Olsen_FW_FNC_AddItem;
        [Nor_Mag_M1914,2,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

    //Rifleman
    NOR40_Rif = ["NOR40_Rif", {
        params ["_unit"];

        [Nor_Uni_M1914] call Olsen_FW_FNC_AddItem;
        [Nor_Vest_Rifleman] call Olsen_FW_FNC_AddItem;
		[Nor_BP_Telemark] call Olsen_FW_FNC_AddItem;
        [Nor_Helmet_M1931] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        NOR_Krag;

        //Extra
        [Nor_Tin_Grenade,1,"vest"] call Olsen_FW_FNC_AddItem;
        [Nor_Mag_M1914,2,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

//Recon Team

		//Recon Team leader
		NOR40_RCTL = ["NOR40_RCTL", {
        params ["_unit"];

        [Nor_Uni_M1914_Spc] call Olsen_FW_FNC_AddItem;
        [Nor_Vest_Rifleman] call Olsen_FW_FNC_AddItem;
		[Nor_BP_Telemark] call Olsen_FW_FNC_AddItem;
        [Nor_Hat_Fieldcap] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
		GEN_Leader_Equipment_Set;

        //Primary Weapon
        NOR_Krag;

        //Extra
        [Nor_Tin_Grenade,1,"vest"] call Olsen_FW_FNC_AddItem;
        [Nor_Mag_M1894,2,"backpack"] call Olsen_FW_FNC_AddItem;
    }];
	
		//Recon Team Snioer
		NOR40_RCTS = ["NOR40_RCTS", {
        params ["_unit"];

        [Nor_Uni_M1914] call Olsen_FW_FNC_AddItem;
        [Nor_Vest_Rifleman] call Olsen_FW_FNC_AddItem;
		[Nor_BP_Telemark] call Olsen_FW_FNC_AddItem;
        [Nor_Hat_Fieldcap] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
		GEN_Leader_Equipment_Set;

        //Primary Weapon
        NOR_Krag;

        //Extra
        [Nor_Tin_Grenade,1,"vest"] call Olsen_FW_FNC_AddItem;
		[Nor_Rokboks,1,"vest"] call Olsen_FW_FNC_AddItem;
        [Nor_Mag_M1894,2,"backpack"] call Olsen_FW_FNC_AddItem;
    }];