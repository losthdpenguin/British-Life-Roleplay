#include "macros.h"
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
params [
	["_path","",[""]],
	["_fileName","",[""]],
	["_disableHeader",false,[true]]
];

_fileName = format["%1.sqf",_fileName];

private _header = [format["private _thisFile = '%1';",_fileName],""] select _disableHeader;

compileFinal format["%1%2",
	_header,
	preprocessFileLineNumbers format
	["%1%2%3",
		"The-Programmer\GPS\gps_core\" + _path,
		if (_path isEqualTo "") then {""}else{"\"},
		_fileName
	]
];