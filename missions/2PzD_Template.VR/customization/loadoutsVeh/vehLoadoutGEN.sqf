// this file includes generic gear definitions which can be added to any vehicle loadout regardless of faction and year
// simply add the definition to any vehicle loadout in a vehGear.sqf you like

//======================== Definitions ========================

#define GEN_Gren_Smoke \
    [GEN_Gren_Smoke_W, 5] call Olsen_FW_FNC_AddItemVehicle; \
    [GEN_Gren_Smoke_B, 2] call Olsen_FW_FNC_AddItemVehicle; \
    [GEN_Gren_Smoke_G, 2] call Olsen_FW_FNC_AddItemVehicle; \
    [GEN_Gren_Smoke_O, 2] call Olsen_FW_FNC_AddItemVehicle; \
    [GEN_Gren_Smoke_P, 2] call Olsen_FW_FNC_AddItemVehicle; \
    [GEN_Gren_Smoke_R, 2] call Olsen_FW_FNC_AddItemVehicle; \
    [GEN_Gren_Smoke_Y, 2] call Olsen_FW_FNC_AddItemVehicle;

#define GEN_Flare_WW2 \
    [GEN_Flare_Pistol, 1] call Olsen_FW_FNC_AddItemVehicle; \
    [GEN_Flare_W, 2] call Olsen_FW_FNC_AddItemVehicle; \
    [GEN_Flare_G, 2] call Olsen_FW_FNC_AddItemVehicle; \
    [GEN_Flare_R, 2] call Olsen_FW_FNC_AddItemVehicle; \
    [GEN_Flare_Y, 2] call Olsen_FW_FNC_AddItemVehicle;

#define GEN_Tank \
    [GEN_BandageElastic, 12] call Olsen_FW_FNC_AddItemVehicle; \
    [GEN_BandageElastic, 4] call Olsen_FW_FNC_AddItemVehicle; \
    [GEN_TQ, 4] call Olsen_FW_FNC_AddItemVehicle; \
    [GEN_Epi, 4] call Olsen_FW_FNC_AddItemVehicle; \
    [GEN_ace_firing_device, 1] call Olsen_FW_FNC_AddItemVehicle; \
    [GEN_DemoLarge, 1] call Olsen_FW_FNC_AddItemVehicle; \
    [GEN_Toolkit, 1] call Olsen_FW_FNC_AddItemVehicle;
    
#define GEN_Medical \
    [GEN_SurgKit, 1] call Olsen_FW_FNC_AddItemVehicle; \
    [GEN_BandageField, 40] call Olsen_FW_FNC_AddItemVehicle; \
    [GEN_BandageElastic, 20] call Olsen_FW_FNC_AddItemVehicle; \
    [GEN_BandagePacking, 40] call Olsen_FW_FNC_AddItemVehicle; \
    [GEN_Morp, 10] call Olsen_FW_FNC_AddItemVehicle; \
    [GEN_Saline1000, 10] call Olsen_FW_FNC_AddItemVehicle; \
    [GEN_Saline500, 30] call Olsen_FW_FNC_AddItemVehicle; \
    [GEN_Saline250, 16] call Olsen_FW_FNC_AddItemVehicle; \
    [GEN_TQ, 20] call Olsen_FW_FNC_AddItemVehicle; \
    [GEN_Epi, 20] call Olsen_FW_FNC_AddItemVehicle; \
    [GEN_Painkiller, 20] call Olsen_FW_FNC_AddItemVehicle;