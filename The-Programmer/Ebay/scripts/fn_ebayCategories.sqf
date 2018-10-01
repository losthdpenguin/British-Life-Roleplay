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
_type = param [0,0,[0]];

switch (_type) do {
    case 0 : {
        [0] spawn maxence_ebay_fnc_ebayLoadCurInventory;
    };
    case 1 : {
        [1] spawn maxence_ebay_fnc_ebayLoadCurInventory;
    }; 
    case 2 : {
        [player] remoteExec ["maxence_ebay_fnc_ebayGetVehicles",2];
    };
    case 3 : {
        [player] remoteExec ["maxence_ebay_fnc_ebayGetHouses",2];
    };
};
