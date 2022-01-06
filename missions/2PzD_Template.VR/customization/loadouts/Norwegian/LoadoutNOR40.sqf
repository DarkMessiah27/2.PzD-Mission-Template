// Info: Norwegian Army Loadouts
// - For multi line definitions use \
// - All loadouts listed are customised to correct equipment, so have fun with them
// - ALWAYS ADD SHORT-RANGE RADIO FIRST
// - On any random equipment definition remember to use Olsen_FW_FNC_AddItemRandom

/*Loadouts

    Platoon
[this, Nor40_Lt] call Olsen_FW_FNC_GearScript;         Lieutenant
[this, Nor40_Sgt] call Olsen_FW_FNC_GearScript;        Sergeant
[this, Nor40_MedP] call Olsen_FW_FNC_GearScript;       Medic
[this, Nor40_Cpl] call Olsen_FW_FNC_GearScript;        Corporal
[this, Nor40_LCpl] call Olsen_FW_FNC_GearScript;       Lance Corporal
[this, Nor40_AR] call Olsen_FW_FNC_GearScript;         Madsen Gunner
[this, Nor40_AAR] call Olsen_FW_FNC_GearScript;        Madsen Gun Assistant
[this, Nor40_Rif] call Olsen_FW_FNC_GearScript;        Rifleman

	Recon Team
[this, Nor40_RCTL] call Olsen_FW_FNC_GearScript;       Recon Team leader
[this, Nor40_RCTS] call Olsen_FW_FNC_GearScript;       Recon Team sniper
*/

//======================== Definitions ========================

#define Nor_Krag \
		[Nor_Mag_M1894,1] call Olsen_FW_FNC_AddItem; \
		[Nor_Wep_M1894] call Olsen_FW_FNC_AddItem; \
		[Nor_Mag_M1894,10,"vest"] call Olsen_FW_FNC_AddItem;

#define Nor_M1914 \
		[Nor_Mag_M1914,1] call Olsen_FW_FNC_AddItem; \
		[Nor_Wep_M1914] call Olsen_FW_FNC_AddItem; \
		[Nor_Mag_M1914,2,"vest"] call Olsen_FW_FNC_AddItem;

	
#define Nor_M1914_P \
		[Nor_Mag_M1914_P,1] call Olsen_FW_FNC_AddItem; \
		[Nor_Wep_M1914_P] call Olsen_FW_FNC_AddItem; \
		[Nor_Mag_M1914_P,10,"vest"] call Olsen_FW_FNC_AddItem;

//======================== Loadouts ========================

	//Platoon

    //Lieutenant
    Nor40_Lt = ["Nor40_Lt", {
        params ["_unit"];

        [Nor_Uni_M1914_Sgt] call Olsen_FW_FNC_AddItem;
        [Nor_Vest_Officer] call Olsen_FW_FNC_AddItem;
        [Nor_Hat_Kepi_F] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon
        Nor_Krag;

        //Secondary Weapon
        Nor_M1914_P;

        //Extra
        [Nor_Tin_Grenade,1,"vest"] call Olsen_FW_FNC_AddItem;
        [Nor_Rokboks,1,"vest"] call Olsen_FW_FNC_AddItem;
    }];

    //Sergeant
    Nor40_Sgt = ["Nor40_Sgt", {
        params ["_unit"];

        [Nor_Uni_M1914_Sgt] call Olsen_FW_FNC_AddItem;
        [Nor_Vest_Officer] call Olsen_FW_FNC_AddItem;
        [Nor_Hat_Kepi_S] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        GEN_Leader_Equipment_Set;

        //Primary Weapon
        Nor_Krag;

        //Secondary Weapon
        Nor_M1914_P;

        //Extra
        [Nor_Tin_Grenade,1,"vest"] call Olsen_FW_FNC_AddItem;
        [Nor_Rokboks,1,"vest"] call Olsen_FW_FNC_AddItem;
    }];

    //Medic								//Missing a medical Armband - Will be added when FIN is done
    Nor40_MedP = ["Nor40_MedP", {
        params ["_unit"];

        [Nor_Uni_M1914] call Olsen_FW_FNC_AddItem;
        [Nor_Vest_Rifleman] call Olsen_FW_FNC_AddItem;
		[Nor_BP_Telemark] call Olsen_FW_FNC_AddItem;
        [Nor_Hat_Fieldcap] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        Nor_Krag;

        //Extra
        GEN_MedicP_Equipment_Set;
        [Nor_Rokboks,1] call Olsen_FW_FNC_AddItem;
    }];

