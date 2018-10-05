/*
*    ARRAY FORMAT:
*        0: STRING (Classname)
*        1: STRING (Display Name, leave as "" for default)
*        2: SCALAR (Price)
*        3: STRING (Conditions) - Must return boolean :
*            String can contain any amount of conditions, aslong as the entire
*            string returns a boolean. This allows you to check any levels, licenses etc,
*            in any combination. For example:
*                "call life_coplevel && license_civ_someLicense"
*            This will also let you call any other function.
*
*   Clothing classnames can be found here: https://community.bistudio.com/wiki/Arma_3_CfgWeapons_Equipment
*   Backpacks/remaining classnames can be found here (TIP: Search page for "pack"): https://community.bistudio.com/wiki/Arma_3_CfgVehicles_EMPTY
*
*/
class Clothing {
    class bruce {
        title = "STR_Shops_C_Bruce";
        conditions = "";
        side = "civ";
        uniforms[] = {
            { "NONE", $STR_C_Remove_uniforms, 0, "" },
            { "U_C_Poloshirt_stripped", "", 25, "" },
            { "U_C_Poloshirt_redwhite", "", 25, "" },
            { "U_C_Poloshirt_salmon", "", 25, "" },
            { "U_C_Poloshirt_blue", "", 25, "" },
            { "U_C_Poloshirt_burgundy", "", 25, "" },
            { "U_C_Poloshirt_tricolour", "", 25, "" },
            { "U_C_Poor_2", "", 30, "" },
            { "U_IG_Guerilla2_2", "", 100, "" },
            { "U_IG_Guerilla3_1", "", 100, "" },
            { "U_OrestesBody", "", 100, "" },
            { "U_IG_Guerilla2_3", "", 100, "" },
            { "U_C_HunterBody_grn", "", 100, "" },
            { "U_C_WorkerCoveralls", "", 100, "" },
            { "U_NikosBody", "", 100, "" },
            { "U_NikosAgedBody", $STR_C_Civ_Niko, 10, "" },
            { "U_C_Man_casual_1_F", "", 100, "" }, //Apex DLC
            { "U_C_Man_casual_2_F", "", 100, "" }, //Apex DLC
            { "U_C_Man_casual_3_F", "", 100, "" }, //Apex DLC
            { "U_C_Man_casual_4_F", "", 100, "" }, //Apex DLC
            { "U_C_Man_casual_5_F", "", 100, "" }, //Apex DLC
            { "U_C_Man_casual_6_F", "", 100, "" }, //Apex DLC
            { "U_C_man_sport_1_F", "", 100, "" }, //Apex DLC
            { "U_C_man_sport_2_F", "", 100, "" }, //Apex DLC
            { "U_C_man_sport_3_F", "", 100, "" } //Apex DLC
        };
        headgear[] = {
            { "NONE", $STR_C_Remove_headgear, 0, "" },
            { "H_Bandanna_camo", "", 10, "" },
            { "H_Bandanna_surfer", "", 10, "" },
            { "H_Bandanna_khk", "", 10, "" },
            { "H_Cap_blu", "", 10, "" },
            { "H_Cap_grn", "", 10, "" },
            { "H_Cap_grn_BI", "", 10, "" },
            { "H_Cap_oli", "", 10, "" },
            { "H_Cap_red", "", 10, "" },
            { "H_Cap_tan", "", 10, "" },
            { "H_Helmet_Skate", "", 10, "" }, //Apex DLC
            { "H_Bandanna_gry", "", 10, "" },
            { "H_Bandanna_sgg", "", 10, "" },
            { "H_Bandanna_cbr", "", 10, "" },
            { "H_StrawHat", "", 5, "" },
            { "H_Hat_tan", "", 10, "" },
            { "H_Hat_brown", "", 10, "" },
            { "H_Hat_grey", "", 10, "" },
            { "H_BandMask_blk", $STR_C_Civ_BandMask, 50, "" },
            { "H_Hat_blue", "", 10, "" },
            { "H_Hat_checker", "", 10, "" },
            { "H_Booniehat_tan", "", 10, "" },
            { "H_Booniehat_grn", "", 10, "" }
        };
        goggles[] = {
            { "NONE", $STR_C_Remove_goggles, 0, "" },
            { "G_Shades_Black", "", 20, "" },
            { "G_Shades_Blue", "", 20, "" },
            { "G_Shades_Green", "", 20, "" },
            { "G_Shades_Red", "", 20, "" },
            { "G_Sport_Blackred", "", 25, "" },
            { "G_Sport_BlackWhite", "", 25, "" },
            { "G_Sport_Blackyellow", "", 25, "" },
            { "G_Sport_Checkered", "", 25, "" },
            { "G_Sport_Greenblack", "", 25, "" },
            { "G_Sport_Red", "", 25, "" },
            { "G_Lowprofile", "", 30, "" },
            { "G_Squares", "", 50, "" },
            { "G_Aviator", "Michael Kors", 150, "" },
            { "G_Combat", "", 25, "" },
            { "G_Lady_Mirror", "", 25, "" },
            { "G_Lady_Dark", "", 25, "" },
            { "G_Lady_Blue", "", 25, "" }
        };
        vests[] = {
            { "NONE", $STR_C_Remove_vests, 0, "" }
        };
        backpacks[] = {
            { "NONE", $STR_C_Remove_backpacks, 0, "" },
            { "B_OutdoorPack_blk", "", 60, "" },
            { "B_AssaultPack_khk", "", 60, "" },
            { "B_AssaultPack_dgtl", "", 60, "" },
            { "B_AssaultPack_rgr", "", 60, "" },
            { "B_AssaultPack_sgg", "", 60, "" },
            { "B_AssaultPack_blk", "", 60, "" },
            { "B_AssaultPack_cbr", "", 60, "" },
            { "B_AssaultPack_mcamo", "", 60, "" },
            { "B_AssaultPack_tna_f", "", 60, "" }, //Apex DLC
            { "B_TacticalPack_oli", "", 60, "" },
            { "B_Kitbag_mcamo", "", 60, "" },
            { "B_Kitbag_sgg", "", 50, "" },
            { "B_Kitbag_cbr", "", 50, "" },
            { "B_FieldPack_blk", "", 120, "" },
            { "B_FieldPack_ocamo", "", 120, "" },
            { "B_FieldPack_oucamo", "", 120, "" },
            { "B_FieldPack_ghex_f", "", 120, "" }, //Apex DLC
            { "B_Bergen_sgg", "", 120, "" },
            { "B_Bergen_mcamo", "", 120, "" },
            { "B_Bergen_rgr", "", 120, "" },
            { "B_Bergen_blk", "", 120, "" },
            { "B_Carryall_ocamo", "", 100, "" },
            { "B_Carryall_oucamo", "", 100, "" },
            { "B_Carryall_mcamo", "", 100, "" },
            { "B_Carryall_oli", "", 100, "" },
            { "B_Carryall_khk", "", 100, "" },
            { "B_Carryall_cbr", "", 100, "" },
            { "B_Carryall_ghex_f", "", 100, "" }, //Apex DLC
            { "B_Bergen_dgtl_f", "", 120, "" }, //Apex DLC
            { "B_Bergen_tna_f", "", 120, "" } //Apex DLC
        };
    };

