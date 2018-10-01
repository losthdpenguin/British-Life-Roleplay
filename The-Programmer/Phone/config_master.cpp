/*
    Author: Maxence Lyon
    Altis DEV: https://altisdev.com/user/maxence-lyon
    Teamspeak 3: ts.familledeschats.ovh (Une Vache Sur CS)
    Web site: http://62.210.144.223/ (http://familledeschats.ovh)
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

class Max_Settings_Phone {
    default_lang = "en"; // fr / en / de / es

    price_buy_sim = 100; // PRIX POUR ACHETER UNE CARTE SIM

    calls_management_script_enable = false;

    phone_number_first_connexion = true; // CREATE PHONE NUMBER ON FIRST CONNEXION

    messages_to_depanneurs = true; // AUTORISER L'ENVOIE DE MESSAGE AUX DEPANNEURS (true/false)
    licence_depanneurs = "license_civ_entreprise"; // LICENCE DES DEPANNEURS ("license_civ" + variable de la licence)

    start_with_0 = true; // LE TOUT PREMIER NUMERO DU TELEPHONE EST UN 0
    first_numbers = 7; // PREMIERS NUMERO(S) D'UN NUMERO DE TELEPHONE APRES LE 0 SI ACTIVE
    numbers_after_first_numbers = 9; // NOMBRE DE NUMERO GENERES APRES LES NUMERO DE LA LIGNE DU DESSUS

    num_cop = 101; // NUMERO POUR ENVOYER UN MESSAGE AUX GENDARMES
    num_med = 111; // NUMERO POUR ENVOYER UN MESSAGE AUX MEDECINS
    num_cop_med = 999; // NUMERO POUR ENVOYER UN MESSAGE AUX GENDARMES ET MEDECINS
    num_dep = 666; // NUMERO POUR ENVOYER UN MESSAGE AUX DEPANNEURS

    time_before_delete_dep_marker = 30; // in seconds

    display_online_contacts = true; // DISPLAY (with color) IF YOUR CONTACT IS ONLINE

    class special_numbers {
        class entreprise1 {
            number = 08001;
            displayname = "entreprise";
            license = "license_civ_variable_licence_entreprise";
        };
        class entreprise2 {
            number = 08002;
            displayname = "entreprise";
            license = "license_civ_variable_licence_entreprise";
        };
    };
};
