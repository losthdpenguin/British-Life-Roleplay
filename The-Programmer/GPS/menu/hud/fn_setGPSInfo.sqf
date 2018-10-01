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

params [
	"_status",
	["_img","",[""]],
	["_goalText","",[""]]
];

_hudDisplay = uiNamespace getVariable ["gps_hud",displayNull];

if (isNull _hudDisplay) exitWith {};

_text = _hudDisplay displayCtrl 1000;
_picture = _hudDisplay displayCtrl 1200;
_goalDistance = _hudDisplay displayCtrl 1002;

if(_status != "" && _status != ctrlText _text) then {
	_text ctrlSetText _status;
};

if(_img != "" && _img != ctrlText _picture) then {
	_picture ctrlSetText _img;
};

if(_goalText != "" && _goalText != ctrlText _goalDistance) then {
	_goalDistance ctrlSetText _goalText;
};