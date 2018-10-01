#include "..\macros.h"
/*
    Author: [Utopia] Amaury
    Altis DEV: https://altisdev.com/user/amauryd
    Web site: www.the-programmer.com
    Teamspeak 3: ts.the-programmer.com
    Steam: « Une Vache Sur CS – Maxence », please leave a message on my profile who says the exact reason before adding me.

    Terms of use:
        - This file is forbidden unless you have permission from the author. If you have this file without permission to use it please do not use it and do not share it.
        - If you have permission to use this file, you can use it on your server however it is strictly forbidden to share it.
        - Out of respect for the author please do not delete this information.

    License number:
    Server's name:
    Owner's name:
*/
private _saved = profileNamespace getVariable "gps_saved";

if(isNil "_saved") then {  // to store path nodes position
	profileNameSpace setVariable ["gps_saved",[]];
}else{
	if !(_saved isEqualType []) exitWith {
		profileNameSpace setVariable ["gps_saved",[]];
		systemChat "GPS : Corrupted data were erased";
	};
};

if (isNil {profileNamespace getVariable "gps_settings"}) then {
	profileNamespace setVariable ["gps_settings",[]];
};

private _settings = profileNamespace getVariable "gps_settings";

_lang = [_settings,"lang"] call bis_fnc_getFromPairs;
_default = ["default_lang","en"] call gps_fnc_getConfigSetting;

if (isNil "_lang") then {
	[_settings,"lang",_default] call bis_fnc_setToPairs;
}else{
	if !(_lang isEqualType _default) then {
		[_settings,"lang",_default] call bis_fnc_setToPairs;
	};
};

_markersColors = [_settings,"marker_color"] call bis_fnc_getFromPairs;
_default = ["default_marker_color",[0,0,0,0]] call gps_fnc_getConfigSetting;

if (isNil "_markersColors") then {
	[_settings,"marker_color",_default] call bis_fnc_setToPairs;
}else{
	if !(_markersColors isEqualType _default) then {
		[_settings,"marker_color",_default] call bis_fnc_setToPairs;
	};
};

{
	_keyID = getNumber (_x >> "default");
	_current = [_settings,configName _x,[]] call bis_fnc_getFromPairs;
	if (_current isEqualTo []) then {
		[_settings,configName _x,[_keyID]] call bis_fnc_setToPairs;
	}else{
		if !(_current isEqualType []) then {
			[_settings,configName _x,[_keyID]] call bis_fnc_setToPairs;
		};
	};
}foreach ("true" configClasses (missionConfigFile >> "CfgGPS" >> "Keys"));

