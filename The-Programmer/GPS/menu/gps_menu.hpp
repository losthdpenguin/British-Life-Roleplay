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
class GPS_menu {
   idd = 369852;
   name = "GPS_menu";
   class controlsBackground
   {
       class Fond : A3GPS_RscPicture
       {
           idc = -1;
           text = "The-Programmer\GPS\menu\textures\gps_menu.paa";
           x = 0.2975 * safezoneW + safezoneX;
           y = 0.155 * safezoneH + safezoneY;
           w = 0.4 * safezoneW;
           h = 0.7 * safezoneH;
       };
   };
   class controls
   {
       class btn_nav : A3GPS_RscbuttonMain
       {
           idc = 2400;
           x = 0.404 * safezoneW + safezoneX;
           y = 0.42 * safezoneH + safezoneY;
           w = 0.0557745 * safezoneW;
           h = 0.085 * safezoneH;
           animTextureDefault = "";
           animTextureNormal = "";
           animTextureDisabled = "";
           animTextureOver = "";
           animTextureFocused = "";
           animTexturePressed = "";
           text = "";
       };
       class btn_help : A3GPS_RscbuttonMain
       {
           idc = 2402;
           x = 0.47 * safezoneW + safezoneX;
           y = 0.42 * safezoneH + safezoneY;
           w = 0.0557745 * safezoneW;
           h = 0.085 * safezoneH;
           animTextureDefault = "";
           animTextureNormal = "";
           animTextureDisabled = "";
           animTextureOver = "";
           animTextureFocused = "";
           animTexturePressed = "";
           text = "";
       };
       class controls_btn : A3GPS_RscbuttonMain
       {
           idc = 2406;
           x = 0.536 * safezoneW + safezoneX;
           y = 0.42 * safezoneH + safezoneY;
           w = 0.0557745000000001 * safezoneW;
           h = 0.085 * safezoneH;
           animTextureDefault = "";
           animTextureNormal = "";
           animTextureDisabled = "";
           animTextureOver = "";
           animTextureFocused = "";
           animTexturePressed = "";
           text = "";
       };
       class btn_options : A3GPS_RscbuttonMain
       {
           idc = 2401;
           x = 0.404 * safezoneW + safezoneX;
           y = 0.523 * safezoneH + safezoneY;
           w = 0.0557745 * safezoneW;
           h = 0.085 * safezoneH;
           animTextureDefault = "";
           animTextureNormal = "";
           animTextureDisabled = "";
           animTextureOver = "";
           animTextureFocused = "";
           animTexturePressed = "";
           text = "";
       };
       class save_current : A3GPS_RscbuttonMain
       {
           idc = 2405;
           size = 0.09;
           x = 0.47 * safezoneW + safezoneX;
           y = 0.523 * safezoneH + safezoneY;
           w = 0.0557745 * safezoneW;
           h = 0.085 * safezoneH;
           animTextureDefault = "";
           animTextureNormal = "";
           animTextureDisabled = "";
           animTextureOver = "";
           animTextureFocused = "";
           animTexturePressed = "";
           text = "";
       };
       class btn_quit : A3GPS_RscbuttonMain
       {
           idc = 2404;
           x = 0.536 * safezoneW + safezoneX;
           y = 0.523 * safezoneH + safezoneY;
           w = 0.0557745000000001 * safezoneW;
           h = 0.085 * safezoneH;
           animTextureDefault = "";
           animTextureNormal = "";
           animTextureDisabled = "";
           animTextureOver = "";
           animTextureFocused = "";
           animTexturePressed = "";
           text = "";
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