//Squad

    //Corporal
    Nor40_Cpl = ["Nor40_Cpl", {
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
        Nor_Krag;

        //Extra
        [Nor_Tin_Grenade,1,"vest"] call Olsen_FW_FNC_AddItem;
        [Nor_Rokboks,1,"vest"] call Olsen_FW_FNC_AddItem;
        [Nor_Mag_M1922,2,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

    //Lance Corporal
    Nor40_LCpl = ["Nor40_LCpl", {
        params ["_unit"];

        [Nor_Uni_M1914] call Olsen_FW_FNC_AddItem;
        [Nor_Vest_Rifleman] call Olsen_FW_FNC_AddItem;
		[Nor_BP_Telemark] call Olsen_FW_FNC_AddItem;
        [Nor_Helmet_M1931] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;
        [GEN_Bino] call Olsen_FW_FNC_AddItem;

        //Primary Weapon
        Nor_Krag;

        //Extra
        [Nor_Tin_Grenade,1,"vest"] call Olsen_FW_FNC_AddItem;
        [Nor_Rokboks,1,"vest"] call Olsen_FW_FNC_AddItem;
        [Nor_Mag_M1914,2,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

    //Madsen Gunner
    Nor40_AR = ["Nor40_AR", {
        params ["_unit"];

        [Nor_Uni_M1914] call Olsen_FW_FNC_AddItem;
        [Nor_Vest_14] call Olsen_FW_FNC_AddItem;
		[Nor_BP_Madsen] call Olsen_FW_FNC_AddItem;
        [Nor_Helmet_M1931] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        Nor_M1914;

    }];

    //Madsen Gun Assistant
    Nor40_AAR = ["Nor40_AAR", {
        params ["_unit"];

        [Nor_Uni_M1914] call Olsen_FW_FNC_AddItem;
        [Nor_Vest_14] call Olsen_FW_FNC_AddItem;
		[Nor_BP_Madsen] call Olsen_FW_FNC_AddItem;
        [Nor_Helmet_M1931] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        Nor_Krag;

        //Extra
        [Nor_Tin_Grenade,1,"vest"] call Olsen_FW_FNC_AddItem;
        [Nor_Mag_M1914,4,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

    //Assistant Medic
    Nor40_MedS = ["Nor40_MedS", {
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
        Nor_Krag;

        //Extra
        [Nor_Tin_Grenade,1,"vest"] call Olsen_FW_FNC_AddItem;
        [Nor_Mag_M1914,2,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

    //Rifleman
    Nor40_Rif = ["Nor40_Rif", {
        params ["_unit"];

        [Nor_Uni_M1914] call Olsen_FW_FNC_AddItem;
        [Nor_Vest_Rifleman] call Olsen_FW_FNC_AddItem;
		[Nor_BP_Telemark] call Olsen_FW_FNC_AddItem;
        [Nor_Helmet_M1931] call Olsen_FW_FNC_AddItem;
        [GEN_Face_r] call Olsen_FW_FNC_AddItemRandom;

        //Assigned Items
        GEN_Default_Equipment_Set;

        //Primary Weapon
        Nor_Krag;

        //Extra
        [Nor_Tin_Grenade,1,"vest"] call Olsen_FW_FNC_AddItem;
        [Nor_Mag_M1914,2,"backpack"] call Olsen_FW_FNC_AddItem;
    }];

//Recon Team

		//Recon Team leader
		Nor40_RCTL = ["Nor40_RCTL", {
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
        Nor_Krag;

        //Extra
        [Nor_Tin_Grenade,1,"vest"] call Olsen_FW_FNC_AddItem;
        [Nor_Mag_M1894,2,"backpack"] call Olsen_FW_FNC_AddItem;
    }];
	
		//Recon Team Snioer
		Nor40_RCTS = ["Nor40_RCTS", {
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
        Nor_Krag;

        //Extra
        [Nor_Tin_Grenade,1,"vest"] call Olsen_FW_FNC_AddItem;
		[Nor_Rokboks,1,"vest"] call Olsen_FW_FNC_AddItem;
        [Nor_Mag_M1894,2,"backpack"] call Olsen_FW_FNC_AddItem;
    }];