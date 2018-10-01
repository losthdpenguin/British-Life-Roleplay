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
class The_Programmer_Identity_Permis {
   idd = 2650;
   name = "The_Programmer_Identity_Permis";
   movingenable = 0;
   enablesimulation = 1;
   onload = "uiNamespace setVariable ['The_Programmer_Identity_Permis',_this select 0]";
   duration = 20;
   fadein = 0;
   fadeout = 1;
   class controlsBackground
   {
       class Permis : Life_RscPicture
       {
           idc = 2651;
           text = "";
           x = safeZoneX + safeZoneW * 0.598125;
           y = safeZoneY + safeZoneH * -0.06222222;
           w = safeZoneW * 0.46;
           h = safeZoneH * 0.72444445;
       };
       class Picture : Life_RscPicture
       {
           idc = 2661;
           text = "";
           x = safeZoneX + safeZoneW * 0.705625;
           y = safeZoneY + safeZoneH * 0.09333334;
           w = safeZoneW * 0.1325;
           h = safeZoneH * 0.19888889;
       };
   };
   class controls
   {
       class dateNaissance : Life_RscText
       {
           idc = 2652;
           text = "";
           x = safeZoneX + safeZoneW * 0.83;
           y = safeZoneY + safeZoneH * 0.07555556;
           w = 0.0693124999999994 * safezoneW;
           h = 0.025 * safezoneH;
           sizeex = 0.045;
           colortext[] = {0,0,0,1};
           colorshadow[] = {1,1,1,0};
       };
       class sexe : Life_RscText
       {
           idc = 2653;
           text = "";
           x = safeZoneX + safeZoneW * 0.751875;
           y = safeZoneY + safeZoneH * 0.25888889;
           w = 0.0693124999999994 * safezoneW;
           h = 0.025 * safezoneH;
           sizeex = 0.045;
           colortext[] = {0,0,0,1};
           colorshadow[] = {1,1,1,0};
       };
       class Nom : Life_RscText
       {
           idc = 2654;
           text = "";
           x = safeZoneX + safeZoneW * 0.83;
           y = safeZoneY + safeZoneH * 0.05;
           w = 0.0693124999999994 * safezoneW;
           h = 0.025 * safezoneH;
           sizeex = 0.03;
           colortext[] = {0,0,0,1};
           colorshadow[] = {1,1,1,0};
       };
       class pointsRestants : Life_RscText
       {
           idc = 2656;
           text = "";
           x = safeZoneX + safeZoneW * 0.82875;
           y = safeZoneY + safeZoneH * 0.21111112;
           w = 0.036078125 * safezoneW;
           h = 0.0341322517207473 * safezoneH;
           colortext[] = {0,0,0,1};
       };
       class permisvoiture : Life_RscPicture
       {
           idc = 2657;
           text = "";
           x = safeZoneX + safeZoneW * 0.893125;
           y = safeZoneY + safeZoneH * 0.37888889;
           w = safeZoneW * 0.065;
           h = safeZoneH * 0.05;
       };
       class permishelico : Life_RscPicture
       {
           idc = 2658;
           text = "";
           x = safeZoneX + safeZoneW * 0.893125;
           y = safeZoneY + safeZoneH * 0.43888889;
           w = safeZoneW * 0.065;
           h = safeZoneH * 0.05;
       };
       class permismoto : Life_RscPicture
       {
           idc = 2659;
           text = "";
           x = safeZoneX + safeZoneW * 0.893125;
           y = safeZoneY + safeZoneH * 0.31888889;
           w = safeZoneW * 0.065;
           h = safeZoneH * 0.05;
       };
       class permisbateau : Life_RscPicture
       {
           idc = 2660;
           text = "";
           x = safeZoneX + safeZoneW * 0.893125;
           y = safeZoneY + safeZoneH * 0.49888889;
           w = safeZoneW * 0.065;
           h = safeZoneH * 0.05;
       };
   };
};