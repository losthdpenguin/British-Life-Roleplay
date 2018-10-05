/*
*    FORMAT:
*        STRING (Conditions) - Must return boolean :
*            String can contain any amount of conditions, aslong as the entire
*            string returns a boolean. This allows you to check any levels, licenses etc,
*            in any combination. For example:
*                "call life_coplevel && license_civ_someLicense"
*            This will also let you call any other function.
*
*
*    ARRAY FORMAT:
*        0: STRING (Classname): Item Classname
*        1: STRING (Nickname): Nickname that will appear purely in the shop dialog
*        2: SCALAR (Buy price)
*        3: SCALAR (Sell price): To disable selling, this should be -1
*        4: STRING (Conditions): Same as above conditions string
*
*    Weapon classnames can be found here: https://community.bistudio.com/wiki/Arma_3_CfgWeapons_Weapons
*    Item classnames can be found here: https://community.bistudio.com/wiki/Arma_3_CfgWeapons_Items
*
*/
class WeaponShops {
    //Armory Shops
    class gun {
        name = "Billy Joe's Firearms";
        side = "civ";
        conditions = "license_civ_gun";
        items[] = {
            { "hgun_Rook40_F", "", 3000, 500, "" },
            { "hgun_Pistol_01_F", "", 3400, 570, "" }, //Apex DLC
            { "hgun_Pistol_heavy_02_F", "", 50000, 850, "" },
            { "hgun_ACPC2_F", "", 2800, 670, "" },
            { "SMG_05_F", "", 5000, 900, "" }, //Apex DLC
            { "hgun_PDW2000_F", "", 7800, 1000, "" }
        };
        mags[] = {
            { "16Rnd_9x21_Mag", "", 125, 60, "" },
            { "6Rnd_45ACP_Cylinder", "", 150, 75, "" },
            { "9Rnd_45ACP_Mag", "", 200, 100, "" },
            { "30Rnd_9x21_Mag", "", 250, 125, "" },
            { "30Rnd_9x21_Mag_SMG_02", "", 250, 125, "" }, //Apex DLC
            { "10Rnd_9x21_Mag", "", 250, 125, "" } //Apex DLC
        };
        accs[] = {
            { "muzzle_snds_H", "", 3500, 1750, "" },
			{ "muzzle_snds_L", "", 3500, 1750, "" },
			{ "muzzle_snds_M", "", 3500, 1750, "" },
			{ "muzzle_snds_B", "", 3500, 1750, "" },
			{ "muzzle_snds_H_MG", "", 3500, 1750, "" },
			{ "muzzle_snds_H_SW", "", 3500, 1750, "" },
			{ "optic_Arco", "", 2500, 1750, "" },
			{ "optic_Aco", "", 3500, 1750, "" },
			{ "optic_Aco_smg", "", 3500, 1750, "" },
			{ "optic_ACO_grn_smg", "", 3500, 1750, "" },
			{ "optic_Holosight", "", 4500, 2750, "" },
			{ "optic_Holosight_smg", "", 4500, 2750, "" },
			{ "optic_SOS", "", 4500, 2750, "" },
			{ "acc_flashlight", "", 1500, 750, "" },
			{ "acc_flashlight_smg_01", "", 1500, 750, "" },
			{ "acc_flashlight_pistol", "", 1500, 750, "" },
			{ "acc_pointer_IR", "", 1500, 750, "" },
			{ "optic_MRCO", "", 1500, 750, "" },
			{ "muzzle_snds_acp", "", 1500, 750, "" },
			{ "optic_DMS", "", 5000, 2750, "" },
			{ "optic_Yorris", "", 5000, 2750, "" },
			{ "optic_MRD", "", 4000, 2750, "" },
			{ "optic_LRPS", "", 5500, 2750, "" },
			{ "muzzle_snds_338_black", "", 3500, 2750, "" },
			{ "muzzle_snds_338_green", "", 3500, 2750, "" },
			{ "muzzle_snds_338_sand", "", 3500, 2750, "" },
			{ "muzzle_snds_93mmg", "", 2000, 1750, "" },
			{ "muzzle_snds_93mmg_tan", "", 2000, 1750, "" },
			{ "optic_AMS", "", 3500, 1750, "" },
			{ "optic_AMS_khk", "", 3500, 1750, "" },
			{ "optic_AMS_snd", "", 3500, 1750, "" },
			{ "optic_KHS_blk", "", 3500, 1750, "" },
			{ "optic_KHS_old", "", 3500, 1750, "" },
			{ "optic_KHS_tan", "", 3500, 1750, "" },
			{ "bipod_01_F_snd", "", 1500, 750, "" },
			{ "bipod_01_F_blk", "", 1500, 750, "" },
			{ "bipod_01_F_mtp", "", 1500, 750, "" },
			{ "bipod_02_F_blk", "", 1500, 750, "" },
			{ "bipod_02_F_tan", "", 1500, 750, "" },
			{ "bipod_03_F_blk", "", 1500, 750, "" },
			{ "bipod_03_F_oli", "", 1500, 750, "" },
			{ "muzzle_snds_H_khk_F", "", 3500, 1750, "" },
			{ "muzzle_snds_H_snd_F", "", 3500, 1750, "" },
			{ "muzzle_snds_m_khk_F", "", 3500, 1750, "" },
			{ "muzzle_snds_m_snd_F", "", 3500, 1750, "" },
			{ "muzzle_snds_B_khk_F", "", 3500, 1750, "" },
			{ "muzzle_snds_B_snd_F", "", 3500, 1750, "" }
        };
    };

