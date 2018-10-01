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
_type = [_this,0,0,[0]] call BIS_fnc_param; 
if (_type == 1) then {hint (["STR_RESET_CONTACT_LIST"] call max_phone_fnc_localize);};
if (_type == 0) then {uiSleep 10;};

_curConfig = missionConfigFile >> "Max_Settings_Phone";
_dep_or_not = getNumber (_curConfig >> "messages_to_depanneurs");

if (_dep_or_not isEqualTo 1) then {
    maxence_contact = [[(["STR_DEFAUT_CONTACT_1"] call max_phone_fnc_localize),str (getNumber (_curConfig >> "num_cop"))],[(["STR_DEFAUT_CONTACT_2"] call max_phone_fnc_localize),str (getNumber (_curConfig >> "num_med"))],[(["STR_DEFAUT_CONTACT_3"] call max_phone_fnc_localize),str (getNumber (_curConfig >> "num_cop_med"))],[(["STR_DEFAUT_CONTACT_4"] call max_phone_fnc_localize),str (getNumber (_curConfig >> "num_dep"))]];
} else {
    maxence_contact = [[(["STR_DEFAUT_CONTACT_1"] call max_phone_fnc_localize),str (getNumber (_curConfig >> "num_cop"))],[(["STR_DEFAUT_CONTACT_2"] call max_phone_fnc_localize),str (getNumber (_curConfig >> "num_med"))],[(["STR_DEFAUT_CONTACT_3"] call max_phone_fnc_localize),str (getNumber (_curConfig >> "num_cop_med"))]];
};

if (_type == 0) then {
    if (getNumber (_curConfig >> "phone_number_first_connexion") == 1) then {
        _num = getNumber (_curConfig >> "first_numbers");
        if ((getNumber (_curConfig >> "start_with_0")) == 1) then {_num = format ["0%1",_num];};

        for "_i" from 1 to getNumber(_curConfig >> "numbers_after_first_numbers") do {
            _num = format ["%1%2",_num,round (random 9)]
        };

        player setVariable ["maxence_numero",_num,true];
    } else {
        player setVariable ["maxence_numero","0",true];
    };
};

if (_type == 1) then {[] spawn max_phone_fnc_cellphone;};

_num = player getVariable "maxence_numero";
[getPlayerUID player,_num,maxence_contact] remoteExec ["max_phone_fnc_updatePhone",2];
