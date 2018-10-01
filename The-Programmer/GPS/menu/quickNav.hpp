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
class GPS_quickNav {
	idd = 369853;
	duration = 9999999;
	onLoad="_this call gps_menu_fnc_loadQuickNav";
	class Controls {
		class RscButton_1600: A3GPS_RscButton
		{
			idc = 1600;
			x = -0.00603843 * safezoneW + safezoneX;
			y = 0.279091 * safezoneH + safezoneY;
			w = 0.183286 * safezoneW;
			h = 0.034 * safezoneH;
		};
		class RscStructuredText_1100: A3GPS_RscStructuredText
		{
			idc = 1100;
			text = "<t align='center'>Quick nav</t>";
			x = -0.00610069 * safezoneW + safezoneX;
			y = 0.245 * safezoneH + safezoneY;
			w = 0.183286 * safezoneW;
			h = 0.034 * safezoneH;
			colorBackground[] = {-1,-1,-1,0.8};
		};
	};
};