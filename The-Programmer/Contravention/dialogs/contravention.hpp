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
class max_contravention {
   idd = 4180;
   name = "max_contravention";
   movingenable = false;
   enablesimulation = true;
   onload = "[] spawn max_contrav_fnc_sendFineMenu;";
   class controlsBackground
   {
       class Fond : Life_RscText
       {
           idc = -1;
           colorbackground[] = {0,0,0,1};
           x = 0.34375 * safezoneW + safezoneX;
           y = 0.368731563421829 * safezoneH + safezoneY;
           h = 0.233038348082596 * safezoneH;
           w = 0.316666666666667 * safezoneW;
       };
       class BandeauGris : Life_RscText
       {
           idc = -1;
           colorbackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
           x = 0.34375 * safezoneW + safezoneX;
           y = 0.344331858407079 * safezoneH + safezoneY;
           h = 0.022 * safezoneH;
           w = 0.316666666666667 * safezoneW;
       };
   };
   class controls
   {
       class Contravention : Life_RscTitle
       {
           idc = 4181;
           text = "";
           x = 0.34375 * safezoneW + safezoneX;
           y = 0.34389872173058 * safezoneH + safezoneY;
           h = 0.022 * safezoneH;
           w = 0.3171875 * safezoneW;
       };
       class MontantText : Life_RscText
       {
           idc = 4182;
           text = "";
           x = 0.352604166666667 * safezoneW + safezoneX;
           y = 0.479041789577188 * safezoneH + safezoneY;
           h = 0.022 * safezoneH;
           w = 0.07 * safezoneW;
       };
       class MontantEdit : Life_RscEdit
       {
           x = 0.426041666666667 * safezoneW + safezoneX;
           y = 0.479041789577188 * safezoneH + safezoneY;
           h = 0.022 * safezoneH;
           w = 0.0703125 * safezoneW;
           idc = 4183;
           text = "";
       };
       class InfractionsText : Life_RscText
       {
           idc = 4184;
           text = "";
           x = 0.352604166666667 * safezoneW + safezoneX;
           y = 0.508540314650934 * safezoneH + safezoneY;
           h = 0.022 * safezoneH;
           w = 0.129166666666666 * safezoneW;
           linespacing = 1;
           style = 0 + 16 + 0x200;
       };
       class InfractionsEdit : Life_RscEdit
       {
           x = 0.353125 * safezoneW + safezoneX;
           y = 0.537055555555555 * safezoneH + safezoneY;
           h = 0.0538982300884961 * safezoneH;
           w = 0.300520833333333 * safezoneW;
           idc = 4185;
           text = "";
       };
       class validate : Life_RscButtonMenu
       {
           text = "";
           x = 0.596875 * safezoneW + safezoneX;
           y = 0.604777447394297 * safezoneH + safezoneY;
           w = 0.0644530999999999 * safezoneW;
           h = 0.022 * safezoneH;
           idc = 4186;
           onbuttonclick = "[] spawn max_contrav_fnc_sendFine;";
           class Attributes {align = "center";};
       };
       class close : Life_RscButtonMenu
       {
           text = "$STR_Global_Close";
           x = 0.34375 * safezoneW + safezoneX;
           y = 0.604777447394297 * safezoneH + safezoneY;
           w = 0.0644531 * safezoneW;
           h = 0.022 * safezoneH;
           idc = -1;
           onbuttonclick = "closeDialog 0;";
           class Attributes {align = "center";};
       };
       class Modele : Life_RscText
       {
           idc = 4188;
           text = "";
           x = 0.352604166666667 * safezoneW + safezoneX;
           y = 0.420061455260571 * safezoneH + safezoneY;
           h = 0.022 * safezoneH;
           w = 0.3 * safezoneW;
       };
       class Proprietaire : Life_RscText
       {
           text = "";
           x = 0.352604166666667 * safezoneW + safezoneX;
           y = 0.386629793510323 * safezoneH + safezoneY;
           h = 0.022 * safezoneH;
           w = 0.3 * safezoneW;
           idc = 4189;
       };
   };
};
