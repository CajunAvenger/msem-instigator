class ConditionIsPlayed < Condition
	def search(db)
		names = [
			"mountain",
			"swamp",
			"island",
			"wayfarer's shrine",
			"plains",
			"scorch",
			"metal munch",
			"mirrorgate",
			"nebula of empty gold",
			"forest",
			"duress",
			"shardstone rift",
			"seal the tomb",
			"crumbling precipice",
			"shikai's redoubt",
			"cosmic sinkhole",
			"valdez, leafdown vagabond",
			"crystal cavern",
			"murmuring falls",
			"spell pierce",
			"magmatic torrent",
			"imperial siege",
			"sear flesh",
			"nomad's township",
			"pith wilt",
			"pay up",
			"grim bastion",
			"blood jade prophet",
			"flooded depths",
			"rampant summit",
			"rift splicing",
			"shifting glade",
			"mysterious cataract",
			"polyp pools",
			"sealed riftway",
			"shi hou's command",
			"barren desolation",
			"stand unassailable",
			"frostfire geysers",
			"ragavan, most wanted",
			"the flames approach",
			"unrivaled fireweaver",
			"sedate tundra",
			"firehearth halls",
			"lavatorn fields",
			"forgotten steppe",
			"monument of queens",
			"profane emissary",
			"shan jun's command",
			"flooded morass",
			"lush oasis",
			"solar flare",
			"arctic mine",
			"timber range",
			"voidflare",
			"veindrinker's cabalist",
			"ocean monastery",
			"corpsebed",
			"portal fracture",
			"sunlit highland",
			"out-of-body experience",
			"long forgotten",
			"forbidden treasure",
			"resplendent substratum",
			"conquer psyche",
			"niu mo wang, ashen absolution",
			"wave of decay",
			"prying inquiry",
			"exeunt",
			"admonish",
			"kai'zhou, the purifier",
			"lumbering hillock",
			"oracle's vision",
			"dark bargain",
			"rakkiri dissident",
			"chronicles of the kitsune",
			"lt. daisy saxon",
			"relic corrosion",
			"secrets of coralight court",
			"swarming midden",
			"monkeyshines",
			"unstoppable slaughter",
			"olten surveyor",
			"gloomcover steppe",
			"fungal mire",
			"sacrificial bull",
			"rapacious rattler",
			"ready for anything",
			"exhilarating prescience",
			"unjust sentence",
			"cursory glance",
			"pool of light",
			"anzen, beyond the sea",
			"violent collapse",
			"sesilius of wicked ways",
			"journey's end",
			"unburdened rage",
			"flourishing crevasse",
			"recall forgotten eons",
			"cane dancer",
			"invalidate",
			"valeri kripac",
			"civilization's cost",
			"forked pillar",
			"banished companion",
			"ominous palace",
			"forbidden palace",
			"embodied soul",
			"ruin delver",
			"enopraxia's endeavor",
			"crest",
			"still the pandemonium",
			"tunu, ancient shaper",
			"leafdown sizzlemage",
			"shal'draen's rage",
			"ignition ritual",
			"lost through dreams",
			"alratha, pearl of the sand sea",
			"beat & batter",
			"stormsurge",
			"ramzi, traveling merchant",
			"seek prophecy",
			"jejun, dark hunter",
			"ominous discovery",
			"renewal grove",
			"auros, the red king",
			"commanding princess",
			"emissary of antiquity",
			"prodigious panya",
			"anointed cursebreaker",
			"tal, locus sentry",
			"basat charm",
			"guiding light",
			"strike from the shadows",
			"celestial banishment",
			"terraformer's globe",
			"amber hills",
			"lumenbay flyer line",
			"qi-long gust",
			"roggar's frenzy",
			"xifang hu, light within",
			"mattia, hero of tinyvale",
			"mana ascetic",
			"new divide",
			"enter mephisto's gate",
			"flamecaller's command",
			"heart of the glade",
			"conspiracy of ravens",
			"babyscale bruiser",
			"tyrant of tributes",
			"aerie's pillar",
			"tiny heroine totti",
			"cinderhoof minotaur",
			"singularity's grasp",
			"northern express line",
			"unceasing flames",
			"ostracizer orb",
			"unearth",
			"intrepid",
			"memento mori",
			"oriq soulweaver",
			"dovon, verdant experimenter",
			"serene chapel",
			"forsaken palace",
			"mystery of the crashed craft",
			"imperial claim",
			"kai'oro, grave betrayer",
			"lay bare ambitions",
			"wheat from chaff",
			"self replication",
			"infectious ego",
			"oozing yaoguai",
			"bessie's brood",
			"qi block",
			"kinken, the dragon's breath",
			"jade vault reclaimer",
			"hierarch ranger",
			"extraction mercenary",
			"caylin whirlwind",
			"roggar's gambit",
			"expose",
			"here with you",
			"thought blossom",
			"gift of the phoenix",
			"thunder road",
			"unraveling",
			"leyran alpha",
			"beneath the zhedina",
			"deform sanity",
			"vivien the sagittar",
			"justiciar overseer",
			"channeler of the veil",
			"careless violence",
			"witch of spring's promise",
			"tahli's council",
			"lotus barrens",
			"lisa, the daughter",
			"suitor of the sea",
			"fiery erasure",
			"envoy of divine progress",
			"neutralize",
			"holdsteady engine",
			"channeling stone",
			"miserable discovery",
			"chi lee of the underworld",
			"seeker of untouched beauty",
			"sigil of radiance",
			"primal resurgence",
			"esalia, steward of caer crann",
			"montane palace",
			"tanya, leader of the pack",
			"eminent palace",
			"event horizon",
			"tyrant's breath",
			"devised companions",
			"el, humble apprentice",
			"heart of zhedina",
			"rushwater raider",
			"calciform wastes",
			"master negotiator",
			"timeworn crags",
			"brazen sacrilege",
			"hemley eggfeather",
			"hungering cult",
			"arpechian champion",
			"whisperwoods exploration",
			"radiant palace",
			"bloodriver",
			"herald of oblivion",
			"fulmen, aether prodigy",
			"stormshaper adept",
			"unhappy ending",
			"traitor's execution",
			"opalescent palace",
			"charming marauder",
			"become immersed",
			"eidolic palace",
			"descend on the helpless",
			"inishtu, desert healer",
			"rousing rubble",
			"korrinary warcaller",
			"helena, the awakener",
			"legion angel",
			"subdue false idols",
			"disciple of faradia",
			"no good deed goes unpunished",
			"abscond",
			"sultan of avarice",
			"celestial mandate",
			"cosmic coalescing",
			"veilborn meddler",
			"ancestral council",
			"selective breeding",
			"helene, bound by might",
			"rod of marble row",
			"canyon creek",
			"rawthlin market line",
			"weeping lotus",
			"starlit raze",
			"mortal benediction",
			"brutal blow",
			"left on the wayside",
			"in dire straits",
			"jara champion",
			"bustling marketplace",
			"rot",
			"henros, royal herald",
			"petal scatterer",
			"reveal eternities",
			"creative salvage",
			"seto san, the dragonblade",
			"nihilistic shock trooper",
			"lucien, the grifter",
			"invoking the name",
			"miss margaret barton",
			"reclamation grovesculptor",
			"setting sun",
			"agent of deception",
			"lord of the bubbledome",
			"qililia's scavenger",
			"dancer of the great current",
			"olantin pearlreader",
			"antithesis",
			"theocracy",
			"sunken ambitions",
			"crewmaster gillo",
			"confining priest",
			"unexplored regions",
			"brutalize",
			"mable of the sea's whimsy",
			"serene palace",
			"spirit script",
			"small luxuries",
			"nacatl skirmisher",
			"buy time",
			"soul pierce",
			"endless helpless souls",
			"wayfarer's lantern",
			"crumbling shrine",
			"curse of encroaching waters",
			"tsang jin, master of the jade sea",
			"monument to the fallen man",
			"performer of ambition",
			"volatile stonework",
			"vaultkeeper",
			"sofia, fortune's fated",
			"mindrip",
			"karoa's downfall",
			"arrive, surrounded by petals",
			"cognitive fumigator",
			"call of the huma",
			"sights beyond",
			"bonetooth darter",
			"find nothing",
			"blossoming expanse",
			"soul warden",
			"cresting bay",
			"seismic colossus",
			"scrap metal",
			"prove worthy",
			"archaeological experience",
			"a rush of stillness in the air",
			"aiel tazan",
			"retire",
			"boxue and ma'long",
			"powder scatterer",
			"last request",
			"ameret, hope of night",
			"children of the clouds",
			"somber river bearer",
			"wiretapper",
			"tenuous existence",
			"bloodstained calamity",
			"through the ashen gate",
			"graide, voice of autumn",
			"danithra muckbruiser",
			"selvar's defiance",
			"zaukar of the ancient ways",
			"vivid march",
			"oracle's ploy",
			"antimagic",
			"hegemony monarch",
			"fractured reach",
			"kalemn weller",
			"den of vice",
			"seaside grotto",
			"mina, jeweled minnow",
			"elaborate transportation",
			"through the divine gate",
			"the afterlife takes its due",
			"petal-weaver alexa",
			"breach the lilies",
			"sunrise river",
			"shifty fink",
			"curse of bleeding",
			"unstill unlife",
			"twisted masterwork",
			"ria-demian charm",
			"answer midnight's call",
			"makodonis, prime exemplar",
			"coastal dominion",
			"fireshaper adept",
			"unassuming swineherd",
			"jerrold, fugitive",
			"ayala's concord",
			"hsu fu, architect of sunrise",
			"ferocious flame",
			"dragon's eye descendant",
			"a most important prince",
			"what lurks beyond",
			"wave racer",
			"whiterun ordainer",
			"a planet far, far away",
			"enraptured countess",
			"gate of realms",
			"citadel gates",
			"ancient dominion",
			"inked summoner",
			"aiko, tranquil fury",
			"engrave",
			"ajani enlightened",
			"tendrilsnare",
			"leyline invoker",
			"reduce to naught",
			"warhound shuja",
			"ghulish unearthing",
			"pestilent scavenger",
			"shifting cascade",
			"bleak dominion",
			"anax's endeavor",
			"void portal",
			"minotaur skullsmasher",
			"jak, daring vanguard",
			"gleaming river",
			"condor clearings",
			"cranial violation",
			"clockwork gaucho",
			"union rail strikebreaker",
			"end of the rainbow",
			"illuminated firebird",
			"thrasios's endeavor",
			"power plant",
			"plasma enforcer",
			"spilling secrets",
			"masahita, bloodtongue",
			"observer of aeons",
			"intisuyu's masterpiece",
			"zhelid, planar academy",
			"earthbreaker behemoth",
			"tidehollow lich",
			"cumulus horizon",
			"etherium abrogator",
			"kaalia's abomination",
			"ambition's crown",
			"disassociate",
			"salome",
			"dustridden sepulcher",
			"judge's decree",
			"clean-up crew",
			"just business",
			"pensive songwriter",
			"faradia's anointed",
			"soul's attendant",
			"fardancer liege",
			"daisy, the heart of chasmek",
			"the past is gone",
			"thassa, the implacable tide",
			"glymna blackrune",
			"destructive ambition",
			"crowded tavern",
			"parish paragon",
			"darksand acolyte",
			"seedshrine",
			"paint with starflame",
			"diffuse",
			"caulte axeslinger",
			"xira, scatterer of seeds",
			"learn through error",
			"banishing initiate",
			"sink into the floor",
			"mourn no more",
			"antali archdruid",
			"helene, steel of the exiled",
			"bind the mind",
			"vir of the starskipper",
			"chigau, the red market",
			"lord rokai",
			"onya the gilded",
			"tidal spite",
			"mosecf, the sunseeker's path",
			"delve for treasures",
			"sea cache",
			"taranika's endeavor",
			"promethean grotto",
			"sigil of the many",
			"ashe of the winged steed",
			"little pig",
			"operative sporty",
			"ominous dragoncaller",
			"soaring canyon",
			"shi hou, the sun king",
			"mpumo, who stands alone",
			"cai lan, the puppeteer",
			"emperor's retainer",
			"fleeting moments",
			"forbidden shiangshi arts",
			"surge of darkness",
			"precursor sanctum",
			"meteor volley",
			"isolated",
			"inexorable epidemic",
			"mei's collection",
			"verdant dominion",
			"mark of dark opulence",
			"thin the veil",
			"sporeflow protector",
			"herd's bounty",
			"concordant palace",
			"steward of empire's cradle",
			"ruined precipice",
			"pineblight caribou",
			"nyxfall",
			"ring of souls",
			"nature's claim",
			"mei liva, the broken",
			"angelic barracks",
			"archivist's torment",
			"naogui the lotus-charmed",
			"plaxolotl pyari",
			"thriving budling",
			"barx, interplanar mastermind",
			"lady genvieve of caulder",
			"brimstone oration",
			"hidden garden entrance",
			"dark behemoth",
			"fungal swathe",
			"godwatcher",
			"getaway rider",
			"overgrowth guardian",
			"dreams come true",
			"warfield excavator",
			"imperial achievement",
			"rocket admin",
			"goblin chariot",
			"encylopetia",
			"yri, the daring blade",
			"eldritch egg",
			"insipid metamorph",
			"twilight blade",
			"posey, of the seal cloak",
			"keeper of the sanctum",
			"fleeting resonance",
			"halcyon daze",
			"silent wanderer",
			"fierce combatant",
			"underpass sentinel",
			"sunflower fields",
			"witch-queen yarag",
			"provoke the gods",
			"prince of stars",
			"martial maestro",
			"sukhar, consort to the dark",
			"black hole musings",
			"blessed spellroot",
			"collect rotting remains",
			"powercell cultivator",
			"dragon's breath throatsinger",
			"pupil of lightning",
			"miyoga firebird",
			"rippling curtain",
			"flaming point technique",
			"moonlight sanctum",
			"kaur, end of lies",
			"xiyue dragondancer",
			"crystal grotto",
			"against the waves",
			"protective memory",
			"vaeldan's liberator",
			"chikami castle",
			"deadly harpoon",
			"death pits trophy",
			"tegan, the sparrowhawk",
			"pathless shallows",
			"crimson curtain favored",
			"ema, the traveler",
			"tsolmon, the huntress",
			"compelling pariah",
			"hoarding crab",
			"many-voiced tower",
			"down with the ship",
			"frigid thicket",
			"forest fellowship",
			"crossing the fog",
			"shimmering dragon",
			"supernova",
			"rahit, arcane tutor",
			"sunrise bluffs",
			"lone survivor",
			"i-6 dragoon",
			"velir the sunderer",
			"lord ellison crain",
			"tranquil moment",
			"prismatic cavern",
			"warden of silence",
			"ma'long, the skystorm",
			"founding hero",
			"aukan, swift hawk",
			"meteor harbinger",
			"temporal resuscitation",
			"mindwave rod",
			"dayang's displeasure",
			"aethermancer's familiar",
			"bahum, the warden",
			"fluffpuff whisperer",
			"artificer's persuasion",
			"refraction diver",
			"unbound expanse",
			"mennin pack",
			"follow the light",
			"impden mother",
			"sharuum, archmagocrat",
			"slippery bunyip",
			"rei's reinforcements",
			"critters' companion",
			"legitimate establishment",
			"primal dominion",
			"twin lis of the divine realm",
			"operative baby",
			"paw valley alpha",
			"banish the intruders",
			"wildbond aspirant",
			"dawn hill forgemaster",
			"kanaan wardriver",
			"ever-gnawing rat",
			"megalokraken",
			"hunter's mark",
			"curse of grasping air",
			"overactive imagination",
			"hope spot",
			"tea of augury",
			"",
			"mausoleum resident",
			"vorreia's farsight",
			"margyd's celebrant",
			"muktann protectors",
			"crystalcatcher",
			"archaezus, dark salvation",
			"shared reminiscence",
			"fulfill twisted dreams",
			"peer into the cosmos",
			"festival sabotage",
			"salome breaks the lies",
			"call the backup actors",
			"petal blade",
			"blank pages",
			"astral cerberus",
			"milunda, prairie prince",
			"sunset monastery",
			"soul gate",
			"solar hatching",
			"silent hypnotist",
			"barbed reef",
			"transplanted citadel",
			"crystal wave",
			"aether road caravan",
			"plasma blader",
			"iron warden",
			"hoof cliff horngrove",
			"bizarre dreams",
			"blood tide",
			"eye of the beholder",
			"ophidian oracle",
			"dedicated bushwacker",
			"farseek",
			"malefic portal",
			"unlit alley",
			"one",
			"master of masks",
			"devoted artistry",
			"calamity rose",
			"finish off",
			"capture brilliance",
			"master of munitions",
			"hazy moorland",
			"sphinx of ill omens",
			"voidbringer",
			"adiran scryers",
			"azun, sheriff of daisite",
			"bearer of the lantern",
			"tabia of the lionheart",
			"astrid, disgruntled princess",
			"primal ruffian",
			"brushcover elf",
			"duskwood revolutionary",
			"mutilated warrior",
			"backburner",
			"turi of hollow depths",
			"rule the world",
			"culminating chaos",
			"scuttling gnat",
			"ivenge's evangel",
			"fiery truthseeker",
			"paul, rock bottom",
			"tempered ankulim",
			"chikyu champion",
			"soliloquy",
			"kellythross' workshop",
			"kaor awoken",
			"howling shieldbreaker",
			"snow drift",
			"queen andarli, the fierce",
			"garth of the chimera",
			"ardy, youthful geomancer",
			"stolen cache",
			"hermetic meditation",
			"ritual of soot",
			"waking pollution",
			"beckon of the wild",
			"demolitionist deviser",
			"pakka, the shadowcloak",
			"fireheart channeler",
			"shadowed slums",
			"ravenous extra",
			"facsimile of divinity",
			"plasma addict",
			"experiment zero",
			"desolate dominion",
			"distilled inspiration",
			"find greater purpose",
			"intrepid captain",
			"byron's gambit",
			"eternal deliverance",
			"elder prophesier",
			"lost knowledge",
			"mieng, who dances with dragons",
			"astralhorn familiar",
			"vassal of the wild",
			"kan, triumvirate tactician",
			"paygan archer",
			"losing my religion",
			"crater burst",
			"neural contagion",
			"futuretheft",
			"thallid cultivator",
			"isochron wand",
			"the lost titan",
			"impromptu escapade",
			"dispel",
			"scathing review",
			"the investigation of dr. vaughn",
			"fox of the mushroom forest",
			"ignition engine",
			"privilege's sway",
			"stalked healer",
			"damning flames",
			"helena's rebuff",
			"grixis command",
			"sweet nothings",
			"chratteri restoration",
			"blind blackguard",
			"strongarm",
			"flotsam",
			"speed of darkness",
			"whatever it takes",
			"karaja hetegex",
			"esmerie, skysworn general",
			"social graces",
			"grove's respite",
			"shatter facade",
			"tranquil repose",
			"dragoncalling",
			"derelict town",
			"the aurora's heart",
			"kantra of bounty",
			"reminiscence",
			"reckless impulse",
			"healing center",
			"imposition",
			"dead man's party",
			"dawnwisp vents",
			"thunder wave",
			"shuilong technique",
			"scarlet mist",
			"biocultivator",
			"crossroads harrier",
			"seabreen nullmage",
			"gilded gulch",
			"eminent extraction engine",
			"doom",
			"fey grove",
			"bogsworn club",
			"osk, the maker's pet",
			"phalanx beetle",
			"by the sea",
			"scion of silence",
			"xiong mao, the intrepid",
			"lightblessed claymore",
			"into the woods",
			"dustchoked outpost",
			"dredgeline colossus",
			"tt-20 salvation",
			"shifting grove",
			"take a walk",
			"archive guardian",
			"calcified dunes",
			"shawlbinder",
			"temporal insight",
			"caravan guard",
			"leafdown glimmerfox",
			"corecharge",
			"marin polgek, academy heiress",
			"pristine chapel",
			"as a matter of course",
			"ghostspore mire",
			"summit guardian",
			"a sucker for you",
			"space oddity",
			"true-form revelation",
			"phoberos ragehorn",
			"kati evalin, world wanderer",
			"tropical grove",
			"shining crusader",
			"amelie mayn",
			"merrow legendmaker",
			"iekin's portal",
			"pallid herald",
			"light within shadow",
			"redo",
			"reyhsia, the honorless",
			"foulweather effigy",
			"hard-working oxen",
			"legacy warmask",
			"power jam",
			"seek the maker's egg",
			"lhosei of the ghost peak",
			"sunrise prairie",
			"karmic exorcism",
			"imperial silks",
			"bogborn exorcist",
			"eryth, mire dredger",
			"mieng of the pyre waltz",
			"mia, into the unknown",
			"sakaki, rocket gang boss",
			"hookhand freebooter",
			"olson's flockmaster",
			"heists most daring",
			"confident amateur",
			"gathering the gang",
			"sunlit meadow",
			"abundant harvest",
			"test of forsaking",
			"seeker of mysteries",
			"illusionary steed",
			"clock of seasons",
			"swarm of the dispossessed",
			"lofty denial",
			"light the fuse",
			"far wandering guardian",
			"phantasmal owl",
			"faerie infiltration",
			"griffin country",
			"ancient ossuary",
			"vanish",
			"rethia cultivator",
			"dawn silhouette",
			"speaker of deliverance",
			"martoob beastkeeper",
			"vedalken reshaper",
			"once scarred",
			"protect the farm",
			"operative ginger",
			"aquilifer axelius",
			"secret-hoarder",
			"reclamation sage",
			"essential override",
			"sturdy outpost",
			"abandoned monument",
			"ancient counsel",
			"chaos is your redemption",
			"boiling ridge",
			"essence erasure",
			"calamari dragon",
			"circling predators",
			"elmare's grandeur",
			"price of memories",
			"willow spirit",
			"avatar of basat",
			"gale conjurant",
			"the pyleas, siona's pride",
			"blood frenzy",
			"relic heist",
			"edge of the water",
			"day of the emperor",
			"scramble the scouts",
			"mark of the scaleblight",
			"vantage point",
			"speak no evil",
			"speaker of the iris",
			"studies past",
			"bright future",
			"nel toth shaman",
			"flourishing dunes",
			"sundappled scrub",
			"ruined shrine",
			"bahum's penance",
			"release from death",
			"hidden hollow",
			"last stop",
			"treasure beach",
			"staff of equilibrium",
			"death in reverse",
			"warbringer titan",
			"goddess' whimsy",
			"mechanomind researcher",
			"holding out for a hero",
			"polytheism",
			"animus seer",
			"burning heels",
			"twelve thousand eyes",
			"bottled lightning",
			"will of a fickle lord",
			"turin's study",
			"wastes scrambler",
			"monk of mid-autumn",
			"veteran lifeforger",
			"lady heiffyd",
			"heddwyn, the law",
			"aerida, envious chronomancer",
			"barten's journal",
			"conjured acropolis",
			"damian, the boss",
			"bioluminescent display",
			"rustshell crustacean",
			"limb extension and generation system",
			"nidohagane warfans",
			"armament upgrade",
			"consuming symbiosis",
			"serene prayer",
			"crypt tutor",
			"biohazard",
			"repurposed killdrone",
			"eternal wanderings",
			"shrouded sanctuary",
			"blundering clocktower",
			"vast savannah",
			"emissary of dark tides",
			"fiery temper",
			"coralight paladin",
]

		names
			.map{|n| db.cards[n]}
			.flat_map{|card| card ? card.printings : []}
			.to_set
	end

	def to_s
		'is:played'
	end
end