    class rebel {
        name = "Mohammed's Jihadi Shop";
        side = "civ";
        conditions = "license_civ_rebel";
        items[] = {
            { "arifle_TRG21_F", "", 12500, 7500, "" },
            { "arifle_AKS_F", "", 17500, 11000, "" },
            { "arifle_SPAR_01_snd_F", "", 20500, 10000, "" },
            { "arifle_Katiba_F", "", 22000, 15000, "" },
            { "arifle_ARX_hex_F", "", 24500, 15500, "" }, //Apex DLC
            { "srifle_DMR_07_blk_F_arco_flash_F", "", 28500, 18500, "" }, //Apex DLC
            { "arifle_SPAR_02_snd_F", "", 32000, 20500, "" }, //Apex DLC
            { "srifle_DMR_06_olive_F", "", 35500, 25500, "" }, //Apex DLC
            { "srifle_DMR_01_DMS_BI_F", "", 38500, 28250, "" }, //Apex DLC
            { "arifle_SPAR_03_snd_F", "", 41000, 30500, "" }, //Apex DLC
			{ "arifle_AKM_F", "", 45000, 30500, "" }, //Apex DLC
			{ "arifle_AK12_F", "", 50000, 40500, "" }, //Apex DLC
			{ "srifle_DMR_05_tan_f", "", 60000, 40500, "" } //Apex DLC
        };
        mags[] = {
            { "30Rnd_556x45_Stanag", "", 300, 150, "" },
			{ "30Rnd_545x39_Mag_F", "", 300, 150, "" },
			{ "30Rnd_545x39_Mag_Green_F", "", 300, 150, "" },
			{ "30Rnd_545x39_Mag_Tracer_F", "", 300, 150, "" },
			{ "30Rnd_545x39_Mag_Tracer_Green_F", "", 300, 150, "" },
			{ "30Rnd_556x45_Stanag", "", 300, 150, "" },
			{ "30Rnd_556x45_Stanag_green", "", 300, 150, "" },
			{ "30Rnd_556x45_Stanag_red", "", 300, 150, "" },
			{ "30Rnd_556x45_Stanag_Tracer_Red", "", 300, 150, "" },
			{ "30Rnd_556x45_Stanag_Tracer_Green", "", 300, 150, "" },
			{ "30Rnd_556x45_Stanag_Tracer_Yellow", "", 300, 150, "" },
			{ "30Rnd_580x42_Mag_F", "", 300, 150, "" },
			{ "30Rnd_580x42_Mag_Tracer_F", "", 300, 150, "" },
			{ "30Rnd_65x39_caseless_green", "", 300, 150, "" },
			{ "30Rnd_65x39_caseless_green_mag_Tracer", "", 300, 150, "" },
			{ "10Rnd_50BW_Mag_F", "", 300, 150, "" },
			{ "20Rnd_650x39_Cased_Mag_F", "", 300, 150, "" },
			{ "150Rnd_556x45_Drum_Mag_F", "", 300, 150, "" },
			{ "150Rnd_556x45_Drum_Mag_Tracer_F", "", 300, 150, "" },
			{ "20Rnd_762x51_Mag", "", 300, 150, "" },
			{ "30Rnd_762x39_Mag_F", "", 300, 150, "" },
			{ "30Rnd_762x39_Mag_Green_F", "", 300, 150, "" },
			{ "30Rnd_762x39_Mag_Tracer_F", "", 300, 150, "" },
			{ "30Rnd_762x39_Mag_Tracer_Green_F", "", 300, 150, "" },
			{ "10Rnd_93x64_DMR_05_Mag", "", 300, 150, "" }
        };
        accs[] = {
            { "muzzle_snds_H", "", 3500, 1750, "" },
			{ "muzzle_snds_L", "", 3500, 1750, "" },
			{ "muzzle_snds_M", "", 3500, 1750, "" },
			{ "muzzle_snds_B", "", 3500, 1750, "" },
			{ "muzzle_snds_H_MG", "", 3500, 1750, "" },
			{ "muzzle_snds_H_SW", "", 3500, 1750, "" },
			{ "optic_Arco", "", 2500, 1750, "" },
			{ "optic_Aco", "", 3500, 1750, "" },
			{ "optic_Aco_smg", "", 3500, 1750, "" },
			{ "optic_ACO_grn_smg", "", 3500, 1750, "" },
			{ "optic_Holosight", "", 4500, 2750, "" },
			{ "optic_Holosight_smg", "", 4500, 2750, "" },
			{ "optic_SOS", "", 4500, 2750, "" },
			{ "acc_flashlight", "", 1500, 750, "" },
			{ "acc_flashlight_smg_01", "", 1500, 750, "" },
			{ "acc_flashlight_pistol", "", 1500, 750, "" },
			{ "acc_pointer_IR", "", 1500, 750, "" },
			{ "optic_MRCO", "", 1500, 750, "" },
			{ "muzzle_snds_acp", "", 1500, 750, "" },
			{ "optic_DMS", "", 5000, 2750, "" },
			{ "optic_Yorris", "", 5000, 2750, "" },
			{ "optic_MRD", "", 4000, 2750, "" },
			{ "optic_LRPS", "", 5500, 2750, "" },
			{ "muzzle_snds_338_black", "", 3500, 2750, "" },
			{ "muzzle_snds_338_green", "", 3500, 2750, "" },
			{ "muzzle_snds_338_sand", "", 3500, 2750, "" },
			{ "muzzle_snds_93mmg", "", 2000, 1750, "" },
			{ "muzzle_snds_93mmg_tan", "", 2000, 1750, "" },
			{ "optic_AMS", "", 3500, 1750, "" },
			{ "optic_AMS_khk", "", 3500, 1750, "" },
			{ "optic_AMS_snd", "", 3500, 1750, "" },
			{ "optic_KHS_blk", "", 3500, 1750, "" },
			{ "optic_KHS_old", "", 3500, 1750, "" },
			{ "optic_KHS_tan", "", 3500, 1750, "" },
			{ "bipod_01_F_snd", "", 1500, 750, "" },
			{ "bipod_01_F_blk", "", 1500, 750, "" },
			{ "bipod_01_F_mtp", "", 1500, 750, "" },
			{ "bipod_02_F_blk", "", 1500, 750, "" },
			{ "bipod_02_F_tan", "", 1500, 750, "" },
			{ "bipod_03_F_blk", "", 1500, 750, "" },
			{ "bipod_03_F_oli", "", 1500, 750, "" },
			{ "muzzle_snds_H_khk_F", "", 3500, 1750, "" },
			{ "muzzle_snds_H_snd_F", "", 3500, 1750, "" },
			{ "muzzle_snds_m_khk_F", "", 3500, 1750, "" },
			{ "muzzle_snds_m_snd_F", "", 3500, 1750, "" },
			{ "muzzle_snds_B_khk_F", "", 3500, 1750, "" },
			{ "muzzle_snds_B_snd_F", "", 3500, 1750, "" }
        };
    };


