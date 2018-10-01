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
private ["_points","_reason"];

params [
    ["_unit",objNull,[objNull]]
];

_points = parseNumber (ctrlText 3200);
_reason = ctrlText 3201;
if (isNull _unit || !isPlayer _unit) exitWith {};

if (count (toArray (_reason)) < 10) exitWith {hint (["STR_TOO_SHORT_REASON"] call max_permisPoints_fnc_localize);};
if (_points <= 0 || _points > 12) exitWith {hint (["STR_BAD_NUMBER"] call max_permisPoints_fnc_localize);};
if (_points > getNumber (missionConfigFile >> "Max_Settings_PermisPoints" >> "max_remove_points_per_time")) exitWith {hint (["STR_TOO_MUCH_POINTS"] call max_permisPoints_fnc_localize);};

[_unit,_points,_reason] remoteExec ["max_permisPoints_fnc_updatePermis",2];
