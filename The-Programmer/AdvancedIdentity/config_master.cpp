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
#define false 0
#define true 1

class The_Programmer_Settings_Identity {
	default_lang = "en"; // fr / en / de / es

    server_name = "British Life Roleplay";

    allow_players_to_change_player_name = false; // BETWEEN CONNEXIONS !

    bad_usernames[] = { "Jean-Park", "Sacha Touille" };

    enable_whitelist = false;
    whitelisted_players_uid[] = { "76561198168200130" }; // IF enable_whitelist = true, PUT THE PLAYERID OF YOUR WHITELISTED PLAYERS LIKE : { "76561198168200130","76561198168200176","76561198168200109"};

    license_car = "license_civ_driver";
    license_air = "license_civ_pilot";
    license_boat = "license_civ_boat";
    license_moto = "license_civ_trucking";

    phone_numbers_script_enable = true;
    companies_script_enable = true;
    enable_companies_card = true;

    enable_depanneurs_card = false;
    depanneurs_licence = "license_civ_depanneur";

	birth_places[] = {"Altis","Stratis","Tanoa","Malden"};
    nationality = "British";

    copLevelText[] = {
        //{life_coplevel,"TEXT"},
        {1,"Police Constable"},
        {2,"Sergeant"},
        {3,"Inspector"},
				{4,"Chief Inspector"},
				{5,"Superintendent"},
				{6,"Chief Superintendent"},
				{7,"Assistant Chief Constable"},
				{8,"Deputy Chief Constable"},
				{9,"Chief Constable"}
    };

    medLevelText[] = {
        //{life_medicLevel,"TEXT"},
        {1,"Paramedic"},
        {2,"Senior Paramedic"},
        {3,"Doctor"},
				{4,"Deputy Chief Medical Officer"},
				{5,"Chief Medical Officer"}
    };
};
