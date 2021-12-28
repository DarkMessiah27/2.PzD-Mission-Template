// add this this file to your vehGear.sqf inside the switch like this.
// #include "vehLoadoutUK.sqf"
// then add the appropriate calls to the vehicle inits
// then delete any loadouts you aren't using to save space.

//Loadout Calls
/*
All years
    [this, UK_Resupply] call Olsen_FW_FNC_VehicleGearScript;         British Resupply Vehicle
    [this, UK_Squad] call Olsen_FW_FNC_VehicleGearScript;            British Squad Vehicle
    [this, UK_Section] call Olsen_FW_FNC_VehicleGearScript;          British Section Vehicle
    [this, UK_Tank] call Olsen_FW_FNC_VehicleGearScript;             British Tank
*/

//======================== Definitions ========================

#define UK_Infantry_Supplies \
    [US_Mag_M1T_30, 25] call Olsen_FW_FNC_AddItemVehicle; \
	[UK_Mag_LeeEn, 15] call Olsen_FW_FNC_AddItemVehicle; \
    [US_Mag_M1919_50_Mixed_Ball, 20] call Olsen_FW_FNC_AddItemVehicle; \
    [UK_Mag_Sten, 6] call Olsen_FW_FNC_AddItemVehicle; \
	[UK_Mag_Boys, 10] call Olsen_FW_FNC_AddItemVehicle; \
    [UK_Gren_Frag, 20] call Olsen_FW_FNC_AddItemVehicle; \
    [GEN_Toolkit, 1] call Olsen_FW_FNC_AddItemVehicle;

#define UK_Tank_Supplies \
    [US_Mag_M1T_30, 6] call Olsen_FW_FNC_AddItemVehicle; \
    [UK_Mag_Sten, 3] call Olsen_FW_FNC_AddItemVehicle; \
    [UK_Mag_EnfieldNo2, 3] call Olsen_FW_FNC_AddItemVehicle;

//======================== Loadouts ========================

// === All years ===

UK_Resupply = ["UK_Resupply", {
    params ["_vehicle"];

    GEN_Gren_Smoke;
    GEN_Flare;
    GEN_Medical;
    GEN_Medical;

    UK_Infantry_Supplies;
    UK_Infantry_Supplies;

}];

UK_Squad = ["UK_squad", {
    params ["_vehicle"];

    GEN_Gren_Smoke;
    GEN_Flare;

    UK_Infantry_Supplies;
    UK_Infantry_Supplies;

}];

UK_Section = ["UK_Section", {
    params ["_vehicle"];

    GEN_Gren_Smoke;
    GEN_Flare;
    GEN_Medical;

    UK_Infantry_Supplies;
    UK_Infantry_Supplies;

}];

UK_Tank = ["UK_Tank", {
    params ["_vehicle"];

    GEN_Gren_Smoke;
    GEN_Flare;
    GEN_Tank;

    UK_Tank_Supplies;

}];