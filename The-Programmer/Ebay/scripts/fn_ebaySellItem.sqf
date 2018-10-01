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
if (life_action_inUse) exitWith {};
life_action_inUse = true;

disableSerialization;
_dialog = findDisplay 3480;
_listBox = _dialog displayCtrl 3483;
_able = getNumber (missionConfigFile >> "Max_Settings_Ebay" >> "maximum_ads_per_player");

_exit = false;
_realName = "";

_uid = getPlayerUID player;
_data = maxence_ebay_data;
if (({(_x select 5) isEqualTo _uid} count _data) >= _able) exitWith {hint format [(["STR_HIT_MAX_ADS"] call maxence_ebay_fnc_localize),_able]; closeDialog 0; life_action_inUse = false;};

_price = ctrlText 3486;
_quantity = ctrlText 3485;

if (!([_price] call TON_fnc_isnumber)) exitWith {hint (["STR_ENTER_A_PRICE"] call maxence_ebay_fnc_localize); life_action_inUse = false;};
if (!([_quantity] call TON_fnc_isnumber)) exitWith {hint (["STR_ENTER_A_QUANTITY"] call maxence_ebay_fnc_localize); life_action_inUse = false;};
_price = parseNumber _price;
_quantity = parseNumber _quantity;
if (_quantity < 1) exitWith {hint (["STR_ENTER_A_QUANTITY"] call maxence_ebay_fnc_localize); life_action_inUse = false;};

_title = ctrlText 3481;
_description = ctrlText 3482;
if (count (toArray (_title)) < 5) exitWith {hint (["STR_BAD_TITLE"] call maxence_ebay_fnc_localize); life_action_inUse = false;};
if (count (toArray (_description)) < 10) exitWith {hint (["STR_BAD_DESCRIPTION"] call maxence_ebay_fnc_localize); life_action_inUse = false;};
if (count (toArray (_title)) > 80) exitWith {hint (["STR_TITLE_TOO_LONG"] call maxence_ebay_fnc_localize); life_action_inUse = false;};
if (count (toArray (_description)) > 355) exitWith {hint (["STR_DESCRIPTION_TOO_LONG"] call maxence_ebay_fnc_localize); life_action_inUse = false;};

if ((lbCurSel 3484) isEqualTo -1) exitWith {hint (["STR_SELECT_A_TIME"] call maxence_ebay_fnc_localize); life_action_inUse = false;};
_dureeTAX = lbData[3484,(lbCurSel 3484)];
_dureeTAX = call compile format ["%1",_dureeTAX];

if (lbCurSel _listBox < 0) exitWith {hint (["STR_SELECT_AN_OBJECT"] call maxence_ebay_fnc_localize); life_action_inUse = false;};
_selectedSell = call compile (_listBox lbData (lbCurSel _listBox));
if (_selectedSell isEqualTo ["NULL"]) exitWith {hint (["STR_SELECT_AN_OBJECT"] call maxence_ebay_fnc_localize); life_action_inUse = false;};

_classname = _selectedSell select 0;
_type = _selectedSell select 1;

_priceToPay = round (_price * getNumber (missionConfigFile >> "Max_Settings_Ebay" >> "fee_sell_item"));
_priceToPay = _priceToPay + (_dureeTAX * getNumber (missionConfigFile >> "Max_Settings_Ebay" >> "price_per_day"));

switch (_type) do {
	case 0: {
		_realName = localize (ITEM_NAME(_classname));
		if (_quantity > 100) then {
			hint (["STR_DONT_HAVE_QUANTITY"] call maxence_ebay_fnc_localize);
			_exit = true;
		};
	};
	case 1: {
		if (_quantity > 1) then	{
			_onGuy = 0;
			_onGuy = _onGuy + ({_classname isEqualTo _x} count (magazines player));
			_onGuy = _onGuy + ({_classname isEqualTo _x} count (items player));
			if ((currentWeapon player) isEqualTo _classname) then {_onGuy = _onGuy + 1};
			if ((backpack player) isEqualTo _classname) then {_onGuy = _onGuy + 1};
			if ((vest player) isEqualTo _classname) then {_onGuy = _onGuy + 1};

			if (_onGuy < _quantity) then {
				hint (["STR_DONT_HAVE_QUANTITY"] call maxence_ebay_fnc_localize);
				_exit = true;
			};
		};
		_realName = ([_classname] call life_fnc_fetchCfgDetails) select 1;
	};
};

if (_exit) exitWith {life_action_inUse = false;};

_action = [
    format [(["STR_SELL_CONFIRM_TEXT"] call maxence_ebay_fnc_localize),[_priceToPay] call life_fnc_numberText],
    (["STR_HEADER_SELL"] call maxence_ebay_fnc_localize),
	(["STR_VALIDATE"] call maxence_ebay_fnc_localize),
	(["STR_UNDO"] call maxence_ebay_fnc_localize)
] call BIS_fnc_guiMessage;

if !(_action) exitWith {life_action_inUse = false;};

if (BANK < _priceToPay) exitWith {hint (["STR_NOT_ENOUGHT_MONEY"] call maxence_ebay_fnc_localize); life_action_inUse = false;};

switch (_type) do {
	case 0: {
		if (!([false,_classname,_quantity] call life_fnc_handleInv)) then {
			hint (["STR_DONT_HAVE_QUANTITY"] call maxence_ebay_fnc_localize);
			_exit = true;
		};
	};
	case 1: {
		_tquantity = _quantity + 1;
		for [{_i=1}, {_i<_tquantity}, {_i=_i+1}] do	{
			[_classname,false] spawn life_fnc_handleItem;
		};
	};
};

if (_exit) exitWith {};
[1,_type,_quantity,_price,(getPlayerUID player),_classname,_realName,((format ["%1 %2",identity_prenom,identity_nom])),_title,_description,_dureeTAX] remoteExec ["maxence_ebay_fnc_ebayAddEntry",2];
hint (["STR_PUBLISH_IN_PROGRESS"] call maxence_ebay_fnc_localize);
BANK = BANK - _priceToPay;
uiSleep 3;
waitUntil {!(maxence_ebay_data isEqualTo _data)};

hint (["STR_PUBLISHED"] call maxence_ebay_fnc_localize);
closeDialog 0;
[] spawn maxence_ebay_fnc_openEbay;

[1] call SOCK_fnc_updatePartial;
[3] call SOCK_fnc_updatePartial;
[6] call SOCK_fnc_updatePartial;
life_action_inUse = false;
