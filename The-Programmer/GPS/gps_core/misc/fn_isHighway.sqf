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
#define HIGHWAY_RADIUS 6

params [
	["_road", objNull, [objNull]]
];

private _direction = [_road] call misc_fnc_getRoadDir;
private _roadPos = getPosATL _road;

//Get orthogonal direction
private _vectorDir = [
	sin (_direction + 90),
	cos (_direction + 90), 
	0
];

// check one side
_pos1 = _roadPos vectorAdd (_vectorDir vectorMultiply HIGHWAY_RADIUS);

//check opposite side
_vectorDir = _vectorDir vectorMultiply -1;
_pos2 = _roadPos vectorAdd (_vectorDir vectorMultiply HIGHWAY_RADIUS);

isOnRoad _pos1 && isOnRoad _pos2
