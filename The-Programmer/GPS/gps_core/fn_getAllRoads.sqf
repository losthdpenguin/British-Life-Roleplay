#include "macros.h"
/*
    Author: [Utopia] Amaury
    Altis DEV: https://altisdev.com/user/amauryd
    Web site: www.the-programmer.com
    Teamspeak 3: ts.the-programmer.com
    Steam: « Une Vache Sur CS – Maxence », please leave a message on my profile who says the exact reason before adding me.

    Terms of use:
        - This file is forbidden unless you have permission from the author. If you have this file without permission to use it please do not use it and do not share it.
        - If you have permission to use this file, you can use it on your server however it is strictly forbidden to share it.
        - Out of respect for the author please do not delete this information.

    License number:
    Server's name:
    Owner's name:
*/
_allRoads = call compile (preprocessFile (format["The-Programmer\GPS\gps_core\data\%1\AllRoads.sqf",worldName]));

if (isNil "_allRoads") exitWith {
    if hasInterface then {
        [format["Error : no road data found for world %1 , getting roads manually , this might freeze the game.",worldName],"FATAL ERROR"] call bis_fnc_guiMessage;
    };
    [worldSize / 2,worldSize / 2,0] nearRoads worldSize; // actually , does not freeze on server
};

// return all roads
_allRoads apply {
    _road = (_x nearRoads 0.1) param [0,objNull];
    if (isNull _road) then {
        [_x,20] call bis_fnc_nearestROad; // damn bridges
    }else{
        _road;
    };  
};