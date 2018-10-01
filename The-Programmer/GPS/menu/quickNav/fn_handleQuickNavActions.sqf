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

params ["","_key","_shift","_ctrl","_alt"];

_handled = false;

if(dialog) exitWith {_handled};
	
_handled = switch (true) do {
	case (_key in (["quicknav_open_key"] call gps_fnc_getSetting)): {
		call gps_menu_fnc_quickNavCreate
	};
	case (_key in (["quicknav_switch_key"] call gps_fnc_getSetting)): {
		call gps_menu_fnc_quickNavNextOption
	};
	case (_key in (["quicknav_execute_key"] call gps_fnc_getSetting)): {
		call gps_menu_fnc_quickNavExecuteCurrentOption
	};
	default	{
		false
	};
};

_handled