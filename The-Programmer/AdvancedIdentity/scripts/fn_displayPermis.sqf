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
private ["_nom","_display","_prenom","_naissance","_lieu_naissance","_sexe","_taille"];
if (!alive player) exitWith {};
disableSerialization;

_nom = param [0,"",[""]];
_naissance = param [1,[],[[]]];
_sexe = param [2,0,[0]];
_uid = param [3,"",[""]];
_pointsPermis = param [4,0,[0]];
_hasLicenseCar = param [5,false,[false]];
_hasLicenseBoat = param [6,false,[false]];
_hasLicenseMoto = param [7,false,[false]];
_hasLicenseAir = param [8,false,[false]];

9500 cutRsc ["The_Programmer_Identity_Permis","PLAIN"];
_display = uiNameSpace getVariable "The_Programmer_Identity_Permis";

if (getText (missionConfigFile >> "The_Programmer_Settings_Identity" >> "default_lang") isEqualTo "fr") then {
    (_display displayCtrl 2651) ctrlSetText "The-Programmer\AdvancedIdentity\textures\permis.paa";
} else {
    if (getText (missionConfigFile >> "The_Programmer_Settings_Identity" >> "default_lang") isEqualTo "de") then {
        (_display displayCtrl 2651) ctrlSetText "The-Programmer\AdvancedIdentity\textures\permis_de.paa";
    } else {
        if (getText (missionConfigFile >> "The_Programmer_Settings_Identity" >> "default_lang") isEqualTo "es") then {
            (_display displayCtrl 2651) ctrlSetText "The-Programmer\AdvancedIdentity\textures\permis_es.paa";
        } else {
            (_display displayCtrl 2651) ctrlSetText "The-Programmer\AdvancedIdentity\textures\permis_en.paa";
        };
    };
};

if (_sexe isEqualTo 1) then {    
    (_display displayCtrl 2661) ctrlSetText "The-Programmer\AdvancedIdentity\textures\homme.paa";
} else {
    (_display displayCtrl 2661) ctrlSetText "The-Programmer\AdvancedIdentity\textures\femme.paa";
};

_sexe = switch (_sexe) do { 
    case 1 : {(["STR_HOMME"] call the_programmer_identity_fnc_localize)}; 
    case 2 : {(["STR_FEMME"] call the_programmer_identity_fnc_localize)}; 
    default {}; 
};

(_display displayCtrl 2654) ctrlSetText format ["%1",_nom];
(_display displayCtrl 2652) ctrlSetText format ["%1/%2/%3",(_naissance select 0),(_naissance select 1),(_naissance select 2)];
(_display displayCtrl 2653) ctrlSetText format ["%1",_sexe];
(_display displayCtrl 2655) ctrlSetText format ["%1",_uid];
(_display displayCtrl 2656) ctrlSetText format ["%1",_pointsPermis];

if (_hasLicenseCar) then {
    (_display displayCtrl 2657) ctrlSetText "The-Programmer\AdvancedIdentity\textures\checkbox.paa";
};

if (_hasLicenseBoat) then {
    (_display displayCtrl 2660) ctrlSetText "The-Programmer\AdvancedIdentity\textures\checkbox.paa";
};

if (_hasLicenseMoto) then {
    (_display displayCtrl 2659) ctrlSetText "The-Programmer\AdvancedIdentity\textures\checkbox.paa";
};

if (_hasLicenseAir) then {
    (_display displayCtrl 2658) ctrlSetText "The-Programmer\AdvancedIdentity\textures\checkbox.paa";
};

