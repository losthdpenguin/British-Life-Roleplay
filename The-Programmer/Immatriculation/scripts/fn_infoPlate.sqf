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
_type = param [0,0,[0]];

switch (_type) do { 
	case 0 : {
		_plate = ctrlText 8991;
		if (_plate == "0" || _plate == (["STR_DEFAULT_TEXT_IN_SEARCH_BAR"] call max_immat_fnc_localize) || _plate == "") exitWith {hint (["STR_FAIL_PLATE_ENTER"] call max_immat_fnc_localize)};

		hint localize "STR_NOTF_Searching";
		uiSleep 3;
		hint "";
		[_plate] remoteExec ["max_immat_fnc_getPlateInfo",2];
	};

	case 1 : {
		disableSerialization;
		_result = param [1,[],[[]]];

		if (count _result isEqualTo 0) exitWith {
			closeDialog 0;
		    hint (["STR_NO_VEHICLES_FOUND"] call max_immat_fnc_localize);
		};

		createDialog "max_result_plate";
		_control = CONTROL(6750,6751);
		lbClear _control;
		_proprio = param [2,"",[""]];
		_immatriculation = param [3,"",[""]];
		_classname = param [4,"",[""]];
		_couleur = param [5,0,[0]];
		_side = param [6,"",[""]];
		_type = param [7,"",[""]];

		if (_side == "Civ") then {_side = (["STR_TYPE_CIV"] call max_immat_fnc_localize);} else {if (_side == "Cop") then {_side = (["STR_TYPE_COP"] call max_immat_fnc_localize);} else {_side = (["STR_TYPE_MED"] call max_immat_fnc_localize);};};
		if (_type == "Car") then {_type = (["STR_TYPE_CAR_LAND"] call max_immat_fnc_localize);} else {if (_type == "Air") then {_type = (["STR_TYPE_CAR_AIR"] call max_immat_fnc_localize);} else {_type = (["STR_TYPE_CAR_BOAT"] call max_immat_fnc_localize);};};

		_couleur = ((M_CONFIG(getArray,"LifeCfgVehicles",_classname,"textures") select _couleur) select 0);
		if (isNil "_couleur") then {_couleur = (["STR_COLOR_DEFAULT"] call max_immat_fnc_localize);};

		_modele = getText(configFile >> "CfgVehicles" >> _classname >> "displayName");

		_control ctrlSetText format [(["STR_VEH_INFO"] call max_immat_fnc_localize),_immatriculation];

		(CONTROL(6750,6752)) ctrlSetStructuredText parseText format ["
			<br/>
			%6 : <t color='#8cff9b'>%1</t><br/>
		    %7 : <t color='#8cff9b'>%2</t><br/>
		    %8 : <t color='#8cff9b'>%3</t><br/>
		    %9 : <t color='#8cff9b'>%4</t><br/>
		    %10 : <t color='#8cff9b'>%5</t><br/>
		    %11 : <t color='#8cff9b'>%12</t>
		    ",
		_proprio,
		_immatriculation,
		_modele,
		_couleur,
		_side,
		(["STR_OWNER"] call max_immat_fnc_localize),
		(["STR_PLATE"] call max_immat_fnc_localize),
		(["STR_TYPE"] call max_immat_fnc_localize),
		(["STR_COLOR"] call max_immat_fnc_localize),
		(["STR_SIDE"] call max_immat_fnc_localize),
		(["STR_TYPE_CAR"] call max_immat_fnc_localize),
		_type
		];
	}; 
};
