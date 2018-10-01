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
_item = param [0,"",[""]];
if (_item isEqualTo "") exitWith {};

closeDialog 0;
life_preview_3D_vehicle_cam = "camera" camCreate ([[5000,5000,0]] call life_fnc_searchPosEmpty);
life_preview_3D_vehicle_cam cameraEffect ["Internal", "BACK"];
life_preview_3D_vehicle_cam camSetFocus [-1,-1];
showCinemaBorder false;
life_preview_3D_vehicle_cam camCommit 0;

life_preview_3D_vehicle_object = objNull;

[] spawn {
    for "_i" from 0 to 1 step 0 do {
        if (isNull life_preview_3D_vehicle_cam) exitWith {};

        waitUntil {!isNull life_preview_3D_vehicle_object};

        _object = life_preview_3D_vehicle_object;

        _distanceCam = 1.8 * ([boundingBoxReal _object select 0 select 0, boundingBoxReal _object select 0 select 2] distance [boundingBoxReal _object select 1 select 0, boundingBoxReal _object select 1 select 2]);
        _azimuthCam = 0;

        life_preview_3D_vehicle_cam camSetTarget _object;
        life_preview_3D_vehicle_cam camSetPos (_object modelToWorld [_distanceCam * sin _azimuthCam, _distanceCam * cos _azimuthCam, _distanceCam * 0.33]);
        life_preview_3D_vehicle_cam camCommit 0;

        for "_i" from 0 to 1 step 0 do {
            if !(life_preview_3D_vehicle_object isEqualTo _object) exitWith {};
            _azimuthCam = _azimuthCam + 1.00;

            life_preview_3D_vehicle_cam camSetPos (_object modelToWorld [_distanceCam * sin _azimuthCam, _distanceCam * cos _azimuthCam, _distanceCam * 0.33]);
            life_preview_3D_vehicle_cam camCommit 0.05;

            sleep 0.05;
        };
    };
};

if (isNull life_preview_3D_vehicle_object) then {
    if !(isNull life_preview_3D_vehicle_object) then {
        detach life_preview_3D_vehicle_object; 
        deleteVehicle life_preview_3D_vehicle_object;
    };

    life_pos_attach = [[5000,5000,0]] call life_fnc_searchPosEmpty;
    life_preview_light = "#lightpoint" createVehicleLocal life_pos_attach;
    life_preview_light setLightBrightness 0.5;
    life_preview_light setLightColor [1,1,1];
    life_preview_light setLightAmbient [1,1,1];

    _object = (group player) createUnit ["C_man_polo_3_F",life_pos_attach,[],0,"CAN_COLLIDE"];
    _object enableSimulation false;
    removeAllWeapons _object;
    removeAllItems _object;
    removeAllAssignedItems _object;
    removeUniform _object;
    removeVest _object;
    removeBackpack _object;
    removeHeadgear _object;
    removeGoggles _object;

    _object addBackpack _item;
    _object addWeapon _item;
    _object forceAddUniform _item;
    _object addVest _item;
    _object addGoggles _item;
    _object addItem _item;
    _object assignItem _item;
    _object addHeadgear _item;

    _object attachTo [life_attachment_point,life_pos_attach];

    life_preview_3D_vehicle_object = _object;
};

_index = (findDisplay 46) displayAddEventHandler ['KeyDown',{[] spawn maxence_ebay_fnc_ebayVehicleEnd3DPreview;}];
[(["STR_EXIT_TEXT"] call maxence_ebay_fnc_localize),(safezoneX+safeZoneW*0.65),(safezoneY+safezoneH*0.9),10] call BIS_fnc_dynamicText;
waitUntil {missionNamespace getVariable ["maxence_ebay_anim_exit",false];};
(findDisplay 46) displayRemoveEventHandler ['KeyDown',_index];
maxence_ebay_anim_exit = false;
