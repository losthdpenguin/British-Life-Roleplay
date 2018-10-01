/*
_null=this execVM "The-Programmer\Entreprise\init.sqf";
*/
_this allowDamage false; 
_this enableSimulation false;
_this addAction[(["STR_ACTION_CREATE_ENTREPRISE","Max_Settings_Entreprise","Entreprise_Localization"] call theprogrammer_core_fnc_localize),max_entreprise_fnc_createEntrepriseMenu];