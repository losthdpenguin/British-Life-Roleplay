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
_valid = params [
	["_text","",[""]],
	["_code",{},[{},""]]
];

if (!_valid) exitWith {
	["Invalid parameters"] call gps_fnc_log;
	false
};

if(isNil "gps_quickNav_options") then {
	gps_quickNav_options = [];
};

if(_code isEqualType "") then {
	_code = compile _code;
};

(gps_quickNav_options pushBackUnique [_text,_code]) != -1