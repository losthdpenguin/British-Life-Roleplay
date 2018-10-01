#include "..\..\script_macros.hpp"
/*
    Author: ToxicRageTv && Jean-Park
    Teamspeak 3: ts.the-programmer.com
    Web site: www.the-programmer.com

    Terms of use:
      - This file is forbidden unless you have permission from the author. If you have this file without permission to use it please do not use it and do not share it.
      - If you have permission to use this file, you can use it on your server however it is strictly forbidden to share it.
      - Out of respect for the author please do not delete this information.
*/
_object = param [0,objNull,[objNull]];
if (isNull _object) exitWith {};

if (life_action_inUse) exitWith {};
if (player getVariable "restrained") exitWith {hint localize "STR_NOTF_isrestrained";};

_curconfig = missionConfigFile >> "The_Programmer_Repair_Config";

if ((getNumber (_curconfig >> "Cop_Repairing") isEqualTo 0) && (playerSide isEqualTo west)) exitWith {};
if ((getNumber (_curconfig >> "Medic_Repairing") isEqualTo 0) && (playerSide isEqualTo independent)) exitWith {};
if ((getNumber (_curconfig >> "Civ_Repairing") isEqualTo 0) && (playerSide isEqualTo civilian)) exitWith {};

if !(vehicle player isEqualTo player) exitWith {};

_side = switch (playerSide) do {
	case west: {"Cop"};
	case independent: {"Medic"};
	default {"Civilian"};
};

_repairRewardMin = getNumber(_curconfig >> _side >> "Repair_Reward_Min");
_repairRewardMax = getNumber(_curconfig >> _side >> "Repair_Reward_Max");
_repairReward = round (random (_repairRewardMax - _repairRewardMin)) + _repairRewardMin;

_cooldownTime = getNumber(_curconfig >> _side >> "Cooldown_Time");

if (missionNamespace getVariable ["life_cannotRepair",false]) exitWith {hint format [(["STR_CANT_REPAIR"] call The_Programmer_RepairSystem_fnc_localize),_cooldownTime];};
life_cannotRepair = true;
life_action_inUse = true;
_upp = (["STR_Nearby_Objects"] call The_Programmer_RepairSystem_fnc_localize);

disableSerialization;
"progressBar" cutRsc ["life_progress","PLAIN"];
_ui = uiNamespace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format ["%2 (1%1)...","%",_upp];
_progress progressSetPosition 0.01;
_cP = 0.01;
_exit = false;

for "_i" from 0 to 1 step 0 do {
	if (animationState player != "AinvPknlMstpSnonWnonDnon_medic_1") then {
		[player,"AinvPknlMstpSnonWnonDnon_medic_1",true] remoteExecCall ["life_fnc_animSync",RCLIENT];
		player switchMove "AinvPknlMstpSnonWnonDnon_medic_1";
		player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
	};

	uiSleep 0.27;
	_cP = _cP + 0.03;
	_progress progressSetPosition _cP;
	_pgText ctrlSetText format ["%3 (%1%2)...",round(_cP * 100),"%",_upp];
	if (_cP >= 1) exitWith {};
	if !(alive player) exitWith {_exit = true;};
	if !(isNull objectParent player) exitWith {_exit = true;};
};
if (_exit) exitWith {};

life_action_inUse = false;
"progressBar" cutText ["","PLAIN"];
player playActionNow "stop";

_damage = getDammage _object;

if ((_damage > 0.1) && !(_object isKindOf "Man") && !(_object isKindOf "Car") && !(_object isKindOf "Air") && !(_object isKindOf "Ship")) then {
	_object setDamage 0;
	The_Programmer_allobject pushback _object;
	publicVariable "The_Programmer_allobject";
};

CASH = CASH + _repairReward;

hint format [(["STR_MONEY_RECEIVE"] call The_Programmer_RepairSystem_fnc_localize),_repairReward];
[0] call SOCK_fnc_updatePartial;

sleep _cooldownTime;
life_cannotRepair = false;
