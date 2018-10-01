#include "..\..\macros.h"
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
params ["_disp"];

uiNamespace setVariable ['gps_quickNav', _disp];

_btn = _disp displayCtrl 1600;
_btn ctrlEnable false;
_text = _disp displayCtrl 1100;

_text ctrlSetStructuredText parseText format["<t align='center'>%1</t>",["STR_QUICKNAV_HEADER"] call gps_fnc_localize];

_options = missionNamespace getVariable ["gps_quickNav_options",[]];

if(!(missionNamespace getVariable ["gps_core_init_done",false])) exitWith {
	_btn ctrlSetText "Loading ...";
};

_disp setVariable ["options",_options];
_disp setVariable ["selOpt",0];

if(_options isEqualTo []) then {
	_btn ctrlSetText "< Empty >";
}else{
	_btn ctrlSetText ((_options select 0) select 0);
};
	

{	//hide the elements
	_pos = ctrlPosition _x;
	_x setVariable ["originalPos",_pos];
	_x ctrlSetPosition [_pos select 0,_pos select 1,0,_pos select 3];
	_x ctrlCommit 0;
}foreach allControls _disp;

