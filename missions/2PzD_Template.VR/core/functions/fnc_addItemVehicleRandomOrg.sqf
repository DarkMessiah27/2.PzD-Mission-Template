/*
 * Author: Olsen
 *
 * Add random item to vehicle.
 *
 * rewrite this to use format [["item1","item2","item3","item4","item99"],numberOfItems] call Olsen_FW_FNC_AddItemVehicleRandom;
 *
 * Arguments:
 * 0: vehicle <object> and loadout name <string> <array>
 * 1: items <array>
 *
 * Return Value:
 * nothing
 *
 * Public: No
 */

params ["_vehicle", "_loadoutType", "_items", "_amount"];

if !(_items isEqualType []) exitWith {
    private _message = format ["Items list '%2' is not an array in this loadout: %1", str _this, str _item];
    _message call Olsen_FW_FNC_DebugMessage;
};
if (isNil "_amount") then {
    _amount = 1;
};

for "_i" from 1 to _amount do {
    private _item = selectRandom _items;
    if (_item isEqualType []) then {
        _item = _item select 0;
    };
    [_vehicle, _loadoutType, _item, 1] call Olsen_FW_FNC_AddItemVehicleOrg;
};