    class cop {
        title = "STR_Shops_C_Police";
        conditions = "";
        side = "cop";
        uniforms[] = {
            { "NONE", $STR_C_Remove_uniforms, 0, "" },
            { "U_O_OfficerUniform_ocamo", $STR_C_Cop_uniform1s, 25, "" },
            { "U_B_GEN_Commander_F", $STR_C_Cop_uniforms, 25, "" },
            { "U_B_CombatUniform_mcam", "ARU", 250, "" },
            { "U_B_T_Solider_F", "NCA", 250, "" }
        };
        headgear[] = {
            { "NONE", $STR_C_Remove_headgear, 0, "" },
            { "H_Cap_police", "Patrol Cap", 25, "" },
            { "H_HelmetB_black", "ARU Helmet", 75, "" },
            { "H_Beret_blk_POLICE", "", 50, "call life_coplevel >= 2" },
            { "G_Balaclava_TI_blk_F", "", 50, "" }
        };
        goggles[] = {
            { "NONE", $STR_C_Remove_goggles, 0, "" },
            { "G_Squares", "", 10, "" },
            { "G_Shades_Blue", "", 20, "" },
            { "G_Sport_Blackred", "", 20, "" },
            { "G_Sport_Checkered", "", 20, "" },
            { "G_Sport_Blackyellow", "", 20, "" },
            { "G_Sport_BlackWhite", "", 20, "" },
            { "G_Shades_Black", "", 25, "" },
            { "G_Lowprofile", "", 30, "" },
            { "G_Combat", "", 55, "" },
            { "G_Aviator", "", 100, "" },
            { "G_Lady_Mirror", "", 150, "" },
            { "G_Lady_Dark", "", 150, "" },
            { "G_Lady_Blue", "", 150, "" }
        };
        vests[] = {
            { "NONE", $STR_C_Remove_vests, 0, "" },
            { "V_TacVest_blk_POLICE", "Police Vest", 50, "" },
            { "V_TacVestIR_blk", "Patrol Vest", 100, "call life_coplevel >= 2" },
            { "V_PlateCarrier1_blk", "Supervisor", 100, "call life_coplevel >= 3" }, //Apex DLC
			{ "V_PlateCarrier2_blk", "Low Command", 100, "call life_coplevel >= 5" }, //Apex DLC
			{ "V_PlateCarrierSpec_blk", "High Command", 100, "call life_coplevel >= 7" }, //Apex DLC
            { "V_Safety_yellow_F", "", 100, "call life_coplevel >= 1" },
			{ "V_Safety_orange_F", "", 100, "call life_coplevel >= 1" },
			{ "V_Safety_blue_F", "", 100, "call life_coplevel >= 1" },
			{ "V_DeckCrew_yellow_F", "", 100, "call life_coplevel >= 1" },
			{ "V_DeckCrew_blue_F", "", 100, "call life_coplevel >= 1" },
			{ "V_DeckCrew_green_F", "", 100, "call life_coplevel >= 1" },
			{ "V_DeckCrew_red_F", "", 100, "call life_coplevel >= 1" },
			{ "V_DeckCrew_white_F", "", 100, "call life_coplevel >= 1" },
			{ "V_DeckCrew_brown_F", "", 100, "call life_coplevel >= 1" },
			{ "V_DeckCrew_violet_F", "", 100, "call life_coplevel >= 1" }
        };
        backpacks[] = {
            { "NONE", $STR_C_Remove_backpacks, 0, "" },
            { "B_FieldPack_cbr", "", 100, "" },
            { "B_AssaultPack_cbr", "", 100, "" },
            { "B_Kitbag_cbr", "", 100, "" },
            { "B_Bergen_sgg", "", 100, "" },
            { "B_Carryall_cbr", "", 100, "" }
        };
    };

