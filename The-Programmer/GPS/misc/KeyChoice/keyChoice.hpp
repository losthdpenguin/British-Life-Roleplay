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
class choseKeyMenu {
	idd = 34564;
	movingEnable = 0;
	class controls {
		class IGUIBack_2200: A3GPS_IGUIBack
		{
			idc = 2200;
			colorText[] = {1, 1, 1, 1};
			colorBackground[] = {0,0,0,0.6};
			x = 0.340643 * safezoneW + safezoneX;
			y = 0.346994 * safezoneH + safezoneY;
			w = 0.334649 * safezoneW;
			h = 0.23801 * safezoneH;
		};
		class cancel_btn: A3GPS_RscButton
		{
			idc = 1600;
			text = "Annuler";
			x = 0.356579 * safezoneW + safezoneX;
			y = 0.517001 * safezoneH + safezoneY;
			w = 0.143421 * safezoneW;
			h = 0.0510022 * safezoneH;
		};
		class ok_btn: A3GPS_RscButton
		{
			idc = 1601;
			text = "OK";
			x = 0.515936 * safezoneW + safezoneX;
			y = 0.517001 * safezoneH + safezoneY;
			w = 0.143421 * safezoneW;
			h = 0.0510022 * safezoneH;
		};
		class header: A3GPS_RscText
		{
			idc = 1000;
			text = "Choisissez une touche";
			x = 0.356579 * safezoneW + safezoneX;
			y = 0.363994 * safezoneH + safezoneY;
			w = 0.310746 * safezoneW;
			h = 0.0680029 * safezoneH;
			sizeEx = 1.2 * GUI_GRID_H;
		};
		class key_txt: A3GPS_RscText
		{
			idc = 1001;
			text = "<>";
			x = 0.424064 * safezoneW + safezoneX;
			y = 0.448998 * safezoneH + safezoneY;
			w = 0.0757749 * safezoneW;
			h = 0.0510022 * safezoneH;
		};
	};
};