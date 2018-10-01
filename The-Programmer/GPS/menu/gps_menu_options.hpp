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
class gps_menu_options {
   idd = 369854;
   name = "gps_menu_options";
   class controlsBackground
   {
       class main_background : A3GPS_RscPicture
       {
           idc = 2201;
           text = "The-Programmer\GPS\menu\textures\gps_others.paa";
           x = 0.2975 * safezoneW + safezoneX;
           y = 0.155 * safezoneH + safezoneY;
           w = 0.4 * safezoneW;
           h = 0.7 * safezoneH;
       };
   };
   class controls
   {
       class language_txt : A3GPS_RscText
       {
           idc = 1001;
           text = "Lang";
           x = 0.35 * safezoneW + safezoneX;
           y = 0.45 * safezoneH + safezoneY;
           w = 0.135452 * safezoneW;
           h = 0.034 * safezoneH;
       };
       class lang_list : A3GPS_RscCombo
       {
           idc = 2100;
           x = 0.505572666666667 * safezoneW + safezoneX;
           y = 0.45 * safezoneH + safezoneY;
           w = 0.140260666666667 * safezoneW;
           h = 0.034 * safezoneH;
       };
       class markers_colors_txt : A3GPS_RscText
       {
           idc = 1000;
           text = "Mark colors";
           x = 0.35 * safezoneW + safezoneX;
           y = 0.525 * safezoneH + safezoneY;
           w = 0.135452 * safezoneW;
           h = 0.034 * safezoneH;
       };
       class colors : A3GPS_RscbuttonMain
       {
           idc = 1601;
           periodfocus = 0;
           periodover = 0;
           period = 0;
           x = 0.505572666666667 * safezoneW + safezoneX;
           y = 0.525 * safezoneH + safezoneY;
           w = 0.140260666666667 * safezoneW;
           h = 0.034 * safezoneH;
           text = "";
       };
       class drop_data_btn : A3GPS_RscButton
       {
           idc = 1600;
           text = "DROP DATA";
           x = 0.35 * safezoneW + safezoneX;
           y = 0.6 * safezoneH + safezoneY;
           w = 0.0956135 * safezoneW;
           h = 0.034 * safezoneH;
           colortext[] = {0.8,0,0,1};
       };
       class femer : A3GPS_RscbuttonMain
       {
           idc = 2403;
           onbuttonclick = "closeDialog 0;";
           x = 0.486301833333333 * safezoneW + safezoneX;
           y = 0.636430678466076 * safezoneH + safezoneY;
           w = 0.02 * safezoneW;
           h = 0.02 * safezoneH;
           animtexturedefault = "";
           animtexturenormal = "";
           animtexturedisabled = "";
           animtextureover = "";
           animtexturefocused = "";
           animtexturepressed = "";
           text = "";
       };
   };
};