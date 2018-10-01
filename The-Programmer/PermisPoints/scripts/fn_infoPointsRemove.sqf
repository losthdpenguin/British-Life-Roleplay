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
private ["_display","_InfoName","_InfoPermis","_InfoPoints","_pointsPermis","_name","_permis","_nbpoints"];
_name = param [0,"",[""]];
_pointsPermis = param [1,0,[0]];

if !(playerSide isEqualTo west) exitWith {};
createDialog "Cop_points_remove";

_display = findDisplay 8765;
(_display displayCtrl 5211) ctrlSetText (["STR_HEADER_SEARCH_MENU"] call max_permisPoints_fnc_localize);
(_display displayCtrl 5412) ctrlSetText (["STR_REMOVE_POINTS"] call max_permisPoints_fnc_localize);
(_display displayCtrl 5541) ctrlSetText (["STR_POINTS_TO_REMOVE_TEXT"] call max_permisPoints_fnc_localize);
(_display displayCtrl 6451) ctrlSetText (["STR_REASON"] call max_permisPoints_fnc_localize);
(_display displayCtrl 5101) ctrlSetText (["STR_CONFIRM"] call max_permisPoints_fnc_localize);

_InfoName = _display displayCtrl 3203;
_InfoPermis = _display displayCtrl 3204;
_InfoPoints = _display displayCtrl 3205;

_permis = if (_pointsPermis != 0) then {(["STR_DRIVER_LICENSE_OK"] call max_permisPoints_fnc_localize);} else {(["STR_DRIVER_LICENSE_NOT_OK"] call max_permisPoints_fnc_localize);};
_nbpoints = format [(["STR_ACTUAL_POINTS"] call max_permisPoints_fnc_localize),_pointsPermis];

_InfoName ctrlSetText _name;
_InfoPermis ctrlSetText _permis;
if (_pointsPermis != 0) then {_InfoPoints ctrlSetText _nbpoints;};
