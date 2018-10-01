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
_reasons = param [0,[],[[]]];
_pointsPermis = param [1,0,[0]];
_name = param [2,"",[""]];

_reasonsStr = "<t color='#0046ff'><t size='2'>%1</t></t><br/><t color='#ff0000'><t size='1.5'>";

_msgpoints = if (_pointsPermis == 0) then {(["STR_NO_DRIVER_LICENSE"] call max_permisPoints_fnc_localize);} else {(["STR_DRIVER_LICENSE"] call max_permisPoints_fnc_localize);};

_reasonsStr = _reasonsStr + _msgpoints;

if (count _reasons != 0) then {_reasonsStr = _reasonsStr + (["STR_OLD_CRIMES"] call max_permisPoints_fnc_localize);};

{
	_reasonsStr = _reasonsStr + format["- %1<br/>",_x select 0];
} foreach _reasons;


_message = format[_reasonsStr,_name,_pointsPermis];

hint parseText _message;
