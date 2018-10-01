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
private["_display","_units","_type","_sendnumero","_lbNum","_numero","_name"];
_sendnumero = [_this,0,"",[""]] call BIS_fnc_param;

_type = [_this,1,0,[0]] call BIS_fnc_param; 
if (_type == 1) then {createDialog "max_cell_phone"; uiSleep 0.05;};
_curConfig = missionConfigFile >> "Max_Settings_Phone";

disableSerialization;
_display = findDisplay 3000;
_units = _display displayCtrl 3004;

ctrlSetText [3003, ""];
lbClear _units;

(_display displayCtrl 4901) ctrlSetText (["STR_SEND_TO"] call max_phone_fnc_localize);
(_display displayCtrl 9681) ctrlSetText (["STR_OLD_MESSAGE"] call max_phone_fnc_localize);
(_display displayCtrl 4406) ctrlSetText (["STR_DELETE_CONTACT"] call max_phone_fnc_localize);
(_display displayCtrl 4615) ctrlSetText (["STR_ADD_CONTACT"] call max_phone_fnc_localize);
(_display displayCtrl 5041) ctrlSetText (["STR_CALL_TEXT"] call max_phone_fnc_localize);
(_display displayCtrl 6501) ctrlSetText (["STR_RESET_CONTACT_TEXT"] call max_phone_fnc_localize);
(_display displayCtrl 5104) ctrlSetText (["STR_CONTACT_NUM"] call max_phone_fnc_localize);
(_display displayCtrl 5420) ctrlSetText (["STR_CONTACT_NAME"] call max_phone_fnc_localize);

if (FETCH_CONST(life_adminlevel) < 1) then {
    ctrlShow[3020,false];
};

_numeroTextCtrl = _display displayCtrl 3003;

if(_sendnumero != "") then {
    _numeroTextCtrl ctrlSetText _sendnumero;
};

_display = findDisplay 3000;
_numeroTxt = _display displayCtrl 3010;
_numeroServiceTxt = _display displayCtrl 3011;
_num = player getVariable "maxence_numero";
if (_num != "0") then {_numeroTxt ctrlSetText format [(["STR_ACTUAL_PHONE_NUMBER"] call max_phone_fnc_localize),_num];};

if (playerSide == west || playerSide == independent) then {
    switch (playerSide) do { 
        case west : {_numeroServiceTxt ctrlSetText format [(["STR_ACTUAL_SERVICE_NUMBER"] call max_phone_fnc_localize),getNumber (_curConfig >> "num_cop")];};
        case independent : {_numeroServiceTxt ctrlSetText format [(["STR_ACTUAL_SERVICE_NUMBER"] call max_phone_fnc_localize),getNumber (_curConfig >> "num_med")];};
    };
};

_contactList = _display displayCtrl 3005;
lbClear _contactList;
_contactList lbSetCurSel -1;

_onlineNumbers = [];
if (getNumber (_curConfig >> "display_online_contacts") == 1) then {
    _copOnline = west countSide playableUnits;
    if (_copOnline > 0) then {_onlineNumbers pushBack (str (getNumber (_curConfig >> "num_cop")));};

    _medOnline = independent countSide playableUnits;
    if (_medOnline > 0) then {_onlineNumbers pushBack (str (getNumber (_curConfig >> "num_med")));};
    if ((_copOnline > 0) || (_medOnline > 0)) then {_onlineNumbers pushBack (str (getNumber (_curConfig >> "num_cop_med")));};
    _depOnline = 0;
    {
        if (missionNamespace getVariable [getText(_curConfig >> "licence_depanneurs"),false]) exitWith {_depOnline = 1};
    } forEach playableUnits;
    if (_depOnline > 0) then {_onlineNumbers pushBack (str (getNumber (_curConfig >> "num_dep")));};

    {
        _onlineNumbers pushBack (_x getVariable "maxence_numero");
    } forEach playableUnits;
};

{
    _pseudo = _x select 0;
    _numero = _x select 1;
    _contactList lbAdd format["- %1 (%2)",_pseudo,_numero];
    _contactList lbSetData [(lbSize _contactList)-1,format["%1",_numero]];
    if (_numero in _onlineNumbers) then {_contactList lbSetColor [(lbSize _contactList)-1,[0,255,0,1]];};
} forEach maxence_contact;

_contactList ctrlAddEventHandler ["LBDblClick",{
    _display = ctrlParent (_this select 0);
    _numStr = (_this select 0) lbData (_this select 1);

    _numeroTextCtrl = _display displayCtrl 3003;
    _numeroTextCtrl ctrlSetText _numStr;
}];