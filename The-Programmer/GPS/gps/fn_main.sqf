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
scriptName "gps_main_thread";

params [
	["_position",[],[[],objNull,locationNull,grpNull,""]]
];

_position = _position call bis_fnc_position;

private _startRoute = [getPosATL vehicle player,1000] call bis_fnc_nearestRoad;
private _endRoute = [_position,1000] call bis_fnc_nearestRoad;

if (!gps_core_init_done) exitWith {hintSilent (["STR_GPS_NOT_LOADED"] call gps_fnc_localize)};
if (isNull _endRoute) exitWith {hintSilent (["STR_NO_VALID_END_ROAD"] call gps_fnc_localize)};
if (isNull _startRoute) exitWith {hintSilent (["STR_NO_VALID_START_ROAD"] call gps_fnc_localize)};

// if user want to override conditions for the function to run
_canLaunch = ["gps_main_start",[_startRoute,_endRoute],true] call misc_fnc_callScriptedEventHandlerReturn;
if (!_canLaunch) exitWith {};

[] call gps_fnc_killGPS;

gps_current_thread = _thisScript;

[["STR_INIT"] call gps_fnc_localize] call gps_menu_fnc_setGPSInfo;

[] call gps_fnc_deletePathHelpers;

[_startRoute] call gps_core_fnc_insertFakeNode;
[_endRoute] call gps_core_fnc_insertFakeNode;

try {
	gps_current_goal = getPosATL _endRoute;

	waitUntil {
		_startRoute = [getPosATL vehicle player,1000] call bis_fnc_nearestRoad;
		[_startRoute] call gps_core_fnc_insertFakeNode;
		[] call gps_fnc_deletePathHelpers;
		private _path = [_startRoute,_endRoute] call gps_core_fnc_generateNodePath;
		private _fullPath = [_path] call gps_core_fnc_generatePathHelpers;
		[] call gps_menu_fnc_openHud;
		[_path,_fullPath,_endRoute] call gps_fnc_tracking;
	};
	
	hintSilent (["STR_ARRIVED"] call gps_fnc_localize);
	[] call gps_menu_fnc_closeHud;
	[] call gps_fnc_deletePathHelpers;

	gps_current_goal = nil;
}catch{
	switch _exception do { 
		case "PATH_NOT_FOUND" : {
			[] call gps_fnc_deletePathHelpers;
			[] call gps_menu_fnc_closeHud;
			hintSilent (["STR_PATH_NOT_FOUND"] call gps_fnc_localize);
		}; 
	};
	[_exception] call gps_fnc_log;
};

[] call misc_fnc_hashTable_deleteNameSpaces;