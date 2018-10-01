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
if (_data isEqualTo ["NULL"]) exitWith {};
_param = param [1,0,[0]];

waitUntil {createDialog "Maxence_Ebay_Sell_Menu";};

disableSerialization;
_display = findDisplay 3480;
_listBox = _display displayCtrl 3483;
_days = _display displayCtrl 3484;
_categoriesSearch = _display displayCtrl 3494;
lbClear _listBox;
lbClear _days;
lbClear _categoriesSearch;

if (_param isEqualTo 1) then {
    (_display displayCtrl 3483) buttonSetAction "closeDialog 0;";
} else {
    (_display displayCtrl 3483) buttonSetAction "closeDialog 0; [1] spawn maxence_ebay_fnc_ebayLoadSellingItems;";
};

if ((getText (missionConfigFile >> "Max_Settings_Ebay" >> "default_lang")) isEqualTo "fr") then {
    (_display displayCtrl 3490) ctrlSetText "The-Programmer\Ebay\textures\ebay_new_product.paa";
} else {
    (_display displayCtrl 3490) ctrlSetText "The-Programmer\Ebay\textures\ebay_new_product_en.paa";
};

ctrlSetText [3487,format ["--%1",(["STR_MONEY"] call maxence_ebay_fnc_localize)]];

{
    _categoriesSearch lbAdd (_x select 0);
    _categoriesSearch lbSetData [(lbSize _categoriesSearch)-1,str (_x select 1)];
} forEach [[(["STR_CATEGORY_ALL"] call maxence_ebay_fnc_localize),-1],[(["STR_CATEGORY_VITEM"] call maxence_ebay_fnc_localize),0],[(["STR_CATEGORY_WEAPONS"] call maxence_ebay_fnc_localize),1],[(["STR_CATEGORY_VEHICLES"] call maxence_ebay_fnc_localize),2],[(["STR_CATEGORY_HOUSES"] call maxence_ebay_fnc_localize),3]];
_categoriesSearch lbSetCurSel 0;

for "_i" from 1 to 60 do {
    _days lbAdd str _i;
    _days lbSetData [(lbSize _days)-1,str(_i)];
};

if !(_data isEqualTo []) then {
    ctrlEnable [3485,false];
    (_display displayCtrl 3481) ctrlSetText (_data select 9);
    (_display displayCtrl 3482) ctrlSetText (_data select 10);
    (_display displayCtrl 3485) ctrlSetText str (_data select 2);
    (_display displayCtrl 3486) ctrlSetText format ["%1",(_data select 4)];

    _item = (_data select 3) select 0;
    _itemDisplayName = "";
    _pic = "";

    switch (_data select 1) do {
        case 0: {
            _itemDisplayName = localize ITEM_NAME(_item);
            _pic = M_CONFIG(getText,"VirtualItems",_item,"icon");
        };
        case 1: {
            _itemDisplayName = ([_item] call life_fnc_fetchCfgDetails) select 1;
            _pic = [_item] call life_fnc_fetchCfgDetails select 2;
        };
        case 2: {
            _vehicleInfo = [_item] call life_fnc_fetchVehInfo;
            _itemDisplayName = (_vehicleInfo select 3);
            _pic = (_vehicleInfo select 2);
        };
        case 3: {
            _itemDisplayName = FETCH_CONFIG2(getText,"CfgVehicles",_item,"displayName");
        };
    };

    _listBox lbAdd format ["[x%2] %1",_itemDisplayName,(_data select 2)];
    _listBox lbSetData [(lbSize _listBox)-1,str(_data)];
    _listBox lbSetPicture [(lbSize _listBox)-1,_pic];
    _listBox lbSetPictureColor [(lbSize _listBox)-1,[1,1,1,1]];
    _listBox lbSetCurSel ((lbSize _listBox)-1);

    /*for "_i" from 0 to (lbSize _listBox)-1 do {
        _curData = _listBox lbData _i;
        _curData = call compile format ["%1",_curData];

        switch (_data select 1) do { 
            case 0 : {
                if ((_curData select 0) isEqualTo ((_data select 3) select 0)) exitWith {
                    _listBox lbSetCurSel _i;
                };
            };
            case 1 : {
                if ((_curData select 0) isEqualTo ((_data select 3) select 0)) exitWith {
                    _listBox lbSetCurSel _i;
                };
            };
            case 2 : {
                if ((_curData select 1) isEqualTo ((_data select 3) select 0)) exitWith {
                    _listBox lbSetCurSel _i;
                };
            };
            case 3 : {
                if ((_curData select 2) isEqualTo ((_data select 3) select 2)) exitWith {
                    _listBox lbSetCurSel _i;
                };
            };
        };
    };*/

    (_display displayCtrl 3488) buttonSetAction "[] spawn maxence_ebay_fnc_ebayEditItemButton;";

    (_display displayCtrl 3491) buttonSetAction "hint ([""STR_CANNOT_CHANGE_ITEM""] call maxence_ebay_fnc_localize);";
    (_display displayCtrl 3492) buttonSetAction "hint ([""STR_CANNOT_CHANGE_ITEM""] call maxence_ebay_fnc_localize);";
    (_display displayCtrl 3493) buttonSetAction "hint ([""STR_CANNOT_CHANGE_ITEM""] call maxence_ebay_fnc_localize);";
    (_display displayCtrl 3495) buttonSetAction "hint ([""STR_CANNOT_CHANGE_ITEM""] call maxence_ebay_fnc_localize);";
} else {
    (_display displayCtrl 3491) buttonSetAction "[0] spawn maxence_ebay_fnc_ebayCategories;";
    (_display displayCtrl 3492) buttonSetAction "[1] spawn maxence_ebay_fnc_ebayCategories;";
    (_display displayCtrl 3493) buttonSetAction "[2] spawn maxence_ebay_fnc_ebayCategories;";
    (_display displayCtrl 3495) buttonSetAction "[3] spawn maxence_ebay_fnc_ebayCategories;";

    _listBox lbAdd (["STR_SELECT_CATEGORY"] call maxence_ebay_fnc_localize);
    (_display displayCtrl 3488) buttonSetAction "hint ([""STR_SELECT_AN_OBJECT""] call maxence_ebay_fnc_localize);";
};