    class dive {
        title = "STR_Shops_C_Diving";
        conditions = "license_civ_dive";
        side = "civ";
        uniforms[] = {
            { "NONE", $STR_C_Remove_uniforms, 0, "" },
            { "U_B_Wetsuit", "", 300, "" }
        };
        headgear[] = {
            { "NONE", $STR_C_Remove_headgear, 0, "" }
        };
        goggles[] = {
            { "NONE", $STR_C_Remove_goggles, 0, "" },
            { "G_Diving", "", 500, "" }
        };
        vests[] = {
            { "NONE", $STR_C_Remove_vests, 0, "" },
            { "V_RebreatherB", "", 500, "" }
        };
        backpacks[] = {
            { "NONE", $STR_C_Remove_backpacks, 0, "" }
        };
    };

    class gun_clothing {
        title = "STR_Shops_C_Gun";
        conditions = "license_civ_gun";
        side = "civ";
        uniforms[] = {
            { "NONE", $STR_C_Remove_uniforms, 0, "" }
        };
        headgear[] = {
            { "NONE", $STR_C_Remove_headgear, 0, "" }
        };
        goggles[] = {
            { "NONE", $STR_C_Remove_goggles, 0, "" }
        };
        vests[] = {
            { "NONE", $STR_C_Remove_vests, 0, "" },
            { "V_Rangemaster_belt", "", 400, "" }
        };
        backpacks[] = {
            { "NONE", $STR_C_Remove_backpacks, 0, "" }
        };
    };

