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
_dialog = findDisplay 3460;
_myListbox = _dialog displayCtrl 3461;
if (lbCurSel _myListbox < 0) exitWith {hint (["STR_SELECT_AN_AD"] call maxence_ebay_fnc_localize); life_action_inUse = false;};
_selectedOffer = call compile (_myListbox lbData (lbCurSel _myListbox));

if ((lbCurSel 3475) isEqualTo -1) exitWith {hint (["STR_SELECT_A_QUANTITY"] call maxence_ebay_fnc_localize); life_action_inUse = false;};
_data = lbData [3475,(lbCurSel 3475)];
_data = call compile format ["%1",_data];
_amountToBuy = _data select 0;
_pricePerItem = _data select 1;

if ((count _selectedOffer) isEqualTo 1) exitWith {life_action_inUse = false;};

_id = _selectedOffer select 0;
_type = _selectedOffer select 1;
_amountAvailable = _selectedOffer select 2;
_data = _selectedOffer select 3;
_item = _data select 0;
_seller = _selectedOffer select 5;
_sellerName = _selectedOffer select 6;

_uid = getPlayerUID player;
_status = 2;
_diff = 0;
_unit = objNull;
_exit = false;
_oldVar = maxence_ebay_data;

if (_amountToBuy > _amountAvailable) exitWith {life_action_inUse = false;};
_amount = _amountToBuy;

_itemm = _item;

{
	_checkid = _x select 0;
	if (_checkid isEqualTo _id) then {
		_status = _x select 7;
	};
} forEach _oldVar;

if !(_status isEqualTo 0) exitWith {hint (["STR_ALREADY_SOLD"] call maxence_ebay_fnc_localize); life_action_inUse = false;};

_price = _amountToBuy * _pricePerItem;
if (BANK < _price) exitWith {hint (["STR_NOT_ENOUGHT_MONEY_BANK"] call maxence_ebay_fnc_localize); life_action_inUse = false;};

switch (_type) do { 
	case 0 : {
		_diff = [_item,_amount,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
		if (_diff < _amount) exitWith {hint localize "STR_NOTF_InvFull"; _exit = true;};
		[true,_item,_diff] call life_fnc_handleInv;
		_price = _diff * _pricePerItem;
	};
	case 1 : {
		_iCheck = [_item,_amount] call maxence_ebay_fnc_ebayCheckItem;
		if !(_iCheck) exitWith {hint localize "STR_NOTF_InvFull"; _exit = true;};
		_price = _amount * _pricePerItem;

		for "_i" from 1 to _amount do {
			[_itemm,true] call life_fnc_handleItem;
		};
	};
	case 2 : {
		[(getPlayerUID player),(_data select 1)] remoteExec ["maxence_ebay_fnc_ebayUpdateVehicle",2];
	};
	case 3 : {
		_key = _data select 1;
		_pos = _data select 2;

	    _house = nearestObject [_pos,"House"];
	    if (isNull _house) exitWith {_exit = true;};

	    _marker = createMarkerLocal [format ["house_%1",(_house getVariable "uid")],getPosATL _house];
	    _houseName = FETCH_CONFIG2(getText,"CfgVehicles",(typeOf _house),"displayName");
	    _marker setMarkerTextLocal _houseName;
	    _marker setMarkerColorLocal "ColorBlue";
	    _marker setMarkerTypeLocal "loc_Lighthouse";

		[(getPlayerUID player),((format ["%1 %2",identity_prenom,identity_nom])),_key,_house] remoteExec ["maxence_ebay_fnc_ebayUpdateHouse",2];
		life_vehicles pushBack _house;
		life_houses pushBack [str(getPosATL _house),[]];
	};
};

if (_exit) exitWith {life_action_inUse = false;};

BANK = BANK - _price;

{
	if ((getPlayerUID _x) isEqualTo _seller) exitWith {
		_unit = _x;
	};
} foreach playableUnits;

if (_amount isEqualTo _amountAvailable) then {
	if (isNull _unit) then {
		[_id,1] remoteExec ["maxence_ebay_fnc_ebayUpdateStatus",2];
		hint (["STR_BUY_IN_PROGRESS"] call maxence_ebay_fnc_localize);
		uiSleep 3;
		waitUntil {!(maxence_ebay_data isEqualTo _oldVar)};

		[0,[_price,_sellerName]] remoteExec ["maxence_ebay_fnc_ebayPayment",player];
	} else {
		[_id] remoteExec ["maxence_ebay_fnc_ebayDeleteEntry",2];
		hint (["STR_BUY_IN_PROGRESS"] call maxence_ebay_fnc_localize);
		uiSleep 3;
		waitUntil {!(maxence_ebay_data isEqualTo _oldVar)};

		[0,[_price,name _unit]] remoteExec ["maxence_ebay_fnc_ebayPayment",player];
		[1,[_price,(format ["%1 %2",identity_prenom,identity_nom])]] remoteExec ["maxence_ebay_fnc_ebayPayment",_unit];
	};
} else {
	_diff = _amountAvailable - _amount;
	if (isNull _unit) then {
		[4,_id,_amount,_diff,_selectedOffer] remoteExec ["maxence_ebay_fnc_ebayAddEntry",2];
		[_id,1] remoteExec ["maxence_ebay_fnc_ebayUpdateStatus",2];
		hint (["STR_BUY_IN_PROGRESS"] call maxence_ebay_fnc_localize);
		uiSleep 3;
		waitUntil {!(maxence_ebay_data isEqualTo _oldVar)};

		[0,[_price,_sellerName]] remoteExec ["maxence_ebay_fnc_ebayPayment",player];
	} else {
		[_id,_diff] remoteExec ["maxence_ebay_fnc_ebayUpdateQuantity",2];
		hint (["STR_BUY_IN_PROGRESS"] call maxence_ebay_fnc_localize);
		uiSleep 3;
		waitUntil {!(maxence_ebay_data isEqualTo _oldVar)};

		[0,[_price,name _unit]] remoteExec ["maxence_ebay_fnc_ebayPayment",player];
		[1,[_price,(format ["%1 %2",identity_prenom,identity_nom])]] remoteExec ["maxence_ebay_fnc_ebayPayment",_unit];
	};
};

closeDialog 0;
[] spawn maxence_ebay_fnc_openEbay;

[1] call SOCK_fnc_updatePartial;
[3] call SOCK_fnc_updatePartial;
life_action_inUse = false;
