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
_mode = param [0,-1,[0]];
_data = param [1,[],[[]]];

if ((_mode isEqualTo -1) || (_data isEqualTo [])) exitWith {};

_price = _data select 0;
_player = _data select 1;

switch (_mode) do {
	case 0:	{
		hint format [(["STR_BUY"] call maxence_ebay_fnc_localize),_player,[_price] call life_fnc_numberText];
		closeDialog 0;
	};

	case 1: {
		hint parseText format [(["STR_SELL"] call maxence_ebay_fnc_localize),_player,[_price] call life_fnc_numberText];
		BANK = BANK + _price;
		[6] call SOCK_fnc_updatePartial;
	};
};
