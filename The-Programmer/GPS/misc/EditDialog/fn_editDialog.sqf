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
private["_headerText","_display","_header","_status","_parent","_result"];
disableSerialization;
_parent = param [1,[] call bis_fnc_displayMission,[displayNull]];
_headerText = param [0,"Enter Text",[""]];

if(!canSuspend) exitWith {};
if(!isNull findDisplay 1234567) exitWith {};
_parent createDisplay "ac_text_dialog";
_display = findDisplay 1234567;

_header = _display displayCtrl 1000;
_edit = _display displayCtrl 1400;
_btnOK =_display displayCtrl 1600; 
_btnCancel  =_display displayCtrl 1601;

_header ctrlSetText _headerText;

uinamespace setvariable ["ac_message_status",nil];
_ehKeyDown = _display displayaddeventhandler ["keydown","if ((_this select 1) == 1) then {uinamespace setvariable ['ac_message_status',false]; true} else {false}"];
_btnOK ctrlAddEventHandler ["ButtonClick",{uinamespace setvariable ['ac_message_status',true]; true}];
_btnCancel ctrlAddEventHandler ["ButtonClick",{uinamespace setvariable ['ac_message_status',false]; true}];

waitUntil {!isNil {uinamespace getvariable "ac_message_status"};};

_status = uinamespace getvariable "ac_message_status";
uinamespace setvariable ["ac_message_status",nil];
_display displayremoveeventhandler ["keydown",_ehKeyDown];

_result = "";

if(_status) then {
	_result = ctrlText _edit;
};

_display closeDisplay 0;

_result