    class gang_clothing {
        title = "STR_Shops_C_Gang";
        conditions = "";
        side = "civ";
        uniforms[] = {
            { "NONE", $STR_C_Remove_uniforms, 0, "" }
        };
        headgear[] = {
            { "NONE", $STR_C_Remove_headgear, 0, "" }
        };
        goggles[] = {
            { "NONE", $STR_C_Remove_goggles, 0, "" }
        };
        vests[] = {
            { "NONE", $STR_C_Remove_vests, 0, "" },
            { "V_Rangemaster_belt", "", 250, "" }
        };
        backpacks[] = {
            { "NONE", $STR_C_Remove_backpacks, 0, "" }
        };
    };

    class med_clothing {
        title = "STR_MAR_EMS_Clothing_Shop";
        conditions = "";
        side = "med";
        uniforms[] = {
            { "NONE", $STR_C_Remove_uniforms, 0, "" },
            { "U_B_CombatUniform_mcam", $STR_C_EMS_uniforms, 50, "" }
        };
        headgear[] = {
            { "NONE", $STR_C_Remove_headgear, 0, "" },
            { "H_Cap_blu", "", 10, "" }
        };
        goggles[] = {
            { "NONE", $STR_C_Remove_goggles, 0, "" },
            { "G_Shades_Blue", "", 10, "" }
        };
        vests[] = {
            { "NONE", $STR_C_Remove_vests, 0, "" }
        };
        backpacks[] = {
            { "NONE", $STR_C_Remove_backpacks, 0, "" },
            { "B_FieldPack_oli", $STR_C_EMS_backpacks, 50, "" }
        };
    };

