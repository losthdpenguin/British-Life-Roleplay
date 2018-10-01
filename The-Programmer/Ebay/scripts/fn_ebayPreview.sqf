/*
    Author: Maxence Lyon
    Altis DEV: https://altisdev.com/user/maxence-lyon
    Teamspeak 3: ts.the-programmer.com
    Web site: www.the-programmer.com
    Steam: « Une Vache Sur CS – Maxence », please leave a message on my profile who says the exact reason before adding me.

    Terms of use:
        - This file is forbidden unless you have permission from the author. If you have this file without permission to use it please do not use it and do not share it.
        - If you have permission to use this file, you can use it on your server however it is strictly forbidden to share it.
        - Out of respect for the author please do not delete this information.

    License number:
    Server's name:
    Owner's name:
*/
_dialog = findDisplay 3460;
_myListbox = _dialog displayCtrl 3461;
if (lbCurSel _myListbox < 0) exitWith {};
_selectedOffer = call compile (_myListbox lbData (lbCurSel _myListbox));
if ((count _selectedOffer) isEqualTo 1) exitWith {};
_type = _selectedOffer select 1;

switch (_type) do {
	case 0 : {
		hint (["STR_CANNOT_PREVIEW_VITEM"] call maxence_ebay_fnc_localize);
	};
	case 1 : {
		closeDialog 0;
		_className = (_selectedOffer select 3) select 0;
		[_className] spawn maxence_ebay_fnc_ebayWeaponInit3DPreview;
	};
	case 2 : {
		closeDialog 0;
		_className = (_selectedOffer select 3) select 0;
		[_className] spawn maxence_ebay_fnc_ebayVehicleInit3DPreview;
	};
	case 3 : {
		closeDialog 0;
		_position = (_selectedOffer select 3) select 2;
		[_position] spawn maxence_ebay_fnc_ebayHouseInit3DPreview;
	};
};
