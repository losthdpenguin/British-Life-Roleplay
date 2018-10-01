/*
    Author: Jean_Park
    Teamspeak 3: ts.the-programmer.com
    Web site: www.the-programmer.com
    Discord : https://discord.gg/DhFUFsq

    Terms of use:
        - This file is forbidden unless you have permission from the author. If you have this file without permission to use it please do not use it and do not share it.
        - If you have permission to use this file, you can use it on your server however it is strictly forbidden to share it.
        - Out of respect for the author please do not delete this information.

    License number:
    Server's name:
    Owner's name:
*/
private ["_target","_cardType"];
_target = cursorObject;

if (_target isEqualTo player) exitWith {};
if (isNull _target) exitWith {};
if !(_target isKindOf "Man") exitWith {};
if !(alive _target) exitWith {};
_curConfig = missionConfigFile >> "The_Programmer_Settings_Identity";

_pointsPermis = 0;

_haveLicenseCar = missionNamespace getVariable [(getText (_curConfig >> "license_car")),false];
_haveLicenseBoat = missionNamespace getVariable [(getText (_curConfig >> "license_boat")),false];
_haveLicenseMoto = missionNamespace getVariable [(getText (_curConfig >> "license_moto")),false];
_haveLicenseAir = missionNamespace getVariable [(getText (_curConfig >> "license_air")),false];

if (isNil "maxence_pointsPermis") then {
    if (_haveLicenseCar || _haveLicenseBoat || _haveLicenseMoto || _haveLicenseAir) then {_pointsPermis = 12;};
} else {
    _pointsPermis = missionNamespace getVariable ["maxence_pointsPermis",0];
};

[((format ["%1 %2",identity_prenom,identity_nom])),identity_date_naissance,identity_sexe,(getPlayerUID player),_pointsPermis,_haveLicenseCar,_haveLicenseBoat,_haveLicenseMoto,_haveLicenseAir] remoteExec ["the_programmer_identity_fnc_displayPermis",_target];
