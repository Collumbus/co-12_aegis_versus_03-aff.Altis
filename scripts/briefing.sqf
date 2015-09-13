/* Briefing
 * The briefing can be defined by calling FHQ_TT_addBriefing.
 * The array is built like this.
 * The first element should be a filter (side, group, faction, or a piece of script). All units matching the
 * filter will see the briefing
 * This is followed by pairs of strings, a head line, and an actual text.
 * Briefings are added in the order in which they appear for any unit that matches
 * the last filter.
 */
[
	{true},
		["Mission",
			"Perditus and Derelictus will eliminate the last of the Nekron Chelia fighters at their <marker name='obj1'>base</marker>, steal an AAF <marker name='obj3'>Zamak truck</marker> filled with explosives and deliver it <marker name='obj4'>north-east</marker>."],

		["Situation",
			"October 21st 2024: PMC Aegis local high command (callsign 'Corona') has finally established a satellite link to Aegis reconnaissance satellite Hannibal-6 at FOB Aurum. Corona has located the third and final <marker name='obj1'>base</marker> of the Nekron Chelia fighters and has tasked two five operator teams to eliminate the extremists. The <marker name='perditus_start'>point team</marker> (callsign 'Perditus') has been inserted north of the base and the <marker name='derelictus_start'>supporting team</marker> (callsign 'Derelictus') south of the base. Corona reminds the teams to not let any of the NC fighters escape as that would jeopardize Aegis presence on Altis.<br/><br/>Corona has been monitoring AAF radio communication channels and learned that an AAF combat engineer team's <marker name='obj3'>temporary observation point</marker> east of the NC base contains plenty of explosives fit for future Aegis operations on Altis. The combat engineers are observing the 14 wind turbines on the nearby hills and performing maintenance as needed. Corona has learned that disabling the <marker name='obj2'>key turbine</marker> west of the observation point will render the others unresponsive. This should be enough to cause the combat engineers leave the vicinity of their base and investigate even though it's night.<br/><br/>Aegis operators must deliver the AAF <marker name='obj3'>Kamaz truck</marker> containing the explosives <marker name='obj4'>north-east</marker> of the observation point and leave the AO. Corona will provide intel by monitoring the situation via the satellite uplink and AAF radio channels. The Aegis operators are equipped with the weapons stolen from the NC earlier this week, enjoy."],

		["Enemy",
			"Corona estimates that the Nekron Chelia fighters at the base are rather poorly armed and disorganized due to the fact that the extremists have no leader and have already lost some 70 percent of their fighters. Aegis operators and the NC lack NV capabilities but the sky is clear and visibility good for a night time operation.<br/><br/>The AAF fighters at the observation point however are heavily armed, trained and organized and Derelictus and Perditus are to approach with extreme caution. Corona has also spotted movement near the small airstrip in the south-east. Thermals suggest several vehicles, most likely AAF. The reason for their presence remains unknown.<br/><br/>Perditus and Derelictus are equipped with all the explosives Aegis has on Altis and Corona advises the operators to use them wisely and make the acquisition of the Zamak truck priority. Corona has already identified several potential targets all around Altis to help PMC Aegis destabilize the Altian government and cause turmoil among the citizens."],

		["Callsigns",
			"Corona: local high command operating at FOB Aurum.<br/>Perditus: surgical element, based at FOB Cuprum.<br/>Derelictus: supporting element, based at FOB Ferrum."],

        ["Additional",
			"PMC Aegis uses FHQ Task Tracker to provide operators with briefings and tasks."]

] call FHQ_TT_addBriefing;

[
	{true},                                                         // Filter
    	["task1",										// Task name
         "Eliminate all the Nekron Chelia fighters in the last <marker name='obj1'>base</marker>. Do not let anyone escape.",				       // Task text in briefing
         "Clear the base.",							// Task title in briefing
         "courier"										// Waypoint text

        ],
        ["task2",										// Task name
         "Disable the <marker name='obj2'>key wind turbine</marker> to draw AAF forces away from the observation point.",				       // Task text in briefing
         "Disable the turbine (optional).",							// Task title in briefing
         "commander"											// Waypoint text

        ],
		["task3",										// Task name
         "Steal the <marker name='obj3'>ammo truck containing the explosives</marker> and deliver it <marker name='obj4'>north-east</marker>.",				       // Task text in briefing
         "Steal the ammo truck.",							// Task title in briefing
         "ammo trucks"										// Waypoint text

        ]
] call FHQ_TT_addTasks;
