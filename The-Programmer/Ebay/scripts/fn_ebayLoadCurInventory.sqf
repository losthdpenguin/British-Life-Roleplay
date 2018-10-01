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
_select = param [0,0,[0]];

disableSerialization;
_dialog = findDisplay 3480;
(_dialog displayCtrl 3488) buttonSetAction "[] spawn maxence_ebay_fnc_ebaySellItem;";
ctrlShow [3488,true];

_listBox = _dialog displayCtrl 3483;
lbClear _listBox;

_playerInventoryArray = [];

if (_select isEqualTo 0) then {
	{ 
		_val = ITEM_VALUE(configName _x); 
		if (_val > 0) then {	
			_name = configName _x;	
			_playerInventoryArray pushBack [_name,_val,3,0];
		}; 
	} foreach ("true" configClasses (missionConfigFile >> "VirtualItems"));
} else {
	_magazines = magazines player;
	_items = items player;
	_weapons = currentWeapon player;
	_uniform = uniform player;
	_vest = vest player;
	_backpack = backpack player;

	{
		_index = -1;
		_curItemName = _x;
		_wasInArray = false;

		{
			_index = _index + 1;
			if ((_x select 0) isEqualTo _curItemName) then {
				_wasInArray = true;
				_playerInventoryArray set [_index,[_curItemName,(_x select 1)+1,3,1]];
			};
		} forEach _playerInventoryArray;

		if !(_wasInArray) then {
			_playerInventoryArray set [count _playerInventoryArray,[_curItemName,1,3,1]];
		};
	} forEach _magazines;

	{
		_index = -1;
		_curItemName = _x;
		_wasInArray = false;

		{
			_index = _index + 1;
			if ((_x select 0) isEqualTo _curItemName) then {
				_wasInArray = true;
				_playerInventoryArray set [_index,[_curItemName,(_x select 1)+1,3,1]];
			};
		} forEach _playerInventoryArray;

		if !(_wasInArray) then {
			_playerInventoryArray set [count _playerInventoryArray,[_curItemName,1,3,1]];
		};
	} forEach _items;

	if (_weapons != "") then {
		_index = -1;
		_wasInArray = false;

		{
			_index = _index + 1;
			if ((_x select 0) isEqualTo _weapons) then {
				_wasInArray = true;
				_playerInventoryArray set [_index,[_weapons,(_x select 1)+1,3,1]];
			};
		} forEach _playerInventoryArray;

		if !(_wasInArray) then {
			_playerInventoryArray set [count _playerInventoryArray,[_weapons,1,3,1]];
		};
	};

	if (_backpack != "") then {
		_playerInventoryArray pushBack [_backpack,1,3,1];
	};

	if (_vest != "") then {
		_index = -1;
		_wasInArray = false;

		{
			_index = _index + 1;
			if ((_x select 0) isEqualTo _vest) then {
				_wasInArray = true;
				_playerInventoryArray set [_index,[_vest,(_x select 1)+1,3,1]];
			};
		} forEach _playerInventoryArray;

		if !(_wasInArray) then {
			_playerInventoryArray set [count _playerInventoryArray,[_vest,1,3,1]];
		};
	};

	if (_uniform != "") then {
		_index = -1;
		_wasInArray = false;

		{
			_index = _index + 1;
			if ((_x select 0) isEqualTo _uniform) then {
				_wasInArray = true;
				_playerInventoryArray set [_index,[_uniform,(_x select 1)+1,3,1]];
			};
		} forEach _playerInventoryArray;

		if !(_wasInArray) then {
			_playerInventoryArray set [count _playerInventoryArray,[_uniform,1,3,1]];
		};
	};
};

if ((count _playerInventoryArray) isEqualTo 0) then {
	if (_select isEqualTo 0) then {
		_listBox lbAdd (["STR_NO_VITEMS"] call maxence_ebay_fnc_localize);
	} else {
		_listBox lbAdd (["STR_NO_WEAPONS"] call maxence_ebay_fnc_localize);
	};
	_listBox lbSetData [(lbSize _listBox)-1,format ["%1",["NULL"]]];
} else {
	{
		_item = _x select 0;
		_status = [_x,2,3,[3]] call BIS_fnc_param;
		_type = [_x,3,0,[0]] call BIS_fnc_param;
		_itemDisplayName = "";
		_pic = "";
		_quantity = _x select 1;

		if (_type isEqualTo 1) then {
			_itemDisplayName = ([_item] call life_fnc_fetchCfgDetails) select 1;
			_pic = [_item] call life_fnc_fetchCfgDetails select 2;
		} else {
			_itemDisplayName = localize (ITEM_NAME(_item));
			_pic = M_CONFIG(getText,"VirtualItems",_item,"icon");
		};

		_listBox lbAdd format ["[x%1] %2",_quantity,_itemDisplayName];
		_listBox lbSetPicture [(lbSize _listBox)-1,_pic];
		_listBox lbSetPictureColor [(lbSize _listBox)-1,[1,1,1,1]];
		_listBox lbSetData [(lbSize _listBox)-1,format ["%1",[_item,_type,_status,_quantity,0]]];
	} forEach _playerInventoryArray;
};
