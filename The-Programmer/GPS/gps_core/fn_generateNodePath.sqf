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
params [
	["_startRoute",objNull,[objNull]],
	["_goalRoute",objNull,[objNull]]
];

private _came_from = [_startRoute,_goalRoute,gps_allCrossRoadsWithWeight] call gps_core_fnc_aStar;

if(_came_from isEqualTo []) then { throw "PATH_NOT_FOUND" };

private _current = _goalRoute;
private _path = [];

while {_current != _startRoute} do {
  _path pushBack _current;
  _current = [_came_from,str _current] call misc_fnc_hashTable_find;

  // if something went wrong
  if (isNil "_current") then { throw "PATH_NOT_FOUND" };
};

_path pushBack _startRoute;
reverse _path;

_path