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
private ["_nearVehicles","_vehicle","_plate","_price","_dbInfo"];

if !(isNull objectParent player) then {
    _vehicle = vehicle player;
} else {
    _nearVehicles = nearestObjects[getPos (_this select 0),["Car","Air","Ship"],10];
    if (count _nearVehicles > 0) then {
        {
            if (!isNil "_vehicle") exitWith {}; //Kill the loop.
            _vehData = _x getVariable ["vehicle_info_owners",[]];
            if (count _vehData  > 0) then {
                _vehOwner = ((_vehData select 0) select 0);
                if ((getPlayerUID player) == _vehOwner) exitWith {
                    _vehicle = _x;
                };
            };
        } forEach _nearVehicles;
    };
};

if (isNil "_vehicle") exitWith {hint localize "STR_NOTF_VehicleNear"};
if (isNull _vehicle) exitWith {};
if (!alive _vehicle) exitWith {hint (["STR_VEHICLE_BREAK"] call max_immat_fnc_localize)};

_price = getNumber(missionConfigFile >> "Max_Settings_Immatriculation" >> "price_new_plate");
if (CASH < _price) exitWith {hint format [(["STR_NOT_ENOUGHT_MONEY"] call max_immat_fnc_localize),[_price] call life_fnc_numberText];};
CASH = CASH - _price;
[0] call SOCK_fnc_updatePartial;

hint format [(["STR_YOU_PAID"] call max_immat_fnc_localize),_price];
uiSleep 5;
hint (["STR_CHANGING_PLATE"] call max_immat_fnc_localize);
uiSleep 20;

_plate = format ['%1%2%3%4%5%6%7', toString [65 + random 25], toString [65 + random 25], round (random 9), round (random 9), round (random 9), toString [65 + random 25], toString [65 + random 25]];
_vehicle setVariable ["vehicle_info_plate",_plate,true];

[_vehicle,1] remoteExecCall ["max_immat_fnc_updatePlate",2];

if (local _vehicle) then {
    _immatriculationDisplay = format ["%1-%2-%3",_plate select [0,2],_plate select [2,3],_plate select [5,2]];
    _vehicle setPlateNumber _immatriculationDisplay;
};

uiSleep 1;
hint (["STR_FINISH_NEW_PLATE"] call max_immat_fnc_localize);
