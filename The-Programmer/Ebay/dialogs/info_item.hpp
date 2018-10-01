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
class Maxence_Ebay_Item_Data_Menu {
   idd = 3470;
   name = "Maxence_Ebay_Item_Data_Menu";
   movingenable = false;
   enablesimulation = true;
   onload = "";
   class controlsBackground
   {
       class fond : Life_RscPicture
       {
           idc = 3478;
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
           idc = 3477;
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
           onbuttonclick = "closeDialog 0; [(ctrlText 3477)] spawn maxence_ebay_fnc_openEbay;";
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
       class titreAnnonce : Life_RscText
       {
           idc = 3471;
           text = "";
           x = 0.3403125 * safezoneW + safezoneX;
           y = 0.298732663274337 * safezoneH + safezoneY;
           w = 0.254479166666667 * safezoneW;
           h = 0.0316508175516225 * safezoneH;
           colorbackground[] = {1,1,1,0};
           colortext[] = {0,0,0,1};
           colorshadow[] = {1,1,1,0};
       };
       class description : Life_RscStructuredText
       {
           idc = 3472;
           text = "";
           x = 0.23 * safezoneW + safezoneX;
           y = 0.363230638421829 * safezoneH + safezoneY;
           w = 0.305364583333334 * safezoneW;
           h = 0.125461593633235 * safezoneH;
           colortext[] = {0,0,0,1};
           colorshadow[] = {1,1,1,0};
           colorbackground[] = {0,0,0,0};
       };
       class quantityAvailable : Life_RscText
       {
           idc = 3473;
           text = "";
           x = 0.350520833333335 * safezoneW + safezoneX;
           y = 0.493608652900688 * safezoneH + safezoneY;
           w = 0.121874999999998 * safezoneW;
           h = 0.0236916821288103 * safezoneH;
           colorbackground[] = {1,1,1,0};
           colortext[] = {0,0,0,1};
           colorshadow[] = {1,1,1,0};
       };
       class prixPerItem : Life_RscText
       {
           idc = 3474;
           text = "";
           x = 0.350520833333335 * safezoneW + safezoneX;
           y = 0.512244621079154 * safezoneH + safezoneY;
           w = 0.121874999999998 * safezoneW;
           h = 0.0236916821288103 * safezoneH;
           colorbackground[] = {1,1,1,0};
           colortext[] = {0,0,0,1};
           colorshadow[] = {1,1,1,0};
       };
       class quantitySelected : Life_RscCombo
       {
           x = 0.351041666666668 * safezoneW + safezoneX;
           y = 0.55094395280236 * safezoneH + safezoneY;
           w = 0.095312499999999 * safezoneW;
           h = 0.0223107177974439 * safezoneH;
           idc = 3475;
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
           onlbselchanged = "_this spawn maxence_ebay_fnc_ebayLbChangedBuyPrice;";
       };
       class totalBuyPrice : Life_RscText
       {
           idc = 3476;
           text = "";
           x = 0.605072916666667 * safezoneW + safezoneX;
           y = 0.550943952802359 * safezoneH + safezoneY;
           w = 0.06 * safezoneW;
           h = 0.0220037 * safezoneH;
           colorbackground[] = {1,1,1,0};
           colortext[] = {0,0,0,1};
           colorshadow[] = {1,1,1,0};
       };
       class BoutonBuy : Life_RscButtonMenu
       {
           idc = -1;
           text = "";
           onbuttonclick = "[] spawn maxence_ebay_fnc_ebayBuy;";
           x = 0.2125 * safezoneW + safezoneX;
           y = 0.643526708947886 * safezoneH + safezoneY;
           w = 0.293224 * safezoneW;
           h = 0.0251065260570303 * safezoneH;
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
           x = 0.504692666666666 * safezoneW + safezoneX;
           y = 0.644509993117011 * safezoneH + safezoneY;
           w = 0.293224 * safezoneW;
           h = 0.0251065260570303 * safezoneH;
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
           x = 0.221875 * safezoneW + safezoneX;
           y = 0.21088167453294 * safezoneH + safezoneY;
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
           idc = 3483;
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
       class typeObjet : Life_RscText
       {
           idc = 3479;
           text = "";
           x = 0.632656249999999 * safezoneW + safezoneX;
           y = 0.342581670870207 * safezoneH + safezoneY;
           w = 0.148593750000001 * safezoneW;
           h = 0.0202501875368731 * safezoneH;
           colorbackground[] = {1,1,1,0};
           colortext[] = {0,0,0,1};
           colorshadow[] = {1,1,1,0};
       };
       class nomObjet : Life_RscText
       {
           idc = 3480;
           text = "";
           x = 0.632656249999999 * safezoneW + safezoneX;
           y = 0.362247354252704 * safezoneH + safezoneY;
           w = 0.148593750000001 * safezoneW;
           h = 0.0202501875368731 * safezoneH;
           colorbackground[] = {1,1,1,0};
           colortext[] = {0,0,0,1};
           colorshadow[] = {1,1,1,0};
       };
       class sellerObjet : Life_RscText
       {
           idc = 3481;
           text = "";
           x = 0.632656249999999 * safezoneW + safezoneX;
           y = 0.381222005543264 * safezoneH + safezoneY;
           w = 0.148593750000001 * safezoneW;
           h = 0.0202501875368731 * safezoneH;
           colorbackground[] = {1,1,1,0};
           colortext[] = {0,0,0,1};
           colorshadow[] = {1,1,1,0};
       };
       class BoutonPreview : Life_RscButtonMenu
       {
           idc = -1;
           text = "";
           onbuttonclick = "[] spawn maxence_ebay_fnc_ebayPreview;";
           x = 0.6515625 * safezoneW + safezoneX;
           y = 0.595378564405113 * safezoneH + safezoneY;
           w = 0.133333333333334 * safezoneW;
           h = 0.021140609636185 * safezoneH;
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
       class mapcontrol : Life_RscMapControl
       {
           idc = 3482;
           x = 0.61 * safezoneW + safezoneX;
           y = 0.409704618485743 * safezoneH + safezoneY;
           w = 0.14 * safezoneW;
           h = 0.132084958702064 * safezoneH;
           maxsatellitealpha = 0.75;
           alphafadestartscale = 1.15;
           alphafadeendscale = 1.29;
       };
   };
};