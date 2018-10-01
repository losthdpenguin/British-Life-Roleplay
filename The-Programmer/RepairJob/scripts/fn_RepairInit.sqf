/*
    Author: ToxicRageTv && Jean-Park
    Teamspeak 3: ts.the-programmer.com
    Web site: www.the-programmer.com

    Terms of use:
      - This file is forbidden unless you have permission from the author. If you have this file without permission to use it please do not use it and do not share it.
      - If you have permission to use this file, you can use it on your server however it is strictly forbidden to share it.
      - Out of respect for the author please do not delete this information.
*/
if (isNil "The_Programmer_allobject") then {
	The_Programmer_allobject = [];
	publicVariable "The_Programmer_allobject";
};
{
	_x setDamage 0;
} foreach The_Programmer_allobject;