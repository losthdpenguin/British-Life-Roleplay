/*
_null=this execVM "The-Programmer\Immatriculation\init.sqf";
*/
_this allowDamage false; 
_this enableSimulation false;
_this addAction[(["STR_ADDACTION_CHANGE_PLATE"] call max_immat_fnc_localize),max_immat_fnc_newPlate];
_this addAction[(["STR_ADDACTION_MASK_PLATE"] call max_immat_fnc_localize),max_immat_fnc_maskPlate];