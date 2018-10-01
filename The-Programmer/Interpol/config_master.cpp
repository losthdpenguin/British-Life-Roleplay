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
#define false 0
#define true 1

class Max_Settings_Interpol {
    default_lang = "en"; // fr / en / de / es

    eye_colors[] = {"Brown","Blue","Hazel","Green","Grey","Red"};
    min_cop_level_remove_crime = 5;
    phone_numbers_script = true;

    crimes[] = { // WARNING : DO NOT USE ' IT CANNOT BE SAVED IN YOUR DATABASE !!
        //{"DISPLAYED TEXT","PRICE"},
        {"Assault",5000},  //Assault is committed where someone unlawfully touches or applies force to a person..
  {"Assault on an Officer", 20000},  //Assault on an Officer is committed where someone attempts to unlawfully touch or apply force to a Police Officer..
  {"Attempted Murder",0},  //Attempted Murder is committed when someone performs the action of killing someone but is unsuccessful in that action.
  {"Murder",0},  //Murder is commited when someone unlawfully kills someone with the intent on killing them.
  {"Conspiring to Commit Murder", 25000},  //Conspiring to Commit Murder is committed when someone makes steps or plans to murder someone..
  {"Manslaughter",20000},  //Manslaughter is committed when an criminal or reckless act results in the death of a person where there was no intent to kill them..
  {"Threats to Kill",15000},  //Threats to Kill is commited when someone makes threats to kill another person whether there was intent or not..
  {"Resisting Arrest",5000},  //Resisting Arrest is committed when someone intentionally attempts to resist arrest by a Police Officer..
  {"Assault with Intent to Resist Arrest",10000},  //Assault with Intent to Resist Arrest is committed when someone assaults and Police Officer while resisting arrest.
  {"Attempted Prison Break",0},  //Attempted Prison Break is committed when someone attempts to break someone out of the prison..
  {"Prison Break",0},  //Prison Break is committed when someone successfully breaks someone out of prison..
  {"Escaping Prison",0},  //Escaping Prison is committed when someone successfully breaks out of prison.
  {"Riot",30000},  //Riot is commmitted where a group of 8 or more people cause violence in a public place..
  {"Failure to Identify",2000},  //Failure to Identify is committed when someone fails to show their ID to a Police Office upon request..
  {"Urinating in a Public Place",1000},  //Urinating in a Public Place is committed when someone attempts to urinate in a public place or in public view..
  {"Public Disturbance",2000},  //Public Disturbance is committed when someone acts in a way that causes harrassment, alarm or distress to any person..
  {"Theft",10000},  //Theft is committed when someone dishonestly appropriates property belonging to another with the intention to permenantly deprive the other of it..
  {"Robbery",20000},  //Robbery is committed when someone uses or threats violence to steal an item belonging to another without a weapon.
  {"Armed Robbery",40000},  //Armed Robbery is committed when someone uses or threats violence to steal an item belonging to another with a weapon.
  {"Taking a Vehicle Without Consent",30000},  //Taking a Vehicle Without Consent is committed when someone takes a vehicle that is not theirs without consent..
  {"Attempted Vehicle Theft",15000},  //Attempted Vehicle Theft is committed when someone is in the act of lockpicking and/or taking a vehicle..
  {"Wearing Police Issued Clothing",15000},  //Wearing Police Issued Clothing is committed when someone is wearing items or clothing issued to or worn by Police Officers..
  {"Possession of Police Issued Equipment",30000},    //Possession of Police Issued Equipment is committedwhen someone has in their possession equipment only available to police officers.
  {"Perverting the Course of Justice",15000},  //Perverting the Course of Justice is committed when a person blocks a police officer from executing his duties..
  {"Possession of a Legal Firearm Without a License",15000},  //Possession of a Legal Firearm Without a License is committed when someone carries a legal firearm without a license for it..
  {"Visible Legal Firearm in a Public Area",15000},  //Visible Legal Firearm in a Public Area is committed when someone has a legal firearm out in a public area without a reasonable excuse..
  {"Possession of an Illegal Firearm",40000},  //Possession of an Illegal Firearm is commited when someone has in their possession an illegal firearm..
  {"Having an Illegal Attachment",5000},  //Having an Illegal Attachment is committed when someone has in their possession an illegal weapon attachment..
  {"Having an Illegal Magazine",5000},  //Having an Illegal Magazine is committed when someone has in their possession an illegal weapon magazine..
  {"Speeding Highway Roads (Orange)",5000},  //Speeding Highway Roads (Orange) is committed when someone speeds above 130km/h or 30km/h within city limits..
  {"Speeding Countryside Roads (White)",2000},  //Speeding Countryside Roads (White) is committed when someone speeds above 100km/h or 50km/h within city limits..
  {"Speeding Dirt Roads (Beige)",2000},  //Speeding Dirt Roads (Beige) is committed when someone speeds above 70km/h or 30km/h within city limits..
  {"Possession of Illegal Vehicles",50000},  //Possession of Illegal Vehicles is committed when someone has in their possession an illegal vehicle..
  {"Driving with No Lights",2000},  //Driving with Not Lights is committed when someone is driving a vehicle at night with no lights on..
  {"Driving with Night Vision + No Lights",1000},  //Driving with Night Vision + No Lights is committed when someone is driving a vehicle with night vision and no lights on..
  {"Misuse of Horn",1000},  //Misuse of Horn is committed when someone uses their vehicle horn other than for using it in an emergency..
  {"Driving Without a License",5000},  //Driving Without a License is committed when someone is driving any vehicle without having a standard driving license..
  {"Driving with the Wrong License",2500},  //Driving with the Wrong License is committed when someone is driving a vehicle without having the correct license..
  {"Driving in Reverse or on Wrong Side of the Road",4000}, // Driving in Reverse or on Wrong Side of the Road is committed when someone is driving in reverse or on the wrong side of the road.  //Driving in Reverse or on Wrong Side of the Road is committed when someone is driving in reverse or on the wrong side of the road..
  {"Failure to Stop for Police",10000},  //Failure to Stop for Police is committed when someone in a vehicle fails to stop when a pull over is initiated by a Police Officer..
  {"Dangerous Driving",25000},  //Dangerous Driving is committed when someone is driving in a behaviour that is unpredictable and causes an issue for other road users..
  {"Driving Under the Influence of Drink of Drugs",20000},  //Driving Under the Influence of Drink of Drugs is committed when someone drives while having taken drugs or alcohol.
  {"Possession of Class A Drugs (5 & Below)",40000},  //Possession of Class A Drugs (5 & Below) is committed when someone is in possession of Heroin, Cocaine, Meth or LSD with a total of 5 or less..
  {"Intent to Supply Class A Drugs (6 or more)",100000},  //Intent to Supply Class A Drugs (6 or more) is committed when someone has in their possession Heroin, Cocaine, Meth or LSD with a total of 6 or more..
  {"Possession of Class B Drugs (5 & Below)",30000},  //Possession of Class B Drugs (5 & Below) is committed when someone has in their possession Marijuana..
  {"Intent to Supply Class B Drugs (6 or More)",80000}, //Intent to Supply Class B Drugs (6 or More) is committed when someone has in their possession Marijuana with a total of 6 or more..
  {"Violation of Restricted Sites",30000}, //Violation of Restricted Sites is committed when someone fly's an aircraft over Prison, Police Stations, HM Treasury, Hospitals and Main Cities..
  {"Landing Within City Limits",25000},  //Landing Within City Limits is committed when someone lands a aircraft within city limits..
  {"Improper Use of Flares",20000},  //Improper Use of Flares is committed when someone uses flares on an aircraft inappropriately..
  {"Attempted Kidnapping",20000},  //Attempted Kidnapping is committed when someone attempts to or is in the act of taking someone against their will..
  {"Kidnapping",30000},  //Kidnapping is committed when someone takes a person against their will. .
  {"Failure to Follow Police Directions",10000},  //Failure to Follow Police Directions is committed when someone fails to follow a lawful and reasonable order from a Police Officer. .
  {"Trespassing on Private Property",5000},   // Trespassing on Private Property is committed when someone knowingly enters private roperty/land without permission and/or good intentions. .
  {"Trespassing on Government Property",25000}  // Trespassing on Government Propert is committed when someone knowingly enters a government facility without permission and/or good intentions. .
    };
};
