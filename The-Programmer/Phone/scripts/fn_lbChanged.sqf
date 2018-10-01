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
private["_message","_data","_nameOnPList","_text", "_delButton","_replyButton","_time","_timeArray","_year","_month","_day","_hour","_minutes"];
disableSerialization;
_text = ((findDisplay 98111) displayCtrl 98113);
_data = lbData[98112,lbCurSel (98112)];
_delButton = ((findDisplay 98111) displayCtrl 98114);
_replyButton = ((findDisplay 98111) displayCtrl 98115);

if(_data == (["STR_NO_MESSAGE"] call max_phone_fnc_localize)) then {
   _text ctrlSetText (["STR_NO_MESSAGE"] call max_phone_fnc_localize);
} else {
   _data = call compile _data;

   _nameOnPList = _data select 0;
   _message = _data select 1;
   
   _time = _data select 2;
   _timeArray = _time select 1;
   _year = _timeArray select 0;
   _month = _timeArray select 1;
   _day = _timeArray select 2;
   _hour = _timeArray select 3;
   _minutes = _timeArray select 4;
   
   _minutes = toArray(str _minutes);

   if (count _minutes isEqualTo 1) then {
       _minutes = [48,(_minutes select 0)];
       _minutes = toString (_minutes);
   } else {
       _minutes = toString (_minutes);
   };

    {
       if (_x select 1 isEqualTo _nameOnPList) exitWith {
          _nameOnPList = _x select 0;
       };
    } foreach maxence_contact;

   _text ctrlSetText format [(["STR_INFO_OLD_MESSAGE"] call max_phone_fnc_localize),_message,_nameOnPList,_day,_month,_year,_hour,_minutes];
   _delButton ctrlShow true;
   _replyButton ctrlShow true;
};