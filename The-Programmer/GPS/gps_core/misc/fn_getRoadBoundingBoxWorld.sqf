#include "..\macros.h"
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
params [
	["_road",objNull,[objNull]],
	["_lenghtMultiplicator",1,[0]],
	["_widthMultiplicator",1,[0]]
];

private _bb = boundingBox _road;
private _direction = [_road] call misc_fnc_getRoadDir;

_fullbb = [
	_bb select 0,
	[
		(_bb select 1 select 0),
		(_bb select 0 select 1),
		(_bb select 1 select 2)
	],
	_bb select 1,
	[
		(_bb select 0 select 0),
		(_bb select 1 select 1),
		(_bb select 0 select 2)
	]
];

_fullbb apply {
	_x set [0,(_x select 0) * _widthMultiplicator];
	_x set [1,(_x select 1) * _lenghtMultiplicator];
	_road modelToWorld ([_x,-_direction] call BIS_fnc_rotateVector2D)
};