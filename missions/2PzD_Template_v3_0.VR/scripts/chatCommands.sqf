//Chat commands to allow the admin to manipulate the mission even when dead/spectating.

["endMission", {
    params [["_message", "Mission ended by admin."]];
    _message call Olsen_FW_FNC_EndMission;
}, "admin"] call CBA_fnc_registerChatCommand;

["respawnBlue", {
    {
        FW_RespawnTickets = 1;
        setPlayerRespawnTime random 10;
    } remoteExec ["call",west];
    [{
        {
            FW_RespawnTickets = 1;
            setPlayerRespawnTime 10e10;
        } remoteExec ["call",west];
    },[],30] call CBA_fnc_waitAndExecute;
}, "admin"] call CBA_fnc_registerChatCommand;

["respawnRed", {
    {
        FW_RespawnTickets = 1;
        setPlayerRespawnTime random 10;
    } remoteExec ["call",east];
    [{
        {
            FW_RespawnTickets = 1;
            setPlayerRespawnTime 10e10;
        } remoteExec ["call",east];
    },[],30] call CBA_fnc_waitAndExecute;
}, "admin"] call CBA_fnc_registerChatCommand;

["respawnGreen", {
    {
        FW_RespawnTickets = 1;
        setPlayerRespawnTime random 10;
    } remoteExec ["call",independent];
    [{
        {
            FW_RespawnTickets = 1;
            setPlayerRespawnTime 10e10;
        } remoteExec ["call",independent];
    },[],30] call CBA_fnc_waitAndExecute;
}, "admin"] call CBA_fnc_registerChatCommand;

["respawnWave", {
    systemChat "This command is deprecated, use #respawnBlue, #respawnRed, or #respawnGreen to respawn a specific side.";
}, "admin"] call CBA_fnc_registerChatCommand;
