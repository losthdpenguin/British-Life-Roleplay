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
class The_Programmer_Identity_Card {
   idd = 2600;
   name = "The_Programmer_Identity_Card";
   movingenable = 0;
   enablesimulation = 1;
   onload = "uiNamespace setVariable ['The_Programmer_Identity_Card',_this select 0]";
   duration = 20;
   fadein = 0;
   fadeout = 1;
   class controlsBackground
   {
       class Carte : Life_RscPicture
       {
           idc = 2765;
           text = "";
           x = 0.703333433333333 * safezoneW + safezoneX;
           y = -0.113796263520157 * safezoneH + safezoneY;
           w = 0.3 * safezoneW;
           h = 0.6 * safezoneH;
       };
       class Picture : Life_RscPicture
       {
           idc = 2769;
           text = "";
           x = 0.870833333333333 * safezoneW + safezoneX;
           y = 0.0677679449360865 * safezoneH + safezoneY;
           w = 0.152604166666667 * safezoneW;
           h = 0.302930186823992 * safezoneH;
       };
   };
   class controls
   {
       class Grade : Life_RscText
       {
           idc = 2766;
           text = "";
           x = 0.770270833333334 * safezoneW + safezoneX;
           y = 0.175395811209439 * safezoneH + safezoneY;
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
           x = 0.7225657 * safezoneW + safezoneX;
           y = 0.208826548672566 * safezoneH + safezoneY;
           w = 0.04 * safezoneW;
           h = 0.05 * safezoneH;
           colortext[] = {1,1,1,1};
           colorshadow[] = {1,1,1,0};
       };
       class Nom : Life_RscText
       {
           idc = 2768;
           text = "";
           x = 0.770270833333334 * safezoneW + safezoneX;
           y = 0.139992625368731 * safezoneH + safezoneY;
           w = 0.1 * safezoneW;
           h = 0.025 * safezoneH;
           sizeex = 0.050;
           colortext[] = {0,0,0,1};
           colorshadow[] = {1,1,1,0};
       };
   };
};