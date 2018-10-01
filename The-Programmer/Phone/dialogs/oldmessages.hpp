/*
    Author: GetSomePanda & Maxence Lyon
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
class max_phone_cell_old_msgs {
 idd = 98111;
 name= "max_phone_cell_old_messages";
 movingEnable = 0;
 enableSimulation = 1;
 onLoad = "[] spawn max_phone_fnc_messagesMenu;";

 class controlsBackground {
   class Life_RscTitleBackground: Life_RscText {
     colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
     idc = 98150;
     text = "";
     x = 0.345312 * safezoneW + safezoneX;
     y = 0.2965 * safezoneH + safezoneY;
     w = 0.314531 * safezoneW;
     h = 0.022 * safezoneH;
   };

   class MainBackground: Life_RscText {
     colorBackground[] = {0, 0, 0, 0.7};
     idc = -1;
     x = 0.345312 * safezoneW + safezoneX;
     y = 0.324 * safezoneH + safezoneY;
     w = 0.314531 * safezoneW;
     h = 0.308 * safezoneH;
   };
   
   class FromBar: Life_RscText {
     colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
     idc = 98151;
     text = "";
     x = 0.350469 * safezoneW + safezoneX;
     y = 0.335 * safezoneH + safezoneY;
     w = 0.0979687 * safezoneW;
     h = 0.022 * safezoneH;
   };
   
   class MessageBar: Life_RscText {
     colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
     idc = 98152;
     text = "";
     x = 0.463906 * safezoneW + safezoneX;
     y = 0.335 * safezoneH + safezoneY;
     w = 0.185625 * safezoneW;
     h = 0.022 * safezoneH;
   };
 };

 class controls {
   
   class TextBox: Life_RscStructuredText {
     idc = 98113;
     text = "";
     x = 0.463906 * safezoneW + safezoneX;
     y = 0.368 * safezoneH + safezoneY;
     w = 0.185625 * safezoneW;
     h = 0.253 * safezoneH;
     colorBackground[] = {0,0,0,0.7};
   };
   
   class PlayerList: Life_RscListBox {
     idc = 98112;
     text = "";
     sizeEx = 0.035;
     onLBSelChanged = "[] call max_phone_fnc_lbChanged";
     x = 0.350469 * safezoneW + safezoneX;
     y = 0.368 * safezoneH + safezoneY;
     w = 0.0979687 * safezoneW;
     h = 0.253 * safezoneH;
     colorBackground[] = {0,0,0,0.7};
   };
   
   class CloseButtonKey: Life_RscButtonMenu {
     idc = -1;
     text = "$STR_Global_Close";
     onButtonClick = "closeDialog 0;";
     x = 0.592812 * safezoneW + safezoneX;
     y = 0.643 * safezoneH + safezoneY;
     w = 0.0644531 * safezoneW;
     h = 0.022 * safezoneH;
   };
   
   class DeleteButton: Life_RscButtonMenu {
     idc = 98114;
     text = "";
     colorBackground[] = {0.7, 0, 0, 0.7};
     onButtonClick = "[] spawn max_phone_fnc_deleteMessage";
     x = 0.4175 * safezoneW + safezoneX;
     y = 0.643 * safezoneH + safezoneY;
     w = 0.0644531 * safezoneW;
     h = 0.022 * safezoneH;
   };
   
   class ReplyButton: Life_RscButtonMenu {
     idc = 98115;
     text = "";
     colorBackground[] = {0.9,0.5,0.1,1};
     onButtonClick = "[] spawn max_phone_fnc_replyMessage";
     x = 0.345312 * safezoneW + safezoneX;
     y = 0.643 * safezoneH + safezoneY;
     w = 0.0644531 * safezoneW;
     h = 0.022 * safezoneH;
   };
 };
};
