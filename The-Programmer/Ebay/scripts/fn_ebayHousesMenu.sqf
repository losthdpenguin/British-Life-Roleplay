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
disableSerialization;
_houses = param [0,[],[[]]];

disableSerialization;
_dialog = findDisplay 3480;
_control = _dialog displayCtrl 3483;
lbClear _control;

(_dialog displayCtrl 3488) buttonSetAction "[] spawn maxence_ebay_fnc_ebaySellHouse;";
ctrlShow [3488,true];

if ((count _houses) isEqualTo 0) then {
    _control lbAdd (["STR_NO_HOUSE"] call maxence_ebay_fnc_localize);
    _control lbSetData [(lbSize _control)-1,format ["%1",["NULL"]]];
} else {
    {
        _pos = call compile format ["%1",(_x select 2)];
        _house = nearestObject [_pos,"House"];

        if !(isNull _house) then {
            _className = typeOf _house;
            _houseName = FETCH_CONFIG2(getText,"CfgVehicles",_className,"displayName");
            _posMAP = mapGridPosition _pos;

            _posTEXT = format [(["STR_POSITION_HOUSE"] call maxence_ebay_fnc_localize),_posMAP];
            _control lbAdd format ["[x1] %1 %2",_houseName,_posTEXT];
            _tmp = [(_x select 0),_className,_pos,netId(_house)];
            _tmp = str(_tmp);
            _control lbSetData [(lbSize _control)-1,_tmp];
        };
    } forEach _houses;
};
