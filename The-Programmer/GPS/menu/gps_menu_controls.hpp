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
class gps_menu_controls {
   idd = 369855;
   name = "gps_menu_controls";
   class controlsBackground
   {
       class Fond : A3GPS_RscPicture
       {
           text = "The-Programmer\GPS\menu\textures\gps_others.paa";
           x = 0.2975 * safezoneW + safezoneX;
           y = 0.155 * safezoneH + safezoneY;
           w = 0.4 * safezoneW;
           h = 0.7 * safezoneH;
           idc = -1;
       };
   };
   class controls
   {
       class controls_header: A3GPS_RscText
       {
           idc = 1001;
           text = "Controles";
           x = 0.345416666666667 * safezoneW + safezoneX;
           y = 0.38* safezoneH + safezoneY;
           w = 0.215156 * safezoneW;
           h = 0.051 * safezoneH;
           sizeEx = 1.5 * GUI_GRID_H;
       };
       class controls_list: A3GPS_RscListbox
       {
           idc = 1500;
           x = 0.345416666666667 * safezoneW + safezoneX;
           y = 0.43861848574238 * safezoneH + safezoneY;
           w = 0.15 * safezoneW;
           h = 0.14 * safezoneH;
       };
       class keys_list : A3GPS_RscListBox
       {
           idc = 1501;
           x = 0.501458333333333 * safezoneW + safezoneX;
           y = 0.43861848574238 * safezoneH + safezoneY;
           w = 0.15 * safezoneW;
           h = 0.14 * safezoneH;
       };
       class add_key_btn : A3GPS_RscButton
       {
           idc = 1601;
           text = "Ajouter une touche";
           x = 0.345416666666667 * safezoneW + safezoneX;
           y = 0.588869223205506 * safezoneH + safezoneY;
           w = 0.13 * safezoneW;
           h = 0.034 * safezoneH;
       };
       class del_key_btn : A3GPS_RscButton
       {
           idc = 1600;
           text = "Supprimer la touche";
           x = 0.5209375 * safezoneW + safezoneX;
           y = 0.588869223205506 * safezoneH + safezoneY;
           w = 0.13 * safezoneW;
           h = 0.034 * safezoneH;
       };
       class femer : A3GPS_RscButtonMain
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