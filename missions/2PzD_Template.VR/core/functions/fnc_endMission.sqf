/*
 * Author: Olsen
 *
 * Ends mission in orderly fashion and displays end screen.
 * Sends the team stats, time limit, scenario and executes "FW_EndMission" on all players machines.
 *
 * Arguments:
 * 0: text to display in end screen <string>
 *
 * Return Value:
 * nothing
 *
 * Public: Yes
 */

private _scenario = _this;

if (CBA_missionTime > 0) then {

    FW_MissionEnded = true;
    publicVariable "FW_MissionEnded";

    //[] call ocap_fnc_exportData; // call AAR

    if (!isNil "aCount_endCount") then {call aCount_endCount};

    {
        private _team = (_x select 0);
        private _assets = _team call Olsen_FW_FNC_GetDamagedAssets;

        [_team, 5, _assets select 0] call Olsen_FW_FNC_SetTeamVariable;
        [_team, 6, _assets select 1] call Olsen_FW_FNC_SetTeamVariable;
    } forEach FW_Teams;

    ["FW_EndMission", [_scenario, FW_TimeLimit, FW_Teams]] call CBA_fnc_globalEvent;
} else {
    "End Conditions have just been triggered. Mission will have to be ended manually." remoteExec ["systemChat", 0, false];
};
