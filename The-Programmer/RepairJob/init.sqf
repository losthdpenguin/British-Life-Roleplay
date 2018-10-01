/*
_null=this execVM "The-Programmer\RepairSystem\init.sqf";
*/
_this allowDamage false; 
_this enableSimulation false;
_this addAction[(["STR_REPAIR_MENU"] call The_Programmer_RepairSystem_fnc_localize),The_Programmer_RepairSystem_fnc_repairMenu];