// add this this file to your vehGear.sqf inside the switch like this.
// #include "vehGearWHR.sqf"
// then add the appropriate calls to the vehicle inits
// then delete any loadouts you aren't using to save space.

//Loadout Calls
/*
1942 and below
    [this, Ger_Resupply_Early] call Olsen_FW_FNC_VehicleGearScript;     German Resupply Vehicle
    [this, Ger_Gruppe_Early] call Olsen_FW_FNC_VehicleGearScript;       German Gruppe Vehicle
    [this, Ger_Zug_Early] call Olsen_FW_FNC_VehicleGearScript;          German Zug Vehicle

1944 and up
    [this, Ger_Resupply_Late] call Olsen_FW_FNC_VehicleGearScript;      German Resupply Vehicle
    [this, Ger_Gruppe_Late] call Olsen_FW_FNC_VehicleGearScript;        German Gruppe Vehicle
    [this, Ger_Zug_Late] call Olsen_FW_FNC_VehicleGearScript;           German Zug Vehicle

All years
    [this, Ger_Panzer] call Olsen_FW_FNC_VehicleGearScript;             German Panzer

*/

//======================== Definitions ========================

#define Ger_Infantry_Supplies \
    [Ger_Mag_K98, 25] call Olsen_FW_FNC_AddItemVehicle; \
    [Ger_Mag_MG_50_Mixed_SmE, 10] call Olsen_FW_FNC_AddItemVehicle; \
    [Ger_Mag_MG30_Mixed_sS, 5] call Olsen_FW_FNC_AddItemVehicle; \
    [Ger_Mag_MP40, 6] call Olsen_FW_FNC_AddItemVehicle; \
    [Ger_Gren_Frag_M24, 20] call Olsen_FW_FNC_AddItemVehicle; \
    [Ger_Mag_RGrn_ATS, 5] call Olsen_FW_FNC_AddItemVehicle; \
    [Ger_Mag_RGrn_ATL, 5] call Olsen_FW_FNC_AddItemVehicle; \
    [Ger_Mag_RGrn_HE, 5] call Olsen_FW_FNC_AddItemVehicle; \
    [GEN_Toolkit, 1] call Olsen_FW_FNC_AddItemVehicle;

#define Ger_Panzer_Supplies \
    [Ger_Mag_MP40, 6] call Olsen_FW_FNC_AddItemVehicle; \
    [Ger_Mag_P38, 3] call Olsen_FW_FNC_AddItemVehicle; \
    [Ger_Mag_P08, 3] call Olsen_FW_FNC_AddItemVehicle;

#define Ger_Late_War_Supplies \
    [Ger_Mag_StG44, 20] call Olsen_FW_FNC_AddItemVehicle; \
    [Ger_Mag_G43, 15] call Olsen_FW_FNC_AddItemVehicle; \
    [Ger_Weap_PzFaust_60, 2] call Olsen_FW_FNC_AddItemVehicle; \
    [Ger_Mag_Pzschrck, 10] call Olsen_FW_FNC_AddItemVehicle;

//======================== Loadouts ========================

// === 1942 and below ===

Ger_Resupply_Early = ["Ger_Resupply_Early", {
    params ["_vehicle"];

    GEN_Gren_Smoke;
    GEN_Flare;
    GEN_Medical;
    GEN_Medical;

    Ger_Infantry_Supplies;
    Ger_Infantry_Supplies;

}];

Ger_Gruppe_Early = ["Ger_Gruppe_Early", {
    params ["_vehicle"];

    GEN_Gren_Smoke;
    GEN_Flare;

    Ger_Infantry_Supplies;

}];

Ger_Zug_Early = ["Ger_Zug_Early", {
    params ["_vehicle"];

    GEN_Gren_Smoke;
    GEN_Flare;
    GEN_Medical;

    Ger_Infantry_Supplies;

}];

// === 1944 and up ===

Ger_Resupply_Late = ["Ger_Resupply_Late", {
    params ["_vehicle"];

    GEN_Gren_Smoke;
    GEN_Flare;
    GEN_Medical;
    GEN_Medical;

    Ger_Infantry_Supplies;
    Ger_Infantry_Supplies;
    Ger_Late_War_Supplies;
    Ger_Late_War_Supplies;

}];

Ger_Gruppe_Late = ["Ger_Gruppe_Late", {
    params ["_vehicle"];

    GEN_Gren_Smoke;
    GEN_Flare;

    Ger_Infantry_Supplies;
    Ger_Late_War_Supplies;

}];

Ger_Zug_Late = ["Ger_Zug_Late", {
    params ["_vehicle"];

    GEN_Gren_Smoke;
    GEN_Flare;
    GEN_Medical;

    Ger_Infantry_Supplies;
    Ger_Late_War_Supplies;

}];

// === All years ===

Ger_Panzer = ["Ger_Panzer", {
    params ["_vehicle"];

    GEN_Gren_Smoke;
    GEN_Flare;
    GEN_Tank;

    Ger_Panzer_Supplies;

}];