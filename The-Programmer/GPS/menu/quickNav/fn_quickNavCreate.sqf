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
#define EH_MENU_NAME "quick_nav"

_hudDisplay = uiNamespace getVariable ["gps_quickNav",displayNull];

if !(isNull _hudDisplay) exitWith {
	"gps_quickNav" cutText ["","PLAIN"];
	true
};

_canOpen = ["gps_menu_opening",[EH_MENU_NAME],true] call misc_fnc_callScriptedEventHandlerReturn;
if (!_canOpen) exitWith {};

"gps_quickNav" cutRsc ["gps_quickNav","PLAIN", 1 , false]; //show

_hudDisplay = uiNamespace getVariable ["gps_quickNav",displayNull];

[missionNameSpace,"gps_menu_opened",[EH_MENU_NAME,_hudDisplay]] spawn BIS_fnc_callScriptedEventHandler;

{
	_x ctrlSetPosition (_x getVariable "originalPos");
	_x ctrlCommit 0.2;
}foreach allControls _hudDisplay;

true