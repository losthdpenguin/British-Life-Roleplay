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
_price = parseNumber(ctrlText 4183);
_reason = ctrlText 4185;

_vehicle = cursorObject;
if (isNull _vehicle) exitWith {};

if !([str _price] call TON_fnc_isnumber) exitWith {hint (["STR_BAD_PRICE"] call max_contrav_fnc_localize)};
if (_reason == "") exitWith {hint (["STR_BAD_REASON"] call max_contrav_fnc_localize)};
if (_price > getNumber (missionConfigFile >> "Max_Settings_Contravention" >> "max_price")) exitWith {hint (["STR_TOO_MUCH_PRICE"] call max_contrav_fnc_localize)};

_data = _vehicle getVariable ["vehicle_immobilised",[]];
if !(_data isEqualTo []) exitWith {hint (["STR_CANT_PUT_FINE"] call max_contrav_fnc_localize)};

_exit = false;
_text = "";
_vehicleData = (_vehicle getVariable ["vehicle_info_owners",[["",""]]]) select 0;
if (getNumber (missionConfigFile >> "Max_Settings_Contravention" >> "script_immatriculation_enabled") == 1) then {
    _plate = _vehicle getVariable "vehicle_info_plate";
    if (_plate == "0") exitWith {hint (["STR_UNKNOW_PLATE"] call max_contrav_fnc_localize); _exit = true;}; 

    _plate = format ["%1-%2-%3",_plate select [0,2],_plate select [2,3],_plate select [5,2]];

    _text = format [(["STR_CONFIRM_COP_TEXT_IMMAT"] call max_contrav_fnc_localize),[_price] call life_fnc_numberText,_plate];
} else {
    _text = format [(["STR_CONFIRM_COP_TEXT"] call max_contrav_fnc_localize),[_price] call life_fnc_numberText,(_vehicleData select 1)];
};

if (_exit) exitWith {closeDialog 0;};

_action = [
    _text,
    (["STR_CONFIRM_COP_HEADER"] call max_contrav_fnc_localize),
    (["STR_YES"] call max_contrav_fnc_localize),
    (["STR_NO"] call max_contrav_fnc_localize)
] call BIS_fnc_guiMessage;

closeDialog 0;
if !(_action) exitWith {};

hint format [(["STR_SUCESS_SEND_FINE"] call max_contrav_fnc_localize),[_price] call life_fnc_numberText];

_vehicle setVariable ["vehicle_immobilised",[(format ["%1 %2",identity_prenom,identity_nom]),_reason,_price],true];
[_vehicle,[(format ["%1 %2",identity_prenom,identity_nom]),_reason,_price]] remoteExec ["max_contrav_fnc_updateContravention",2];

if (local _vehicle) then {
    _vehicle lock 2;
} else {
    [_vehicle,2] remoteExecCall ["life_fnc_lockVehicle",_vehicle];
};

if (count _vehicleData != 0) then {
	_player_pid = _vehicleData select 0;
	_player = objNull;

	{
	    if ((getPlayerUID _x) isEqualTo _player_pid) exitWith {
	        _player = _x;
	    };
	} foreach playableUnits;

	if !(isNull _player) then {
		[1,format [(["STR_RECEIVE_FINE"] call max_contrav_fnc_localize),getText(configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "displayName"),(format ["%1 %2",identity_prenom,identity_nom]),[_price] call life_fnc_numberText,_reason]] remoteExecCall ["life_fnc_broadcast",_player];
	};
};

uiSleep 5;
_receive_price = _price * getNumber (missionConfigFile >> "Max_Settings_Contravention" >> "multiplier_on_send");
hint format [(["STR_RECEIVE_MONEY"] call max_contrav_fnc_localize),[_receive_price] call life_fnc_numberText];
BANK = BANK + _receive_price;
[1] call SOCK_fnc_updatePartial;