    class reb {
        title = "STR_Shops_C_Rebel";
        conditions = "license_civ_rebel";
        side = "civ";
        uniforms[] = {
            { "NONE", $STR_C_Remove_uniforms, 0, "" },
            { "U_IG_Guerilla1_1", "", 300, "" },
            { "U_I_G_Story_Protagonist_F", "", 400, "" },
            { "U_I_G_resistanceLeader_F", "", 450, "" },
            { "U_IG_leader", "", 450, "" },
            { "U_O_PilotCoveralls", "", 200, "" },
            { "U_O_SpecopsUniform_ocamo", "", 500, "" },
            { "U_O_GhillieSuit", "", 900, "" },
            { "U_B_T_Soldier_F", "", 800, "" }, //Apex DLC
            { "U_I_C_Soldier_Bandit_1_F", "", 700, "" }, //Apex DLC
            { "U_I_C_Soldier_Bandit_2_F", "", 700, "" }, //Apex DLC
            { "U_I_C_Soldier_Bandit_3_F", "", 700, "" }, //Apex DLC
            { "U_I_C_Soldier_Bandit_4_F", "", 700, "" }, //Apex DLC
            { "U_I_C_Soldier_Bandit_5_F", "", 700, "" }, //Apex DLC
            { "U_I_C_Soldier_Camo_F", "", 700, "" }, //Apex DLC
			{ "U_B_FullGhillie_lsh", "", 5000, "" }, //Apex DLC
			{ "U_B_FullGhillie_sard", "", 5000, "" }, //Apex DLC
			{ "U_B_FullGhillie_ard", "", 5000, "" }, //Apex DLC
			{ "U_O_FullGhillie_lsh", "", 5000, "" }, //Apex DLC
			{ "U_O_FullGhillie_sard", "", 5000, "" }, //Apex DLC
			{ "U_O_FullGhillie_ard", "", 5000, "" }, //Apex DLC
			{ "U_I_FullGhillie_lsh", "", 5000, "" }, //Apex DLC
			{ "U_I_FullGhillie_sard", "", 5000, "" }, //Apex DLC
			{ "U_B_T_FullGhillie_tna_F", "", 5000, "" }, //Apex DLC
			{ "U_I_FullGhillie_ard", "", 5000, "" }, //Apex DLC
			{ "U_O_T_FullGhillie_tna_F", "", 5000, "" } //Apex DLC
        };
        headgear[] = {
            { "NONE", $STR_C_Remove_headgear, 0, "" },
            { "H_Bandanna_camo", "", 25, "" },
            { "H_ShemagOpen_khk", "", 25, "" },
            { "H_ShemagOpen_tan", "", 25, "" },
            { "H_Shemag_olive", "", 25, "" },
            { "H_HelmetO_ocamo", "", 100, "" }
        };
        goggles[] = {
            { "NONE", $STR_C_Remove_goggles, 0, "" },
            { "G_Shades_Black", "", 20, "" },
            { "G_Shades_Blue", "", 20, "" },
            { "G_Sport_Blackred", "", 25, "" },
            { "G_Sport_Checkered", "", 25, "" },
            { "G_Sport_Blackyellow", "", 25, "" },
            { "G_Sport_BlackWhite", "", 25, "" },
            { "G_Lowprofile", "", 30, "" },
            { "G_Squares", "", 50, "" },
            { "G_Combat", "", 125, "" },
            { "G_Balaclava_blk", "", 150, "" },
            { "G_Balaclava_combat", "", 150, "" },
            { "G_Balaclava_lowprofile", "", 150, "" },
            { "G_Balaclava_oli", "", 150, "" },
            { "G_Bandanna_aviator", "", 150, "" },
            { "G_Bandanna_beast", "", 150, "" },
            { "G_Bandanna_blk", "", 150, "" },
            { "G_Bandanna_khk", "", 150, "" },
            { "G_Bandanna_oli", "", 150, "" },
            { "G_Bandanna_shades", "", 150, "" },
            { "G_Bandanna_sport", "", 150, "" },
            { "G_Bandanna_tan", "", 150, "" }
        };
        vests[] = {
            { "NONE", $STR_C_Remove_vests, 0, "" },
            { "V_BandollierB_khk", "", 350, "" },
            { "V_BandollierB_cbr ", "", 350, "" },
            { "V_BandollierB_rgr", "", 350, "" },
            { "V_BandollierB_oli", "", 350, "" }, //Apex DLC
			{ "V_Chestrig_khk", "", 500, "" }, //Apex DLC
			{ "V_Chestrig_rgr", "", 500, "" }, //Apex DLC
			{ "V_Chestrig_oli", "", 500, "" }, //Apex DLC
			{ "V_TacChestrig_grn_F", "", 500, "" }, //Apex DLC
			{ "V_TacChestrig_oli_F", "", 500, "" }, //Apex DLC
			{ "V_TacChestrig_cbr_F", "", 500, "" }, //Apex DLC
			{ "V_TacVest_khk", "", 1000, "" }, //Apex DLC
			{ "V_TacVest_brn", "", 1000, "" }, //Apex DLC
			{ "_TacVest_oli", "", 1000, "" }, //Apex DLC
			{ "V_TacVest_camo", "", 1000, "" }, //Apex DLC
			{ "V_HarnessO_brn", "", 5000, "" }, //Apex DLC
			{ "V_HarnessO_gry", "", 5000, "" }, //Apex DLC
			{ "V_HarnessO_ghex_F", "", 5000, "" }, //Apex DLC
			{ "V_PlateCarrier1_rgr", "", 9500, "" }, //Apex DLC
			{ "V_PlateCarrierIA1_dgtl", "", 9500, "" }, //Apex DLC
			{ "V_PlateCarrier1_tna_F", "", 9500, "" }, //Apex DLC
			{ "V_PlateCarrier1_rgr_noflag_F", "", 9500, "" }, //Apex DLC
			{ "V_PlateCarrier2_rgr", "", 14000, "" }, //Apex DLC
			{ "V_PlateCarrier3_rgr", "", 14000, "" }, //Apex DLC
			{ "V_PlateCarrierIA2_dgtl", "", 14000, "" }, //Apex DLC
			{ "V_PlateCarrier_Kerry", "", 14000, "" }, //Apex DLC
			{ "V_PlateCarrier2_tna_F", "", 14000, "" }, //Apex DLC
			{ "V_PlateCarrierGL_tna_F", "", 19500, "" }, //Apex DLC
			{ "V_PlateCarrierIAGL_dgtl", "", 26000, "" }, //Apex DLC
			{ "V_PlateCarrierIAGL_oli", "", 26000, "" }, //Apex DLC
			{ "V_PlateCarrierGL_tna_F", "", 26000, "" } //Apex DLC
        };
        backpacks[] = {
          { "NONE", $STR_C_Remove_backpacks, 0, "" },
          { "B_OutdoorPack_blk", "", 60, "" },
          { "B_AssaultPack_khk", "", 60, "" },
          { "B_AssaultPack_dgtl", "", 60, "" },
          { "B_AssaultPack_rgr", "", 60, "" },
          { "B_AssaultPack_sgg", "", 60, "" },
          { "B_AssaultPack_blk", "", 60, "" },
          { "B_AssaultPack_cbr", "", 60, "" },
          { "B_AssaultPack_mcamo", "", 60, "" },
          { "B_AssaultPack_tna_f", "", 60, "" }, //Apex DLC
          { "B_TacticalPack_oli", "", 60, "" },
          { "B_Kitbag_mcamo", "", 60, "" },
          { "B_Kitbag_sgg", "", 50, "" },
          { "B_Kitbag_cbr", "", 50, "" },
          { "B_FieldPack_blk", "", 120, "" },
          { "B_FieldPack_ocamo", "", 120, "" },
          { "B_FieldPack_oucamo", "", 120, "" },
          { "B_FieldPack_ghex_f", "", 120, "" }, //Apex DLC
          { "B_Bergen_sgg", "", 120, "" },
          { "B_Bergen_mcamo", "", 120, "" },
          { "B_Bergen_rgr", "", 120, "" },
          { "B_Bergen_blk", "", 120, "" },
          { "B_Carryall_ocamo", "", 100, "" },
          { "B_Carryall_oucamo", "", 100, "" },
          { "B_Carryall_mcamo", "", 100, "" },
          { "B_Carryall_oli", "", 100, "" },
          { "B_Carryall_khk", "", 100, "" },
          { "B_Carryall_cbr", "", 100, "" },
          { "B_Carryall_ghex_f", "", 100, "" }, //Apex DLC
          { "B_Bergen_dgtl_f", "", 120, "" }, //Apex DLC
          { "B_Bergen_tna_f", "", 120, "" } //Apex DLC
        };
    };

