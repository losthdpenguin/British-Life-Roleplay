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
_cardType = param [0,0,[0]];

if (_target isEqualTo player) exitWith {};
if (isNull _target) exitWith {};
if !(_target isKindOf "Man") exitWith {};
if !(alive _target) exitWith {};

_data = [_cardType,identity_nom,identity_prenom,identity_sexe,identity_date_naissance,identity_taille,(getPlayerUID player),identity_lieu_naissance,((format ["%1 %2",identity_prenom,identity_nom]))];
if (_cardType isEqualTo 1) then {_data pushBack (call life_coplevel);};
if (_cardType isEqualTo 2) then {_data pushBack (call life_mediclevel);};
if (_cardType isEqualTo 4) then {_data pushBack (player getVariable ["current_entreprise",objNull]);};

_data remoteExec ["the_programmer_identity_fnc_displayCard",_target];
