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
_curConfig = missionConfigFile >> "The_Programmer_Settings_Identity";
disableSerialization;

_cardType = param [0,0,[0]];
_nom = param [1,"",[""]];
_prenom = param [2,"",[""]];
_sexe = param [3,0,[0]];
_namePlayer = param [8,"",[""]];

switch (_cardType) do {
    case 0 : {
        _naissance = param [4,[],[[]]];
        _taille = param [5,0,[0]];
        _uid = param [6,"",[""]];
        _lieu_naissance = param [7,"",[""]];

        9500 cutRsc ["The_Programmer_Identity_Card_Civilian","PLAIN"];
        _display = uiNameSpace getVariable "The_Programmer_Identity_Card_Civilian";

        if (getText (missionConfigFile >> "The_Programmer_Settings_Identity" >> "default_lang") isEqualTo "fr") then {
            (_display displayCtrl 2765) ctrlSetText "The-Programmer\AdvancedIdentity\textures\civilian_card.paa";
        } else {
            if (getText (missionConfigFile >> "The_Programmer_Settings_Identity" >> "default_lang") isEqualTo "de") then {
                (_display displayCtrl 2765) ctrlSetText "The-Programmer\AdvancedIdentity\textures\civilian_card_de.paa";
            } else {
                if (getText (missionConfigFile >> "The_Programmer_Settings_Identity" >> "default_lang") isEqualTo "es") then {
                    (_display displayCtrl 2765) ctrlSetText "The-Programmer\AdvancedIdentity\textures\civilian_card_es.paa";
                } else {
                    (_display displayCtrl 2765) ctrlSetText "The-Programmer\AdvancedIdentity\textures\civilian_card_en.paa";
                };
            };
        };

        if (_sexe isEqualTo 1) then {
            (_display displayCtrl 1008) ctrlSetText "The-Programmer\AdvancedIdentity\textures\homme.paa";
        } else {
            (_display displayCtrl 1008) ctrlSetText "The-Programmer\AdvancedIdentity\textures\femme.paa";
        };

        _nationalite = getText (_curConfig >> "nationality");

        _sexe = switch (_sexe) do { 
            case 1 : {(["STR_HOMME"] call the_programmer_identity_fnc_localize)}; 
            case 2 : {(["STR_FEMME"] call the_programmer_identity_fnc_localize)}; 
            default {}; 
        };
        _sexe = _sexe select [0,1];

        (_display displayCtrl 1000) ctrlSetText format ["%1",_nom];
        (_display displayCtrl 1001) ctrlSetText format ["%1",_prenom];
        (_display displayCtrl 1004) ctrlSetText format ["%1/%2/%3",(_naissance select 0),(_naissance select 1),(_naissance select 2)];
        (_display displayCtrl 1005) ctrlSetText format ["%1",_sexe];
        (_display displayCtrl 1003) ctrlSetText format ["%1",_lieu_naissance];
        (_display displayCtrl 1002) ctrlSetText format ["%1",_taille];
        (_display displayCtrl 1006) ctrlSetText format ["%1",_uid];
        (_display displayCtrl 1007) ctrlSetText format ["%1",_nationalite];
		(_display displayCtrl 1009) ctrlSetText format ["%1",_nom];
        (_display displayCtrl 1010) ctrlSetText format ["%1",_prenom];
		(_display displayCtrl 1012) ctrlSetText format ["%1",_sexe];
		(_display displayCtrl 1011) ctrlSetText format ["%1",_lieu_naissance];
		(_display displayCtrl 1013) ctrlSetText format ["%1",_uid];
    };
    case 1 : {
        _rankLevel = param [9,0,[0]];
        9500 cutRsc ["The_Programmer_Identity_Card_Police","PLAIN"];
        _display = uiNameSpace getVariable "The_Programmer_Identity_Card_Police";

        if (getText (missionConfigFile >> "The_Programmer_Settings_Identity" >> "default_lang") isEqualTo "fr") then {
            (_display displayCtrl 2765) ctrlSetText "The-Programmer\AdvancedIdentity\textures\gendarmerie_card.paa";
        } else {
            if (getText (missionConfigFile >> "The_Programmer_Settings_Identity" >> "default_lang") isEqualTo "de") then {
                (_display displayCtrl 2765) ctrlSetText "The-Programmer\AdvancedIdentity\textures\police_card_de.paa";
            } else {
                if (getText (missionConfigFile >> "The_Programmer_Settings_Identity" >> "default_lang") isEqualTo "es") then {
                    (_display displayCtrl 2765) ctrlSetText "The-Programmer\AdvancedIdentity\textures\police_card_es.paa";
                } else {
                    (_display displayCtrl 2765) ctrlSetText "The-Programmer\AdvancedIdentity\textures\police_card.paa";
                };
            };
        };

        if (_sexe isEqualTo 1) then {            
            (_display displayCtrl 2769) ctrlSetText "The-Programmer\AdvancedIdentity\textures\homme.paa";
        } else {            
            (_display displayCtrl 2769) ctrlSetText "The-Programmer\AdvancedIdentity\textures\femme.paa";
        };
        (_display displayCtrl 2768) ctrlSetText format ["%1",_namePlayer];
        
        _displayRank = "";
        {
            if (_rankLevel isEqualTo (_x select 0)) exitWith {_displayRank = (_x select 1);};
        } forEach getArray (_curConfig >> "copLevelText");

        (_display displayCtrl 2766) ctrlSetText format ["%1",_displayRank];
        if ((getNumber (_curConfig >> "phone_numbers_script_enable")) isEqualTo 1) then {
            (_display displayCtrl 2767) ctrlSetStructuredText parseText format ["<t align='center'><t size='2'>%1</t></t>",getNumber (missionConfigFile >> "Max_Settings_Phone" >> "num_cop")];
        };
    };
    case 2 : {
        _rankLevel = param [9,0,[0]];
        9500 cutRsc ["The_Programmer_Identity_Card_Medic","PLAIN"];
        _display = uiNameSpace getVariable "The_Programmer_Identity_Card_Medic";

        if (getText (missionConfigFile >> "The_Programmer_Settings_Identity" >> "default_lang") isEqualTo "fr") then {
            (_display displayCtrl 2765) ctrlSetText "The-Programmer\AdvancedIdentity\textures\sapeur_pompier_card.paa";
        } else {
            if (getText (missionConfigFile >> "The_Programmer_Settings_Identity" >> "default_lang") isEqualTo "de") then {
                (_display displayCtrl 2765) ctrlSetText "The-Programmer\AdvancedIdentity\textures\sapeur_pompier_card_de.paa";
            } else {
                if (getText (missionConfigFile >> "The_Programmer_Settings_Identity" >> "default_lang") isEqualTo "es") then {
                    (_display displayCtrl 2765) ctrlSetText "The-Programmer\AdvancedIdentity\textures\sapeur_pompier_card_es.paa";
                } else {
                    (_display displayCtrl 2765) ctrlSetText "The-Programmer\AdvancedIdentity\textures\sapeur_pompier_card_en.paa";
                };
            };
        };

        if (_sexe isEqualTo 1) then {
            (_display displayCtrl 2769) ctrlSetText "The-Programmer\AdvancedIdentity\textures\homme.paa";
        } else {
            (_display displayCtrl 2769) ctrlSetText "The-Programmer\AdvancedIdentity\textures\femme.paa";
        };
        (_display displayCtrl 2768) ctrlSetText format ["%1",_namePlayer];

        _displayRank = "";
        {
            if (_rankLevel isEqualTo (_x select 0)) exitWith {_displayRank = (_x select 1);};
        } forEach getArray (_curConfig >> "medLevelText");

        (_display displayCtrl 2766) ctrlSetText format ["%1",_displayRank];
        if ((getNumber (_curConfig >> "phone_numbers_script_enable")) isEqualTo 1) then {
            (_display displayCtrl 2767) ctrlSetStructuredText parseText format ["<t align='center'><t size='2'>%1</t></t>",getNumber (missionConfigFile >> "Max_Settings_Phone" >> "num_med")];
        };
    };
    case 3 : {
        9500 cutRsc ["The_Programmer_Identity_Card","PLAIN"];
        _display = uiNameSpace getVariable "The_Programmer_Identity_Card";

        if (getText (missionConfigFile >> "The_Programmer_Settings_Identity" >> "default_lang") isEqualTo "fr") then {
            (_display displayCtrl 2765) ctrlSetText "The-Programmer\AdvancedIdentity\textures\dir_card.paa";
        } else {
            if (getText (missionConfigFile >> "The_Programmer_Settings_Identity" >> "default_lang") isEqualTo "de") then {
                (_display displayCtrl 2765) ctrlSetText "The-Programmer\AdvancedIdentity\textures\dir_card_de.paa";
            } else {
                if (getText (missionConfigFile >> "The_Programmer_Settings_Identity" >> "default_lang") isEqualTo "es") then {
                    (_display displayCtrl 2765) ctrlSetText "The-Programmer\AdvancedIdentity\textures\dir_card_es.paa";
                } else {
                    (_display displayCtrl 2765) ctrlSetText "The-Programmer\AdvancedIdentity\textures\dir_card_en.paa";
                };
            };
        };

        if (_sexe isEqualTo 1) then {
            (_display displayCtrl 2769) ctrlSetText "The-Programmer\AdvancedIdentity\textures\homme.paa";
        } else {
            (_display displayCtrl 2769) ctrlSetText "The-Programmer\AdvancedIdentity\textures\femme.paa";
        };
        (_display displayCtrl 2768) ctrlSetText format ["%1",_namePlayer];
        if ((getNumber (_curConfig >> "phone_numbers_script_enable")) isEqualTo 1) then {
            (_display displayCtrl 2767) ctrlSetStructuredText parseText format ["<t align='center'><t size='2'>%1</t></t>",getNumber (missionConfigFile >> "Max_Settings_Phone" >> "num_dep")];
        };
    };
    case 4 : {
        _entreprise = param [9,objNull,[objNull]];
        9500 cutRsc ["The_Programmer_Identity_Card","PLAIN"];
        _display = uiNameSpace getVariable "The_Programmer_Identity_Card";

        if (getText (missionConfigFile >> "The_Programmer_Settings_Identity" >> "default_lang") isEqualTo "fr") then {
            (_display displayCtrl 2765) ctrlSetText "The-Programmer\AdvancedIdentity\textures\company_card.paa";
        } else {
            if (getText (missionConfigFile >> "The_Programmer_Settings_Identity" >> "default_lang") isEqualTo "de") then {
                (_display displayCtrl 2765) ctrlSetText "The-Programmer\AdvancedIdentity\textures\company_card_de.paa";
            } else {
                if (getText (missionConfigFile >> "The_Programmer_Settings_Identity" >> "default_lang") isEqualTo "es") then {
                    (_display displayCtrl 2765) ctrlSetText "The-Programmer\AdvancedIdentity\textures\company_card_es.paa";
                } else {
                    (_display displayCtrl 2765) ctrlSetText "The-Programmer\AdvancedIdentity\textures\company_card_en.paa";
                };
            };
        };

        if (_sexe isEqualTo 1) then {
            (_display displayCtrl 2769) ctrlSetText "The-Programmer\AdvancedIdentity\textures\homme.paa";
        } else {
            (_display displayCtrl 2769) ctrlSetText "The-Programmer\AdvancedIdentity\textures\femme.paa";
        };

        ctrlShow [2767,false];

        (_display displayCtrl 2768) ctrlSetText format ["%1",_namePlayer];
        if ((getNumber (_curConfig >> "companies_script_enable")) isEqualTo 1) then {
            if (isNull _entreprise) exitWith {};
            _companyName = _entreprise getVariable ["entreprise_name",""];
            (_display displayCtrl 2766) ctrlSetText format ["%1",_companyName];
        };
    };
};