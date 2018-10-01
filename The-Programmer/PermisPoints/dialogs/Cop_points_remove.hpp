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
class Cop_points_remove {
    idd = 8765;
    name= "Cop_points_remove";
    movingEnable = 0;
    enableSimulation = 1;

	class controlsBackground {
        class Life_RscTitleBackground: Life_RscText {
            colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
            idc = 5211;
			text = "";
            x = 0;
            y = 0.2;
            w = 1;
            h = (1 / 25);
        };

        class MainBackground: Life_RscText {
            colorBackground[] = {0, 0, 0, 0.7};
            idc = -1;
            x = 0;
            y = 0.2 + (11 / 250);
            w = 1;
            h = 0.7;
        };

        class BarreCentrale: Life_RscText {
            colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
            idc = 5412;
			text = "";
            x = 0;
            y = 0.45;
            w = 1;
            h = (1 / 25);
        };
	};

    class controls {
        class Nom: Life_RscText {
            idc = 3203;
            text = "";
			x = 0.01;
			y = 0.25;
            w = 0.275;
            h = 0.04;
        };

        class EtatPermis: Life_RscText {
            idc = 3204;
            text = "";
			x = 0.01;
			y = 0.35;
            w = 0.5;
            h = 0.04;
        };

        class NBPoints: Life_RscText {
            idc = 3205;
            text = "";
			x = 0.01;
			y = 0.40;
            w = 0.275;
            h = 0.04;
        };

        class PointsARemove: Life_RscText {
            idc = 5541;
            text = "";
			x = 0.01;
			y = 0.51;
            w = 0.275;
            h = 0.04;
        };

		class PointRemove : Life_RscEdit {
			idc = 3200;
			text = "1";
			sizeEx = 0.030;
			x = 0.02; 
			y = 0.56;
			w = 0.223; 
			h = 0.04;
		};

        class Raison: Life_RscText {
            idc = 6451;
            text = "";
            x = 0.01;
            y = 0.605;
            w = 0.275;
            h = 0.04;
        };

        class RaisonEnter : Life_RscEdit {
            idc = 3201;
            text = "";
            sizeEx = 0.045;
            x = 0.02; 
            y = 0.65;
            w = 0.8; 
            h = 0.28;
            linespacing = 1;
            style = 0 + 16 + 0x200;
        };

        class Close: Life_RscButtonMenu {
            idc = -1;
            text = "$STR_Global_Close";
            onButtonClick = "closeDialog 0;";
            x = 0.84375;
            y = 0.949;
            w = (6.25 / 40);
            h = (1 / 25);
        };

        class Valider: Life_RscButtonMenu {
            idc = 5101;
            text = "";
            colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
            onButtonClick = "[life_pInact_curTarget] call max_permisPoints_fnc_pointsRemove";
            x = 0.84;
            y = 0.76;
            w = 0.15;
            h = (1 / 25);
        };
	};
};
