#include "..\..\..\macros.h"
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
params ["_pointList",["_epsilon",30,[0]]];

if (count _pointList < 3) exitWith {_pointList};

private _dmax = 0;
private _index = 0;
private _end = count _pointList - 1;

for "_i" from 1 to _end step 1 do {
    private _d = [_pointList select _i,_pointList select 0,_pointList select _end] call misc_fnc_pointLineDist;

    if ( _d > _dmax ) then {
        _index = _i;
        _dmax = _d;
    };
};

if (_dmax > _epsilon) then {
    // resursive
    private _recResults1 = [_pointList select [0,_index + 1],_epsilon] call gps_core_fnc_RDP;
    private _recResults2 = [_pointList select [_index,_end],_epsilon] call gps_core_fnc_RDP;
    (_recResults1 select [0,count _recResults1 - 1]) + _recResults2
}else{
    [_pointList select 0,_pointList select _end];
};