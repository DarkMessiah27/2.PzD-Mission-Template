/*
    Author: Drofseh & Karel Moricky

    Description:
    Set vehicle respawn, compatible both with SP and MP.
    

    Parameter(s):
    0: OBJECT - vehicle
    1: NUMBER - respawn delay in seconds (default is 0)
    2: ARRAY - position ATL the vehicle should respawn at
    3: CODE or ARRAY - code executed upon respawn. Passed arguments are [<newVehicle>,<oldVehicle>]. If array use this format [CODE,ARRAY], where ARRAY is parameters.
       ARRAY
            CODE - code
            ARRAY - array of additional input parameters
    4: BOOL - true to respawn the vehicle with AI crew
    5: NUMBER - number of times the vehicle can be respawned (default is -1, which is unlimited)

    Returns:
    BOOL

    Examples:
    [this, 10, getPosATL this, {}, true, -1] call Olsen_FW_FNC_respawnVehicle;
    [] call Olsen_FW_FNC_respawnVehicle;
*/

params [
    "_vehicle",
    ["_respawnDelay", 0],
    ["_respawnPosition", getPosATL _vehicle],
    ["_respawnCode", {}],
    ["_respawnWithCrew", false],
    ["_respawnCountMax", -1],
    ["_respawnCount", 0],
    ["_respawnType", typeOf _vehicle],
    ["_respawnVariables", []],
    ["_init", true]
];
// diag_log (_this);

if (!isServer) exitWith {
    false
};

if (_init) then {
    // diag_log ("init");

    private _startingVariable = [];
    {
        _startingVariable pushBack [_x, _vehicle getVariable _x];
    } forEach allVariables _vehicle;

    _vehicle setVariable ["Olsen_FW_RespawnVehicle_respawnDelay", _respawnDelay];
    _vehicle setVariable ["Olsen_FW_RespawnVehicle_respawnPosition", _respawnPosition];
    _vehicle setVariable ["Olsen_FW_RespawnVehicle_respawnCode", _respawnCode];
    _vehicle setVariable ["Olsen_FW_RespawnVehicle_respawnWithCrew", _respawnWithCrew];
    _vehicle setVariable ["Olsen_FW_RespawnVehicle_respawnCountMax", _respawnCountMax];
    _vehicle setVariable ["Olsen_FW_RespawnVehicle_respawnCount", _respawnCount];
    _vehicle setVariable ["Olsen_FW_RespawnVehicle_respawnType", _respawnType];
    _vehicle setVariable ["Olsen_FW_RespawnVehicle_respawnVariables", _startingVariable];

    _vehicle addMPEventHandler  ["MPKilled", {
        params ["_vehicle", "", "", "_useEffects"];
        // diag_log ("killed");

        if !(_useEffects) exitWith {
            false
        };

        private _respawnDelay = _vehicle getVariable ["Olsen_FW_RespawnVehicle_respawnDelay", 0];
        private _respawnPosition = _vehicle getVariable ["Olsen_FW_RespawnVehicle_respawnPosition", getPosATL _vehicle];
        private _respawnCode = _vehicle getVariable ["Olsen_FW_RespawnVehicle_respawnCode", {}];
        private _respawnWithCrew = _vehicle getVariable ["Olsen_FW_RespawnVehicle_respawnWithCrew", {}];
        private _respawnCountMax = _vehicle getVariable ["Olsen_FW_RespawnVehicle_respawnCountMax", 0];
        private _respawnCount = _vehicle getVariable ["Olsen_FW_RespawnVehicle_respawnCount", 0];
        private _respawnType = _vehicle getVariable ["Olsen_FW_RespawnVehicle_respawnType", typeOf _vehicle];
        private _respawnVariables = _vehicle getVariable ["Olsen_FW_RespawnVehicle_respawnVariables", []];
        // diag_log ([_vehicle, _respawnDelay, _respawnPosition, _respawnCode, _respawnWithCrew, _respawnCountMax, _respawnCount, _respawnType]);

        [_vehicle, _respawnDelay, _respawnPosition, _respawnCode, _respawnWithCrew, _respawnCountMax, _respawnCount, _respawnType, _respawnVariables, false] call Olsen_FW_FNC_RespawnVehicle;
    }];
} else {
    // diag_log ("Respawn");

    if (!isServer || {_respawnCountMax == _respawnCount}) exitWith {
        false
    };

    _respawnCount = _respawnCount + 1;

    [
        {
            params ["_vehicle", "_respawnDelay", "_respawnPosition", "_respawnCode", "_respawnWithCrew","_respawnCountMax", "_respawnCount", "_respawnType", "_respawnVariables"];

            // diag_log ([_vehicle, _respawnDelay, _respawnPosition, _respawnCode, _respawnWithCrew, _respawnCountMax, _respawnCount, _respawnType]);

            private _special = "NONE";
            if ((_respawnPosition select 2) > 2) then {_special == "FLY"};

            // diag_log [_respawnType, _respawnPosition, [], 0, _special];
            private _newVehicle = createVehicle [_respawnType, _respawnPosition, [], 0, _special];
            _newVehicle setVectorDirAndUp [vectorDir _vehicle, vectorUp _vehicle];

            [_newVehicle, _respawnDelay, _respawnPosition, _respawnCode, _respawnWithCrew, _respawnCountMax, _respawnCount, _respawnType, _respawnVariables, true] call Olsen_FW_FNC_RespawnVehicle;

            private _curatorAddCrew = false;
            if (_respawnWithCrew || {count crew _vehicle > 0 && {getNumber (configfile >> "cfgvehicles" >> _vehicleType >> "isUAV") > 0}}) then {
                createVehicleCrew _newVehicle;
                _curatorAddCrew = true;
            };

            {
                _x addCuratorEditableObjects [[_newVehicle], _curatorAddCrew];
            } foreach objectCurators _vehicle;

            if (_special isEqualTo "FLY" && {_simulation in ["airplane", "airplanex"]}) then {
                _newVehicle setVelocity ((vectorDirVisual _newVehicle) vectorMultiply 69);
            };

            if (_respawnCode isEqualType []) then {
                ([_newVehicle, _vehicle] + (_respawnCode select 1)) spawn (_respawnCode select 0);
            } else {
                [_newVehicle, _vehicle] spawn _respawnCode;
            };
        },
        [_vehicle, _respawnDelay, _respawnPosition, _respawnCode, _respawnWithCrew, _respawnCountMax, _respawnCount, _respawnType, _respawnVariables], 
        _respawnDelay
    ] call CBA_fnc_waitAndExecute;
};

true
