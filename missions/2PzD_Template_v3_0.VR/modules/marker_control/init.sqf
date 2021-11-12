["Marker Control", "Allows the mission maker to create markers visible to a single side.", "Olsen"] call Olsen_FW_FNC_RegisterModule;

#define SYSTEM sideLogic

#define ADDMARKER(SIDE, NAME, DELETE_AFTER_START) \
if (markerType NAME isNotEqualTo "") then { \
    _markers set [count _markers, [SIDE, NAME, DELETE_AFTER_START]]; \
} else { \
    _temp = format ["Marker control module:<br></br>Warning marker ""%1"", in file ""modules\marker control\settings.sqf"" does not exist.", NAME]; \
    _temp call Olsen_FW_FNC_DebugMessage; \
};

if (hasInterface) then {

    private ["_markers"];

    _markers = [];

    #include "settings.sqf"

    {
        if ((_x select 0) != (playerSide)) then {
            (_x select 1) setMarkerAlphaLocal 0;
        };
    } forEach _markers;

    [{CBA_missionTime > 0},
    {
        {
            if (_x select 2) then {
                (_x select 1) setMarkerAlphaLocal 0;
            };
        } forEach _this;
    }, _markers] call CBA_fnc_WaitUntilAndExecute;

};
