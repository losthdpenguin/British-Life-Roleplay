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
class The_Programmer_Identity_Card_Medic {
   idd = 2600;
   name = "The_Programmer_Identity_Card_Medic";
   movingenable = 0;
   enablesimulation = 1;
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
           y = safeZoneY + safeZoneH * -0.16222222;
           w = safeZoneW * 0.35;
           h = safeZoneH * 0.62444445;
       };
       class Picture : Life_RscPicture
       {
           idc = 2769;
           text = "";
           x = safeZoneX + safeZoneW * 0.695625;
           y = safeZoneY + safeZoneH * 0.04333334;
           w = safeZoneW * 0.1525;
           h = safeZoneH * 0.27888889;
       };
   };
   class controls
   {
       class Grade : Life_RscText
       {
           idc = 2766;
           text = "";
           x = safeZoneX + safeZoneW * 0.82;
           y = safeZoneY + safeZoneH * 0.17555556;
           w = 0.1 * safezoneW;
           h = 0.025 * safezoneH;
           sizeex = 0.050;
           colortext[] = {0,0,0,1};
           colorshadow[] = {1,1,1,0};
		   Message="";
       };
       class Numero : Life_RscStructuredText
       {
           idc = 2767;
           text = "";
           x = safeZoneX + safeZoneW * 0.9375;
           y = safeZoneY + safeZoneH * 0.14555556;
           w = 0.04 * safezoneW;
           h = 0.05 * safezoneH;
           colortext[] = {1,1,1,1};
           colorshadow[] = {1,1,1,0};
       };
       class Nom : Life_RscText
       {
           idc = 2768;
           text = "";
           x = safeZoneX + safeZoneW * 0.82;
           y = 0.139992625368731 * safezoneH + safezoneY;
           w = 0.1 * safezoneW;
           h = 0.025 * safezoneH;
           sizeex = 0.050;
           colortext[] = {0,0,0,1};
           colorshadow[] = {1,1,1,0};
		   Message="";
       };
   };
};