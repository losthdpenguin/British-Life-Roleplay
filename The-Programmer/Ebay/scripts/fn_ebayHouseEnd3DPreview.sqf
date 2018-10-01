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
if !(isNull life_preview_3D_vehicle_object) then {
	detach life_preview_3D_vehicle_object;
};

life_preview_3D_vehicle_object = objNull;
maxence_ebay_anim_exit = true;

life_preview_3D_vehicle_cam cameraEffect ["Terminate","BACK"];
camDestroy life_preview_3D_vehicle_cam;
deleteVehicle life_preview_light;
life_preview_light = objNull;
life_preview_3D_vehicle_cam = objNull;
life_pos_attach = [];

[] spawn maxence_ebay_fnc_openEbay;
