/*
 * Author: Olsen
 *
 * Add random item to unit.
 *
 * Arguments:
 * 0: unit <object> and loadout name <string> <array>
 * 1: items <array>
 *
 * Return Value:
 * nothing
 *
 * Public: No
 */

params ["_unit", "_loadoutType", "_items", "_amount", "_position"];

if !(_items isEqualType []) exitWith {
    private _message = format ["Items list '%2' is not an array in this loadout: %1", str _this, str _item];
    _message call Olsen_FW_FNC_DebugMessage;
};
if (isNil "_amount") then {
    _amount = 1;
};
if (isNil "_position") then {
    _position = "none";
};

for "_i" from 1 to _amount do {
    private _item = selectRandom _items;
    if (_item isEqualType []) then {
        _item = _item select 0;
    };
    [_unit, _loadoutType, _item, 1, _position] call Olsen_FW_FNC_AddItemOrg;
};
