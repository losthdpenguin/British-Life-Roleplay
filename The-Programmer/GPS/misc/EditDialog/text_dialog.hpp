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
class ac_text_dialog {
	idd = 1234567;
	class controls {
		class IGUIBack_2200: A3GPS_IGUIBack
		{
			idc = 2200;

			x = 0.370165 * safezoneW + safezoneX;
			y = 0.436966 * safezoneH + safezoneY;
			w = 0.257813 * safezoneW;
			h = 0.165 * safezoneH;
			colorBackground[] = {0,0,0,0.4};
		};
		class text_edit: A3GPS_RscEdit
		{
			idc = 1400;

			x = 0.374871 * safezoneW + safezoneX;
			y = 0.49296 * safezoneH + safezoneY;
			w = 0.2475 * safezoneW;
			h = 0.044 * safezoneH;
		};
		class enter_text: A3GPS_RscText
		{
			idc = 1000;

			text = "Please enter text";
			x = 0.37625 * safezoneW + safezoneX;
			y = 0.445998 * safezoneH + safezoneY;
			w = 0.242344 * safezoneW;
			h = 0.033 * safezoneH;
		};
		class okBtn: A3GPS_RscButton
		{
			idc = 1600;

			text = "OK";
			x = 0.376253 * safezoneW + safezoneX;
			y = 0.552038 * safezoneH + safezoneY;
			w = 0.113437 * safezoneW;
			h = 0.033 * safezoneH;
		};
		class NoBtn: A3GPS_RscButton
		{
			idc = 1601;

			text = "Cancel";
			x = 0.505672 * safezoneW + safezoneX;
			y = 0.552038 * safezoneH + safezoneY;
			w = 0.113437 * safezoneW;
			h = 0.033 * safezoneH;
		};
	};
};