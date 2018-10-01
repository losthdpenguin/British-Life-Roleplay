if !(playerSide isEqualTo civilian) exitWith {hint "You are not allowed to use ebay !";};
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
if (isNil "maxence_ebay_loaded") exitWith {hint (["STR_EBAY_NOT_lOADED"] call maxence_ebay_fnc_localize);};

if !(dialog) then {
	waitUntil {createDialog "Maxence_Ebay_Main_Menu";};

	_display = findDisplay 3460;
	_listBox = _display displayCtrl 3461;

	_listBox ctrlAddEventHandler ["LBDblClick",{
	    _data = (_this select 0) lbData (_this select 1);
	    _data = call compile format ["%1",_data];

	    [_data] spawn maxence_ebay_fnc_ebayInfoItem;
	}];
};

disableSerialization;
_search = [_this,0,"",[""]] call BIS_fnc_param;

_display = findDisplay 3460;
_listBox = _display displayCtrl 3461;
_categoriesSearch = _display displayCtrl 3464;
lbClear _listBox;

if ((getText (missionConfigFile >> "Max_Settings_Ebay" >> "default_lang")) isEqualTo "fr") then {
	(_display displayCtrl 3463) ctrlSetText "The-Programmer\Ebay\textures\ebay_menu.paa";
} else {
	(_display displayCtrl 3463) ctrlSetText "The-Programmer\Ebay\textures\ebay_menu_en.paa";
};

if !((lbSize _categoriesSearch) isEqualTo 5) then {
	lbClear _categoriesSearch;
	{
		_categoriesSearch lbAdd (_x select 0);
		_categoriesSearch lbSetData [(lbSize _categoriesSearch)-1,str (_x select 1)];
	} forEach [[(["STR_CATEGORY_ALL"] call maxence_ebay_fnc_localize),-1],[(["STR_CATEGORY_VITEM"] call maxence_ebay_fnc_localize),0],[(["STR_CATEGORY_WEAPONS"] call maxence_ebay_fnc_localize),1],[(["STR_CATEGORY_VEHICLES"] call maxence_ebay_fnc_localize),2],[(["STR_CATEGORY_HOUSES"] call maxence_ebay_fnc_localize),3]];
	_categoriesSearch lbSetCurSel 0;
};

_allResults = maxence_ebay_data;

if !((lbCurSel _categoriesSearch) isEqualTo 0) then {
	_searchCategory = parseNumber (_categoriesSearch lbData (lbCurSel _categoriesSearch));

	if !(_searchCategory isEqualTo -1) then {
		_allResults = [];
		{
			if ((_x select 1) isEqualTo _searchCategory) then {
				_found = -1;

				if !(_search isEqualTo "") then {
					_found = ((_x select 3) select 1) find _search;
				} else {
					_found = 0;
				};

				if (_found != -1) then {
					_allResults pushBack _x;
				} else {
					_found = (_x select 9) find _search;
					if (_found != -1) then {
						_allResults pushBack _x;
					};
				};
			};
		} forEach maxence_ebay_data;
	};
};

if ((count _allResults) isEqualTo 0) then {
	_listBox lbAdd (["STR_NO_ITEM"] call maxence_ebay_fnc_localize);
	_listBox lbSetData [(lbSize _listBox)-1,format ["%1",["NULL"]]];
} else {
	{
		_curOffer = _x;
		_status = _curOffer select 7;
		if (_status isEqualTo 0) then {
			_type = _curOffer select 1;
			_itemQuantity = _curOffer select 2;
			_item = (_curOffer select 3) select 0;
			_sellerName = _curOffer select 6;
			_titre = _curOffer select 9;

			_itemName = "";
			_pic = "";
			_category = "";
    		_color = [255,255,255,1];

    		switch (_type) do {
    			case 0 : {
					_itemName = localize (ITEM_NAME(_item));
					_pic = M_CONFIG(getText,"VirtualItems",_item,"icon");
					_category = (["STR_CATEGORY_VITEM"] call maxence_ebay_fnc_localize);
					_color = [0,0.6,0.2,1];
    			};
    			case 1 : {
					_itemName = ([_item] call life_fnc_fetchCfgDetails) select 1;
					_pic = ([_item] call life_fnc_fetchCfgDetails) select 2;
					_category = (["STR_CATEGORY_WEAPONS"] call maxence_ebay_fnc_localize);
					_color = [0.95,0.2,0.2,1];
    			};
    			case 2 : {
					_vehicleInfo = [_item] call life_fnc_fetchVehInfo;
					_itemName = (_vehicleInfo select 3);
					_pic = (_vehicleInfo select 2);
					_category = (["STR_CATEGORY_VEHICLES"] call maxence_ebay_fnc_localize);
					_color = [0.2,0.4,1,1];
    			};
    			case 3 : {
    				_pos = mapGridPosition ((_curOffer select 3) select 2);
    				_posTEXT = format [(["STR_POSITION_HOUSE"] call maxence_ebay_fnc_localize),_pos];
					_itemName = format ["%1 %2",FETCH_CONFIG2(getText,"CfgVehicles",_item,"displayName"),_posTEXT];
					_pic = "";
					_category = (["STR_CATEGORY_HOUSES"] call maxence_ebay_fnc_localize);
					_color = [0.8,0.4,0,1];
    			};
    		};

			_listBox lbAdd format [(["STR_TITLE_AD"] call maxence_ebay_fnc_localize),_titre,_sellerName,_category,_itemQuantity];
			_listBox lbSetPicture [(lbSize _listBox)-1,_pic];
			_listBox lbSetPictureColor [(lbSize _listBox)-1,[1,1,1,1]];
			_listBox lbSetData [(lbSize _listBox)-1,format ["%1",_x]];
			_listBox lbSetColor [(lbSize _listBox)-1,_color];
		};
	} forEach _allResults;
};

if ((lbSize _listBox) isEqualTo 0) then {
	_listBox lbAdd (["STR_NO_ITEM"] call maxence_ebay_fnc_localize);
	_listBox lbSetData [(lbSize _listBox)-1,format ["%1",["NULL"]]];
};
