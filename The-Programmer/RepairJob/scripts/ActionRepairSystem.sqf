/*
    Author: ToxicRageTv && Jean-Park
    Teamspeak 3: ts.the-programmer.com
    Web site: www.the-programmer.com

    Terms of use:
      - This file is forbidden unless you have permission from the author. If you have this file without permission to use it please do not use it and do not share it.
      - If you have permission to use this file, you can use it on your server however it is strictly forbidden to share it.
      - Out of respect for the author please do not delete this information.
*/
_array = getArray (missionConfigFile >> "The_Programmer_Repair_Config" >> "Reparable_object");

if (player getVariable ["life_repairMan",false]) then {	
	if (life_action_inUse) exitWith {};
	_nearestObject = nearestTerrainObjects [player,[], 1.5];

	{
		_object = _x;
		_damage = getDammage _object;
		_exit = true;

		{
			if ((str _object) find _x > -1) exitWith {_exit = false;};
		} forEach _array;
		if (_exit) exitWith {};

		if ((_damage > 0.1) && !(_object isKindOf "Man") && !(_object isKindOf "Car") && !(_object isKindOf "Air") && !(_object isKindOf "Ship")) exitWith {
			[_object] spawn The_Programmer_RepairSystem_fnc_repairSystem;
		};
	} forEach _nearestObject;
};
