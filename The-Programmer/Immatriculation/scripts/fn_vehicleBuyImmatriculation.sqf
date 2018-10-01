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
_mode = param [0,false,[false]];
_vehicle = param [1,objNull,[objNull]];

if (isNull _vehicle) exitWith {};

if (_mode) then {
    _immatriculation = format ['%1%2%3%4%5%6%7', toString [65 + random 25], toString [65 + random 25], round (random 9), round (random 9), round (random 9), toString [65 + random 25], toString [65 + random 25]];
    _vehicle setVariable ["vehicle_info_plate",_immatriculation,true];
    _vehicle setVariable ["vehicle_info_vid",0,true];

    _immatriculationDisplay = format ["%1-%2-%3",_immatriculation select [0,2],_immatriculation select [2,3],_immatriculation select [5,2]];
    _vehicle setPlateNumber _immatriculationDisplay;

    [_vehicle] remoteExec ["max_immat_fnc_updatePlate",2];
} else {
    _vehicle setVariable ["vehicle_info_plate",format [(["STR_RENTAL_VEHICLE"] call max_immat_fnc_localize),(format ["%1 %2",identity_prenom,identity_nom])],true];
    _vehicle setVariable ["vehicle_info_vid",-1,true];
};
