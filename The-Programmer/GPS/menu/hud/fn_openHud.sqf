#include "..\..\macros.h"
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
disableSerialization;

if !(isNull (uiNamespace getVariable ["gps_hud",displayNull])) exitWith {};

"gps_hud" cutRsc ["gps_hud","PLAIN", 1 , false]; //show

_hudDisplay = uiNamespace getVariable ["gps_hud",displayNull];

_map = _hudDisplay displayCtrl 2201;
_text = _hudDisplay displayCtrl 1000;
_backGround = _hudDisplay displayCtrl 2200;
_picture = _hudDisplay displayCtrl 1200;

_map mapCenterOnCamera true;

_map ctrlAddEventHandler ["Draw",{
	_map = _this select 0;
	_vehPlayer = vehicle player;
	_speed = speed _vehPlayer;
	_map drawIcon [
		getText (configFile/"CfgVehicles"/typeOf _vehPlayer/"Icon"),
		[1,1,1,1],
        visiblePosition _vehPlayer,
        24,
        24,
        0
	];
}];

_map ctrlAddEventHandler ["Draw",{[_this select 0,true] call gps_menu_fnc_drawPath}];