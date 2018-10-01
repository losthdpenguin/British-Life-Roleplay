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
private ["_sender","_num","_message"];
_sender = (format ["%1 %2",identity_prenom,identity_nom]);
_type = _this select 0;
_curConfig = missionConfigFile >> "Max_Settings_Phone";

_num = ctrlText 3003;
_message = ctrlText 3004;
_fromNum = player getVariable "maxence_numero";

_requiredLicense = "";
_displayText = "";

if (_message == "") exitWith {hint (["STR_YOU_MUST_SET_MESSAGE"] call max_phone_fnc_localize)};
if (count (toArray (_message)) > 350) exitWith {hint (["STR_TOO_LONG_MESSAGE"] call max_phone_fnc_localize);};
if ((_num == "") && (_type == 0)) exitWith {hint (["STR_PUT_A_PHONE_NUMBER"] call max_phone_fnc_localize);};

if (_type == 0) then {
    if (playerSide == west || playerSide == independent) then {
        _action = [
            (["STR_SELECT_SENDER_TEXT"] call max_phone_fnc_localize),
            (["STR_SELECT_SENDER_HEADER"] call max_phone_fnc_localize),
            (["STR_SELECT_SENDER_PRO"] call max_phone_fnc_localize),
            (["STR_SELECT_SENDER_PERSO"] call max_phone_fnc_localize)
        ] call BIS_fnc_guiMessage;

        if (_action) then {
            switch (playerSide) do { 
                case west : {_fromNum = getNumber (_curConfig >> "num_cop"); _notpaying = true;}; 
                case independent : {_fromNum = getNumber (_curConfig >> "num_med"); _notpaying = true;}; 
            };
        };
    };
};

for "_i" from 0 to count(_curConfig >> "special_numbers")-1 do {
    _curConfigNumbers = ((_curConfig >> "special_numbers") select _i);

    _number = getNumber(_curConfigNumbers >> "number");
    if (parseNumber _num == _number) exitWith {
        _displayText = getText(_curConfigNumbers >> "displayname");
        _requiredLicense = getText(_curConfigNumbers >> "license");
        _type = 3;
    };
};

_countDefaultNUM = 0;
if ((getNumber (_curConfig >> "start_with_0")) == 1) then {_countDefaultNUM = _countDefaultNUM + 1;};
_countDefaultNUM = _countDefaultNUM + count str (getNumber(_curConfig >> "first_numbers"));
_countDefaultNUM = _countDefaultNUM + getNumber (_curConfig >> "numbers_after_first_numbers");

_canExit = switch (true) do { 
    case (count _num == (_countDefaultNUM + 4)) : {if (_num select [0,4] == "#31#") then {false} else {true};}; 
    case (count _num == _countDefaultNUM) : {false;}; 
    case (_num in [str (getNumber (_curConfig >> "num_cop")),str (getNumber (_curConfig >> "num_med")),str (getNumber (_curConfig >> "num_cop_med"))]) : {false;};
    case ((getNumber (_curConfig >> "messages_to_depanneurs") == 1) && (_num == str (getNumber (_curConfig >> "num_dep")))) : {false;};
    case (_type == 1) : {false;};
    case (_type == 2) : {false;};
    case (_type == 3) : {false;};
    default {true}; 
};

if (_canExit) exitWith {
    uiSleep  2;
    hint (["STR_FAIL_PHONE_NUMBER"] call max_phone_fnc_localize);
};

