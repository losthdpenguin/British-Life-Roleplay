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
disableSerialization;
_dialog = findDisplay 3470;
_quantityList = _dialog displayCtrl 3475;

_data = _quantityList lbData (lbCurSel _quantityList);
_data = call compile format ["%1",_data];
_quantitySelected = _data select 0;
_pricePerItem = _data select 1;

_price = _pricePerItem * _quantitySelected;
(_dialog displayCtrl 3476) ctrlSetText format ["%1%2",[_price] call life_fnc_numberText,(["STR_MONEY"] call maxence_ebay_fnc_localize)];
