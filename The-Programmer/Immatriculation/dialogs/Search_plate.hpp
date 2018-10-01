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
class max_search_plate {
    idd = 8990;
    name= "max_search_plate";
    movingEnable = 0;
    enableSimulation = 1;
    onLoad = "[] spawn max_immat_fnc_plateSearchMenu;";
    class controlsBackground {
        class Life_RscTitleBackground: Life_RscText {
            colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
            idc = 2745;
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
            idc = 8991;
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
            class Attributes {align = "center";};
        };

        class Search: Life_RscButtonMenu {
            idc = 5442;
            text = "";
            colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
            onButtonClick = "[0] spawn max_immat_fnc_infoPlate";
            x = 0.5;
            y = 0.42;
            w = 0.23;
            h = 0.04;
            class Attributes {align = "center";};
        };
    };
};

class max_result_plate {
   idd = 6750;
   name = "max_result_plate";
   movingenable = 0;
   enablesimulation = 1;
   class controlsBackground
   {
       class Life_RscTitleBackground : Life_RscText
       {
           colorbackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
           idc = 6751;
           text = "ERROR LOADING HEADER BAR -> contact the-programmer.com";
           x = 0.334479166666667 * safezoneW + safezoneX;
           y = 0.328287606433302 * safezoneH + safezoneY;
           w = 0.3290625 * safezoneW;
           h = 0.0208136234626298 * safezoneH;
       };
       class MainBackground : Life_RscText
       {
           colorbackground[] = {0, 0, 0, 0.7};
           idc = -1;
           x = 0.334479166666667 * safezoneW + safezoneX;
           y = 0.3519394512772 * safezoneH + safezoneY;
           w = 0.328645833333333 * safezoneW;
           h = 0.229895931882687 * safezoneH;
       };
   };
   class controls
   {
       class vehicleInfomation : Life_RscStructuredText
       {
           idc = 6752;
           text = "";
           sizeex = 0.035;
           x = 0.334479166666667 * safezoneW + safezoneX;
           y = 0.351087984862819 * safezoneH + safezoneY;
           w = 0.3290625 * safezoneW;
           h = 0.229801324503311 * safezoneH;
       };
       class Close : Life_RscButtonMenu
       {
           idc = -1;
           text = "$STR_Global_Close";
           onbuttonclick = "closeDialog 0;";
           x = 0.5796875 * safezoneW + safezoneX;
           y = 0.584960264900662 * safezoneH + safezoneY;
           w = 0.0833333333333333 * safezoneW;
           h = 0.0195808893093665 * safezoneH;
           class Attributes {align = "center";};
       };
   };
};