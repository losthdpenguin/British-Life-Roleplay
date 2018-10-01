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
_dialog = findDisplay 3490;
_listBox = _dialog displayCtrl 3491;

if (lbCurSel _listBox < 0) exitWith {hint (["STR_SELECT_AN_AD"] call maxence_ebay_fnc_localize);};
_data = call compile (_listBox lbData (lbCurSel _listBox));
if (_data isEqualTo ["NULL"]) exitWith {hint (["STR_SELECT_AN_AD"] call maxence_ebay_fnc_localize);};

_id = _data select 0;
_type = _data select 1;
_amount = _data select 2;
_data = _data select 3;
_item = _data select 0;
_iCheck = true;
_exit = false;
_diff = 0;

_found = [];
{
    _checkid = _x select 0;
    if (_checkid isEqualTo _id) then {
        _found pushBack _checkid;
    };
} forEach maxence_ebay_data;

if (_found isEqualTo []) exitWith {hint (["STR_ALREADY_SOLD"] call maxence_ebay_fnc_localize);};

switch (_type) do {
    case 0 : {
        _diff = [_item,_amount,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
        if (_diff < _amount) exitWith {hint localize "STR_NOTF_InvFull"; _exit = true;};
        [true,_item,_diff] call life_fnc_handleInv;
    }; 
    case 1 : {
        if (_amount > 1) then {
            _iCheck = [_item,_amount] call life_fnc_ebayCheckItem;
        };
        if !(_iCheck) exitWith {hint localize "STR_NOTF_InvFull"; _exit = true;};

        _tamount = _amount + 1;
        for [{_i=1}, {_i<_tamount}, {_i=_i+1}] do {
            [_item,true] call life_fnc_handleItem;
        };
    };
    case 2 : {
        [(getPlayerUID player),(_data select 1)] remoteExec ["maxence_ebay_fnc_ebayUpdateVehicle",2];
    };
    case 3 : {
        _key = _data select 1;
        _pos = _data select 2;

        _house = nearestObject [_pos,"House"];
        if (isNull _house) exitWith {};

        _marker = createMarkerLocal [format ["house_%1",(_house getVariable "uid")],(getPosATL _house)];
        _houseName = FETCH_CONFIG2(getText,"CfgVehicles",(typeOf _house),"displayName");
        _marker setMarkerTextLocal _houseName;
        _marker setMarkerColorLocal "ColorBlue";
        _marker setMarkerTypeLocal "loc_Lighthouse";

        [(getPlayerUID player),((format ["%1 %2",identity_prenom,identity_nom])),_key,_house] remoteExec ["maxence_ebay_fnc_ebayUpdateHouse",2];
        life_vehicles pushBack _house;
        life_houses pushBack [str(getPosATL _house),[]];
    };
};

if (_exit) exitWith {};

[_id] remoteExec ["maxence_ebay_fnc_ebayDeleteEntry",2];
hint (["STR_DELETE_IN_PROGRESS"] call maxence_ebay_fnc_localize);
uiSleep 3;

hint (["STR_DELETED"] call maxence_ebay_fnc_localize);
[] spawn maxence_ebay_fnc_ebayLoadSellingItems;

[3] call SOCK_fnc_updatePartial;
