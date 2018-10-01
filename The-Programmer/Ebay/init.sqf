/*
_null=this execVM "The-Programmer\Ebay\init.sqf";
*/
_this allowDamage false; 
_this enableSimulation false;
_this addAction [(["STR_EBAY_ADDACTION"] call maxence_ebay_fnc_localize),maxence_ebay_fnc_openEbay];