/*
    Author: ToxicRageTv
    Teamspeak 3: ts.the-programmer.com
    Web site: www.the-programmer.com

    Terms of use:
      - This file is forbidden unless you have permission from the author. If you have this file without permission to use it please do not use it and do not share it.
      - If you have permission to use this file, you can use it on your server however it is strictly forbidden to share it.
      - Out of respect for the author please do not delete this information.

*/
#define false 0
#define true 1

class The_Programmer_Repair_Config {
    default_lang = "en";

    Reparable_object[] = {"crash", "city2", "city", "plp", "signt", "lampstreet", "garbagebin", "concrete", "concretekerb", "powerline", "pipewall", "garbageheap", "lamphalogen", "fuelstation", "signrestrict", "lampairport", "stone", "signs", "signcommand", "b", "vergepost", "bollard", "powerpolewooden", "wallcity", "signc", "wall", "watertower", "lampdecor", "garbagecontainer", "tyres", "pallets", "sunshade", "chairplastic", "vineyardfence", "bench", "concretepipe", "bricks", "pipes", "net", "crateswooden", "barrelwater", "mound01", "cratesshabby", "tableplastic", "sacks", "barrelsand", "cinderblocks", "cages", "workstand", "wheelcart", "toiletbox", "waterbarrel", "billboard", "cratesplastic", "busstop", "infostand", "phonebooth"};
    /* Here you put the beginning of the cursorObject result in the console
    For example :  for city_pillar_f.p3d you just put city */

    Cop_Repairing = true; //Allow cops to repair objects
    Medic_Repairing = true; //Allow medics to repair objects
    Civ_Repairing = true; //Allow civs to repair objects

    allow_repairing_without_licenses = true;
    allowed_licenses[] = { "" }; //Only if allow_repairing_without_licenses = false // OPTIONAL OPTION

    class Civilian {
        Repair_Reward_Min = 10; //How much they get per object they repair (minimum)
        Repair_Reward_Max = 200; //How much they get per object they repair (maximum)
        Cooldown_Time = 5; //Time is seconds for the cooldown between repairing
    };
    class Cop {
        Repair_Reward_Min = 20; //How much they get per object they repair (minimum)
        Repair_Reward_Max = 200; //How much they get per object they repair (maximum)
        Cooldown_Time = 0; //Time is seconds for the cooldown between repairing
    };
    class Medic {
        Repair_Reward_Min = 20; //How much they get per object they repair (minimum)
        Repair_Reward_Max = 200; //How much they get per object they repair (maximum)
        Cooldown_Time = 0; //Time is seconds for the cooldown between repairing
    };
};
