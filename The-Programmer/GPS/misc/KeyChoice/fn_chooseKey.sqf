/*
    Author: [Utopia] Amaury
    Altis DEV: https://altisdev.com/user/amauryd
    Web site: www.the-programmer.com
    Teamspeak 3: ts.the-programmer.com
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

params [["_parent",findDisplay 46,[displayNull]],["_defaultKey",-1,[0]]];

private _display = _parent createDisplay "choseKeyMenu";
private _keyText = _display displayCtrl 1001;

(_display displayCtrl 1600) ctrlSetText (["STR_CANCEL"] call gps_fnc_localize);
(_display displayCtrl 1601) ctrlSetText (["STR_OK"] call gps_fnc_localize);
(_display displayCtrl 1000) ctrlSetText (["STR_MENU_KEY_CHOICE"] call gps_fnc_localize);

if (!canSuspend) exitWith {systemChat "can't suspend here"};

uinamespace setvariable ["lvl_currChosenKey",_defaultKey];
uinamespace setvariable ["lvl_currChosenKey_status",nil];

if (_defaultKey != -1) then {
	_keyText ctrlSetText keyName _defaultKey;
};

_ctrlButtonOK = _display displayCtrl 1601;
_ctrlButtonCancel  = _display displayCtrl 1600;

_ctrlButtonOK ctrlseteventhandler ["buttonclick","uinamespace setvariable ['lvl_currChosenKey_status',true]; true"];
_ctrlButtonCancel ctrlseteventhandler ["buttonclick","uinamespace setvariable ['lvl_currChosenKey_status',false]; true"];
_display displayaddeventhandler ["unload","uinamespace setvariable ['lvl_currChosenKey_status',false];"];
_ehKeyDown = _display displayaddeventhandler ["keydown",{
	params ["_display","_key"];

	(_display displayCtrl 1001) ctrlSetText (keyName _key);
	uinamespace setvariable ['lvl_currChosenKey',_key];
	true
}];

waituntil {!isnil {uinamespace getvariable "lvl_currChosenKey_status"}};

_display closeDisplay 0;

uinamespace getvariable "lvl_currChosenKey";