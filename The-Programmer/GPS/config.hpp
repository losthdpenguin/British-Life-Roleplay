#include "macros.h"
#include "menu\common.hpp"
#include "menu\gps_menu.hpp"
#include "menu\gps_menu_controls.hpp"
#include "menu\gps_menu_map.hpp"
#include "menu\gps_menu_options.hpp"
#include "misc\keyChoice\keyChoice.hpp"
#include "misc\EditDialog\text_dialog.hpp"
#include "misc\colorPicker\colorPicker.hpp"
#include "localization.hpp"

/*
    Author: [Utopia] Amaury
    Altis DEV: https://altisdev.com/user/amauryd
    Web site: www.the-programmer.com
    Teamspeak 3: ts.the-programmer.com
    Steam: « Une Vache Sur CS – Maxence », please leave a message on my profile who says the exact reason before adding me.

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

class CfgGPS {
	//default user options
	default_marker_color[] = {0,1,1,1};
	default_lang = "en"; // fr / en / de / pl / es

	//quicknav
	// see https://community.bistudio.com/wiki/DIK_KeyCodes for the keys number
	class Keys {
		class quicknav_open_key {
			default = 15;
			name = "STR_quicknav_open_key";
		};
		class quicknav_switch_key {
			default = 54;
			name = "STR_quicknav_switch_key";
		};
		class quicknav_execute_key {
			default = 28;
			name = "STR_quicknav_execute_key";
		};
	};
};
