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
disableSerialization;

_display = findDisplay 8990;

(_display displayCtrl 2745) ctrlSetText (["STR_HEADER_SEARCH_MENU"] call max_immat_fnc_localize);
(_display displayCtrl 8991) ctrlSetText (["STR_DEFAULT_TEXT_IN_SEARCH_BAR"] call max_immat_fnc_localize);
(_display displayCtrl 5442) ctrlSetText (["STR_SEARCH_BUTTON"] call max_immat_fnc_localize);