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
class Maxence_Ebay_Sell_Menu {
   idd = 3480;
   name = "Maxence_Ebay_Sell_Menu";
   movingenable = false;
   enablesimulation = true;
   onload = "";
   class controlsBackground
   {
       class fond : Life_RscPicture
       {
           idc = 3490;
           text = "";
           x = 0.136458333333333 * safezoneW + safezoneX;
           y = -0.01 * safezoneH + safezoneY;
           w = 0.73828125 * safezoneW;
           h = 1.14287752006735 * safezoneH;
       };
   };
   class controls
   {
       class searchEdit : Life_RscEdit
       {
           idc = 3489;
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
           idc = 3494;
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
           onbuttonclick = "closeDialog 0; [(ctrlText 3489)] spawn maxence_ebay_fnc_openEbay;";
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
       class titreAnnonceEdit : Life_RscEdit
       {
           idc = 3481;
           text = "";
           x = 0.341875 * safezoneW + safezoneX;
           y = 0.300699231612586 * safezoneH + safezoneY;
           w = 0.438854166666667 * safezoneW;
           h = 0.0277176808751232 * safezoneH;
           colorbackground[] = {1,1,1,0};
           colortext[] = {0,0,0,1};
           colorshadow[] = {1,1,1,0};
           shadow = 1;
       };
       class descriptionEdit : Life_RscEdit
       {
           idc = 3482;
           text = "";
           x = 0.232296833333334 * safezoneW + safezoneX;
           y = 0.363230638421829 * safezoneH + safezoneY;
           w = 0.54546875 * safezoneW;
           h = 0.054665133456244 * safezoneH;
           linespacing = 1;
           colorbackground[] = {1,1,1,0};
           colortext[] = {0,0,0,1};
           colorshadow[] = {1,1,1,0};
           shadow = 1;
       };
       class categoryVitem : Life_RscButtonMenu
       {
           idc = 3491;
           text = "";
           x = 0.226567666666667 * safezoneW + safezoneX;
           y = 0.423609752753196 * safezoneH + safezoneY;
           w = 0.065885416666666 * safezoneW;
           h = 0.0220037 * safezoneH;
           onbuttonclick = "";
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
       class categoryItem : Life_RscButtonMenu
       {
           idc = 3492;
           text = "";
           x = 0.296604166666666 * safezoneW + safezoneX;
           y = 0.423609752753196 * safezoneH + safezoneY;
           w = 0.08 * safezoneW;
           h = 0.0220037000000001 * safezoneH;
           onbuttonclick = "";
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
       class categoryVehicle : Life_RscButtonMenu
       {
           idc = 3493;
           text = "";
           x = 0.381083333333334 * safezoneW + safezoneX;
           y = 0.423609752753196 * safezoneH + safezoneY;
           w = 0.0866249999999993 * safezoneW;
           h = 0.0220037 * safezoneH;
           onbuttonclick = "";
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
       class categoryHouse : Life_RscButtonMenu
       {
           idc = 3495;
           text = "";
           x = 0.472786458333333 * safezoneW + safezoneX;
           y = 0.423609752753196 * safezoneH + safezoneY;
           w = 0.0891927083333337 * safezoneW;
           h = 0.0220037 * safezoneH;
           onbuttonclick = "";
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
       class ListeItems : Life_RscListbox
       {
           idc = 3483;
           x = 0.229692666666667 * safezoneW + safezoneX;
           y = 0.446138024582105 * safezoneH + safezoneY;
           w = 0.336974 * safezoneW;
           h = 0.0602533225172071 * safezoneH;
           sizeex = 0.04;
           colortext[] = {0,0,0,1};
           colorSelectBackground[] = {0.5,0.5,0.5,0.8};
           colorSelectBackground2[] = {0.5,0.5,0.5,0.8};
       };
       class durationEdit : Life_RscCombo
       {
           x = 0.3478125 * safezoneW + safezoneX;
           y = 0.549960668633234 * safezoneH + safezoneY;
           w = 0.0615624999999997 * safezoneW;
           h = 0.0223107177974439 * safezoneH;
           idc = 3484;
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
           onlbselchanged = "_this spawn maxence_ebay_fnc_ebayLbChangedDaysPrice;";
       };
       class quantityEdit : Life_RscEdit
       {
           idc = 3485;
           text = "1";
           x = 0.3478125 * safezoneW + safezoneX;
           y = 0.512749914454277 * safezoneH + safezoneY;
           w = 0.027708333333333 * safezoneW;
           h = 0.0192068210422819 * safezoneH;
           colorbackground[] = {1,1,1,0};
           colortext[] = {0,0,0,1};
           colorshadow[] = {1,1,1,0};
           shadow = 1;
       };
       class pricePerItemEdit : Life_RscEdit
       {
           idc = 3486;
           text = "50";
           x = 0.3478125 * safezoneW + safezoneX;
           y = 0.530449029498525 * safezoneH + safezoneY;
           w = 0.06 * safezoneW;
           h = 0.0192068210422819 * safezoneH;
           onkeyup = "_this spawn maxence_ebay_fnc_ebayLbChangedDaysPrice;";
           colorbackground[] = {1,1,1,0};
           colortext[] = {0,0,0,1};
           colorshadow[] = {1,1,1,0};
           shadow = 1;
       };
       class postPrice : Life_RscText
       {
           idc = 3487;
           text = "";
           x = 0.690489583333334 * safezoneW + safezoneX;
           y = 0.549960668633234 * safezoneH + safezoneY;
           w = 0.0412812499999993 * safezoneW;
           h = 0.0220037 * safezoneH;
           colorbackground[] = {1,1,1,0};
           colortext[] = {0,0,0,1};
           colorshadow[] = {1,1,1,0};
       };
       class BoutonSell : Life_RscButtonMenu
       {
           idc = 3488;
           text = "";
           onbuttonclick = "";
           x = 0.211979166666667 * safezoneW + safezoneX;
           y = 0.645493277286135 * safezoneH + safezoneY;
           w = 0.293224 * safezoneW;
           h = 0.0251065260570309 * safezoneH;
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
       class BoutonClose : Life_RscButtonMenu
       {
           idc = -1;
           text = "";
           onbuttonclick = "closeDialog 0;";
           x = 0.505734333333333 * safezoneW + safezoneX;
           y = 0.645493277286135 * safezoneH + safezoneY;
           w = 0.293224 * safezoneW;
           h = 0.0251065260570309 * safezoneH;
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
       class BoutonHome : Life_RscButtonMenu
       {
           idc = -1;
           text = "";
           onbuttonclick = "closeDialog 0";
           x = 0.219791666666666 * safezoneW + safezoneX;
           y = 0.211864958702065 * safezoneH + safezoneY;
           w = 0.0583333333333335 * safezoneW;
           h = 0.0310062310717802 * safezoneH;
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
       class BoutonMyItems : Life_RscButtonMenu
       {
           idc = -1;
           text = "";
           onbuttonclick = "closeDialog 0; [1] spawn maxence_ebay_fnc_ebayLoadSellingItems;";
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
   };
};