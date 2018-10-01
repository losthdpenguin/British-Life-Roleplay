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
class gps_hud
{
	idd =987654;
	duration = 9999999;
	onLoad="_this call gps_menu_fnc_loadHud";

	class controlsBackground {
		class gps_map:A3GPS_RscMapControl
		{
			idc = 2201;
			mapOrientation = 1;
			moveOnEdges = 1;
			showCountourInterval = 1;

			x = -0.00210969 * safezoneW + safezoneX;
			y = 0.313012 * safezoneH + safezoneY;
			w = 0.21519 * safezoneW;
			h = 0.30598 * safezoneH;
			alphaFadeStartScale = 0;
			alphaFadeEndScale = 0;
			colorBackground[] = {0,0,0,0.7};
			colorForest[] = {0,0,0,0};
			colorRocks[] = {0,0,0,0};
			colorForestBorder[] = {0,0,0,0};
			colorRocksBorder[] = {0,0,0,0};
			colorLevels[] = {0,0,0,0};
			colorPowerLines[] = {0,0,0,0};
			colorRailWay[] = {0,0,0,0};
			colorMainCountlines[] = {0,0,0,0};
			colorCountlinesWater[] = {0,0,0,0};
			colorCountlines[] = {0,0,0,0};
			scaleMin = 0.1;
			scaleMax = 0.1;
			class Tree
			{
				color[] =  {0,0,0,0};
				icon = "\A3\ui_f\data\map\mapcontrol\bush_ca.paa";
				size = 12;
				importance = "0.9 * 16 * 0.05";
				coefMin = 0.25;
				coefMax = 4;
			};
			class SmallTree
			{
				color[] =  {0,0,0,0};
				icon = "\A3\ui_f\data\map\mapcontrol\bush_ca.paa";
				size = 12;
				importance = "0.6 * 12 * 0.05";
				coefMin = 0.25;
				coefMax = 4;
			};
			class Bush
			{
				color[] =  {0,0,0,0};
				icon = "\A3\ui_f\data\map\mapcontrol\bush_ca.paa";
				size = "14/2";
				importance = "0.2 * 14 * 0.05 * 0.05";
				coefMin = 0.25;
				coefMax = 4;
			};
			class Rock
			{
				color[] =  {0,0,0,0};
				icon = "\A3\ui_f\data\map\mapcontrol\rock_ca.paa";
				size = 12;
				importance = "0.5 * 12 * 0.05";
				coefMin = 0.25;
				coefMax = 4;
			};
		};
	};

	class controls {
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT START (by AmauryD, v1.063, #Zavato)
		////////////////////////////////////////////////////////
		class status_text:A3GPS_RscText
		{
			idc = 1000;

			x = -0.00210969 * safezoneW + safezoneX;
			y = 0.618996 * safezoneH + safezoneY;
			w = 0.21519 * safezoneW;
			h = 0.0339977 * safezoneH;
			colorBackground[] = {0,0,0,0.9};
			sizeEx = 0.025;
		};

		class status_picture:A3GPS_RscPicture
		{
			idc = 1200;

			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = -0.00210969 * safezoneW + safezoneX;
			y = 0.313012 * safezoneH + safezoneY;
			w = 0.04782 * safezoneW;
			h = 0.0849944 * safezoneH;
			colorBackground[] = {1,1,1,1};
		};
		class goal_distance:A3GPS_RscText
		{
			idc = 1002;

			x = 0.13526 * safezoneW + safezoneX;
			y = 0.313012 * safezoneH + safezoneY;
			w = 0.07782 * safezoneW;
			h = 0.0339977 * safezoneH;
			colorBackground[] = {0,0,0,0.5};
			sizeEx = 0.032;
			style = ST_CENTER;
		};
		class goal_image:A3GPS_RscPicture
		{
			idc = 1201;

			text = "A3\ui_f\data\Map\Markers\Military\flag_CA.paa";
			x = 0.133438 * safezoneW + safezoneX;
			y = 0.313 * safezoneH + safezoneY;
			w = 0.015938 * safezoneW;
			h = 0.0340017 * safezoneH;
			colorBackground[] = {0,0,0,0.9};
		};
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT END
		////////////////////////////////////////////////////////
	};

};