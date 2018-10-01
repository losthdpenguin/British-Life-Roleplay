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
	["_path",[],[[]]]
];

private	_fullPath = [];

{
	scopeName "path";

	private _road = _x;
	private _next = _path select (_forEachIndex + 1);
	private _linked = [_road] call gps_core_fnc_roadsConnectedTo;

	if (isNil "_next") exitWith {
		_fullPath pushBack _road;
	};

	{
	  private _passedBy = [_road];
	  private _currRoad = _x;
	  private _previous = _road;

	  // faster than while {true}
	  for "_i" from 0 to 1 step 0 do {
	    _connected = [_currRoad] call gps_core_fnc_roadsConnectedTo;

	    _passedBy pushBack _currRoad;

	    if (_currRoad isEqualTo _next) then {
	    	_passedBy deleteAt (count _passedBy -1);
	    	_fullPath append _passedBy;
	    	breakTo "path";
	    };

	   	if (count _connected > 2) exitWith {};

	   	_old = _currRoad;
	   
	    {
	      if !(_x isEqualTo _previous) exitWith {
	        _previous = _currRoad;
	        _currRoad = _x;
	      };
	    } forEach _connected;

	    if(_currRoad isEqualTo _old) exitWith {};
	  };
	} forEach _linked;
}forEach _path;

_fullPath