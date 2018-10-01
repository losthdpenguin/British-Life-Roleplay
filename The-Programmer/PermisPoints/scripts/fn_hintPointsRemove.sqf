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
_points = param [0,0,[0]];
_idPolicier = param [1,0,[0]];
_reason = param [2,"",[""]];

if ((maxence_pointsPermis) - _points <= 0) then {
	[1,format [(["STR_REMOVE_DRIVER_LICENSE_X"] call max_permisPoints_fnc_localize),(format ["%1 %2",identity_prenom,identity_nom])]] remoteExecCall ["life_fnc_broadcast",_idPolicier];
	hint (["STR_GET_REMOVE_DRIVER_LICENSE"] call max_permisPoints_fnc_localize); //CIVIL
	maxence_pointsPermis = 0;
    license_civ_driver = false;
    [2] call SOCK_fnc_updatePartial;
} else {
	[1,format [(["STR_REMOVE_POINTS_X"] call max_permisPoints_fnc_localize),_points,(format ["%1 %2",identity_prenom,identity_nom]),_reason]] remoteExecCall ["life_fnc_broadcast",_idPolicier];
	hint format [(["STR_GET_REMOVE_POINTS"] call max_permisPoints_fnc_localize),_points,_reason]; //CIVIL
	maxence_pointsPermis = maxence_pointsPermis - _points;
};

[getPlayerUID player,playerSide,maxence_pointsPermis] remoteExec ["max_permisPoints_fnc_updatePointsPermis",2];