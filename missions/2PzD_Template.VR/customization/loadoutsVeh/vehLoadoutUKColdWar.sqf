//Loadout Calls
/*
1985
    [this, UK85_Resupply] call Olsen_FW_FNC_VehicleGearScript;         British 85 Resupply Vehicle
    [this, UK85_Section] call Olsen_FW_FNC_VehicleGearScript;          British 85 Section Vehicle
    [this, UK85_Platoon] call Olsen_FW_FNC_VehicleGearScript;          British 85 Platoon Vehicle
    [this, UK85_Medical] call Olsen_FW_FNC_VehicleGearScript;          British 85 Medical Vehicle
    [this, UK85_Tank] call Olsen_FW_FNC_VehicleGearScript;             British 85 Tank
*/

//======================== Definitions ========================

#define UK85_Infantry_Supplies \
    [UKCW_Mag_L1A1_20Rnd, 50] call Olsen_FW_FNC_AddItemVehicle; \
    [UKCW_Mag_L1A1_20Rnd_Green, 10] call Olsen_FW_FNC_AddItemVehicle; \
    [UKCW_Mag_L1A1_20Rnd_Red, 10] call Olsen_FW_FNC_AddItemVehicle; \
    [UKCW_Mag_L2A3_30Rnd, 5] call Olsen_FW_FNC_AddItemVehicle; \
    [UKCW_Mag_L7A2_100Rnd_Red, 10] call Olsen_FW_FNC_AddItemVehicle; \
    [UKCW_Mag_CG_HEAT, 5] call Olsen_FW_FNC_AddItemVehicle; \
    [UKCW_Mag_CG_HEDP, 5] call Olsen_FW_FNC_AddItemVehicle; \
    [UKCW_Gren_Frag, 20] call Olsen_FW_FNC_AddItemVehicle; \
    [UKCW_Weap_M72A3, 2] call Olsen_FW_FNC_AddItemVehicle; \
    [GEN_Toolkit, 1] call Olsen_FW_FNC_AddItemVehicle;

#define UK85_Infantry_Supplies_Light \
    [UKCW_Mag_L1A1_20Rnd, 30] call Olsen_FW_FNC_AddItemVehicle; \
    [UKCW_Mag_L2A3_30Rnd, 5] call Olsen_FW_FNC_AddItemVehicle; \
    [UKCW_Mag_L7A2_100Rnd_Red, 10] call Olsen_FW_FNC_AddItemVehicle; \
    [UKCW_Mag_CG_HEAT, 3] call Olsen_FW_FNC_AddItemVehicle; \
    [UKCW_Mag_CG_HEDP, 3] call Olsen_FW_FNC_AddItemVehicle; \
    [UKCW_Gren_Frag, 8] call Olsen_FW_FNC_AddItemVehicle; \
    [UKCW_Weap_M72A3, 2] call Olsen_FW_FNC_AddItemVehicle; \

#define UK85_ReconTeam_Supplies \
    [UKCW_Mag_L41A1, 10] call Olsen_FW_FNC_AddItemVehicle;

#define UK85_Tank_Supplies \
    [UKCW_Mag_L2A3_30Rnd, 20] call Olsen_FW_FNC_AddItemVehicle;

//======================== Loadouts ========================

// === All years ===

UK85_Resupply = ["UK85_Resupply", {
    params ["_vehicle"];

    [UKCW_CargoSling, 2] call Olsen_FW_FNC_AddItemVehicle;

    GEN_Gren_Smoke;
    GEN_Medical;
    GEN_Medical;

    // Resupply vehicles can't fit all the Infantry Supplies
    UK85_Infantry_Supplies_Light;

    UK85_ReconTeam_Supplies;

}];

UK85_Section = ["UK85_Section", {
    params ["_vehicle"];

    GEN_Gren_Smoke;

    UK85_Infantry_Supplies;

}];

UK85_Platoon = ["UK85_Platoon", {
    params ["_vehicle"];

    GEN_Gren_Smoke;

    UK85_Infantry_Supplies;

    UK85_ReconTeam_Supplies;
    UK85_ReconTeam_Supplies;

}];

UK85_Medical = ["UK85_Medical", {
    params ["_vehicle"];

    GEN_Gren_Smoke;
    GEN_Medical;

}];

UK85_Tank = ["UK85_Tank", {
    params ["_vehicle"];

    GEN_Gren_Smoke;
    GEN_Tank;

    UK85_Tank_Supplies;

}];