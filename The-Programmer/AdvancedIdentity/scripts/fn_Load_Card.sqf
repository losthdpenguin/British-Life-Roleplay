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
private ["_display","_name","_birthday","_birthmonth","_birthcountry","_sexe"];
disableSerialization;

_nom = ctrlText 1009;
_prenom = ctrlText 1008;

_birthday = lbData [1005,(lbCurSel 1005)];
_birthday = parseNumber _birthday;

_birthmonth = lbData [1006,(lbCurSel 1006)];
_birthmonth = parseNumber  _birthmonth;

_birthyear = lbData [1007,(lbCurSel 1007)];
_birthyear = parseNumber _birthyear;

_birthcountry = lbData [1015,(lbCurSel 1015)];
_taille = lbData [1011,(lbCurSel 1011)];
_sexe = lbValue [1013,(lbCurSel 1013)];

if ((_nom isEqualTo "") && (_prenom isEqualTo "")) exitWith {hint (["STR_BAD_NAME"] call the_programmer_identity_fnc_localize);};
if (_birthday isEqualTo 0 || _birthmonth isEqualTo 0 || _birthyear isEqualTo 0) exitWith {hint (["STR_BAD_BIRTH_DATE"] call the_programmer_identity_fnc_localize);};
if (_birthcountry isEqualTo "") exitWith {hint (["STR_BAD_BIRTH_PLACE"] call the_programmer_identity_fnc_localize);};
if (_taille isEqualTo 0) exitWith {hint (["STR_BAD_HEIGHT"] call the_programmer_identity_fnc_localize);};
if (_sexe isEqualTo 0) exitWith {hint (["STR_BAD_SEX"] call the_programmer_identity_fnc_localize);};

[player,_nom,_prenom,_birthday,_birthmonth,_birthyear,_birthcountry,_taille,_sexe] remoteExec ["the_programmer_identity_fnc_updateCard",2];

closeDialog 0;
0 cutText ["","BLACK IN"];
_serverName = getText (missionConfigFile >> "The_Programmer_Settings_Identity" >> "server_name");

_sexe = switch (_sexe) do {
    case 1 : {(["STR_HOMME"] call the_programmer_identity_fnc_localize)};
    case 2 : {(["STR_FEMME"] call the_programmer_identity_fnc_localize)};
    default {};
};

_txt = "";
_txt = composeText [_txt,parseText(
    "<t shadow='2'>" +
    "<t color='#4DA6FF'>" +
    "<t size='1.5'>" +
    format [(["STR_WELCOME_MSG_HEADER"] call the_programmer_identity_fnc_localize),(format ["%1 %2",identity_prenom,identity_nom])]
    +"</t>"+"</t>"+"</t>")
];
_txt = composeText [_txt,parseText ("<br />" + "<br />")];

_txt = composeText [_txt,parseText(
    "<t shadow='1'>"+
    "<t size='1'>"+
    format [(["STR_WELCOME_MSG_TEXT"] call the_programmer_identity_fnc_localize),_serverName]
    +"</t>"+"</t>")
];

_txt = composeText [_txt,parseText ("<br />" + "<br />")];

_txt = composeText [_txt,parseText(
    "<t shadow='1'>"+
    "<t size='1'>"+
    format [(["STR_WELCOME_MSG_END"] call the_programmer_identity_fnc_localize),_sexe,_birthday,_birthmonth,_birthyear,_birthcountry]
    +"</t>"+"</t>")
];

hint _txt;
