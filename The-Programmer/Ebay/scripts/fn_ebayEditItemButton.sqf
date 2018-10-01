#include "..\..\script_macros.hpp"
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
_listBox = _dialog displayCtrl 3483;

_uid = getPlayerUID player;
_price = ctrlText 3486;
_quantity = ctrlText 3485;

if (!([_price] call TON_fnc_isnumber)) exitWith {hint (["STR_ENTER_A_PRICE"] call maxence_ebay_fnc_localize);};
if (!([_quantity] call TON_fnc_isnumber)) exitWith {hint (["STR_ENTER_A_QUANTITY"] call maxence_ebay_fnc_localize);};
_price = parseNumber _price;
_quantity = parseNumber _quantity;
_data = maxence_ebay_data;

_title = ctrlText 3481;
_description = ctrlText 3482;
if (count (toArray (_title)) < 5) exitWith {hint (["STR_BAD_TITLE"] call maxence_ebay_fnc_localize);};
if (count (toArray (_description)) < 10) exitWith {hint (["STR_BAD_DESCRIPTION"] call maxence_ebay_fnc_localize);};
if (count (toArray (_title)) > 80) exitWith {hint (["STR_TITLE_TOO_LONG"] call maxence_ebay_fnc_localize);};

if ((lbCurSel 3484) isEqualTo -1) exitWith {hint (["STR_SELECT_A_TIME"] call maxence_ebay_fnc_localize);};
_dureeTAX = lbData[3484,(lbCurSel 3484)];
_dureeTAX = call compile format ["%1",_dureeTAX];

if (lbCurSel _listBox < 0) exitWith {hint (["STR_SELECT_AN_OBJECT"] call maxence_ebay_fnc_localize);};
_dataOffer = call compile (_listBox lbData (lbCurSel _listBox));

_priceToPay = round (_price * getNumber (missionConfigFile >> "Max_Settings_Ebay" >> "fee_sell_item"));
_priceToPay = _priceToPay + (_dureeTAX * getNumber (missionConfigFile >> "Max_Settings_Ebay" >> "price_per_day"));

_action = [
    format [(["STR_EDIT_CONFIRM_TEXT"] call maxence_ebay_fnc_localize),[_priceToPay] call life_fnc_numberText],
    (["STR_HEADER_EDIT"] call maxence_ebay_fnc_localize),
    (["STR_VALIDATE"] call maxence_ebay_fnc_localize),
    (["STR_UNDO"] call maxence_ebay_fnc_localize)
] call BIS_fnc_guiMessage;

if !(_action) exitWith {};

if (BANK < _priceToPay) exitWith {hint (["STR_NOT_ENOUGHT_MONEY"] call maxence_ebay_fnc_localize);};

[5,_price,(_dataOffer select 0),_dureeTAX,_title,_description] remoteExec ["maxence_ebay_fnc_ebayAddEntry",2];
hint (["STR_EDIT_IN_PROGRESS"] call maxence_ebay_fnc_localize);
BANK = BANK - _priceToPay;
uiSleep 3;
waitUntil {!(maxence_ebay_data isEqualTo _data)};

hint (["STR_PUBLISHED"] call maxence_ebay_fnc_localize);
closeDialog 0;
[] spawn maxence_ebay_fnc_openEbay;
[] spawn maxence_ebay_fnc_ebayLoadSellingItems;

[1] call SOCK_fnc_updatePartial;
