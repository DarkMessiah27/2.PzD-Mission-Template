//Loadout Calls
/*
    1941 / 1944
    [this, Rus_Resupply] call Olsen_FW_FNC_VehicleGearScript;       Russian Resupply Vehicle
    [this, Rus_Squad] call Olsen_FW_FNC_VehicleGearScript;          Russian Squad Vehicle
    [this, Rus_Platoon] call Olsen_FW_FNC_VehicleGearScript;        Russian Platoon Vehicle
    [this, Rus_Tank] call Olsen_FW_FNC_VehicleGearScript;           Russian Tank
*/

//======================== Definitions ========================

#define Rus_Infantry_Supplies \
    [Rus_Mag_Mosin, 25] call Olsen_FW_FNC_AddItemVehicle; \
    [Rus_Mag_DP_Tracer, 10] call Olsen_FW_FNC_AddItemVehicle; \
    [Rus_Mag_PPSH_S, 6] call Olsen_FW_FNC_AddItemVehicle; \
    [Rus_Mag_PPD40, 6] call Olsen_FW_FNC_AddItemVehicle; \
    [Rus_Mag_SVT, 10] call Olsen_FW_FNC_AddItemVehicle; \
    [GEN_Gren_Frag_P, 10] call Olsen_FW_FNC_AddItemVehicle; \
    [Rus_Gren_Frag_S, 10] call Olsen_FW_FNC_AddItemVehicle; \
    [Rus_Mag_PTRD, 10] call Olsen_FW_FNC_AdditemVehicle; \
    [GEN_Toolkit, 1] call Olsen_FW_FNC_AddItemVehicle;

#define Rus_Tank_Supplies \
    [Rus_Mag_PPSH_S, 6] call Olsen_FW_FNC_AddItemVehicle; \
    [Rus_Mag_TT33, 3] call Olsen_FW_FNC_AddItemVehicle; \
    [Rus_Mag_M1895, 3] call Olsen_FW_FNC_AddItemVehicle;

//======================== Loadouts ========================

Rus_Resupply = ["Rus_Resupply", {
    params ["_vehicle"];

    GEN_Flare;
    GEN_Gren_Smoke;
    GEN_Medical;
    GEN_Medical;

    Rus_Infantry_Supplies;
    Rus_Infantry_Supplies;

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
    GEN_Tank;
    
    Rus_Tank_Supplies

}];