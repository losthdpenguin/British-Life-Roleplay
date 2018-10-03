/*
    File: fn_setupActions.sqf
    Author:

    Description:
    Master addAction file handler for all client-based actions.
*/

life_actions = [];

switch (playerSide) do {

    //Civilian
    case civilian: {
        //Drop fishing net
        life_actions pushBack (player addAction[localize "STR_pAct_DropFishingNet",life_fnc_dropFishingNet,"",0,false,false,"",'
        (surfaceisWater (getPos vehicle player)) && (vehicle player isKindOf "Ship") && life_carryWeight < life_maxWeight && speed (vehicle player) < 2 && speed (vehicle player) > -1 && !life_net_dropped ']);

        //Rob person
        life_actions pushBack (player addAction[localize "STR_pAct_RobPerson",life_fnc_robAction,"",0,false,false,"",'
        !isNull cursorObject && player distance cursorObject < 3.5 && isPlayer cursorObject && animationState cursorObject == "Incapacitated" && !(cursorObject getVariable ["robbed",false]) ']);
        // Smoke on plane
        life_smokeTrail = false;
        life_smokes = [];
        life_actions = [];     
                
        life_actions pushBack (player addAction["Smoke Trail",
            {
                life_smokeTrail = true;
                {
                    private _colour = ["SmokeShellRed", "SmokeShellBlue"] select _forEachIndex;
                    for "_i" from 0 to 5 do {
                        private _veh = objectParent player;
                        private _smoke = _colour createVehicle [random(50),random(50),random(50)];
                        _smoke attachTo [_veh, _x];
                        life_smokes pushBack _smoke;
                    };
                } forEach [[-5,0.855469,-0.6],[5,0.855469,-0.6]];
            },"",0,false,false,"",'!life_smokeTrail && {!isNull objectParent player} && {objectParent player isKindOf "Plane"}']);

        life_actions pushBack (player addAction["Stop Smoke Trail",
    {
        life_smokeTrail = false;
        {
            deleteVehicle _x;
        } forEach life_smokes;
    },"",0,false,false,"",'life_smokeTrail']);
    };

    //Cops
    case west: {
    		life_actions pushBack (player addAction["Seize Objects",life_fnc_seizeObjects,cursorTarget,0,false,false,"",'((count(nearestObjects [player,["WeaponHolder"],3])>0) || (count(nearestObjects [player,["GroundWeaponHolder"],3])>0) || (count(nearestObjects [player,["WeaponHolderSimulated"],3])>0))']);
    	};
    //EMS
    case independent: { };

};

life_actions pushBack (player addAction["<t color = '#D660D6'>Put on Seatbelt</t>",life_fnc_seatbelt,"",7,false,false,"",' !life_seatbelt && vehicle player != player ']);
life_actions pushBack (player addAction["<t color = '#D660D6'>Remove Seatbelt</t>",life_fnc_seatbelt,"",7,false,false,"",' life_seatbelt && vehicle player != player ']);
