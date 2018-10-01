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
params [["_pos",[0,0,0]],["_rad",50],["_list",[]],"_dist"];

private _roads = (_pos nearRoads _rad) select {_x in _list};
private _max = -log 0;
private _nearest = objNull;

{
	_dist = _x distanceSqr _pos;
	if (_dist < _max) then {_max = _dist; _nearest = _x};
} 
count _roads;

_nearest