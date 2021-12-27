 /*
 * Author: Jords & Wilhelm Haas (Drofseh)
 *
 * Add random item to unit based on relative weighting.
 *
 * Arguments:
 * 0: unit <object> and loadout name <string> <array>
 * 1: items <array>, chance <array>
 *
 *
 * Return Value:
 * nothing
 *
 * Public: No
 */

params ["_unit", "_loadoutType", "_items"];

private _itemCount = count _items;

if (_itemCount % 2 != 0 ) exitWith { // If array has to few or too many elements
    (format ["AddItemRandomPercent: Warning Random Percentage Array wrong size for unit %1 , in loadout %2", _unit, _loadoutType]) call Olsen_FW_FNC_DebugMessage;
};

private _valuesArray = [];
private _weightsArray = [];
private _badLoadout = false;

for "_i" from 1 to _itemCount step 2 do {

    private _itemValue = _items select (_i - 1);
    private _itemWeight = _items select _i select 0;

    if !(_itemWeight isEqualType 0) exitWith {
        _badLoadout = true;
        (format ["AddItemRandomPercent: Warning Random Percentage Array item weight (%3) must be a number for unit %1 , in loadout %2", _unit, _loadoutType, _itemWeight]) call Olsen_FW_FNC_DebugMessage;
    };
    {
        if !(_x isEqualType []) exitWith {
            _badLoadout = true;
            (format ["AddItemRandomPercent: Warning Random Percentage Array item value (%3) must be an array with a string for unit %1 , in loadout %2", _unit, _loadoutType, _x]) call Olsen_FW_FNC_DebugMessage;
        };
        if (count _x > 0 && {!((_x select 0) isEqualType "")}) exitWith {
            (format ["AddItemRandomPercent: Warning Random Percentage Array item value (%3) must be an array with format [string,number,string] for unit %1 , in loadout %2", _unit, _loadoutType, _x]) call Olsen_FW_FNC_DebugMessage;
        };
        if (count _x > 1 && {!((_x select 1) isEqualType 0)}) exitWith {
            (format ["AddItemRandomPercent: Warning Random Percentage Array item value (%3), must be an array with format [string,number,string] for unit %1 , in loadout %2", _unit, _loadoutType, _x]) call Olsen_FW_FNC_DebugMessage;
        };
        if (count _x > 2 && {!((_x select 2) isEqualType "")}) exitWith {
            (format ["AddItemRandomPercent: Warning Random Percentage Array item value (%3) must be an array with format [string,number,string] for unit %1 , in loadout %2", _unit, _loadoutType, _x]) call Olsen_FW_FNC_DebugMessage;
        };
    } forEach _itemValue;

    _weightsArray pushBack _itemWeight;
    _valuesArray pushBack _itemValue;
};

if (_badLoadout) exitWith {
    _badLoadout = false;
    (format ["AddItemRandomPercent: Warning Random Percentage Array is not valid for unit %1 , in loadout %2", _unit, _loadoutType]) call Olsen_FW_FNC_DebugMessage;
};

private _randomPick = _valuesArray selectRandomWeighted _weightsArray;
{([_unit, _loadoutType] + _x) call Olsen_FW_FNC_AddItemOrg} forEach _randomPick;
