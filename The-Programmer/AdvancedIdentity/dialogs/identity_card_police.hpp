/*
    Author: Jean_Park
    Teamspeak 3: ts.the-programmer.com
    Web site: www.the-programmer.com
    Discord : https://discord.gg/DhFUFsq

    Terms of use:
        - This file is forbidden unless you have permission from the author. If you have this file without permission to use it please do not use it and do not share it.
        - If you have permission to use this file, you can use it on your server however it is strictly forbidden to share it.
        - Out of respect for the author please do not delete this information.

    License number:
    Server's name:
    Owner's name:
*/
class The_Programmer_Identity_Card_Police {
   idd = 2600;
   name = "The_Programmer_Identity_Card_Police";
   movingenable = 0;
   enablesimulation = 1;
   onload = "uiNamespace setVariable ['The_Programmer_Identity_Card_Police',_this select 0]";
   duration = 20;
   fadein = 0;
   fadeout = 1;
   class controlsBackground
   {
       class Carte : Life_RscPicture
       {
           idc = 2765;
           text = "";
           x = safeZoneX + safeZoneW * 0.678125;
           y = safeZoneY + safeZoneH * -0.01222222;
           w = safeZoneW * 0.35;
           h = safeZoneH * 0.62444445;
       };
       class Picture : Life_RscPicture
       {
           idc = 2769;
           text = "";
           x = safeZoneX + safeZoneW * 0.835625;
           y = safeZoneY + safeZoneH * 0.10333334;
           w = safeZoneW * 0.1825;
           h = safeZoneH * 0.30888889;
       };
   };
   class controls
   {
       class Grade : Life_RscText
       {
           idc = 2766;
           text = "";
           x= safeZoneX + safeZoneW * 0.805;
           y = safeZoneY + safeZoneH * 0.36;
           w = 0.1 * safezoneW;
           h = 0.025 * safezoneH;
           sizeex = 0.050;
           colortext[] = {0,0,0,1};
           colorshadow[] = {1,1,1,0};
       };
       class Numero : Life_RscStructuredText
       {
           idc = 2767;
           text = "";
           x = safeZoneX + safeZoneW * 0.9275;
           y = safeZoneY + safeZoneH * 0.36555556;
           w = 0.04 * safezoneW;
           h = 0.05 * safezoneH;
           colortext[] = {1,1,1,1};
           colorshadow[] = {1,1,1,0};
       };
       class Nom : Life_RscText
       {
           idc = 2768;
           text = "";
           x = safeZoneX + safeZoneW * 0.81;
           y = safeZoneY + safeZoneH * 0.39333334;
           w = 0.1 * safezoneW;
           h = 0.025 * safezoneH;
           sizeex = 0.050;
           colortext[] = {0,0,0,1};
           colorshadow[] = {1,1,1,0};
       };
   };
};