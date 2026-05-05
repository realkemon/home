# Dingenskirchen:
* Changed window shutter to be flush with walls to reduce brush faces.
* Changed lamp model from custom to low poly vanilla to reduce tris.
* Removed clips from lamps.
* Removed coronas from lamps.
* Adjusted texture alignment on various brushes.
* Changed walkways at Allied spawn to reduce time spent in water and reduce tris.
* Changed snow texture to a more snowy snow. Thank you Dmxj for reporting.
* Moved village flag to outside of the archway for easier movement and capturing. Thank you Dmxj for reporting.
* Moved river flag towards the forward gates for easier capturing. Thank you UJE for reporting.
* [TODO] Convert from Axial Projection to Brush Primitives.
* [TODO] Put suitcase model in tram and have that come up after tank shoots castle to prevent maprush. Thank you //XP*Captain for reporting.
* [TODO] Change gate lever behaviour. Allies only open, Axis only close. Add announcement (u!ps)
* [TODO] add Allied castle church spawn after suitcase delivered (u!ps)
* [TODO] add satchelable door to village flag through blocked area (u!ps)


# Frostbite
* cm icons out of compass (storage gate) -> maybe make sketch style as well
* command map in G not transparent
* make axis garage spawn as initial spawn optionally possible
* [TODO] storage_wall_rubble on one side is missing. Thank you u!ps for reporting
* [TODO] make voice announcements less spammy. Thank you u!ps for reporting.
* [TODO] make a gap in railing outside Axis spawn down to garage for easier movement. Thank you u!ps for reporting.
* [TODO] Fixed misaligned cob webs inside transmitter building by removing them. Thank you Drempa? for reporting.
* [TODO] Give all CP entities scriptnames for better modification. Thank you u!ps for reporting.
* [TODO] Service Door announcement always playing when CP constructed even if already destroyed. Thank you u!ps for reporting.
* [TODO] Added CP ladder indicator visible from Axis garage spawn. Thank you u!ps for reporting.
* [TODO] Fuel dump has existing voice line for allies on depotdef construction, which is missing in ETL_supply. Thank you u!ps for reporting.


# Adlernest
* [TODO]	OBJ states not working properly (documents, cp, blast door). Thanks uips for reporting.
* [TODO]	mortar sitting outside bunker near axis spawn mortaring. c0rnn reported in pm
* [TODO]	docs are not returned from abyss if dropped without a player attached. Ask Aciz about contents_nodrop
* [TODO]	Fixed caulk leaks and faulty lamp model in ventilator shafts. 
* [TODO]	Fixed noticably different texture scaling (predominantly outside Axis spawn window.
* [TODO]	Added wobble effect to pressure gauge at gate levers to be consistent with other overhauls.
* [TODO]	Changed visuals of spawn areas to give them a clearer distinction.
* [TODO]	Add map-specific voice announcements.
* [TODO]	Change command map to a more minimalistic style.
* [TODO]	Add placeholder documents model at transmitter.
* [TODO]	Separate levelshot shader for easier maintenance. Thank you u!ps for reporting.
* [TODO]	Add BSP name colouring to be consistent with other overhauls. Thank you u!ps for reporting.
* [TODO]	Changed shelf outside documents room towards Axis spawn for more consistent collision for explosive damage calculation. Thank you jENiK for reporting.


# Base
* Expand Axis spawn so all are on the far side with same angle and decision. Thank you u!ps for reporting.
* Schript hotfix for dynamitable gate popping up. Thank you La Coast for reporting. 
* some command post teamvoices missing in etl base. Thank you u!ps for reporting.
* smoothen collision around couches and potted plants


# Warbell
* Fixed possibility of accidentally delivering armour pieces to altar making the map unwinnable for attackers. Thank you u!ps for reporting.
* Fixed phone easter-egg not being functional.
* Fixed 'dynamite planted' voice line playing when Allies plant at the armour pieces. Thank you u!ps for reporting.
* Added Command Map marker for Heinrich's armour pieces.
* Added 'objective secured' voice announcements for book and armour pieces delivery. Thank you u!ps for reporting.
* Added another optional feature to the castle church ceiling hole. You can choose between completely empty as default, a rope constructible for Axis to climb up or a box with hay to safely land in (Assassin's Creed style). Choose either! Don't combine unless you know what you're doing in the script. Thank you u!ps for reporting.
* Changed Heinrich's armour models. Sword to shoulder pads for better visibility. Thank you u!ps for reporting.
* Readjusted fire light colour and saturation. Thank you u!ps for reporting.
* Added optional second staircase in guardhouse to rebalance the first objective. Thank you u!ps for reporting.
* [TODO] compass icon outside bounds - u!ps
* [TODO] Warbell fucks up Ice shaders - u!ps
* [TODO] bugged door: https://discord.com/channels/@me/1037054322426532041/1248367587075559454


# Supply
* Fixed incorrect naming of optional bunkers in first stage. Thank you TomekKromek for reporting.
* [TODO] Changed tunnel walls from wire to solid to prevent gameplay hickups along corners. Thank you u!ps for reporting.
* [TODO] Add voice announcements for gold on truck. Thank you u!ps for preparing.
* [TODO] Brighten background in depot window to improve visibility. Thank you u!ps for reporting.
* [TODO] Added windows inside the forward bunker to match the outside look. Thank you u!ps for reporting.
*	[TODO] Use more uniform lighting for lower contrast and better visibility. Thank you comp scene for reporting.
* [TODO] make VIS blocking in the crane room less aggressive https://discord.com/channels/260750790203932672/260804408831508484/1246910952457375755
* [TODO] Declutter gameplay area. Mainly wires and poles.


# Bergen
* [TODO] MG sand bag popping in and out of view. Thank you u!ps for reporting
https://discord.com/channels/260750790203932672/710411372571262997/1422685245580382209
* [TODO] command map icons without name. Thank you u!ps for reporting.
* [TODO] widen Bunker layout for easier movement. Thank you u!ps for reporting.


# Braundorf
* Fixed Allied spawn flag not appearing on limbo map when dynamiting the city gate without capturing the flag first. Thank you _Ler and u!ps for reporting.
	--> This existed as a script fix for v2
* Removed double annoucnement for destroyed bunker controls. Thank you u!ps for reporting.
* [TODO] Repositioned city gate debris to reintroduce speedboost TJ that was possible in the original. Thank you DKill for reporting.
* [TODO] Removed double cm icons for rear entrance. Thank you u!ps for reporting.
* [TODO] CP objective state in limbo menu is inverted. Thank you u!ps for reporting.
* [TODO] Sorted out naming incosnistencies for side gate and rear entrance. Thank you u!ps for reporting.
* [TODO] Disable bell sound (and all other sounds) at map start to prevent continuous ringing after map_restart during ringing. Thank you c0rnn for reporting.
* [TODO] u!ps PM --> "question about braundorf city_gate"  27/02/25


ALL OVERHAULS
* Remapshader objective icon from ! to whatever the objective looks like. E.g. Transmitter --> u!ps Discord PM
* separate levelshot shader
* Add proper voice lines
* disable sounds at map start
