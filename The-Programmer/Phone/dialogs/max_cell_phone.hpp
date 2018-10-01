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
class max_cell_phone {
   idd = 3000;
   name = "max_cell_phone";
   movingenable = 0;
   enablesimulation = 1;
   onload = "[] spawn max_phone_fnc_cellphone";
   class controlsBackground
   {
       class Life_RscTitleBackground : Life_RscText
       {
           colorbackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
           idc = -1;
           x = 0.285520833333333 * safezoneW + safezoneX;
           y = 0.239446546830653 * safezoneH + safezoneY;
           w = 0.429583333333333 * safezoneW;
           h = 0.022 * safezoneH;
       };
       class MainBackground : Life_RscText
       {
           colorbackground[] = {0, 0, 0, 0.7};
           idc = -1;
           x = 0.285 * safezoneW + safezoneX;
           y = 0.263646546830653 * safezoneH + safezoneY;
           w = 0.430625 * safezoneW;
           h = 0.510241816461684 * safezoneH;
       };
       class SendTo : Life_RscText
       {
           idc = 4901;
           text = "";
           x = 0.473489333333333 * safezoneW + safezoneX;
           y = 0.486348155156102 * safezoneH + safezoneY;
           w = 0.064010666666667 * safezoneW;
           h = 0.0226395458845793 * safezoneH;
       };
       class Separation1 : Life_RscText
       {
           colorbackground[] = {0.501960784313725,0.501960784313725,0.501960784313725,1};
           idc = -1;
           x = 0.463541666666667 * safezoneW + safezoneX;
           y = 0.283195080416272 * safezoneH + safezoneY;
           w = 0.00416666666666667 * safezoneW;
           h = 0.473663954588458 * safezoneH;
       };
       class Separation2 : Life_RscText
       {
           colorbackground[] = {0.501960784313725,0.501960784313725,0.501960784313725,1};
           idc = -1;
           x = 0.493359375 * safezoneW + safezoneX;
           y = 0.553453169347209 * safezoneH + safezoneY;
           w = 0.202994791666667 * safezoneW;
           h = 0.00806370230211288 * safezoneH;
       };
       class Separation3 : Life_RscText
       {
           colorbackground[] = {0.501960784313725,0.501960784313725,0.501960784313725,1};
           idc = -1;
           x = 0.493359375 * safezoneW + safezoneX;
           y = 0.685655944497004 * safezoneH + safezoneY;
           w = 0.202994791666667 * safezoneW;
           h = 0.00806370230211288 * safezoneH;
       };
   };
   class controls
   {
       class Title : Life_RscTitle
       {
           colorbackground[] = {0, 0, 0, 0};
           idc = -1;
           text = "$STR_CELL_Title";
           x = 0.285 * safezoneW + safezoneX;
           y = 0.239682203024833 * safezoneH + safezoneY;
           w = 0.430625 * safezoneW;
           h = 0.022 * safezoneH;
       };
       class TextToSend : Life_RscTitle
       {
           colorbackground[] = {0, 0, 0, 0};
           idc = -1;
           text = "$STR_CELL_TextMSGBtn";
           x = 0.473489333333333 * safezoneW + safezoneX;
           y = 0.32637275307474 * safezoneH + safezoneY;
           w = 0.1 * safezoneW;
           h = 0.022 * safezoneH;
       };
       class textEdit : Life_RscEdit
       {
           idc = 3004;
           text = "";
           sizeex = 0.030;
           x = 0.473489333333333 * safezoneW + safezoneX;
           y = 0.352696310312205 * safezoneH + safezoneY;
           w = 0.237448166666667 * safezoneW;
           h = 0.130747398297067 * safezoneH;
       };
       class textNum : Life_RscEdit
       {
           idc = 3003;
           text = "";
           x = 0.536979166666667 * safezoneW + safezoneX;
           y = 0.489348155156102 * safezoneH + safezoneY;
           w = 0.171875 * safezoneW;
           h = 0.0177473982970672 * safezoneH;
       };
       class TextAdminButton : Life_RscButtonMenu
       {
           idc = -1;
           text = "$STR_CELL_TextAdmins";
           onbuttonclick = "[2] spawn max_phone_fnc_sendMSG";
           x = 0.493359375 * safezoneW + safezoneX;
           y = 0.742803216650899 * safezoneH + safezoneY;
           w = 0.108125 * safezoneW;
           h = 0.022 * safezoneH;
           colortext[] = {1,1,1,1};
           colorbackground[] = {0.5,0,0,0.7};
           class Attributes {align = "center";};
       };
       class AdminMsgAllButton : Life_RscButtonMenu
       {
           idc = 3020;
           text = "$STR_CELL_AdminMSGAll";
           onbuttonclick = "[1] spawn max_phone_fnc_sendMSG";
           x = 0.604166666666667 * safezoneW + safezoneX;
           y = 0.714421002838221 * safezoneH + safezoneY;
           w = 0.108125 * safezoneW;
           h = 0.022 * safezoneH;
           colortext[] = {1,1,1,1};
           colorbackground[] = {0.5,0,0,0.7};
           class Attributes {align = "center";};
       };
       class oldmessages : Life_RscButtonMenu
       {
           text = "";
           onbuttonclick = "createDialog ""max_phone_cell_old_msgs"";";
           x = 0.479739333333333 * safezoneW + safezoneX;
           y = 0.517568590350048 * safezoneH + safezoneY;
           w = 0.108125 * safezoneW;
           h = 0.022 * safezoneH;
           colortext[] = {1,1,1,1};
           colorbackground[] = {0.862745098039216,0.0784313725490196,0.235294117647059,1};
           idc = 9681;
           class Attributes {align = "center";};
       };
       class sendMSG : Life_RscButtonMenu
       {
           text = "$STR_CELL_TextToSend";
           onbuttonclick = "[0] spawn max_phone_fnc_sendMSG";
           x = 0.598020833333333 * safezoneW + safezoneX;
           y = 0.517568590350048 * safezoneH + safezoneY;
           w = 0.108125 * safezoneW;
           h = 0.022 * safezoneH;
           colortext[] = {1,1,1,1};
           colorbackground[] = {0.898039215686275,0.498039215686275,0.0980392156862745,1};
           class Attributes {align = "center";};
           idc = -1;
       };
       class CloseButtonKey : Life_RscButtonMenu
       {
           text = "$STR_Global_Close";
           onbuttonclick = "closeDialog 0;";
           x = 0.604166666666667 * safezoneW + safezoneX;
           y = 0.742803216650899 * safezoneH + safezoneY;
           w = 0.108125 * safezoneW;
           h = 0.022 * safezoneH;
           idc = -1;
           class Attributes {align = "center";};
       };
       class numactuel : Life_RscText
       {
           text = "";
           x = 0.582916666666666 * safezoneW + safezoneX;
           y = 0.273392620624409 * safezoneH + safezoneY;
           h = 0.022 * safezoneH;
           w = 0.128541666666667 * safezoneW;
           idc = 3010;
       };
       class numservice : Life_RscText
       {
           text = "";
           x = 0.473489333333333 * safezoneW + safezoneX;
           y = 0.273392620624409 * safezoneH + safezoneY;
           h = 0.022 * safezoneH;
           w = 0.128541666666667 * safezoneW;
           idc = 3011;
       };
       class Listecontacts : Life_RscListBox
       {
           idc = 3005;
           sizeex = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
           x = 0.289583333333333 * safezoneW + safezoneX;
           y = 0.299905392620624 * safezoneH + safezoneY;
           w = 0.169270833333334 * safezoneW;
           h = 0.438032166508988 * safezoneH;
       };
       class RemoveContact : Life_RscButtonMenu
       {
           text = "";
           idc = 4406;
           onbuttonclick = "[(lbCurSel 3005)] call max_phone_fnc_removeContact";
           x = 0.289583333333333 * safezoneW + safezoneX;
           y = 0.742803216650899 * safezoneH + safezoneY;
           w = 0.0809895833333332 * safezoneW;
           h = 0.022 * safezoneH;
           colorbackground[] = {0.862745098039216,0.0784313725490196,0.235294117647059,1};
           class Attributes {align = "center";};
       };
       class Textlistecontact : Life_RscText
       {
           x = 0.289583333333333 * safezoneW + safezoneX;
           y = 0.273392620624409 * safezoneH + safezoneY;
           h = 0.022 * safezoneH;
           w = 0.169270833333333 * safezoneW;
           text = "Liste des contacts";
           idc = -1;
       };
       class nomducontact : Life_RscText
       {
           x = 0.473489333333333 * safezoneW + safezoneX;
           y = 0.585130656694169 * safezoneH + safezoneY;
           h = 0.022 * safezoneH;
           w = 0.113489833333334 * safezoneW;
           text = "";
           idc = 5420;
       };
       class numeroducontact : Life_RscText
       {
           x = 0.598020833333333 * safezoneW + safezoneX;
           y = 0.585130656694169 * safezoneH + safezoneY;
           h = 0.022 * safezoneH;
           w = 0.113489833333334 * safezoneW;
           text = "";
           idc = 5104;
       };
       class nameEdit : Life_RscEdit
       {
           idc = 3051;
           text = "";
           x = 0.473489333333333 * safezoneW + safezoneX;
           y = 0.607516471720943 * safezoneH + safezoneY;
           w = 0.113489833333334 * safezoneW;
           h = 0.022 * safezoneH;
       };
       class numeroEdit : Life_RscEdit
       {
           idc = 3052;
           text = "";
           x = 0.598020833333333 * safezoneW + safezoneX;
           y = 0.607516471720943 * safezoneH + safezoneY;
           w = 0.113489833333334 * safezoneW;
           h = 0.022 * safezoneH;
       };
       class AddContact : life_RscButtonMenu
       {
           idc = 4615;
           text = "";
           onbuttonclick = "[] call max_phone_fnc_addContact";
           colorbackground[] = {0,0.670588235294118,0.0431372549019608,0.498039215686275};
           x = 0.5421875 * safezoneW + safezoneX;
           y = 0.640491958372753 * safezoneH + safezoneY;
           w = 0.108125 * safezoneW;
           h = 0.022 * safezoneH;
           class Attributes {align = "center";};
       };
       class Resetcontact : Life_RscButtonMenu
       {
           text = "";
           idc = 6501;
           onbuttonclick = "[1] spawn max_phone_fnc_resetContact";
           x = 0.377604166666667 * safezoneW + safezoneX;
           y = 0.742803216650899 * safezoneH + safezoneY;
           w = 0.0809895833333332 * safezoneW;
           h = 0.022 * safezoneH;
           colorbackground[] = {0.862745098039216,0.0784313725490196,0.235294117647059,1};
           class Attributes {align = "center";};
       };
   };
};