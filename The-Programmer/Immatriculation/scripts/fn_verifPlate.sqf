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
private ["_vehicle","_data"];
_vehicle = cursorObject;
if ((_vehicle isKindOf "Car") || !(_vehicle isKindOf "Air") || !(_vehicle isKindOf "Ship")) then {
    _plate = _vehicle getVariable "vehicle_info_plate";
    if (_plate == "0") then {_plate = (["STR_UNKNOW_PLATE"] call max_immat_fnc_localize)} else {if (_vehicle getvariable "vehicle_info_vid" != -1) then {_plate = format ["%1-%2-%3",_plate select [0,2],_plate select [2,3],_plate select [5,2]];};};

    life_action_inUse = true;
    hint localize "STR_NOTF_Searching";

    sleep 3;
    life_action_inUse = false;

    if (player distance _vehicle > 10 || !alive player || !alive _vehicle) exitWith {hint localize "STR_NOTF_SearchVehFail";};
    hint parseText format [(["STR_RESULT_PLATE"] call max_immat_fnc_localize),_plate];
};
