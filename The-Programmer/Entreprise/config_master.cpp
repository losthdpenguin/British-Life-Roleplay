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
#define true 1
#define false 0

class Max_Settings_Entreprise {
    default_lang = "en"; // fr / en / de / es

    allow_acces_to_create_company_forearch_player = true;
    allowed_licenses[] = { "license_civ_entrepreneur" }; //Only if allow_acces_to_create_company_forearch_player = false // OPTIONAL OPTION
    allowed_playerid[] = { "76561198168200130" }; //Only if allow_acces_to_create_company_forearch_player = false // OPTIONAL OPTION

    price_upgrade_100_storage = 500;
    price_upgrade_1000_storage = 1500;

    open_color = "ColorGreen"; // check : https://community.bistudio.com/wiki/CfgMarkerColors_Arma_3
    close_color = "ColorBlack";
    open_or_close_for_new_employes = false;

    class positions_entreprises {
        class entreprise1 {
            markerVar = "buisness_1";
            radius = 22;
            price = 100000;
        };
        class entreprise2 {
            markerVar = "buisness_2";
            radius = 45;
            price = 300000;
        };
        class entreprise3 {
            markerVar = "buisness_3";
            radius = 30;
            price = 220000;
        };
        class entreprise4 {
            markerVar = "buisness_4";
            radius = 18;
            price = 80000;
        };
        class entreprise5 {
            markerVar = "buisness_5";
            radius = 100;
            price = 340000;
        };
        class entreprise6 {
            markerVar = "buisness_6";
            radius = 16;
            price = 70000;
        };
        class entreprise7 {
            markerVar = "buisness_7";
            radius = 16;
            price = 70000;
        };
    };

    class types_entreprises {
        class autoentreprise {
            displayName = "Start-up Company";
            max_stock_commum = 1500;
            max_stock_private = 500;
            max_players = 2;
            price = 25000;
        };
        class sarl {
            displayName = "Limited Company";
            max_stock_commum = 3000;
            max_stock_private = 2000;
            max_players = 4;
            price = 75000;
        };
        class sas {
            displayName = "Private Company";
            max_stock_commum = 5000;
            max_stock_private = 3500;
            max_players = 5;
            price = 150000;
        };
        class sa {
            displayName = "Corporate Company";
            max_stock_commum = 10000;
            max_stock_private = 7500;
            max_players = 8;
            price = 250000;
        };
    };
};
