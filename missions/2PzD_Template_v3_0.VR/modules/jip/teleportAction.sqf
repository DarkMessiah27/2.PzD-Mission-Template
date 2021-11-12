_conditionJIP_Teleport = {
    (player distance FW_JIP_spawnPos) < FW_SPAWNDISTANCE;
};

_statementJIP_Teleport = {
    private _target = leader player;

    if (
        !(_target call Olsen_FW_FNC_Alive)
        || {_target call Olsen_FW_FNC_InVehicle && {!((vehicle _target) call Olsen_FW_FNC_HasEmptyPositions)}}
    ) then {
        private _skip = -1;
        private _count = -1;
        private _found = false;
        _target = objNull;

        {
            _alive = _x call Olsen_FW_FNC_Alive;

            if (
                _alive
                && {(_x distance2D player) > FW_JIPDISTANCE}
                && {!(_x call Olsen_FW_FNC_InVehicle) || {vehicle _x call Olsen_FW_FNC_HasEmptyPositions}}
                ) then {
                _found = true;
            } else {
                _skip = _skip + 1;
            };

            if (_found) exitWith {
                _target = _x;
            };

            if (_alive) then {
                _count = _count + 1;
            };
        } forEach ((units player) - [player]);
    };

    if (!isNull(_target)) then {

        if (_target call Olsen_FW_FNC_InVehicle) then {
            player moveInAny (vehicle _target);
        } else {
            player setPos (getPos _target);
        };

        [player, 1, ["ACE_SelfActions","JIP_Teleport"]] call ace_interact_menu_fnc_removeActionFromObject;
    } else {
        if (_count < 0) exitWith {
            [player, 1, ["ACE_SelfActions","JIP_Teleport"]] call ace_interact_menu_fnc_removeActionFromObject;
            "No one alive in your squad" call CBA_fnc_notify;
        };

        if (_skip > -1) exitWith {
            "Not possible to JIP teleport to anyone, please try again later" call CBA_fnc_notify;
        };

        "Something went wrong, target doesn't exist." call CBA_fnc_notify;
    };
};

_actionJIP_Teleport = [
    "JIP_Teleport",
    "Teleport to Squad",
    "",
    _statementJIP_Teleport,
    _conditionJIP_Teleport
] call ace_interact_menu_fnc_createAction;

[player, 1, ["ACE_SelfActions"], _actionJIP_Teleport] call ace_interact_menu_fnc_addActionToObject;
