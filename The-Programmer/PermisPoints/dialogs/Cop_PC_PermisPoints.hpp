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
class Cop_points_search {
    idd = 9876;
    name= "Cop_points_search";
    movingEnable = 0;
    enableSimulation = 1;
    onLoad = "[] spawn max_permisPoints_fnc_searchPlayersMenu;";

	class controlsBackground {
        class Life_RscTitleBackground: Life_RscText {
            colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
            idc = 7653;
            text = "";
            x = 0.22;
            y = 0.36;
            w = 0.52;
            h = (1 / 25);
        };

        class MainBackground: Life_RscText {
            colorBackground[] = {0, 0, 0, 0.7};
            idc = -1;
            x = 0.22;
            y = 0.36 + (11 / 250);
            w = 0.52;
            h = 0.07;
        };
	};

    class controls {
		class Baresearch : Life_RscEdit {
			idc = 2200;
			text = "";
			sizeEx = 0.030;
			x = 0.23; 
			y = 0.42;
			w = 0.23; 
			h = 0.04;
		};

        class Close: Life_RscButtonMenu {
            idc = -1;
            text = "$STR_Global_Close";
            onButtonClick = "closeDialog 0;";
            x = 0.41;
            y = 0.479;
            w = (6.25 / 40);
            h = (1 / 25);
        };

        class Search: Life_RscButtonMenu {
            idc = 2201;
            text = "";
            colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
            onButtonClick = "[] call max_permisPoints_fnc_infoPermis";
            x = 0.5;
            y = 0.42;
            w = 0.23;
            h = 0.04;
        };
	};
};