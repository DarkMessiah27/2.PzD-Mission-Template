//Loadout Calls
/*
    1941 / 1944
    [this, Fin_Resupply] call Olsen_FW_FNC_VehicleGearScript;       Finnish Resupply Vehicle
    [this, Fin_Squad] call Olsen_FW_FNC_VehicleGearScript;          Finnish Squad Vehicle
    [this, Fin_Platoon] call Olsen_FW_FNC_VehicleGearScript;        Finnish Platoon Vehicle
    [this, Fin_Tank] call Olsen_FW_FNC_VehicleGearScript;           Finnish Tank
*/

//======================== Definitions ========================

#define Fin_Infantry_Supplies \
    [Fin_Mag_Mos, 25] call Olsen_FW_FNC_AddItemVehicle; \
    [Rus_Mag_DP_Tracer, 10] call Olsen_FW_FNC_AddItemVehicle; \
    [Fin_Mag_SIG, 10] call Olsen_FW_FNC_AddItemVehicle; \
    [Fin_Mag_Suomi_D, 6] call Olsen_FW_FNC_AddItemVehicle; \
    [Fin_Mag_Suomi_S20, 10] call Olsen_FW_FNC_AddItemVehicle; \
    [Rus_Mag_SVT, 10] call Olsen_FW_FNC_AddItemVehicle; \
    [Fin_Gren_Frag_M32, 10] call Olsen_FW_FNC_AddItemVehicle; \
    [Rus_Mag_PTRD, 30] call Olsen_FW_FNC_AdditemVehicle; \
    [GEN_Toolkit, 1] call Olsen_FW_FNC_AddItemVehicle;

#define Fin_Tank_Supplies \
    [Fin_Mag_Suomi_S20, 4] call Olsen_FW_FNC_AddItemVehicle; \
    [Fin_Mag_SIG, 4] call Olsen_FW_FNC_AddItemVehicle; \
    [Fin_Mag_LahtiL35, 6] call Olsen_FW_FNC_AddItemVehicle;

//======================== Loadouts ========================

Fin_Resupply = ["Fin_Resupply", {
    params ["_vehicle"];

    GEN_Flare_WW2;
    GEN_Gren_Smoke;
    GEN_Medical;
    GEN_Medical;

    Fin_Infantry_Supplies;
    Fin_Infantry_Supplies;

}];

Fin_Squad = ["Fin_Squad", {
    params ["_vehicle"];

    GEN_Flare_WW2;
    GEN_Gren_Smoke;

    Fin_Infantry_Supplies;
    
}];

Fin_Platoon = ["Fin_Platoon", {
    params ["_vehicle"];

    GEN_Flare_WW2;
    GEN_Gren_Smoke;
    GEN_Medical;

    Fin_Infantry_Supplies;

}];

Fin_Tank = ["Fin_Tank", {
    params ["_vehicle"];

    GEN_Flare_WW2;
    GEN_Gren_Smoke;
    GEN_Tank;
    
    Fin_Tank_Supplies

}];