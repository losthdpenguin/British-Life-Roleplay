/*
    Author: GetSomePanda & Maxence Lyon
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
private["_messages","_lbSelectedData","_name","_msg","_time"];
disableSerialization;
_messages = player getVariable "maxence_messages";
_lbSelectedData = lbData[98112,lbCurSel (98112)];
_lbSelectedData = call compile _lbSelectedData;
_name = _lbSelectedData select 0;
_msg = _lbSelectedData select 1;
_time = _lbSelectedData select 2;

_messages = _messages - [[_name,_msg,_time]];

player setVariable ["maxence_messages",_messages];
[] spawn max_phone_fnc_messagesMenu;
[getPlayerUid player,(player getVariable "maxence_messages")] remoteExecCall ["max_phone_fnc_saveCellPhone",2];

{
   if (_x select 1 isEqualTo _name) exitWith {
      _name = _x select 0;
   };
} foreach maxence_contact;

hint format[(["STR_DELETE_MESSAGE"] call max_phone_fnc_localize),_name,_msg];