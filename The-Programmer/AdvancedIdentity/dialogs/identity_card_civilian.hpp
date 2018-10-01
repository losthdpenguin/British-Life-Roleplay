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
class The_Programmer_Identity_Card_Civilian {
   idd = 2500;
   name = "The_Programmer_Identity_Card_Civilian";
   movingenable = 0;
   enablesimulation = 1;
   onload = "uiNamespace setVariable ['The_Programmer_Identity_Card_Civilian',_this select 0]";
   duration = 30;
   fadein = 0;
   fadeout = 1;
   class controlsBackground
   {
       class Carte : Life_RscPicture
       {
           idc = 2765;
           text = "";
           x = safeZoneX + safeZoneW * 0.578125;
           y = safeZoneY + safeZoneH * -0.09666666;
           w = safeZoneW * 0.43;
           h = safeZoneH * 0.65444445;
       };
       class Picture : Life_RscPicture
       {
           idc = 1008;
           text = "";
           x = safeZoneX + safeZoneW * 0.565625;
           y = safeZoneY + safeZoneH * 0.01333334;
           w = safeZoneW * 0.2025;
           h = safeZoneH * 0.32888889;
       };
   };
   class controls
   {
       class Nom : Life_RscText
       {
           idc = 1000;
           text = "";
           x = safeZoneX + safeZoneW * 0.724;
           y = safeZoneY + safeZoneH * 0.082;
           w = 0.1 * safezoneW;
           h = 0.015 * safezoneH;
           sizeex = 0.040;
           colortext[] = {0,0,0,1};
       };
       class Prenom : Life_RscText
       {
           idc = 1001;
           text = "";
           x = safeZoneX + safeZoneW * 0.724;
           y = safeZoneY + safeZoneH * 0.11555556;
           w = 0.1 * safezoneW;
           h = 0.015 * safezoneH;
           sizeex = 0.040;
           colortext[] = {0,0,0,1};
       };
       class Lieudenaissance : Life_RscText
       {
           idc = 1003;
           text = "";
           x = safeZoneX + safeZoneW * 0.77;
           y = safeZoneY + safeZoneH * 0.211;
           w = 0.0677083333333333 * safezoneW;
           h = 0.011 * safezoneH;
           sizeex = 0.035;
           colortext[] = {0,0,0,1};
       };
       class Datedenaissance : Life_RscText
       {
           idc = 1004;
           text = "";
           x = safeZoneX + safeZoneW * 0.725;
           y = safeZoneY + safeZoneH * 0.178;
           w = 0.0852468000000003 * safezoneW;
           h = 0.011 * safezoneH;
           sizeex = 0.035;
           colortext[] = {0,0,0,1};
       };
       class Sexe : Life_RscText
       {
           idc = 1005;
           text = "";
           x = safeZoneX + safeZoneW * 0.72625;
           y = safeZoneY + safeZoneH * 0.21;
           w = 0.1 * safezoneW;
           h = 0.015 * safezoneH;
           sizeex = 0.040;
           colortext[] = {0,0,0,1};
       };
       class uid : Life_RscText
       {
           idc = 1006;
           text = "";
           x = safeZoneX + safeZoneW * 0.848;
           y = safeZoneY + safeZoneH * 0.060;
           w = 0.065 * safezoneW;
           h = 0.015 * safezoneH;
           sizeex = 0.03;
           colortext[] = {0,0,0,1};
       };
       class nationalite : Life_RscText
       {
           idc = 1007;
           text = "";
           x = safeZoneX + safeZoneW * 0.724;
           y = safeZoneY + safeZoneH * 0.145;
           w = 0.065 * safezoneW;
           h = 0.013 * safezoneH;
           sizeex = 0.045;
           colortext[] = {0,0,0,1};
       };
	   class Nom2 : Life_RscText
       {
           idc = 1009;
           text = "";
           x = safeZoneX + safeZoneW * 0.64;
           y = safeZoneY + safeZoneH * 0.35111112;
           w = safeZoneW * 0.05;
           h = safeZoneH * 0.02555556;
           sizeex = 0.05;
           colortext[] = {0,0,0,1};
       };
	   class Prenom2 : Life_RscText
       {
           idc = 1010;
           text = "";
           x = safeZoneX + safeZoneW * 0.71;
           y = safeZoneY + safeZoneH * 0.35111112;
           w = safeZoneW * 0.04;
           h = safeZoneH * 0.02555556;
           sizeex = 0.05;
           colortext[] = {0,0,0,1};
       };
	   class Lieudenaissance2 : Life_RscText
       {
           idc = 1011;
           text = "";
           x = safeZoneX + safeZoneW * 0.768125;
           y = safeZoneY + safeZoneH * 0.38;
           w = safeZoneW * 0.0675;
           h = safeZoneH * 0.02555556;
           sizeex = 0.05;
           colortext[] = {0,0,0,1};
       };
	   class Sexe2 : Life_RscText
       {
           idc = 1012;
           text = "";
           x = safeZoneX + safeZoneW * 0.805;
           y = safeZoneY + safeZoneH * 0.38;
           w = safeZoneW * 0.04;
           h = safeZoneH * 0.02555556;
           sizeex = 0.05;
           colortext[] = {0,0,0,1};
       };
	   class uid2 : Life_RscText
       {
           idc = 1013;
           text = "";
           x = safeZoneX + safeZoneW * 0.658125;
           y = safeZoneY + safeZoneH * 0.38;
           w = safeZoneW * 0.115;
           h = safeZoneH * 0.02555556;
           sizeex = 0.05;
           colortext[] = {0,0,0,1};
       };
   };
};