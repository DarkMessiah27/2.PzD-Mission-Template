#define random(MIN, MAX) \
([MIN, MAX] call Olsen_FW_FNC_RandomRange)

params ["_unit", "_type"];

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

Olsen_FW_MissionLoadouts pushBackUnique _loadoutName;

if (!local _unit) exitWith {};

_unit setVariable ["BIS_enableRandomization", false];
_unit setVariable ["FW_Loadout", _type, true];

#include "..\gearSettings.sqf" //DO NOT REMOVE

_unit call Olsen_FW_FNC_RemoveAllGear;

Olsen_FW_FNC_AddItem = {([_unit, _loadoutName] + _this) call Olsen_FW_FNC_AddItemOrg;};
Olsen_FW_FNC_AddItemRandom = {([_unit, _loadoutName] + [_this]) call Olsen_FW_FNC_AddItemRandomOrg;};
Olsen_FW_FNC_AddItemRandomPercent = {([_unit, _loadoutName] + [_this]) call Olsen_FW_FNC_AddItemRandomOrgPercent;};

_unit call _loadout;
