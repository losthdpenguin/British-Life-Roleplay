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
_data = param [0,[],[[]]];
if ((_data isEqualTo []) || (_data isEqualTo ["NULL"])) exitWith {};
waitUntil {createDialog "Maxence_Ebay_Item_Data_Menu";};

disableSerialization;
_display = findDisplay 3470;
_quantityList = _display displayCtrl 3475;
_categoriesSearch = _display displayCtrl 3494;
_map = _display displayCtrl 3482;
lbClear _quantityList;
lbClear _categoriesSearch;
ctrlShow [3482,false];

if ((getText (missionConfigFile >> "Max_Settings_Ebay" >> "default_lang")) isEqualTo "fr") then {
    (_display displayCtrl 3478) ctrlSetText "The-Programmer\Ebay\textures\ebay_info_product.paa";
} else {
    (_display displayCtrl 3478) ctrlSetText "The-Programmer\Ebay\textures\ebay_info_product_en.paa";
};

{
    _categoriesSearch lbAdd (_x select 0);
    _categoriesSearch lbSetData [(lbSize _categoriesSearch)-1,str (_x select 1)];
} forEach [[(["STR_CATEGORY_ALL"] call maxence_ebay_fnc_localize),-1],[(["STR_CATEGORY_VITEM"] call maxence_ebay_fnc_localize),0],[(["STR_CATEGORY_WEAPONS"] call maxence_ebay_fnc_localize),1],[(["STR_CATEGORY_VEHICLES"] call maxence_ebay_fnc_localize),2],[(["STR_CATEGORY_HOUSES"] call maxence_ebay_fnc_localize),3]];
_categoriesSearch lbSetCurSel 0;

_type = _data select 1;
_quantityAvailable = _data select 2;
_item = (_data select 3) select 0;
_pricePerItem = _data select 4;
_sellerName = _data select 6;
_title = _data select 9;
_description = _data select 10;

(_display displayCtrl 3471) ctrlSetText _title;
(_display displayCtrl 3472) ctrlSetStructuredText parseText format ["<t color='#000000'>%1</t>",_description];
(_display displayCtrl 3474) ctrlSetText format ["%1%2",[_pricePerItem] call life_fnc_numberText,(["STR_MONEY"] call maxence_ebay_fnc_localize)];
(_display displayCtrl 3473) ctrlSetText format ["%1",_quantityAvailable];

ctrlSetText [3476,format ["--%1",(["STR_MONEY"] call maxence_ebay_fnc_localize)]];

_itemName = "";
_category = "";
_marker = "";

switch (_type) do {
    case 0 : {
        _itemName = localize (ITEM_NAME(_item));
        _category = (["STR_CATEGORY_VITEM"] call maxence_ebay_fnc_localize);
    }; 
    case 1 : {
        _itemName = ([_item] call life_fnc_fetchCfgDetails) select 1;
        _category = (["STR_CATEGORY_WEAPONS"] call maxence_ebay_fnc_localize);
    }; 
    case 2 : {
        _vehicleInfo = [_item] call life_fnc_fetchVehInfo;
        _itemName = (_vehicleInfo select 3);
        _category = (["STR_CATEGORY_VEHICLES"] call maxence_ebay_fnc_localize);
    };
    case 3 : {
        _itemName = FETCH_CONFIG2(getText,"CfgVehicles",_item,"displayName");
        _category = (["STR_CATEGORY_HOUSES"] call maxence_ebay_fnc_localize);

        ctrlShow [3482,true];
        _marker = createMarkerLocal [format ["ebay_%1",(getPlayerUID player)],((_data select 3) select 2)];
        _marker setMarkerTypeLocal "mil_dot";
        _marker setMarkerColorLocal "ColorGreen";
        _marker setMarkerTextLocal (["STR_HOUSE_POS"] call maxence_ebay_fnc_localize);
        _map ctrlMapanimadd [1,0.05,((_data select 3) select 2)];
        ctrlMapanimCommit _map;
    };
};

ctrlSetText [3479,_category];
ctrlSetText [3480,_itemName];
ctrlSetText [3481,_sellerName];

for "_i" from 1 to _quantityAvailable do {
	_quantityList lbAdd format ["%1 : %2%3",_i,[(_pricePerItem * _i)] call life_fnc_numberText,(["STR_MONEY"] call maxence_ebay_fnc_localize)];
	_quantityList lbSetData [(lbSize _quantityList)-1,str([_i,_pricePerItem])];
};

waitUntil {isNull _display};
deleteMarkerLocal _marker;
