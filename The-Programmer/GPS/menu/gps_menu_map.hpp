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
class gps_menu_map {
   idd = 369853;
   name = "gps_menu_map";
   class controlsBackground
   {
       class Fond : A3GPS_RscPicture
       {
           text = "The-Programmer\GPS\menu\textures\gps_map.paa";
           x = 0.2975 * safezoneW + safezoneX;
           y = 0.155 * safezoneH + safezoneY;
           w = 0.4 * safezoneW;
           h = 0.7 * safezoneH;
           idc = -1;
       };
       class map : A3GPS_RscMapControl
       {
           idc = 2201;
           x = 0.3457 * safezoneW + safezoneX;
           y = 0.342 * safezoneH + safezoneY;
           w = 0.305 * safezoneW;
           h = 0.32 * safezoneH;
       };
   };
   class controls
   {
       class RscPicture_1208 : A3GPS_RscPicture
       {
           idc = 1205;
           text = "\A3\ui_f\data\GUI\Rsc\RscMiniMapSmall\gps_L_ca.paa";
           x = 0.689 * safezoneW + safezoneX;
           y = 0.338 * safezoneH + safezoneY;
           w = 0.0239062 * safezoneW;
           h = 0.33 * safezoneH;
       };
       class RscPicture_1209 : A3GPS_RscPicture
       {
           idc = 1213;
           text = "\A3\ui_f\data\GUI\Rsc\RscMiniMapSmall\gps_R_ca.paa";
           x = 0.8261 * safezoneW + safezoneX;
           y = 0.338 * safezoneH + safezoneY;
           w = 0.0239062 * safezoneW;
           h = 0.33 * safezoneH;
       };
       class RscPicture_1210 : A3GPS_RscPicture
       {
           idc = 1201;
           text = "\A3\ui_f\data\GUI\Rsc\RscMiniMapSmall\gps_B_ca.paa";
           x = 0.7075 * safezoneW + safezoneX;
           y = 0.658 * safezoneH + safezoneY;
           w = 0.1275 * safezoneW;
           h = 0.051 * safezoneH;
       };
       class RscPicture_1211 : A3GPS_RscPicture
       {
           idc = 1208;
           text = "\A3\ui_f\data\GUI\Rsc\RscMiniMapSmall\gps_BL_ca.paa";
           x = 0.689 * safezoneW + safezoneX;
           y = 0.658 * safezoneH + safezoneY;
           w = 0.0239034 * safezoneW;
           h = 0.051 * safezoneH;
       };
       class RscPicture_1212 : A3GPS_RscPicture
       {
           idc = 1212;
           text = "\A3\ui_f\data\GUI\Rsc\RscMiniMapSmall\gps_BR_ca.paa";
           x = 0.8261 * safezoneW + safezoneX;
           y = 0.658 * safezoneH + safezoneY;
           w = 0.0239034 * safezoneW;
           h = 0.051 * safezoneH;
       };
       class RscPicture_1213 : A3GPS_RscPicture
       {
           idc = 1206;
           text = "\A3\ui_f\data\GUI\Rsc\RscMiniMapSmall\gps_TL_ca.paa";
           x = 0.689 * safezoneW + safezoneX;
           y = 0.303 * safezoneH + safezoneY;
           w = 0.0239034 * safezoneW;
           h = 0.051 * safezoneH;
       };
       class RscPicture_1214 : A3GPS_RscPicture
       {
           idc = 1214;
           text = "\A3\ui_f\data\GUI\Rsc\RscMiniMapSmall\gps_TR_ca.paa";
           x = 0.8261 * safezoneW + safezoneX;
           y = 0.303 * safezoneH + safezoneY;
           w = 0.0239034 * safezoneW;
           h = 0.051 * safezoneH;
       };
       class RscPicture_1215 : A3GPS_RscPicture
       {
           idc = 1215;
           text = "\A3\ui_f\data\GUI\Rsc\RscMiniMapSmall\gps_T_ca.paa";
           x = 0.703 * safezoneW + safezoneX;
           y = 0.303 * safezoneH + safezoneY;
           w = 0.1275 * safezoneW;
           h = 0.051 * safezoneH;
       };
       class saved_paths : A3GPS_RscListBox
       {
           idc = 1500;
           x = 0.7175 * safezoneW + safezoneX;
           y = 0.363 * safezoneH + safezoneY;
           w = 0.1 * safezoneW;
           h = 0.2 * safezoneH;
       };
       class exec_saved : A3GPS_RscButton
       {
           idc = 1600;
           x = 0.7175 * safezoneW + safezoneX;
           y = 0.623 * safezoneH + safezoneY;
           w = 0.103581 * safezoneW;
           h = 0.035 * safezoneH;
       };
       class delete_saved : A3GPS_RscButton
       {
           idc = 1601;
           x = 0.7175 * safezoneW + safezoneX;
           y = 0.582 * safezoneH + safezoneY;
           w = 0.103581 * safezoneW;
           h = 0.035 * safezoneH;
       };
       class femer : A3GPS_RscbuttonMain
       {
           idc = 2403;
           onbuttonclick = "closeDialog 0;";
           x = 0.486301833333333 * safezoneW + safezoneX;
           y = 0.636430678466076 * safezoneH + safezoneY;
           w = 0.02 * safezoneW;
           h = 0.02 * safezoneH;
           animTextureDefault = "";
           animTextureNormal = "";
           animTextureDisabled = "";
           animTextureOver = "";
           animTextureFocused = "";
           animTexturePressed = "";
           text = "";
       };
   };
};