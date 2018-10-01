#include <macros.h>
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
gps_fnc_compile = compileFinal	preprocessFileLineNumbers ("The-Programmer\GPS\gps\fn_compile.sqf");
gps_fnc_log = ["gps","fn_log",true] call gps_fnc_compile;

["Compiling functions..."] call gps_fnc_log;

/** GPS FUNCTIONS , PATH COMPUTATION FUNCTIONS ARE NOW IN CORE MODULE  **/
_gpsFolder = "gps";
gps_fnc_deletePathHelpers = [_gpsFolder,"fn_deletePathHelpers"] call gps_fnc_compile;
gps_fnc_tracking = [_gpsFolder,"fn_tracking"] call gps_fnc_compile;
gps_fnc_main = [_gpsFolder,"fn_main"] call gps_fnc_compile;
gps_fnc_refreshCache = ["misc","fn_refreshCache"] call gps_fnc_compile;
gps_fnc_killGPS = [_gpsFolder,"fn_killGPS"] call gps_fnc_compile;
gps_fnc_getConfigSetting = [_gpsFolder,"fn_getConfigSetting"] call gps_fnc_compile;
gps_fnc_getSetting = [_gpsFolder,"fn_getSetting"] call gps_fnc_compile;
gps_fnc_setSetting = [_gpsFolder,"fn_setSetting"] call gps_fnc_compile;
gps_fnc_localize = [_gpsFolder,"fn_localize"] call gps_fnc_compile;

/** GPS MENU FUNCTIONS **/
//HUD
_hudFolder = "menu\hud";
gps_menu_fnc_setGPSInfo = [_hudFolder,"fn_setGPSInfo"] call gps_fnc_compile; // = update
gps_menu_fnc_loadHud = [_hudFolder,"fn_loadHud"] call gps_fnc_compile;
gps_menu_fnc_openHud = [_hudFolder,"fn_openHud"] call gps_fnc_compile;
gps_menu_fnc_closeHud = [_hudFolder,"fn_closeHud"] call gps_fnc_compile;
gps_menu_fnc_drawPath = [_hudFolder,"fn_drawPath"] call gps_fnc_compile;

//main menu
_gpsMenuFolder = "menu\gps";
gps_menu_fnc_gpsHelp = [_gpsMenuFolder,"fn_gpsHelp"] call gps_fnc_compile;
gps_menu_fnc_loadGPSMenu =  [_gpsMenuFolder,"fn_loadGPSMenu"] call gps_fnc_compile;
gps_menu_fnc_loadNavMenu =  [_gpsMenuFolder,"fn_loadNavMenu"] call gps_fnc_compile;
gps_menu_fnc_loadOptionsMenu =  [_gpsMenuFolder,"fn_loadOptionsMenu"] call gps_fnc_compile;
gps_menu_fnc_loadControlsMenu =  [_gpsMenuFolder,"fn_loadControlsMenu"] call gps_fnc_compile;

//quicknav
_quickNavFolder = "menu\quicknav";
gps_menu_fnc_quickNavCreate = [_quickNavFolder,"fn_quickNavCreate"] call gps_fnc_compile;
gps_menu_fnc_quickNavExecuteCurrentOption = [_quickNavFolder,"fn_quickNavExecuteCurrentOption"]  call gps_fnc_compile;
gps_menu_fnc_quickNavNextOption =  [_quickNavFolder,"fn_quickNavNextOption"] call gps_fnc_compile;
gps_menu_fnc_loadQuickNav = [_quickNavFolder,"fn_loadQuickNav"] call gps_fnc_compile;
gps_menu_fnc_handleQuickNavActions = [_quickNavFolder,"fn_handleQuickNavActions"] call gps_fnc_compile;
gps_menu_fnc_addQuickNavOption = [_quickNavFolder,"fn_addQuickNavOption"] call gps_fnc_compile;

/** MISCELLANEOUS FUNCTIONS (usable everywhere) **/
_miscFolder = "misc";
misc_fnc_nearestLocation = [_miscFolder,"fn_nearestLocation"] call gps_fnc_compile;
misc_fnc_nearestRoadInArray = [_miscFolder,"fn_nearestRoadInArray"] call gps_fnc_compile;
misc_fnc_metersToKilometers = [_miscFolder,"fn_metersToKilometers"] call gps_fnc_compile;
misc_fnc_midPoint = [_miscFolder,"fn_midPoint"] call gps_fnc_compile;

// RscEdit text dialog
misc_fnc_editDialog = ["misc\EditDialog","fn_editDialog"] call gps_fnc_compile;

// KeyChoose Menu
misc_fnc_keyChoose = ["misc\KeyChoice","fn_chooseKey"] call gps_fnc_compile;

// ColorPicker Menu
misc_fnc_colorPicker = ["misc\ColorPicker","fn_colorPick"] call gps_fnc_compile;

["Compiling functions done"] call gps_fnc_log;
[missionNameSpace,"gps_functions_compiled",[]] spawn BIS_fnc_callScriptedEventHandler;

// Subscribe to the gps_core_loaded EH before launching mapping
[missionNamespace,"gps_core_loaded",{
	[
		["STR_QUICKNAV_OPTION_STATION"] call gps_fnc_localize,
		{
			[
				[nearestTerrainObjects [player,["FUELSTATION"],3000],player] call bis_fnc_nearestPosition
			] spawn gps_fnc_main;
		}
	] call gps_menu_fnc_addQuickNavOption;

	[
		["STR_QUICKNAV_OPTION_TOWN"] call gps_fnc_localize,
		{
			[
				[getPosATL player,4000,["NameCity","NameVillage","NameCityCapital","NameLocal"]] call misc_fnc_nearestLocation
			] spawn gps_fnc_main;
		}
	] call gps_menu_fnc_addQuickNavOption;

	waitUntil {
		!isNull findDisplay 46
	};
	(findDisplay 46) displayAddEventHandler ["KeyDown",gps_menu_fnc_handleQuickNavActions];
	(findDisplay 46) displayAddEventHandler ["KeyDown", "if (((_this select 1) == 49) && (missionNamespace getVariable [""gps_core_init_done"",false])) then {[] call gps_menu_fnc_loadGPSMenu;};"];
	((findDisplay 12) displayCtrl 51) ctrlAddEventHandler ["Draw",gps_menu_fnc_drawPath];

	[missionNamespace,"gps_loaded",[]] spawn BIS_fnc_callScriptedEventHandler;
	gps_init_done = true;
}] call bis_fnc_addScriptedEventHandler;

//GPS global variables
gps_current_thread = scriptNull;
gps_current_goal = [0,0,0];
gps_init_done = false;

[] execVM "The-Programmer\GPS\gps_core\init.sqf";

//refresh cache for currupted/missing data in profileNameSpace
[] call gps_fnc_refreshCache;
