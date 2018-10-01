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
class colorPicker
{
	idd = 30705;
	class controlsBackground {
		class Background: A3GPS_IGUIBack
		{
			idc = 2200;
			x = 0.30875 * safezoneW + safezoneX;
			y = 0.33 * safezoneH + safezoneY;
			w = 0.366562 * safezoneW;
			h = 0.34 * safezoneH;
			colorBackground[] = {0,0,0,0.6};
		};
	};
	class controls {
		class R_slider: A3GPS_RscSlider
		{
			idc = 1900;
			text = "R";
			x = 0.348594 * safezoneW + safezoneX;
			y = 0.415 * safezoneH + safezoneY;
			w = 0.278906 * safezoneW;
			h = 0.034 * safezoneH;
		};
		class G_slider: A3GPS_RscSlider
		{
			idc = 1901;
			x = 0.348594 * safezoneW + safezoneX;
			y = 0.483 * safezoneH + safezoneY;
			w = 0.278906 * safezoneW;
			h = 0.034 * safezoneH;
		};
		class B_slider: A3GPS_RscSlider
		{
			idc = 1902;
			x = 0.348594 * safezoneW + safezoneX;
			y = 0.551 * safezoneH + safezoneY;
			w = 0.278906 * safezoneW;
			h = 0.034 * safezoneH;
		};
		class pick_btn: A3GPS_RscButton
		{
			idc = 1600;
			text = "Pick";
			x = 0.324687 * safezoneW + safezoneX;
			y = 0.619 * safezoneH + safezoneY;
			w = 0.103594 * safezoneW;
			h = 0.034 * safezoneH;
		};
		class cancel_btn: A3GPS_RscButton
		{
			idc = 1601;
			text = "Cancel";
			x = 0.555781 * safezoneW + safezoneX;
			y = 0.619 * safezoneH + safezoneY;
			w = 0.103594 * safezoneW;
			h = 0.034 * safezoneH;
		};
		class main_header: A3GPS_RscText
		{
			idc = 1000;
			text = "RGB color picker";
			x = 0.316719 * safezoneW + safezoneX;
			y = 0.347 * safezoneH + safezoneY;
			w = 0.342656 * safezoneW;
			h = 0.034 * safezoneH;
		};
		class current_color: A3GPS_IGUIBack
		{
			idc = 1800;
			x = 0.452187 * safezoneW + safezoneX;
			y = 0.619 * safezoneH + safezoneY;
			w = 0.0796875 * safezoneW;
			h = 0.034 * safezoneH;
		};
		class R_text: A3GPS_RscText
		{
			idc = 1001;
			text = "R";
			x = 0.316719 * safezoneW + safezoneX;
			y = 0.415 * safezoneH + safezoneY;
			w = 0.0159375 * safezoneW;
			h = 0.034 * safezoneH;
		};
		class G_text: A3GPS_RscText
		{
			idc = 1002;
			text = "G";
			x = 0.316719 * safezoneW + safezoneX;
			y = 0.483 * safezoneH + safezoneY;
			w = 0.0159375 * safezoneW;
			h = 0.034 * safezoneH;
		};
		class B_text: A3GPS_RscText
		{
			idc = 1003;
			text = "B"; //--- ToDo: Localize;
			x = 0.316719 * safezoneW + safezoneX;
			y = 0.551 * safezoneH + safezoneY;
			w = 0.0159375 * safezoneW;
			h = 0.034 * safezoneH;
		};
	};
};