    class advancedrebel {
        name = "Advanced Rebel Shop";
        side = "civ";
        conditions = "license_civ_rebel";
        items[] = {
            { "arifle_TRG21_F", "", 12500, 7500, "" },
            { "arifle_AKS_F", "", 17500, 11000, "" },
            { "arifle_SPAR_01_snd_F", "", 20500, 10000, "" },
            { "arifle_Katiba_F", "", 22000, 15000, "" },
            { "arifle_ARX_hex_F", "", 24500, 15500, "" }, //Apex DLC
            { "srifle_DMR_07_blk_F_arco_flash_F", "", 28500, 18500, "" }, //Apex DLC
            { "arifle_SPAR_02_snd_F", "", 32000, 20500, "" }, //Apex DLC
            { "srifle_DMR_06_olive_F", "", 35500, 25500, "" }, //Apex DLC
            { "srifle_DMR_01_DMS_BI_F", "", 38500, 28250, "" }, //Apex DLC
            { "arifle_SPAR_03_snd_F", "", 41000, 30500, "" }, //Apex DLC
			{ "arifle_AKM_F", "", 45000, 30500, "" }, //Apex DLC
			{ "arifle_AK12_F", "", 50000, 40500, "" }, //Apex DLC
			{ "srifle_DMR_05_tan_f", "", 60000, 40500, "" } //Apex DLC
        };
        mags[] = {
            { "30Rnd_556x45_Stanag", "", 300, 150, "" },
			{ "30Rnd_545x39_Mag_F", "", 300, 150, "" },
			{ "30Rnd_545x39_Mag_Green_F", "", 300, 150, "" },
			{ "30Rnd_545x39_Mag_Tracer_F", "", 300, 150, "" },
			{ "30Rnd_545x39_Mag_Tracer_Green_F", "", 300, 150, "" },
			{ "30Rnd_556x45_Stanag", "", 300, 150, "" },
			{ "30Rnd_556x45_Stanag_green", "", 300, 150, "" },
			{ "30Rnd_556x45_Stanag_red", "", 300, 150, "" },
			{ "30Rnd_556x45_Stanag_Tracer_Red", "", 300, 150, "" },
			{ "30Rnd_556x45_Stanag_Tracer_Green", "", 300, 150, "" },
			{ "30Rnd_556x45_Stanag_Tracer_Yellow", "", 300, 150, "" },
			{ "30Rnd_580x42_Mag_F", "", 300, 150, "" },
			{ "30Rnd_580x42_Mag_Tracer_F", "", 300, 150, "" },
			{ "30Rnd_65x39_caseless_green", "", 300, 150, "" },
			{ "30Rnd_65x39_caseless_green_mag_Tracer", "", 300, 150, "" },
			{ "10Rnd_50BW_Mag_F", "", 300, 150, "" },
			{ "20Rnd_650x39_Cased_Mag_F", "", 300, 150, "" },
			{ "150Rnd_556x45_Drum_Mag_F", "", 300, 150, "" },
			{ "150Rnd_556x45_Drum_Mag_Tracer_F", "", 300, 150, "" },
			{ "20Rnd_762x51_Mag", "", 300, 150, "" },
			{ "30Rnd_762x39_Mag_F", "", 300, 150, "" },
			{ "30Rnd_762x39_Mag_Green_F", "", 300, 150, "" },
			{ "30Rnd_762x39_Mag_Tracer_F", "", 300, 150, "" },
			{ "30Rnd_762x39_Mag_Tracer_Green_F", "", 300, 150, "" },
			{ "10Rnd_93x64_DMR_05_Mag", "", 300, 150, "" }
        };
        accs[] = {
            { "muzzle_snds_H", "", 3500, 1750, "" },
			{ "muzzle_snds_L", "", 3500, 1750, "" },
			{ "muzzle_snds_M", "", 3500, 1750, "" },
			{ "muzzle_snds_B", "", 3500, 1750, "" },
			{ "muzzle_snds_H_MG", "", 3500, 1750, "" },
			{ "muzzle_snds_H_SW", "", 3500, 1750, "" },
			{ "optic_Arco", "", 2500, 1750, "" },
			{ "optic_Aco", "", 3500, 1750, "" },
			{ "optic_Aco_smg", "", 3500, 1750, "" },
			{ "optic_ACO_grn_smg", "", 3500, 1750, "" },
			{ "optic_Holosight", "", 4500, 2750, "" },
			{ "optic_Holosight_smg", "", 4500, 2750, "" },
			{ "optic_SOS", "", 4500, 2750, "" },
			{ "acc_flashlight", "", 1500, 750, "" },
			{ "acc_flashlight_smg_01", "", 1500, 750, "" },
			{ "acc_flashlight_pistol", "", 1500, 750, "" },
			{ "acc_pointer_IR", "", 1500, 750, "" },
			{ "optic_MRCO", "", 1500, 750, "" },
			{ "muzzle_snds_acp", "", 1500, 750, "" },
			{ "optic_DMS", "", 5000, 2750, "" },
			{ "optic_Yorris", "", 5000, 2750, "" },
			{ "optic_MRD", "", 4000, 2750, "" },
			{ "optic_LRPS", "", 5500, 2750, "" },
			{ "muzzle_snds_338_black", "", 3500, 2750, "" },
			{ "muzzle_snds_338_green", "", 3500, 2750, "" },
			{ "muzzle_snds_338_sand", "", 3500, 2750, "" },
			{ "muzzle_snds_93mmg", "", 2000, 1750, "" },
			{ "muzzle_snds_93mmg_tan", "", 2000, 1750, "" },
			{ "optic_AMS", "", 3500, 1750, "" },
			{ "optic_AMS_khk", "", 3500, 1750, "" },
			{ "optic_AMS_snd", "", 3500, 1750, "" },
			{ "optic_KHS_blk", "", 3500, 1750, "" },
			{ "optic_KHS_old", "", 3500, 1750, "" },
			{ "optic_KHS_tan", "", 3500, 1750, "" },
			{ "bipod_01_F_snd", "", 1500, 750, "" },
			{ "bipod_01_F_blk", "", 1500, 750, "" },
			{ "bipod_01_F_mtp", "", 1500, 750, "" },
			{ "bipod_02_F_blk", "", 1500, 750, "" },
			{ "bipod_02_F_tan", "", 1500, 750, "" },
			{ "bipod_03_F_blk", "", 1500, 750, "" },
			{ "bipod_03_F_oli", "", 1500, 750, "" },
			{ "muzzle_snds_H_khk_F", "", 3500, 1750, "" },
			{ "muzzle_snds_H_snd_F", "", 3500, 1750, "" },
			{ "muzzle_snds_m_khk_F", "", 3500, 1750, "" },
			{ "muzzle_snds_m_snd_F", "", 3500, 1750, "" },
			{ "muzzle_snds_B_khk_F", "", 3500, 1750, "" },
			{ "muzzle_snds_B_snd_F", "", 3500, 1750, "" }
        };
    };

