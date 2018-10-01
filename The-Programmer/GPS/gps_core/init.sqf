#include <macros.h>
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
_coreFolder = "";

gps_core_fnc_compile = compileFinal preprocessFileLineNumbers ("The-Programmer\GPS\gps_core\fn_compile.sqf");
gps_core_fnc_log = [_coreFolder,"fn_log",true] call gps_core_fnc_compile;

["Compiling functions..."] call gps_core_fnc_log;

/** core functions **/
gps_core_fnc_mapRoutes = [_coreFolder,"fn_mapRoutes"] call gps_core_fnc_compile;
gps_core_fnc_mapNodeValues = [_coreFolder,"fn_mapNodeValues"] call gps_core_fnc_compile;
gps_core_fnc_roadsConnectedTo = [_coreFolder,"fn_roadsConnectedTo"] call gps_core_fnc_compile;
gps_core_fnc_insertFakeNode = [_coreFolder,"fn_insertFakeNode"] call gps_core_fnc_compile;
gps_core_fnc_getAllRoads = [_coreFolder,"fn_getAllRoads"] call gps_core_fnc_compile;
gps_core_fnc_generateNodePath = [_coreFolder,"fn_generateNodePath"] call gps_core_fnc_compile;
gps_core_fnc_generatePathHelpers = [_coreFolder,"fn_generatePathHelpers"] call gps_core_fnc_compile;

/** core algorithms **/
_core_algorithms = "algorithms";
gps_core_fnc_aStar = [_core_algorithms + "\AStar","fn_AStar"] call gps_core_fnc_compile;
gps_core_fnc_RDP = [_core_algorithms + "\RDP","fn_RDP"] call gps_core_fnc_compile;

/** core misc functions **/
_core_miscFolder = "misc";
misc_fnc_createMarker = [_core_miscFolder,"fn_createmarker"] call gps_core_fnc_compile;
misc_fnc_getRoadBoundingBoxWorld = [_core_miscFolder,"fn_getRoadBoundingBoxWorld"] call gps_core_fnc_compile;
misc_fnc_getRoadDir = [_core_miscFolder,"fn_getRoadDir"] call gps_core_fnc_compile;
misc_fnc_arePolygonsOverlapping = [_core_miscFolder,"fn_arePolygonsOverlapping"] call gps_core_fnc_compile;
misc_fnc_pointLineDist = [_core_miscFolder,"fn_pointLineDist"] call gps_core_fnc_compile;
misc_fnc_callScriptedEventHandlerReturn = [_core_miscFolder,"fn_callScriptedEventHandlerReturn"] call gps_core_fnc_compile;
misc_fnc_isHighway = [_core_miscFolder,"fn_isHighWay"] call gps_core_fnc_compile;

/** Priority Queue **/
misc_fnc_PQ_get = ["misc\PriorityQueue","fn_get"] call gps_core_fnc_compile;
misc_fnc_PQ_insert = ["misc\PriorityQueue","fn_insert"] call gps_core_fnc_compile;

/** Queue **/
misc_fnc_Q_get = ["misc\Queue","fn_get"] call gps_core_fnc_compile;
misc_fnc_Q_insert = ["misc\Queue","fn_insert"] call gps_core_fnc_compile;

/** HashTable (dictionary in this case) **/
_hashTableDir = "misc\hashTable";
misc_fnc_hashTable_find = [_hashTableDir,"fn_find"] call gps_core_fnc_compile;
misc_fnc_hashTable_set = [_hashTableDir,"fn_set"] call gps_core_fnc_compile;
misc_fnc_hashTable_create = [_hashTableDir,"fn_create"] call gps_core_fnc_compile;
misc_fnc_hashTable_exists = [_hashTableDir,"fn_exists"] call gps_core_fnc_compile;
misc_fnc_hashTable_deleteNameSpaces = [_hashTableDir,"fn_deleteNameSpaces"] call gps_core_fnc_compile;

["Compiling functions done"] call gps_core_fnc_log;

gps_core_init_done = false;
gps_fakeNodes = ["gps_fakeNodes"] call misc_fnc_hashTable_create;

[] call gps_core_fnc_mapRoutes;

systemChat "GPS Loaded";