switch (_type) do {
    case 0: {
        // CALL GENDARMES
        if (parseNumber _num == getNumber (_curConfig >> "num_cop")) exitWith {
            [_message,_fromNum,1,mapGridPosition player] remoteExec ["max_phone_fnc_clientMessage",-2]; //GENDARMES
            hint format[(["STR_SEND_TO_COPS"] call max_phone_fnc_localize),_message];
        
            if ((getNumber (missionConfigFile >> "Max_Settings_Phone" >> "calls_management_script_enable")) isEqualTo 1) then {
                maxence_waiting_cop_calls pushBack [((format ["%1 %2",identity_prenom,identity_nom])),(position player),_message,servertime,"",player,0];
                publicVariable "maxence_waiting_cop_calls";
            };
        };

        // CALL MEDICS
        if (parseNumber _num == getNumber (_curConfig >> "num_med")) exitWith {
            [_message,_fromNum,2,mapGridPosition player] remoteExec ["max_phone_fnc_clientMessage",-2]; //MEDICS
            hint format[(["STR_SEND_TO_MEDS"] call max_phone_fnc_localize),_message];
        
            if ((getNumber (missionConfigFile >> "Max_Settings_Phone" >> "calls_management_script_enable")) isEqualTo 1) then {
                maxence_waiting_med_calls pushBack [((format ["%1 %2",identity_prenom,identity_nom])),(position player),_message,servertime,"",player,0];
                publicVariable "maxence_waiting_med_calls";
            };
        };

        // CALL DEPANNEURS
        if (parseNumber _num == getNumber (_curConfig >> "num_dep")) exitWith {
            [_message,_fromNum,6,mapGridPosition player,player] remoteExec ["max_phone_fnc_clientMessage",-2]; //DEPANNEURS
            hint format[(["STR_SEND_TO_DEP"] call max_phone_fnc_localize),_message];
        };

        // CALL GENDARMES ET MEDICS
        if (parseNumber _num == getNumber (_curConfig >> "num_cop_med")) exitWith {
            [_message,_fromNum,1,mapGridPosition player] remoteExec ["max_phone_fnc_clientMessage",-2]; //GENDARMES
            [_message,_fromNum,2,mapGridPosition player] remoteExec ["max_phone_fnc_clientMessage",-2]; //MEDICS
            hint format[(["STR_SEND_TO_COPS_AND_MEDS"] call max_phone_fnc_localize),_message];
        };

        if (_fromNum isEqualTo "0") exitWith {
            uiSleep 1;
            hint (["STR_YOU_MUST_BUY_SIM"] call max_phone_fnc_localize);
        };

        _fn_findPlayerByNum= {
            {
                _numM = _x getVariable "maxence_numero";
                if (_this isEqualTo _numM) exitWith {
                    _x;
                };
                objNull
            } foreach playableUnits;
        };

        // PARTIE CIVIL - ANO
        if (_num select [0,4] == "#31#") exitWith {
            _num = _num select [4,count _num -1];
            _player = _num call _fn_findPlayerByNum;

            {
               if (_x select 1 isEqualTo _num) exitWith {
                  _num = _x select 0;
               };
            } foreach maxence_contact;
            
            if (isNull _player) exitWith {
                uiSleep 2; 
                hint (["STR_FAIL_PHONE_NUMBER"] call max_phone_fnc_localize);
            };
            [_message,_fromNum,5] remoteExec ["max_phone_fnc_clientMessage",_player]; //ANONYME
            hint format [(["STR_SEND_X_ANO"] call max_phone_fnc_localize),_num,_message];
        };

        _player = _num call _fn_findPlayerByNum;
        if (isNull _player) exitWith {
            uiSleep 2; 
            hint (["STR_FAIL_PHONE_NUMBER"] call max_phone_fnc_localize);
        };

        {
           if (_x select 1 isEqualTo _num) exitWith {
              _num = _x select 0;
           };
        } foreach maxence_contact;

        // PARTTIE CIVIL - NORMAL
        [_message,_fromNum,0] remoteExec ["max_phone_fnc_clientMessage",_player]; //CIV
        hint format [(["STR_SEND_X"] call max_phone_fnc_localize),_num,_message];
    };

    case 1: {
        if ((call life_adminlevel) < 1) exitWith {hint (["STR_NOT_ADMIN"] call max_phone_fnc_localize);};
        [_message,_sender,4] remoteExec ["max_phone_fnc_clientMessage",-2]; //ADMIN ALL
    };

    case 2: {
        [_message,_sender,3,mapGridPosition player,_fromNum] remoteExec ["max_phone_fnc_clientMessage",-2]; //TOADMIN
        hint format[(["STR_SEND_TO_ADMINS"] call max_phone_fnc_localize),_message];
    };

    case 3: {
        if (_requiredLicense == "") exitWith {};
        if (_displayText == "") exitWith {};

        if (_fromNum isEqualTo "0") exitWith {
            uiSleep 1;
            hint (["STR_YOU_MUST_BUY_SIM"] call max_phone_fnc_localize);
        };

        [_message,_fromNum,7,_displayText,_requiredLicense] remoteExec ["max_phone_fnc_clientMessage",-2];
        hint format[(["STR_SEND_TO_ENTERPRISE"] call max_phone_fnc_localize),_displayText,_message];
    };
};