    class advancedreb {
        title = "STR_MAR_advancedrebel_Clothing_Shop";
        conditions = "license_civ_advancedrebel";
        side = "civ";
        uniforms[] = {
            { "NONE", $STR_C_Remove_uniforms, 0, "" }
        };
        headgear[] = {
            { "NONE", $STR_C_Remove_headgear, 0, "" }
        };
        goggles[] = {
            { "NONE", $STR_C_Remove_goggles, 0, "" }

        };
        vests[] = {
            { "NONE", $STR_C_Remove_vests, 0, "" },
            { "V_HarnessOGL_gry", "Suicide Vest", 120, "" }
        };
        backpacks[] = {
          { "NONE", $STR_C_Remove_backpacks, 0, "" },
        };
    };

    class government {
        title = "Government Clothing";
        conditions = "";
        side = "civ";
        uniforms[] = {
            { "NONE", $STR_C_Remove_uniforms, 0, "" },
            { "U_Marshal", "Government Security Only", 100, "license_civ_government" },
            { "U_C_Man_casual_1_F", "Government Security", 100, "" },
            { "U_C_Man_casual_2_F", "Government Officials", 100, "" },
            { "U_C_Man_casual_3_F", "Government Officials", 100, "" },
            { "U_C_Man_casual_4_F", "Government Officials", 100, "" },
            { "U_C_Man_casual_5_F", "Government Officials", 100, "" },
            { "U_C_Man_casual_6_F", "Government Officials", 100, "" }

        };
        headgear[] = {
            { "NONE", $STR_C_Remove_headgear, 0, "" },
            { "H_Cap_blk", "Government Security Patrol", 200, "license_civ_government" }

        };
        goggles[] = {
            { "NONE", $STR_C_Remove_goggles, 0, "" },
            { "G_Aviators", "Aviators", 200, "" }
        };
        vests[] = {
            { "NONE", $STR_C_Remove_vests, 0, "" },
            { "V_PlateCarrier1_blk", "Government Security Only", 5000, "license_civ_government" }
        };
        backpacks[] = {
            { "NONE", $STR_C_Remove_backpacks, 0, "" },
            { "B_AssaultPack_blk", "Government Security", 200, "" }
        };
    };

