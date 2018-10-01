/*
_null=this execVM "The-Programmer\PermisPoints\initCOP.sqf";
*/
_this allowDamage false;
_this enableSimulation false;
_this addAction["Driving License Check", {createDialog "Cop_points_search";},"",0,false,false,"",'playerSide == west'];
