/*
    Author: ToxicRageTv && Jean-Park
    Teamspeak 3: ts.the-programmer.com
    Web site: www.the-programmer.com

    Terms of use:
      - This file is forbidden unless you have permission from the author. If you have this file without permission to use it please do not use it and do not share it.
      - If you have permission to use this file, you can use it on your server however it is strictly forbidden to share it.
      - Out of respect for the author please do not delete this information.
*/
_curconfig = missionConfigFile >> "The_Programmer_Repair_Config";

if ((getNumber (_curconfig >> "Cop_Repairing") isEqualTo 0) && (playerSide isEqualTo west)) exitWith {hint (['STR_NOT_ACCES'] call The_Programmer_RepairSystem_fnc_localize);};
if ((getNumber (_curconfig >> "Medic_Repairing") isEqualTo 0) && (playerSide isEqualTo independent)) exitWith {hint (['STR_NOT_ACCES'] call The_Programmer_RepairSystem_fnc_localize);};
if ((getNumber (_curconfig >> "Civ_Repairing") isEqualTo 0) && (playerSide isEqualTo civilian)) exitWith {hint (['STR_NOT_ACCES'] call The_Programmer_RepairSystem_fnc_localize);};

_exit = false;
if (getNumber (_curConfig >> "allow_repairing_without_licenses") isEqualTo 0) then {
	  _exit = true;

    {
        if (missionNamespace getVariable [_x,false]) exitWith {_exit = false;};
    } forEach getArray (_curConfig >> "allowed_licenses");
};

if (_exit) exitWith {hint (['STR_NOT_LICENCE'] call The_Programmer_RepairSystem_fnc_localize); };

if (player getVariable ["life_repairMan",false]) then {
    hint parseText (['STR_LEAVE_JOB'] call The_Programmer_RepairSystem_fnc_localize);
    player setVariable ['life_repairMan',false];
} else {
    hint parseText (['STR_BECAME_REPAIR_MAN'] call The_Programmer_RepairSystem_fnc_localize);
    player setVariable ['life_repairMan',true];
};

closeDialog 0;
