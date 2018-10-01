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
_dialog = findDisplay 3480;
_quantityList = _dialog displayCtrl 3484;

if (lbCurSel _quantityList < 0) then {
    _pricePerItem = parseNumber (ctrlText 3486);

    _price = round (_pricePerItem * getNumber (missionConfigFile >> "Max_Settings_Ebay" >> "fee_sell_item"));
    (_dialog displayCtrl 3487) ctrlSetText format ["%1%2",[_price] call life_fnc_numberText,(["STR_MONEY"] call maxence_ebay_fnc_localize)];
} else {
    _data = parseNumber (_quantityList lbData (lbCurSel _quantityList));

    _pricePerItem = parseNumber (ctrlText 3486);

    _price = round (_pricePerItem * getNumber (missionConfigFile >> "Max_Settings_Ebay" >> "fee_sell_item"));
    _price = _price + (_data * getNumber (missionConfigFile >> "Max_Settings_Ebay" >> "price_per_day"));
    (_dialog displayCtrl 3487) ctrlSetText format ["%1%2",[_price] call life_fnc_numberText,(["STR_MONEY"] call maxence_ebay_fnc_localize)];
};
