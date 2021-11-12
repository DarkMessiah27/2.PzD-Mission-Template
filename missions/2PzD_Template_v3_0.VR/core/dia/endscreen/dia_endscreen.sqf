90001 cutRsc ["DIA_ENDSCREEN", "PLAIN"];
_bg = 3000;
_endTitle = 3001;
_left = 3002;
_centre = 3003;
_right = 3004;
_bottomLeft = 3005;
_bottomMiddle = 3006;
_bottomRight = 3007;

params ["_scenario", "_timeLimit", "_teams"];

{
    _x enableSimulation false;
} forEach vehicles;

[
    {
        {
            _x enableSimulation false;
            removeAllWeapons _x;
        } forEach allPlayers;
    }, [], 1
] call CBA_fnc_waitAndExecute;

private _leftText = "";
private _centreText = "";
private _rightText = "";
private _bottomTextLeft = "";
private _bottomTextMiddle = "";
private _bottomTextRight = "";
private _textSide = 0;

{
    _x params ["_name", "_side", "_type", "_start", "_current", "_disabled", "_destroyed"];

    private _temp = format ["%1<br/>Casualties: %2 out of %3<br/>", _name, (_start - _current), _start];

    if (count _disabled != 0) then {
        _temp = format ["%1<br/>Disabled assets:<br/>",_temp];

        {
            _temp = format ["%1%2<br/>",_temp, _x];
        } forEach _disabled;
    };

    if (count _destroyed != 0) then {
        _temp = format ["%1<br/>Destroyed assets:<br/>",_temp];

        {
            _temp = format ["%1%2<br/>",_temp, _x];
        } forEach _destroyed;
    };

    _temp = format ["%1<br/>",_temp];

    switch (_textSide) do {
        case 0 : {
            _textSide = 1;
            _leftText = _leftText + _temp;
        };
        case 1 : {
            _textSide = 2;
            _centreText = _centreText + _temp;
        };
        case 2 : {
            _textSide = 0;
            _rightText = _rightText + _temp;
        };
    };
} forEach _teams;

endCasualties_EndScreen = format ["%1<br/>%2<br/>%3",_leftText,_centreText,_rightText];

private _time = ceil(CBA_missionTime / 60);
private _timeLimitText = "";

if (_timeLimit == 0) then {
    _timeLimitText = format ["Mission duration: %1 minutes", _time];
} else {
    if (_time >= _timeLimit) then {
        _time = _timeLimit;
    };
    _timeLimitText = format ["Mission duration: %1 out of %2 minutes", _time, _timeLimit];
};

private _endTitleText = format ["%1<br/>%2", _scenario, _timeLimitText];
endTitleText_EndScreen = _endTitleText;

private _shotCount = [];
if (!isNil "aCount_textBLU" && {aCount_textBLU isNotEqualTo ""}) then {
    _shotCount pushBack aCount_textBLU;
};
if (!isNil "aCount_textRED" && {aCount_textRED isNotEqualTo ""}) then {
    _shotCount pushBack aCount_textRED;
};
if (!isNil "aCount_textRES" && {aCount_textRES isNotEqualTo ""}) then {
    _shotCount pushBack aCount_textRES;
};

private _shotCountNumber = count _shotCount;
if (_shotCountNumber > 0) then {
    _bottomTextLeft = format ["%1",_shotCount select 0];
};
if (_shotCountNumber > 1) then {
    _bottomTextMiddle = format ["%1",_shotCount select 1];
};
if (_shotCountNumber > 2) then {
    _bottomTextRight = format ["%1",_shotCount select 2];
};

disableSerialization;

private _dia = uiNamespace getVariable "FW_EndScreen";

(_dia displayCtrl _endTitle) ctrlSetStructuredText parseText _endTitleText;
(_dia displayCtrl _left) ctrlSetStructuredText parseText _leftText;
(_dia displayCtrl _centre) ctrlSetStructuredText parseText _centreText;
(_dia displayCtrl _right) ctrlSetStructuredText parseText _rightText;
(_dia displayCtrl _bottomLeft) ctrlSetStructuredText parseText _bottomTextLeft;
(_dia displayCtrl _bottomMiddle) ctrlSetStructuredText parseText _bottomTextMiddle;
(_dia displayCtrl _bottomRight) ctrlSetStructuredText parseText _bottomTextRight;

for "_x" from 1 to 120 do {
    (_dia displayCtrl _bg) ctrlSetBackgroundColor [0, 0, 0, (_x * (1/120))];
    sleep(0.01);
};

[
    {
        endMission "END1";
    }, [], 25
] call CBA_fnc_waitAndExecute;
