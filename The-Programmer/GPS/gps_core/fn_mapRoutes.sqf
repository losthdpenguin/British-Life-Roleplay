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
scriptName "gps_virtual_mapping";

["<<< MapRoutes init >>>"] call gps_core_fnc_log;
_start = diag_tickTime;

["getting roads ..."] call gps_core_fnc_log;
gps_allRoads = [] call gps_core_fnc_getAllRoads;
["done in " + str round (diag_tickTime - _start)] call gps_core_fnc_log;

private _gps_allRoadsWithInter = [];

gps_allCrossRoadsWithWeight = ["gps_allCrossRoadsWithWeight"] call misc_fnc_hashTable_create;
gps_roadsWithConnected =  ["gps_roadsWithConnected"] call misc_fnc_hashTable_create;

["mapping road intersect ..."] call gps_core_fnc_log;
_ri_start = diag_tickTime;

// Still searching an efficient way to detect overlapping roads connection
_gps_allRoadsWithInter = gps_allRoads apply { 
  private _road = _x;
  private _near = getPosATL _road nearRoads 15;
  private _connected = roadsConnectedTo _road;

  if (count _connected > 1) then {
    {
      if(count (roadsConnectedTo _x) < 3) then {
        _rID = str _x;
        _connected pushBack _x;
        if([gps_roadsWithConnected,_rID] call misc_fnc_hashTable_exists) then {
          ([gps_roadsWithConnected,_rID] call misc_fnc_hashTable_find) pushBack _road;
        }else{
          [gps_roadsWithConnected,_rID,[_road]] call misc_fnc_hashTable_set;
        };
      };
    }foreach ((_near - _connected) - [_road]);
  };
  
  _currentConnected = [gps_roadsWithConnected,str _road] call misc_fnc_hashTable_find;
  if(isNil "_currentConnected") then {
      [gps_roadsWithConnected,str _road,_connected] call misc_fnc_hashTable_set;
  }else{
      _currentConnected append _connected;
  };
  [_road,_connected]
};

["done in " + str round (diag_tickTime - _ri_start)] call gps_core_fnc_log;
["mapping node values ..."] call gps_core_fnc_log;
_nv_start = diag_tickTime;

{
  _connected = [gps_roadsWithConnected,str (_x select 0)] call misc_fnc_hashTable_find;
  if (count _connected > 2) then {
    _x call gps_core_fnc_mapNodeValues;
  };
  false
}count _gps_allRoadsWithInter;

["done in " + str round (diag_tickTime - _nv_start)] call gps_core_fnc_log;
[format ["Maproutes init done in %1s",round (diag_tickTime - _start)]] call gps_core_fnc_log;

gps_core_init_done = true;
[missionNameSpace,"gps_core_loaded",[]] call BIS_fnc_callScriptedEventHandler;