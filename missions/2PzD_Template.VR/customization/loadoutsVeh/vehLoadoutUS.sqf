//Loadout Calls
/*
All years
    [this, US_Resupply] call Olsen_FW_FNC_VehicleGearScript;         US Resupply Vehicle
    [this, US_Squad] call Olsen_FW_FNC_VehicleGearScript;            US Squad Vehicle
    [this, US_Platoon] call Olsen_FW_FNC_VehicleGearScript;          US Platoon Vehicle

Tank 1942
    [this, US_Tank_Early] call Olsen_FW_FNC_VehicleGearScript;       US Tank Early

Tank 1944
    [this, US_Tank_Late] call Olsen_FW_FNC_VehicleGearScript;        US Tank Late
*/

//======================== Definitions ========================

#define US_Infantry_Supplies \
    [US_Mag_M1C, 6] call Olsen_FW_FNC_AddItemVehicle; \
	[US_Mag_M1T_20, 6] call Olsen_FW_FNC_AddItemVehicle; \
    [US_Mag_BAR_Mixed_Ball, 25] call Olsen_FW_FNC_AddItemVehicle; \
	[US_Mag_M1G, 25] call Olsen_FW_FNC_AddItemVehicle; \
    [US_Mag_M1903, 15] call Olsen_FW_FNC_AddItemVehicle; \
    [GEN_Gren_Frag_P, 20] call Olsen_FW_FNC_AddItemVehicle; \
    [GEN_Toolkit, 1] call Olsen_FW_FNC_AddItemVehicle;

#define US_Tank_Supplies \
    [US_Mag_M1T_20, 6] call Olsen_FW_FNC_AddItemVehicle; \
    [US_Mag_M1911, 3] call Olsen_FW_FNC_AddItemVehicle;

#define US_Late_War_Tank \
    [US_Mag_M3GG, 6] call Olsen_FW_FNC_AddItemVehicle; \

//======================== Loadouts ========================

// === All years ===

US_Resupply = ["US_Resupply", {
    params ["_vehicle"];

    GEN_Gren_Smoke;
    GEN_Flare_WW2;
    GEN_Medical;
    GEN_Medical;

    US_Infantry_Supplies;
    US_Infantry_Supplies;

}];

US_Squad = ["US_Squad", {
    params ["_vehicle"];

    GEN_Gren_Smoke;
    GEN_Flare_WW2;

    US_Infantry_Supplies;

}];

US_Platoon = ["US_Platoon", {
    params ["_vehicle"];

    GEN_Gren_Smoke;
    GEN_Flare_WW2;
    GEN_Medical;

    US_Infantry_Supplies;

}];


// === 1942 Tank ===

US_Tank_Early = ["US_Tank_Early", {
    params ["_vehicle"];

    GEN_Gren_Smoke;
    GEN_Flare_WW2;
    GEN_Tank;

    US_Tank_Supplies;

}];

// === 1944 Tank ===

US_Tank_Late = ["US_Tank_Late", {
    params ["_vehicle"];

    GEN_Gren_Smoke;
    GEN_Flare_WW2;
    GEN_Tank;

    US_Tank_Supplies;
	US_Late_War_Tank;

}];