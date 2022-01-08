//Loadout Calls
/*
    1940
    [this, Nor_Resupply] call Olsen_FW_FNC_VehicleGearScript;       Norwegian Resupply Vehicle
    [this, Nor_Section] call Olsen_FW_FNC_VehicleGearScript;          Norwegian Section Vehicle
    [this, Nor_Platoon] call Olsen_FW_FNC_VehicleGearScript;        Norwegian Platoon Vehicle
*/

//======================== Definitions ========================

#define Nor_Infantry_Supplies \
    [Nor_Mag_M1894, 25] call Olsen_FW_FNC_AddItemVehicle; \
    [Nor_Mag_M1914, 10] call Olsen_FW_FNC_AddItemVehicle; \
    [Nor_Tin_Grenade, 10] call Olsen_FW_FNC_AddItemVehicle; \
    [Ger_Mag_K98, 5] call Olsen_FW_FNC_AdditemVehicle; \
    [GEN_Toolkit, 1] call Olsen_FW_FNC_AddItemVehicle;


//======================== Loadouts ========================

Nor_Resupply = ["Nor_Resupply", {
    params ["_vehicle"];

    GEN_Flare;
    GEN_Gren_Smoke;
    GEN_Medical;
    GEN_Medical;

    Nor_Infantry_Supplies;
    Nor_Infantry_Supplies;

}];

Nor_Section = ["Nor_Section", {
    params ["_vehicle"];

    GEN_Flare;
    GEN_Gren_Smoke;

    Nor_Infantry_Supplies;
    
}];

Nor_Platoon = ["Nor_Platoon", {
    params ["_vehicle"];

    GEN_Flare;
    GEN_Gren_Smoke;
    GEN_Medical;

    Nor_Infantry_Supplies;

}];