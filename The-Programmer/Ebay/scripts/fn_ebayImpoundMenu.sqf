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
_vehicles = param [0,[],[[]]];

disableSerialization;
_dialog = findDisplay 3480;
_control = _dialog displayCtrl 3483;
lbClear _control;

(_dialog displayCtrl 3488) buttonSetAction "[] spawn maxence_ebay_fnc_ebaySellVehicle;";
ctrlShow [3488,true];

if ((count _vehicles) isEqualTo 0) then {
    _control lbAdd (["STR_NO_VEHICLE"] call maxence_ebay_fnc_localize);
    _control lbSetData [(lbSize _control)-1,format ["%1",["NULL"]]];
} else {
    {
        _vehicleInfo = [(_x select 2)] call life_fnc_fetchVehInfo;

        _vehicleColor = ((M_CONFIG(getArray,"LifeCfgVehicles",(_x select 2),"textures") select (_x select 8)) select 0);
        if (isNil "_vehicleColor") then {_vehicleColor = "Default";};

        _control lbAdd format ["[x1] %1 - %2",(_vehicleInfo select 3),_vehicleColor];
        _tmp = [(_x select 0),(_x select 2),(_vehicleInfo select 3),(_x select 7)];
        _tmp = str(_tmp);
        _control lbSetData [(lbSize _control)-1,_tmp];
        _control lbSetPicture [(lbSize _control)-1,(_vehicleInfo select 2)];
        _control lbSetPictureColor [(lbSize _control)-1,[1,1,1,1]];
    } forEach _vehicles;
};
