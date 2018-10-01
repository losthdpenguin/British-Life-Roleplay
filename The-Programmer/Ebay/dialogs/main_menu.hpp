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
class Maxence_Ebay_Main_Menu {
   idd = 3460;
   name = "Maxence_Ebay_Main_Menu";
   movingenable = false;
   enablesimulation = true;
   onload = "";
   class controlsBackground
   {
       class fond : Life_RscPicture
       {
           idc = 3463;
           text = "";
           x = 0.136458333333333 * safezoneW + safezoneX;
           y = -0.01 * safezoneH + safezoneY;
           w = 0.73828125 * safezoneW;
           h = 1.14287752006735 * safezoneH;
       };
   };
   class controls
   {
       class ListeAnnonces : Life_RscListbox
       {
           idc = 3461;
           x = 0.2145885 * safezoneW + safezoneX;
           y = 0.374358280235988 * safezoneH + safezoneY;
           w = 0.580203166666667 * safezoneW;
           h = 0.290341818092429 * safezoneH;
           colortext[] = {0,0,0,1};
           colorSelectBackground[] = {0.5,0.5,0.5,0.8};
           colorSelectBackground2[] = {0.5,0.5,0.5,0.8};
           sizeex = 0.04;
       };
       class BoutonMyItems : Life_RscButtonMenu
       {
           idc = -1;
           text = "";
           onbuttonclick = "[1] spawn maxence_ebay_fnc_ebayLoadSellingItems;";
           x = 0.724104166666667 * safezoneW + safezoneX;
           y = 0.182366433628318 * safezoneH + safezoneY;
           w = 0.05 * safezoneW;
           h = 0.0220037 * safezoneH;
           animtexturenormal = "#(argb,8,8,3)color(0,0,0,1)";
           animtexturedisabled = "#(argb,8,8,3)color(0,0,0,1)";
           animtextureover = "#(argb,8,8,3)color(0,0,0,1)";
           animtexturefocused = "#(argb,8,8,3)color(0,0,0,1)";
           animtexturepressed = "#(argb,8,8,3)color(0,0,0,1)";
           animtexturedefault = "#(argb,8,8,3)color(0,0,0,1)";
           colorbackground[] = {1,1,1,0};
           colorbackgroundfocused[] = {1,1,1,0};
           colorbackground2[] = {1,1,1,0};
           color[] = {1,1,1,0};
           colorfocused[] = {1,1,1,0};
           color2[] = {1,1,1,0};
           colortext[] = {1,1,1,0};
           colordisabled[] = {1,1,1,0};
           colorsecondary[] = {1,1,1,0};
           colorfocusedsecondary[] = {1,1,1,0};
           color2secondary[] = {1,1,1,0};
           colordisabledsecondary[] = {1,1,1,0};
           tooltipcolortext[] = {1,1,1,0};
           tooltipcolorbox[] = {1,1,1,0};
           tooltipcolorshade[] = {1,1,1,0};
       };
       class searchEdit : Life_RscEdit
       {
           idc = 3462;
           text = "";
           x = 0.32525 * safezoneW + safezoneX;
           y = 0.21088167453294 * safezoneH + safezoneY;
           w = 0.289854166666666 * safezoneW;
           h = 0.0280563785644055 * safezoneH;
           colorbackground[] = {1,1,1,0};
           colortext[] = {0,0,0,1};
           colorshadow[] = {1,1,1,0};
           shadow = 1;
       };
       class categoryEdit : Life_RscCombo
       {
           x = 0.614062500000002 * safezoneW + safezoneX;
           y = 0.21088167453294 * safezoneH + safezoneY;
           w = 0.103124999999998 * safezoneW;
           h = 0.0300229469026549 * safezoneH;
           idc = 3464;
           colorselect[] = {0,0,0,1};
           colortext[] = {0,0,0,1};
           colorscrollbar[] = {1,1,1,0};
           colorpicture[] = {1,1,1,0};
           colorpictureselected[] = {1,1,1,0};
           colorpictureright[] = {1,1,1,0};
           colorpicturerightselected[] = {1,1,1,0};
           tooltipcolortext[] = {1,1,1,0};
           tooltipcolorbox[] = {1,1,1,0};
           tooltipcolorshade[] = {1,1,1,0};
           colorbackground[] = {0.752941176470588,0.752941176470588,0.752941176470588,1};
           colorselectbackground[] = {0.501960784313725,0.501960784313725,0.501960784313725,1};
           coloractive[] = {1,1,1,0};
           colordisabled[] = {1,1,1,0};
           colortextright[] = {1,1,1,0};
           colorselectright[] = {0,0,0,1};
           colorselect2right[] = {0,0,0,1};
           colorshadow[] = {1,1,1,0};
       };
       class BoutonSearch : Life_RscButtonMenu
       {
           idc = -1;
           text = "";
           onbuttonclick = "[(ctrlText 3462)] spawn maxence_ebay_fnc_openEbay;";
           x = 0.718229166666666 * safezoneW + safezoneX;
           y = 0.211864958702064 * safezoneH + safezoneY;
           w = 0.0666666666666669 * safezoneW;
           h = 0.0280563785644055 * safezoneH;
           animtexturenormal = "#(argb,8,8,3)color(0,0,0,1)";
           animtexturedisabled = "#(argb,8,8,3)color(0,0,0,1)";
           animtextureover = "#(argb,8,8,3)color(0,0,0,1)";
           animtexturefocused = "#(argb,8,8,3)color(0,0,0,1)";
           animtexturepressed = "#(argb,8,8,3)color(0,0,0,1)";
           animtexturedefault = "#(argb,8,8,3)color(0,0,0,1)";
           colorbackground[] = {1,1,1,0};
           colorbackgroundfocused[] = {1,1,1,0};
           colorbackground2[] = {1,1,1,0};
           color[] = {1,1,1,0};
           colorfocused[] = {1,1,1,0};
           color2[] = {1,1,1,0};
           colortext[] = {1,1,1,0};
           colordisabled[] = {1,1,1,0};
           colorsecondary[] = {1,1,1,0};
           colorfocusedsecondary[] = {1,1,1,0};
           color2secondary[] = {1,1,1,0};
           colordisabledsecondary[] = {1,1,1,0};
           tooltipcolortext[] = {1,1,1,0};
           tooltipcolorbox[] = {1,1,1,0};
           tooltipcolorshade[] = {1,1,1,0};
       };
   };
};