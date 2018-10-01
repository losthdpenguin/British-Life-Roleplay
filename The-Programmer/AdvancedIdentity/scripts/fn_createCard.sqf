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
_curConfig = missionConfigFile >> "The_Programmer_Settings_Identity";

_exit = false;
if (((format ["%1 %2",identity_prenom,identity_nom])) in (getArray (_curConfig >> "bad_usernames"))) exitWith {["advenced_identity_bad_name",false,false] call BIS_fnc_endMission;};
if ((getNumber (missionConfigFile >> "The_Programmer_Settings_Identity" >> "enable_whitelist")) isEqualTo 1) then {
    if !((getPlayerUID player) in (getArray (missionConfigFile >> "The_Programmer_Settings_Identity" >> "whitelisted_players_uid"))) exitWith {_exit = true; ["advenced_identity_not_whitelisted",false,false] call BIS_fnc_endMission;};
};
if (_exit) exitWith {};

disableSerialization;
createdialog "The_Programmer_Identity_Create";

cutText ["","BLACK FADED"];
0 cutFadeOut 9999999;

_display = findDisplay 2550;
_display displaySetEventHandler ["KeyDown","if ((_this select 1) isEqualTo 1) then {true}"];

if (getText (missionConfigFile >> "The_Programmer_Settings_Identity" >> "default_lang") isEqualTo "fr") then {
    (_display displayCtrl 2555) ctrlSetText "The-Programmer\AdvancedIdentity\textures\declarationidentite.paa";
} else {
    if (getText (missionConfigFile >> "The_Programmer_Settings_Identity" >> "default_lang") isEqualTo "de") then {
        (_display displayCtrl 2555) ctrlSetText "The-Programmer\AdvancedIdentity\textures\declarationidentite_de.paa";
    } else {
        if (getText (missionConfigFile >> "The_Programmer_Settings_Identity" >> "default_lang") isEqualTo "es") then {
            (_display displayCtrl 2555) ctrlSetText "The-Programmer\AdvancedIdentity\textures\declarationidentite_es.paa";
        } else {
            (_display displayCtrl 2555) ctrlSetText "The-Programmer\AdvancedIdentity\textures\declarationidentite_en.paa";
        };
    };
};

_birthday = _display displayCtrl 1005;
_birthmonth = _display displayCtrl 1006;
_birthyear = _display displayCtrl 1007;
_birthcountry = _display displayCtrl 1015;
_Sexe = _display displayCtrl 1013;
_taille = _display displayCtrl 1011;

for "_i" from 1 to 31 do {
	_birthday lbAdd str _i;
	_birthday lbSetData [(lbSize _birthday)-1,str(_i)];
};

for "_l" from 1 to 12 do {
	_birthmonth lbAdd str _l;
	_birthmonth lbSetData [(lbSize _birthmonth)-1,str(_l)];
};

for "_k" from 1920 to 2018 do {
    _value = 2018 - (_k - 1920);
    _birthyear lbAdd str _value;
    _birthyear lbSetData [(lbSize _birthyear)-1,str(_value)];
};

{
	_birthcountry lbadd _x;
	_birthcountry lbSetData [(lbSize _birthcountry)-1,_x];
} forEach getArray(_curConfig >> "birth_places");

_sexe lbAdd (["STR_HOMME"] call the_programmer_identity_fnc_localize);
_sexe lbSetValue [(lbSize _sexe)-1,1];
_sexe lbAdd (["STR_FEMME"] call the_programmer_identity_fnc_localize);
_sexe lbSetValue [(lbSize _sexe)-1,2];


for "_i" from 150 to 215 do {
	_taille lbAdd format["%1 cm",_i];
	_taille lbSetData [(lbSize _taille)-1,str(_i)];
};
