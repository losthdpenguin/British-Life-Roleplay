#include "macros.h"
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
params [
	["_road",objNull,[objNull]]
];

if (count ([_road] call gps_core_fnc_roadsConnectedTo) > 2) exitWith {}; //already a node

[gps_fakeNodes,str _road,_road] call misc_fnc_hashTable_set;

_nodes = (allVariables gps_fakeNodes) apply {gps_fakeNodes getVariable _x};

_res = [_road,[_road] call gps_core_fnc_roadsConnectedTo,_nodes] call gps_core_fnc_mapNodeValues;

{
	[_x select 0,[_x select 0] call gps_core_fnc_roadsConnectedTo,_nodes] call gps_core_fnc_mapNodeValues;
}foreach _res;