    class gang {
        name = "Hideout Armament";
        side = "civ";
        conditions = "";
        items[] = {
          { "hgun_Rook40_F", "", 3000, 500, "" },
          { "hgun_Pistol_01_F", "", 3400, 570, "" }, //Apex DLC
          { "hgun_Pistol_heavy_02_F", "", 50000, 850, "" },
          { "hgun_ACPC2_F", "", 2800, 670, "" },
          { "SMG_05_F", "", 5000, 900, "" }, //Apex DLC
          { "hgun_PDW2000_F", "", 7800, 1000, "" }
      };
        mags[] = {
            { "16Rnd_9x21_Mag", "", 125, 60, "" },
            { "6Rnd_45ACP_Cylinder", "", 150, 75, "" },
            { "9Rnd_45ACP_Mag", "", 200, 100, "" },
            { "30Rnd_9x21_Mag", "", 250, 125, "" }
        };
        accs[] = {
            { "acc_flashlight_pistol", "", 500, 250, "" },//Pistol Flashlight
            { "optic_ACO_grn_smg", "", 950, 475, "" }
        };
    };

    class government {
        name = "Government Armoury";
        side = "civ";
        conditions = "license_civ_government";
        items[] = {
          { "hgun_Rook40_F", "", 3000, 500, "" },
          { "hgun_Pistol_heavy_02_F", "", 3000, 850, "" },
          { "SMG_05_F", "", 6000, 900, "" }, //Apex DLC
          { "hgun_PDW2000_F", "", 5000, 1000, "" },
          { "arifle_SPAR_01_snd_F", "", 15000, 7500, "" }
      };
        mags[] = {
            { "16Rnd_9x21_Mag", "", 125, 60, "" },
            { "6Rnd_45ACP_Cylinder", "", 150, 75, "" },
            { "9Rnd_45ACP_Mag", "", 200, 100, "" },
            { "30Rnd_9x21_Mag", "", 250, 125, "" },
          	{ "30Rnd_556x45_Stanag", "", 300, 150, "" }
        };
        accs[] = {
            { "acc_flashlight_pistol", "", 500, 250, "" },//Pistol Flashlight
            { "optic_ACO_grn_smg", "", 950, 475, "" },
            { "optic_Aco", "", 1000, 500, "" },
            { "optic_ERCO_blk_f", "", 1000, 500, "" },
            { "optic_hamr", "", 1000, 500, "" },
            { "optic_Holosight_blk_F", "", 1000, 500, "" },
            { "obipod_01_F_blk", "", 1000, 500, "" },
            { "muzzle_snds", "", 1000, 500, "" },
            { "muzzle_snds_m", "", 1000, 500, "" }
        };
    };

