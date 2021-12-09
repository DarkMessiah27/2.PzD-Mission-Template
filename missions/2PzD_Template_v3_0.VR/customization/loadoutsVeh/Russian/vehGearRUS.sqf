// add this this file to your vehGear.sqf inside the switch like this.
// #include "vehGearRUS.sqf"
// then add the appropriate calls to the vehicle inits
// then delete any loadouts you aren't using to save space.

//Loadout Calls

// 1941 / 1944
// [this, Rus_Truck] call Olsen_FW_FNC_VehicleGearScript;       Russian Truck
// [this, Rus_Squad] call Olsen_FW_FNC_VehicleGearScript;       Russian Squad Supplies
// [this, Rus_Platoon] call Olsen_FW_FNC_VehicleGearScript;     Russian Platoon Supplies

//======================== Definitions ========================

#define Rus_Infantry_Supplies \
    [GEN_Flare_Pistol, 1] call Olsen_FW_FNC_AddItemVehicle; \
    [GEN_Gren_Smoke_W, 5] call Olsen_FW_FNC_AddItemVehicle; \
    [GEN_Flare_W, 2] call Olsen_FW_FNC_AddItemVehicle; \
    [GEN_Flare_G, 2] call Olsen_FW_FNC_AddItemVehicle; \
    [GEN_Flare_R, 2] call Olsen_FW_FNC_AddItemVehicle; \
    [GEN_Flare_Y, 2] call Olsen_FW_FNC_AddItemVehicle; \
    [GEN_Gren_Smoke_B, 2] call Olsen_FW_FNC_AddItemVehicle; \
    [GEN_Gren_Smoke_G, 2] call Olsen_FW_FNC_AddItemVehicle; \
    [GEN_Gren_Smoke_O, 2] call Olsen_FW_FNC_AddItemVehicle; \
    [GEN_Gren_Smoke_P, 2] call Olsen_FW_FNC_AddItemVehicle; \
    [GEN_Gren_Smoke_R, 2] call Olsen_FW_FNC_AddItemVehicle; \
    [GEN_Gren_Smoke_Y, 2] call Olsen_FW_FNC_AddItemVehicle; \
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

#define Rus_Medical_Supplies \
    [GEN_SurgKit, 1] call Olsen_FW_FNC_AddItemVehicle; \
    [GEN_BandageField, 40] call Olsen_FW_FNC_AddItemVehicle; \
    [GEN_BandageElastic, 20] call Olsen_FW_FNC_AddItemVehicle; \
    [GEN_BandagePacking, 40] call Olsen_FW_FNC_AddItemVehicle; \
    [GEN_Pain, 20] call Olsen_FW_FNC_AddItemVehicle; \
    [GEN_Morp, 10] call Olsen_FW_FNC_AddItemVehicle; \
    [GEN_Saline500, 15] call Olsen_FW_FNC_AddItemVehicle; \
    [GEN_Saline1000, 5] call Olsen_FW_FNC_AddItemVehicle; \
    [GEN_TQ, 20] call Olsen_FW_FNC_AddItemVehicle; \
    [GEN_Epi, 20] call Olsen_FW_FNC_AddItemVehicle;

#define Rus_Resupply_Supplies \
    [GEN_Flare_Pistol, 1] call Olsen_FW_FNC_AddItemVehicle; \
    [GEN_Gren_Smoke_W, 10] call Olsen_FW_FNC_AddItemVehicle; \
    [GEN_Flare_W, 2] call Olsen_FW_FNC_AddItemVehicle; \
    [GEN_Flare_G, 2] call Olsen_FW_FNC_AddItemVehicle; \
    [GEN_Flare_R, 2] call Olsen_FW_FNC_AddItemVehicle; \
    [GEN_Flare_Y, 2] call Olsen_FW_FNC_AddItemVehicle; \
    [GEN_Gren_Smoke_B, 2] call Olsen_FW_FNC_AddItemVehicle; \
    [GEN_Gren_Smoke_G, 2] call Olsen_FW_FNC_AddItemVehicle; \
    [GEN_Gren_Smoke_O, 2] call Olsen_FW_FNC_AddItemVehicle; \ 
    [GEN_Gren_Smoke_P, 2] call Olsen_FW_FNC_AddItemVehicle; \
    [GEN_Gren_Smoke_R, 2] call Olsen_FW_FNC_AddItemVehicle; \
    [GEN_Gren_Smoke_Y, 2] call Olsen_FW_FNC_AddItemVehicle; \
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

//======================== Loadouts ========================

Rus_Truck = ["Rus_Truck", {
    params ["_vehicle"];

    Rus_Resupply_Supplies;

}];

Rus_Squad = ["Rus_Squad", {
    params ["_vehicle"];

    Rus_Infantry_Supplies;

}];

Rus_Platoon = ["Rus_Platoon", {
    params ["_vehicle"];

    Rus_Infantry_Supplies;
    Rus_Medical_Supplies;

}];