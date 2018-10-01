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
_type = param [0,0,[0]];
if (_type isEqualTo 1) then {
	waitUntil {createDialog "Maxence_Ebay_My_Items_Menu";};

	_display = findDisplay 3490;
	_listBox = _display displayCtrl 3491;

	_listBox ctrlAddEventHandler ["LBDblClick",{
	    _data = (_this select 0) lbData (_this select 1);
	    _data = call compile format ["%1",_data];

	    [_data,1] spawn maxence_ebay_fnc_ebayInfoItem;
	}];
};

disableSerialization;
_search = param [1,"",[""]];

_display = findDisplay 3490;
_listBox = _display displayCtrl 3491;
_categoriesSearch = _display displayCtrl 3494;
lbClear _listBox;

if ((getText (missionConfigFile >> "Max_Settings_Ebay" >> "default_lang")) isEqualTo "fr") then {
	(_display displayCtrl 3492) ctrlSetText "The-Programmer\Ebay\textures\ebay_personnnal_account.paa";
} else {
	(_display displayCtrl 3492) ctrlSetText "The-Programmer\Ebay\textures\ebay_personnnal_account_en.paa";
};

if !((lbSize _categoriesSearch) isEqualTo 5) then {
	lbClear _categoriesSearch;
	{
		_categoriesSearch lbAdd (_x select 0);
		_categoriesSearch lbSetData [(lbSize _categoriesSearch)-1,str (_x select 1)];
	} forEach [[(["STR_CATEGORY_ALL"] call maxence_ebay_fnc_localize),-1],[(["STR_CATEGORY_VITEM"] call maxence_ebay_fnc_localize),0],[(["STR_CATEGORY_WEAPONS"] call maxence_ebay_fnc_localize),1],[(["STR_CATEGORY_VEHICLES"] call maxence_ebay_fnc_localize),2],[(["STR_CATEGORY_HOUSES"] call maxence_ebay_fnc_localize),3]];
	_categoriesSearch lbSetCurSel 0;
};

ctrlSetText [3487,format ["--%1",(["STR_MONEY"] call maxence_ebay_fnc_localize)]];

_allResults = [];
_uid = getPlayerUID player;
_price = 0;
_stat = "";

{
	if ((_x select 5) isEqualTo _uid) then {
		_allResults pushBack _x;
	};
} forEach maxence_ebay_data;

if !((lbCurSel _categoriesSearch) isEqualTo 0) then {
	_searchCategory = parseNumber (_categoriesSearch lbData (lbCurSel _categoriesSearch));
	if !(_searchCategory isEqualTo -1) then {
		_newData = [];
		{
			if ((_x select 1) isEqualTo _searchCategory) then {
				_found = -1;

				if !(_search isEqualTo "") then {
					_found = ((_x select 3) select 1) find _search;
				} else {
					_found = 0;
				};

				if (_found != -1) then {
					_newData pushBack _x;
				} else {			
					_found = (_x select 9) find _search;
					if (_found != -1) then {
						_newData pushBack _x;
					};
				};
			};
		} forEach _allResults;
		_allResults = _newData;
	};
};

if ((count _allResults) isEqualTo 0) then {
	_listBox lbAdd (["STR_YOU_HAVE_NO_ITEM"] call maxence_ebay_fnc_localize);
	_listBox lbSetData [(lbSize _listBox)-1,format ["%1",["NULL"]]];
} else {
	{
		_curOffer = _x;
		_type = _curOffer select 1;
		_itemQuantity = _curOffer select 2;
		_item = ((_curOffer select 3) select 0);
		_status = _curOffer select 7;
		_time = _curOffer select 8;
		_titre = _curOffer select 9;

		_stat = "";
		_itemDisplayName = "";
		_priceDisplay = "";
		_timeDisplay = "";
		_category = "";
		_color = [255,255,255,1];
		_pic = "";
		_sellerName = (format ["%1 %2",identity_prenom,identity_nom]);

	    _minutes = toArray(str (_time select 4));
	    if ((count _minutes) isEqualTo 1) then {
	     	_minutes = [48,(_minutes select 0)];
	     	_minutes = toString (_minutes);
	    } else {
	     	_minutes = toString (_minutes);
	    };

		_timeTEXT = format [(["STR_DATE_EXPIRATION"] call maxence_ebay_fnc_localize),(_time select 2),(_time select 1),(_time select 0),(_time select 3),_minutes];

		switch (_status) do {
			case 0: {_stat = (["STR_SOLDING"] call maxence_ebay_fnc_localize);};
			case 2: {_stat = (["STR_EXPIRATED"] call maxence_ebay_fnc_localize); _timeTEXT = "";};
			default {};
		};

		switch (_type) do {
			case 0: {
				_itemDisplayName = localize ITEM_NAME(_item);
				_pic = M_CONFIG(getText,"VirtualItems",_item,"icon");
				_category = (["STR_CATEGORY_VITEM"] call maxence_ebay_fnc_localize);
				_color = [0,0.6,0.2,1];
			};
			case 1: {
				_itemDisplayName = ([_item] call life_fnc_fetchCfgDetails) select 1;
				_pic = [_item] call life_fnc_fetchCfgDetails select 2;
				_category = (["STR_CATEGORY_WEAPONS"] call maxence_ebay_fnc_localize);
				_color = [0.95,0.2,0.2,1];
			};
			case 2: {
				_vehicleInfo = [_item] call life_fnc_fetchVehInfo;
				_itemDisplayName = (_vehicleInfo select 3);
				_pic = (_vehicleInfo select 2);
				_category = (["STR_CATEGORY_VEHICLES"] call maxence_ebay_fnc_localize);
				_color = [0.2,0.4,1,1];
			};
			case 3: {
				_itemDisplayName = FETCH_CONFIG2(getText,"CfgVehicles",_item,"displayName");
				_pic = "";
				_category = (["STR_CATEGORY_HOUSES"] call maxence_ebay_fnc_localize);
				_color = [0.8,0.4,0,1];
			};
		};

		_listBox lbAdd ((format [(["STR_TITLE_AD"] call maxence_ebay_fnc_localize),_titre,_sellerName,_category,_itemQuantity]) + " " + _stat + " " + _timeTEXT);
		_listBox lbSetPicture [(lbSize _listBox)-1,_pic];
		_listBox lbSetPictureColor [(lbSize _listBox)-1,[1,1,1,1]];
		_listBox lbSetData [(lbSize _listBox)-1,format ["%1",_x]];
		_listBox lbSetColor [(lbSize _listBox)-1,_color];
	} forEach _allResults;
};
