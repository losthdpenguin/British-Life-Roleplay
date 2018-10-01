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
_curConfig = missionConfigFile >> "Max_Settings_Phone";

_price = getNumber(_curConfig >> "price_buy_sim");
if (BANK < _price) exitWith {hint (["STR_NOT_ENOUGHT_MONEY_BANK"] call max_phone_fnc_localize);};
BANK = BANK - _price;
[1] call SOCK_fnc_updatePartial;

_num = getNumber (_curConfig >> "first_numbers");
if ((getNumber (_curConfig >> "start_with_0")) == 1) then {_num = format ["0%1",_num];};

for "_i" from 1 to getNumber(_curConfig >> "numbers_after_first_numbers") do {
    _num = format ["%1%2",_num,round (random 9)]
};

hint (["STR_RANDOMING_PHONE_NUMBER"] call max_phone_fnc_localize);
uiSleep 3;
player setVariable ["maxence_numero",_num,true];
[getPlayerUID player,_num,maxence_contact] remoteExec ["max_phone_fnc_updatePhone",2];
hint format [(["STR_NEW_PHONE_NUMBER"] call max_phone_fnc_localize),_num];