    class kart {
        title = "STR_Shops_C_Kart";
        conditions = "";
        side = "civ";
        uniforms[] = {
            { "NONE", $STR_C_Remove_uniforms, 0, "" },
            { "U_C_Driver_1_black", "", 200, "" },
            { "U_C_Driver_1_blue", "", 200, "" },
            { "U_C_Driver_1_red", "", 200, "" },
            { "U_C_Driver_1_orange", "", 200, "" },
            { "U_C_Driver_1_green", "", 200, "" },
            { "U_C_Driver_1_white", "", 200, "" },
            { "U_C_Driver_1_yellow", "", 200, "" },
            { "U_C_Driver_2", "", 200, "" },
            { "U_C_Driver_1", "", 200, "" },
            { "U_C_Driver_3", "", 200, "" },
            { "U_C_Driver_4", "", 200, "" }
        };
        headgear[] = {
            { "NONE", $STR_C_Remove_headgear, 0, "" },
            { "H_RacingHelmet_1_black_F", "", 200, "" },
            { "H_RacingHelmet_1_red_F", "", 200, "" },
            { "H_RacingHelmet_1_white_F", "", 200, "" },
            { "H_RacingHelmet_1_blue_F", "", 200, "" },
            { "H_RacingHelmet_1_yellow_F", "", 200, "" },
            { "H_RacingHelmet_1_green_F", "", 200, "" },
            { "H_RacingHelmet_1_F", "", 200, "" },
            { "H_RacingHelmet_2_F", "", 200, "" },
            { "H_RacingHelmet_3_F", "", 200, "" },
            { "H_RacingHelmet_4_F", "", 200, "" }
        };
        goggles[] = {
            { "NONE", $STR_C_Remove_goggles, 0, "" }
        };
        vests[] = {
            { "NONE", $STR_C_Remove_vests, 0, "" }
        };
        backpacks[] = {
            { "NONE", $STR_C_Remove_backpacks, 0, "" }
        };
    };
};
