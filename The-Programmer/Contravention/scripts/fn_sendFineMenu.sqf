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
_vehicle = cursorObject;
if (isNull _vehicle) exitWith {closeDialog 0;};

_data = _vehicle getVariable ["vehicle_immobilised",[]];
if !(_data isEqualTo []) exitWith {hint (["STR_CANT_PUT_FINE"] call max_contrav_fnc_localize); closeDialog 0;}; 

disableSerialization;

_exit = false;
_proprio = "";
if (getNumber (missionConfigFile >> "Max_Settings_Contravention" >> "script_immatriculation_enabled") == 1) then {
    _plate = _vehicle getVariable "vehicle_info_plate";
    if (_plate == "0") exitWith {hint (["STR_UNKNOW_PLATE"] call max_contrav_fnc_localize); _exit = true;}; 

    if (_vehicle getvariable "vehicle_info_vid" != -1) then {_plate = format ["%1-%2-%3",_plate select [0,2],_plate select [2,3],_plate select [5,2]];};

    _proprio = format [(["STR_PLATE"] call max_contrav_fnc_localize),_plate];
} else {
    _proprio = format [(["STR_PROPRIO"] call max_contrav_fnc_localize),(((_vehicle getVariable ["vehicle_info_owners",[["",""]]]) select 0) select 1)];
};

if (_exit) exitWith {closeDialog 0;};

_display = findDisplay 4180;

(_display displayCtrl 4186) ctrlSetText (["STR_VALIDATE_BUTTON"] call max_contrav_fnc_localize);
(_display displayCtrl 4181) ctrlSetText (["STR_FINE"] call max_contrav_fnc_localize);
(_display displayCtrl 4182) ctrlSetText (["STR_PRICE"] call max_contrav_fnc_localize);
(_display displayCtrl 4184) ctrlSetText (["STR_INFRACTION"] call max_contrav_fnc_localize);

_model = getText(configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "displayName");
(_display displayCtrl 4188) ctrlSetText format [(["STR_MODEL"] call max_contrav_fnc_localize),_model];
(_display displayCtrl 4189) ctrlSetText format ["%1",_proprio];