    //Basic Shops
    class genstore {
        name = "Altis General Store";
        side = "civ";
        conditions = "";
        items[] = {
            { "ItemGPS", "", 80, 50, "" },
            { "ItemMap", "", 40, 25, "" },
            { "ItemCompass", "", 50, 25, "" },
            { "ItemWatch", "", 50, 25, "" },
            { "FirstAidKit", "", 50, 25, "" },
            { "NVGoggles", "", 700, 300, "" },
            { "Chemlight_red", "", 300, 150, "" },
            { "Chemlight_yellow", "", 300, 150, "" },
            { "Chemlight_green", "", 300, 150, "" },
            { "Chemlight_blue", "", 300, 150, "" }
        };
        mags[] = {};
        accs[] = {};
    };

    class f_station_store {
        name = "Altis Fuel Station Store";
        side = "";
        conditions = "";
        items[] = {
          { "ItemGPS", "", 80, 50, "" },
          { "ItemMap", "", 40, 25, "" },
          { "ItemCompass", "", 50, 25, "" },
          { "ItemWatch", "", 50, 25, "" },
          { "FirstAidKit", "", 50, 25, "" },
          { "NVGoggles", "", 700, 300, "" },
          { "Chemlight_red", "", 300, 150, "" },
          { "Chemlight_yellow", "", 300, 150, "" },
          { "Chemlight_green", "", 300, 150, "" },
          { "Chemlight_blue", "", 300, 150, "" }
        };
        mags[] = {};
        accs[] = {};
    };

