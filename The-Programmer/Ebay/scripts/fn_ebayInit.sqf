#include "..\..\script_macros.hpp"
/*
    Author: Maxence Lyon
    Altis DEV: https://altisdev.com/user/maxence-lyon
    Teamspeak 3: ts.the-programmer.com
    Web site: www.the-programmer.com
    Steam: « Une Vache Sur CS – Maxence », please leave a message on my profile who says the exact reason before adding me.

    Terms of use:
        - This file is forbidden unless you have permission from the author. If you have this file without permission to use it please do not use it and do not share it.
        - If you have permission to use this file, you can use it on your server however it is strictly forbidden to share it.
        - Out of respect for the author please do not delete this information.

    License number:
    Server's name:
    Owner's name:
*/
waitUntil {!isNil "maxence_ebay_loaded"};

_total = 0;
_toDel = [];
_uid = getPlayerUID player;

{
	if (((_x select 5) isEqualTo _uid) && ((_x select 7) isEqualTo 1)) then {
		_total = _total + (_x select 4);
		_toDel pushBack (_x select 0);
	};
} forEach maxence_ebay_data;

if (_total > 0) then {
	{
	 	[_x] remoteExec ["maxence_ebay_fnc_ebayDeleteEntry",2];
	} forEach _toDel;

	hint format [(["STR_CONNEXION"] call maxence_ebay_fnc_localize),[_total] call life_fnc_numberText];
    CASH = CASH + _total;
    [0] call SOCK_fnc_updatePartial;
};
