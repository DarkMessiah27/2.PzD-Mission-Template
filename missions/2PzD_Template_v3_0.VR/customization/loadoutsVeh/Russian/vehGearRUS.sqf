// add this this file to your vehGear.sqf inside the switch like this.
// #include "vehGearRUS.sqf"
// then add the appropriate calls to the vehicle inits
// then delete any loadouts you aren't using to save space.

//Loadout Calls

// 1941 / 1944
// [this, Rus_Truck] call Olsen_FW_FNC_VehicleGearScript;       Russian Truck
// [this, Rus_Squad] call Olsen_FW_FNC_VehicleGearScript;       Russian Squad Supplies
// [this, Rus_Platoon] call Olsen_FW_FNC_VehicleGearScript;     Russian Platoon Supplies
// [this, Rus_Tank] call Olsen_FW_FNC_VehicleGearScript;        Russian Tank

//======================== Definitions ========================

#define Rus_Infantry_Supplies \
    [Rus_Mag_Mosin, 20] call Olsen_FW_FNC_AddItemVehicle; \
    [Rus_Mag_DP_Mixed_Ball_Red, 10] call Olsen_FW_FNC_AddItemVehicle; \
    [Rus_Mag_PPSH_S, 5] call Olsen_FW_FNC_AddItemVehicle; \
    [Rus_Mag_SVT40, 10] call Olsen_FW_FNC_AddItemVehicle; \
    [GEN_Gren_Frag_P, 10] call Olsen_FW_FNC_AddItemVehicle; \
    [Rus_Gren_Frag_S, 5] call Olsen_FW_FNC_AddItemVehicle; \
    [Rus_Gren_AT, 5] call Olsen_FW_FNC_AddItemVehicle; \
    [Rus_Mag_TT33, 5] call Olsen_FW_FNC_AddItemVehicle; \
    [Rus_Mag_M1895, 2] call Olsen_FW_FNC_AddItemVehicle; \
    [GEN_Toolkit, 1] call Olsen_FW_FNC_AddItemVehicle;

#define Rus_Resupply_Supplies \
    [Rus_Mag_Mosin, 50] call Olsen_FW_FNC_AddItemVehicle; \
    [Rus_Mag_DP_Mixed_Ball_Red, 30] call Olsen_FW_FNC_AddItemVehicle; \
    [Rus_Mag_PPSH_S, 5] call Olsen_FW_FNC_AddItemVehicle; \
    [Rus_Mag_SVT40, 10] call Olsen_FW_FNC_AddItemVehicle; \
    [GEN_Gren_Frag_P, 30] call Olsen_FW_FNC_AddItemVehicle; \
    [Rus_Gren_Frag_S, 10] call Olsen_FW_FNC_AddItemVehicle; \
    [Rus_Gren_AT, 15] call Olsen_FW_FNC_AddItemVehicle; \
    [Rus_Mag_TT33, 10] call Olsen_FW_FNC_AddItemVehicle; \
    [Rus_Mag_M1895, 5] call Olsen_FW_FNC_AddItemVehicle; \
    [GEN_Toolkit, 1] call Olsen_FW_FNC_AddItemVehicle;

#define Rus_Tank_Supplies \
    [Rus_Mag_Mosin, 20] call Olsen_FW_FNC_AddItemVehicle; \
    [Rus_Mag_DP_Mixed_Ball_Red, 10] call Olsen_FW_FNC_AddItemVehicle; \
    [Rus_Mag_PPSH_S, 5] call Olsen_FW_FNC_AddItemVehicle; \
    [Rus_Mag_SVT40, 10] call Olsen_FW_FNC_AddItemVehicle; \
    [GEN_Gren_Frag_P, 10] call Olsen_FW_FNC_AddItemVehicle; \
    [Rus_Gren_Frag_S, 5] call Olsen_FW_FNC_AddItemVehicle; \
    [Rus_Gren_AT, 5] call Olsen_FW_FNC_AddItemVehicle; \
    [Rus_Mag_TT33, 5] call Olsen_FW_FNC_AddItemVehicle; \
    [Rus_Mag_M1895, 2] call Olsen_FW_FNC_AddItemVehicle;

//======================== Loadouts ========================

Rus_Truck = ["Rus_Truck", {
    params ["_vehicle"];

    GEN_Flare;
    GEN_Gren_Smoke;
    Rus_Resupply_Supplies;

}];

Rus_Squad = ["Rus_Squad", {
    params ["_vehicle"];

    GEN_Flare;
    GEN_Gren_Smoke;
    Rus_Infantry_Supplies;
    
}];

Rus_Platoon = ["Rus_Platoon", {
    params ["_vehicle"];

    GEN_Flare;
    GEN_Gren_Smoke;
    GEN_Medical;
    Rus_Infantry_Supplies;

}];

Rus_Tank = ["Rus_Tank", {
    params ["_vehicle"];

    GEN_Flare;
    GEN_Gren_Smoke;
    GEN_Pzr;
    Rus_Tank_Supplies

}];