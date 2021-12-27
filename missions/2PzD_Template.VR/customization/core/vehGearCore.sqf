#define random(MIN, MAX) \
([MIN, MAX] call Olsen_FW_FNC_RandomRange)

params ["_vehicle", "_type"];

if (!(_type isEqualType []) || {count _type != 2}) exitWith {
    private _message = format ["Loadout is not a valid format in loadout: %1", str _this];
    _message call Olsen_FW_FNC_DebugMessage;
};

private _loadoutName = _type select 0;
if !(_loadoutName isEqualType "") exitWith {
    private _message = format ["Loadout is not a valid format in loadout: %1", str _this];
    _message call Olsen_FW_FNC_DebugMessage;
};

private _loadout = _type select 1;
if !(_loadout isEqualType {}) exitWith {
    private _message = format ["Loadout is not a valid format in loadout: %1", str _this];
    _message call Olsen_FW_FNC_DebugMessage;
};

Olsen_FW_MissionLoadoutsVehicle pushBackUnique _loadoutName;

if (!local _vehicle) exitWith {};

_vehicle setVariable ["BIS_enableRandomization", false];
_vehicle setVariable ["FW_Loadout", _type, true];

#include "..\vehicleGearSettings.sqf" //DO NOT REMOVE

_vehicle call Olsen_FW_FNC_RemoveAllVehicleGear;

Olsen_FW_FNC_AddItemVehicle = {([_vehicle, _loadoutName] + _this) call Olsen_FW_FNC_AddItemVehicleOrg;};
Olsen_FW_FNC_AddItemVehicleRandom = {([_vehicle, _loadoutName] + [_this]) call Olsen_FW_FNC_AddItemVehicleRandomOrg;};
Olsen_FW_FNC_AddItemVehicleRandomPercent = {([_vehicle, _loadoutName] + [_this]) call Olsen_FW_FNC_AddItemVehicleRandomOrgPercent;};

_vehicle call _loadout;
