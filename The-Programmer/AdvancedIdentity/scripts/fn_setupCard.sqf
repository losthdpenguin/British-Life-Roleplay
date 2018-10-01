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
_queryInfos = param [0,[],[[]]];
if ((count _queryInfos) < 1) exitWith {};

identity_nom = _queryInfos select 2;
identity_prenom = _queryInfos select 3;
identity_date_naissance = _queryInfos select 4;
identity_lieu_naissance = _queryInfos select 5;
identity_taille = _queryInfos select 6;
identity_sexe = _queryInfos select 7;

_exit = false;
/*
if ((getNumber (missionConfigFile >> "The_Programmer_Settings_Identity" >> "allow_players_to_change_player_name")) isEqualTo 0) then {
    if !(((format ["%1 %2",identity_prenom,identity_nom])) isEqualTo (_queryInfos select 1)) exitWith {_exit = true; ["advenced_identity_changed_name",false,false] call BIS_fnc_endMission;};
} else {
    if !(((format ["%1 %2",identity_prenom,identity_nom])) isEqualTo (_queryInfos select 1)) exitWith {_exit = true; [player] remoteExec ["the_programmer_identity_fnc_deleteCard",2];};
};*/

if ((getNumber (missionConfigFile >> "The_Programmer_Settings_Identity" >> "enable_whitelist")) isEqualTo 1) then {
    if !((getPlayerUID player) in (getArray (missionConfigFile >> "The_Programmer_Settings_Identity" >> "whitelisted_players_uid"))) exitWith {_exit = true; ["advenced_identity_not_whitelisted",false,false] call BIS_fnc_endMission;};
};

if (_exit) exitWith {};

if (((format ["%1 %2",identity_prenom,identity_nom])) in (getArray (missionConfigFile >> "The_Programmer_Settings_Identity" >> "bad_usernames"))) exitWith {["advenced_identity_bad_name",false,false] call BIS_fnc_endMission;};

if (playerSide isEqualTo civilian) then {
    player addAction [(["STR_SHOW_IDENTITY_CARD"] call the_programmer_identity_fnc_localize),{[0] spawn the_programmer_identity_fnc_showCard},"",0,false,false,"",'(cursorTarget isKindOf "Man") && ((identity_nom != "") || (identity_prenom != ""))'];
    player addAction [(["STR_SHOW_LICENSES_CARD"] call the_programmer_identity_fnc_localize),{[] spawn the_programmer_identity_fnc_showPermis},"",0,false,false,"",'(cursorTarget isKindOf "Man") && ((identity_nom != "") || (identity_prenom != ""))'];

    if ((getNumber (missionConfigFile >> "The_Programmer_Settings_Identity" >> "enable_depanneurs_card")) isEqualTo 1) then {
        player addAction [(["STR_SHOW_DIR_CARD"] call the_programmer_identity_fnc_localize),{[3] spawn the_programmer_identity_fnc_showCard},"",0,false,false,"",'(cursorTarget isKindOf "Man") && ((identity_nom != "") || (identity_prenom != "")) && (missionNamespace getVariable [getText (missionConfigFile >> "The_Programmer_Settings_Identity" >> "depanneurs_licence"),false])'];
    };

    if (((getNumber (missionConfigFile >> "The_Programmer_Settings_Identity" >> "companies_script_enable")) isEqualTo 1) && ((getNumber (missionConfigFile >> "The_Programmer_Settings_Identity" >> "enable_companies_card")) isEqualTo 1)) then {
        player addAction [(["STR_SHOW_COMPANY_CARD"] call the_programmer_identity_fnc_localize),{[4] spawn the_programmer_identity_fnc_showCard},"",0,false,false,"",'(cursorTarget isKindOf "Man") && ((identity_nom != "") || (identity_prenom != "")) && (!isNull (player getVariable ["current_entreprise",objNull]))'];
    };
};

if (playerSide isEqualTo west) then {
    player addAction [(["STR_SHOW_COP_CARD"] call the_programmer_identity_fnc_localize),{[1] spawn the_programmer_identity_fnc_showCard},"",0,false,false,"",'(cursorTarget isKindOf "Man") && ((identity_nom != "") ||(identity_prenom != ""))'];
};

if (playerSide isEqualTo independent) then {
    player addAction [(["STR_SHOW_MEDIC_CARD"] call the_programmer_identity_fnc_localize),{[2] spawn the_programmer_identity_fnc_showCard},"",0,false,false,"",'(cursorTarget isKindOf "Man") && ((identity_nom != "") || (identity_prenom != ""))'];
};