    //Cop Shops
    class cop_basic {
        name = "Altis Cop Shop";
        side = "cop";
        conditions = "";
        items[] = {
            { "ItemGPS", "", 10, 5, "" },
            { "FirstAidKit", "", 40, 20, "" },
            { "NVGoggles", "", 100, 500, "" },
            { "HandGrenade_Stone", $STR_W_items_Flashbang, 200, 100, "call life_coplevel >= 2" },
            { "hgun_P07_snds_F", $STR_W_items_StunPistol, 200, 100, "" },
            { "arifle_SDAR_F", $STR_W_items_TaserRifle, 500, 250, "" },
            { "hgun_P07_F", "", 2000, 1000, "" },
            { "hgun_P07_khk_F", "", 200, 1000, "" }, //Apex DLC
            { "SMG_05_F", "", 1000, 500, "call life_coplevel >= 1" },
            { "SMG_01_F", "", 1200, 600, "call life_coplevel >= 1" },
            { "SMG_02_flash_F", "", 1250, 600, "call life_coplevel >= 1" },
            { "arifle_Mk20_plain_F", "", 1600, 800, "call life_coplevel >= 1" },
            { "arifle_TRG20_F", "", 1600, 800, "call life_coplevel >= 2" },
            { "arifle_MXC_F", "", 2000, 1000, "call life_coplevel >= 2" },
			{ "arifle_SPAR_01_blk_F", "", 2000, 1000, "call life_coplevel >= 3" },
			{ "arifle_MX_F", "", 2200, 1200, "call life_coplevel >= 3" },
			{ "arifle_MX_SW_F", "", 2400, 1200, "call life_coplevel >= 4" },
			{ "arifle_MXM_F", "", 2400, 1200, "call life_coplevel >= 4" },
			{ "arifle_CTAR_blk_F", "", 2400, 1200, "call life_coplevel >= 4" },
			{ "arifle_Katiba_F", "", 2400, 1200, "call life_coplevel >= 4" },
			{ "srifle_DMR_07_blk_F", "", 2600, 1400, "call life_coplevel >= 5" },
			{ "arifle_AK12_F", "", 3000, 1500, "call life_coplevel >= 5" },
			{ "arifle_SPAR_03_blk_F", "", 3500, 2200, "call life_coplevel >= 6" },
			{ "srifle_DMR_03_F", "", 4000, 2500, "call life_coplevel >= 6" },
			{ "srifle_DMR_02_F", "", 5000, 2500, "call life_coplevel >= 7" },
			{ "srifle_EBR_F", "", 5000, 2500, "call life_coplevel >= 7" }
        };
        mags[] = {
            { "16Rnd_9x21_Mag", "", 10, 5, "" },
            { "20Rnd_556x45_UW_mag", $STR_W_mags_TaserRifle, 20, 10, "" },
            { "30Rnd_9x21_Mag_SMG_02", "", 20, 10, "" },//9MM
			{ "30Rnd_9x21_Mag_SMG_02_Tracer_Red", "", 20, 10, "" },//9MM
			{ "30Rnd_9x21_Mag_SMG_02_Tracer_Yellow", "", 20, 10, "" },//9MM
			{ "30Rnd_9x21_Mag_SMG_02_Tracer_Green", "", 20, 10, "" },//9MM
            { "30Rnd_45ACP_Mag_SMG_01", "", 20, 10, "1" },//45ACP
			{ "30Rnd_9x21_Mag_SMG_02_Tracer_Green", "", 20, 10, "" },//45ACP
			{ "30Rnd_45ACP_Mag_SMG_01_Tracer_Red", "", 20, 10, "" },//45ACP
			{ "30Rnd_45ACP_Mag_SMG_01_Tracer_Yellow", "", 20, 10, "" },//45ACP
            { "30Rnd_556x45_Stanag", "", 20, 10, "" },//5.56 stanag
			{ "30Rnd_556x45_Stanag_Tracer_Red", "", 20, 10, "" },//5.56 stanag
			{ "30Rnd_556x45_Stanag_Tracer_Green", "", 20, 10, "" },//5.56 stanag
			{ "30Rnd_556x45_Stanag_Tracer_Yellow", "", 20, 10, "" },//5.56 stanag
            { "30Rnd_65x39_caseless_mag", "", 20, 10, "" },//6.5MM
            { "30Rnd_65x39_caseless_mag_Tracer", "", 20, 10, "" },//6.5MM
			{ "100Rnd_65x39_caseless_mag", "", 20, 10, "" },//6.5MM
			{ "100Rnd_65x39_caseless_mag_Tracer", "", 20, 10, "" },//6.5MM
			{ "30Rnd_580x42_Mag_F", "", 20, 10, "" },//5.8MM
			{ "30Rnd_580x42_Mag_Tracer_F", "", 20, 10, "" },//5.8MM
			{ "30Rnd_65x39_caseless_green", "", 20, 10, "" },
			{ "30Rnd_65x39_caseless_green_mag_Tracer", "", 20, 10, "" },
			{ "20Rnd_650x39_Cased_Mag_F", "", 20, 10, "" },
			{ "30Rnd_762x39_Mag_F", "", 20, 10, "" },
			{ "30Rnd_762x39_Mag_Green_F", "", 20, 10, "" }, //7.62mm
			{ "30Rnd_762x39_Mag_Tracer_F", "", 20, 10, "" }, //7.62mm
			{ "20Rnd_762x51_Mag", "", 20, 10, "" }, //7.62mm
			{ "7Rnd_408_Mag", "", 20, 10, "" },
			{ "10Rnd_338_Mag", "", 20, 10, "" }
        };
        accs[] = {
            { "muzzle_snds_H", "", 3500, 1750, "" },
			{ "muzzle_snds_L", "", 3500, 1750, "" },
			{ "muzzle_snds_M", "", 3500, 1750, "" },
			{ "muzzle_snds_B", "", 3500, 1750, "" },
			{ "muzzle_snds_H_MG", "", 3500, 1750, "" },
			{ "muzzle_snds_H_SW", "", 3500, 1750, "" },
			{ "optic_Arco", "", 2500, 1750, "" },
			{ "optic_Aco", "", 3500, 1750, "" },
			{ "optic_Aco_smg", "", 3500, 1750, "" },
			{ "optic_ACO_grn_smg", "", 3500, 1750, "" },
			{ "optic_Holosight", "", 4500, 2750, "" },
			{ "optic_Holosight_smg", "", 4500, 2750, "" },
			{ "optic_SOS", "", 4500, 2750, "" },
			{ "acc_flashlight", "", 1500, 750, "" },
			{ "acc_flashlight_smg_01", "", 1500, 750, "" },
			{ "acc_flashlight_pistol", "", 1500, 750, "" },
			{ "acc_pointer_IR", "", 1500, 750, "" },
			{ "optic_MRCO", "", 1500, 750, "" },
			{ "muzzle_snds_acp", "", 1500, 750, "" },
			{ "optic_DMS", "", 5000, 2750, "" },
			{ "optic_Yorris", "", 5000, 2750, "" },
			{ "optic_MRD", "", 4000, 2750, "" },
			{ "optic_LRPS", "", 5500, 2750, "" },
			{ "muzzle_snds_338_black", "", 3500, 2750, "" },
			{ "muzzle_snds_338_green", "", 3500, 2750, "" },
			{ "muzzle_snds_338_sand", "", 3500, 2750, "" },
			{ "muzzle_snds_93mmg", "", 2000, 1750, "" },
			{ "muzzle_snds_93mmg_tan", "", 2000, 1750, "" },
			{ "optic_AMS", "", 3500, 1750, "" },
			{ "optic_AMS_khk", "", 3500, 1750, "" },
			{ "optic_AMS_snd", "", 3500, 1750, "" },
			{ "optic_KHS_blk", "", 3500, 1750, "" },
			{ "optic_KHS_old", "", 3500, 1750, "" },
			{ "optic_KHS_tan", "", 3500, 1750, "" },
			{ "bipod_01_F_snd", "", 1500, 750, "" },
			{ "bipod_01_F_blk", "", 1500, 750, "" },
			{ "bipod_01_F_mtp", "", 1500, 750, "" },
			{ "bipod_02_F_blk", "", 1500, 750, "" },
			{ "bipod_02_F_tan", "", 1500, 750, "" },
			{ "bipod_03_F_blk", "", 1500, 750, "" },
			{ "bipod_03_F_oli", "", 1500, 750, "" },
			{ "muzzle_snds_H_khk_F", "", 3500, 1750, "" },
			{ "muzzle_snds_H_snd_F", "", 3500, 1750, "" },
			{ "muzzle_snds_m_khk_F", "", 3500, 1750, "" },
			{ "muzzle_snds_m_snd_F", "", 3500, 1750, "" },
			{ "muzzle_snds_B_khk_F", "", 3500, 1750, "" },
			{ "muzzle_snds_B_snd_F", "", 3500, 1750, "" }
        };
    };

    //Medic Shops
    class med_basic {
        name = "store";
        side = "med";
        conditions = "";
        items[] = {
            { "ItemGPS", "", 100, 50, "" },
            { "FirstAidKit", "", 150, 75, "" },
            { "Medikit", "", 50, 25, "" },
            { "NVGoggles", "", 1200, 600, "" }
        };
        mags[] = {};
        accs[] = {};
    };
};
