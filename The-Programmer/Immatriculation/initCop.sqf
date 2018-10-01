/*
_null=this execVM "The-Programmer\Immatriculation\initCop.sqf";
*/
_this allowDamage false; 
_this enableSimulation false;
_this addAction[(["STR_ADDACTION_SEARCH_PLATE"] call max_immat_fnc_localize), {createDialog "max_search_plate";},"",0,false,false,"",'playerSide == west'];