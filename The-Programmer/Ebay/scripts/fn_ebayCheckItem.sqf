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
_newItem = [_this,0,"",[""]] call BIS_fnc_param;
_amount = [_this,1,0,[0]] call BIS_fnc_param;
_can = false;

_newItemMass = 0;

if (isClass (configfile >> "CfgWeapons" >> _newItem)) then {
	if (isClass (configfile >> "CfgWeapons" >> _newItem >> "weaponSlotsInfo")) then {
		_newItemMass = getNumber (configfile >> "CfgWeapons" >> _newItem >> "weaponSlotsInfo" >> "mass");
	} else {
		_newItemMass = getNumber (configfile >> "CfgWeapons" >> _newItem >> "itemInfo" >> "mass");
	};
} else {
	if (isClass (configfile >> "CfgMagazines" >> _newItem)) then {
		_newItemMass = getNumber (configfile >> "CfgMagazines" >> _newItem >> "mass");
	} else {
		_newItemMass = getNumber (configfile >> "CfgVehicles" >> _newItem >> "mass");
	};
};
_newItemMass = (_newItemMass * _amount);

_storageItems = [];
_totalStorageItems = 0;
_storage = [];
_totalCargoSpace = 0;

if (backpack player != "") then {
	_storage pushBack backpack player;
	_storageItems = _storageItems + backPackItems player;
};

if (uniform player != "") then {
	_storage pushBack uniform player;
	_storageItems = _storageItems + uniformItems player;
};
if (vest player != "") then {
	_storage pushBack vest player;
	_storageItems = _storageItems + vestItems player;
};

if !((count _storage) isEqualTo 0) then {
	{
		_item = _x;
		_cargo = 0;
		_array = [];

		if !(_item isEqualTo "") then {
			if (isClass (configFile >> "CfgVehicles" >> _item)) then {
				_cargo = getNumber (configFile >> "cfgVehicles" >> _item >> "maximumLoad");
			} else {
				_array = toArray getText (configFile >> "CfgWeapons" >> _item >> "iteminfo" >> "containerClass");
				for "_i" from 6 to (count _array -1) do {
					_cargo=_cargo+10^(count _array - 1 - _i)*((_array select _i)-48);
				};
			};
		};
		_totalCargoSpace = _totalCargoSpace + _cargo;
	} forEach _storage;
};

if !((count _storageItems) isEqualTo 0) then {
	{
		_sitem = _x;
		_mass = 0;

		if (isClass (configfile >> "CfgWeapons" >> _sitem)) then {
			if (isClass (configfile >> "CfgWeapons" >> _sitem >> "weaponSlotsInfo")) then {
				_mass = getNumber (configfile >> "CfgWeapons" >> _sitem >> "weaponSlotsInfo" >> "mass");
			} else {
				_mass = getNumber (configfile >> "CfgWeapons" >> _sitem >> "itemInfo" >> "mass");
			};
		} else {
			if (isClass (configfile >> "CfgMagazines" >> _sitem)) then {
				_mass = getNumber (configfile >> "CfgMagazines" >> _sitem >> "mass");
			} else {
				_mass = getNumber (configfile >> "CfgVehicles" >> _sitem >> "mass");
			};
		};
		_totalStorageItems = _totalStorageItems + _mass;
	} forEach _storageItems;
};

_totalCargoSpace = _totalCargoSpace - _totalStorageItems;
_totalCargoSpace = _totalCargoSpace - _newItemMass;

if (_totalCargoSpace > _newItemMass) then {
	_can = true;
};

_can;
