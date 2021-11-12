/*
 * Author: BlackHawk && Wilhelm Haas
 *
 * Checks if given part of team has extracted to set area.
 * This function accounts for team starting in extraction area.
 *
 * Arguments:
 * 0: team name <string>
 * 1: extraction area marker <string>
 * 2: part of team that has to extract (0.8 - 80%, etc.) <number> (OPTIONAL)
 *
 * Return Value:
 * has team extracted <bool>
 *
 * Public: Yes
 */

params [
    ["_team", "", [""]],
    ["_marker", "", [""]],
    ["_ratio", 1, [0]]
];

private _result = false;
private _side = [_team, 1] call Olsen_FW_FNC_getTeamVariable;
private _count = {
    (_x call Olsen_FW_FNC_getOriginalSide) == _side && {_x inArea _marker};
} count allUnits;

if (_count >= _ratio * (1 max ([_team, 4] call Olsen_FW_FNC_getTeamVariable))) then {
    _result = true;
};

_result
