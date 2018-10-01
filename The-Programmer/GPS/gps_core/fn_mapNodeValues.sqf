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
   "_crossRoad",
   "_linkedTo",
   ["_exceptions",[],[[]]]
];

private _linkedCrossRoads = [];
private _crossRoad_isHighWay = [_crossRoad] call misc_fnc_isHighWay;

{
  private _currRoad = _x;
  private _segmentValue = 0;
  private _previous = _crossRoad;

  // faster than while {true}
  for "_i" from 0 to 1 step 0 do {
    _connected = [_currRoad] call gps_core_fnc_roadsConnectedTo;
    if (isNil "_connected") exitWith {}; // has this error on Tanoa , i don't know why
    _countConnected = count _connected;
    _segmentValue = _segmentValue + (_previous distance2D _currRoad);

    if(_countConnected > 2 || _currRoad in _exceptions || _countConnected isEqualTo 1) exitWith {  
      _currRoad_isHighWay = [_currRoad] call misc_fnc_isHighWay;
      if(_currRoad_isHighWay && _crossRoad_isHighWay) then {
        _segmentValue = (_segmentValue / 3); 
      };
      _linkedCrossRoads pushBack [_currRoad,_segmentValue];
    };

    _old = _currRoad;
    _currRoad = (_connected select { !(_x isEqualTo _previous) }) param [0,_old];
    _previous = _old;
    if(_currRoad isEqualTo _old) exitWith {};
  };
  false // it's a count , we need to return a boolean , i use it because it's a little faster than foreach
} count _linkedTo;

[gps_allCrossRoadsWithWeight,str _crossRoad,_linkedCrossRoads] call misc_fnc_hashTable_set;

_linkedCrossRoads