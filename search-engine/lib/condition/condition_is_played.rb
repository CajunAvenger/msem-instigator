class ConditionIsPlayed < Condition
	def search(db)
		names = [
			"mountain",
			"swamp",
			"island",
			"wayfarer's shrine",
			"plains",
			"mirrorgate",
			"metal munch",
			"nebula of empty gold",
			"forest",
			"scorch",
			"seal the tomb",
			"crystal cavern",
			"shikai's redoubt",
			"magmatic torrent",
			"crumbling precipice",
			"spell pierce",
			"cosmic sinkhole",
			"valdez, leafdown vagabond",
			"duress",
			"murmuring falls",
			"nomad's township",
			"flooded depths",
			"pay up",
			"shardstone rift",
			"barren desolation",
			"grim bastion",
			"pith wilt",
			"forgotten steppe",
			"frostfire geysers",
			"blood jade prophet",
			"shifting glade",
			"imperial siege",
			"rampant summit",
			"arctic mine",
			"sear flesh",
			"rift splicing",
			"stand unassailable",
			"mysterious cataract",
			"timber range",
			"sedate tundra",
			"voidflare",
			"polyp pools",
			"sealed riftway",
			"ocean monastery",
			"lavatorn fields",
			"portal fracture",
			"shi hou's command",
			"ragavan, most wanted",
			"the flames approach",
			"solar flare",
			"monument of queens",
			"lush oasis",
			"corpsebed",
			"shan jun's command",
			"out-of-body experience",
			"flooded morass",
			"sunlit highland",
			"enopraxia's endeavor",
			"unrivaled fireweaver",
			"forbidden treasure",
			"exeunt",
			"veindrinker's cabalist",
			"firehearth halls",
			"profane emissary",
			"prying inquiry",
			"wave of decay",
			"resplendent substratum",
			"long forgotten",
			"damned deal",
			"gloomcover steppe",
			"fungal mire",
			"olten surveyor",
			"secrets of coralight court",
			"lumbering hillock",
			"chronicles of the kitsune",
			"pool of light",
			"relic corrosion",
			"niu mo wang, ashen absolution",
			"sacrificial bull",
			"sesilius of wicked ways",
			"admonish",
			"shal'draen's rage",
			"lt. daisy saxon",
			"swarming midden",
			"conquer psyche",
			"amber hills",
			"violent collapse",
			"cane dancer",
			"prodigious panya",
			"exhilarating prescience",
			"still the pandemonium",
			"ready for anything",
			"journey's end",
			"kai'zhou, the purifier",
			"rapacious rattler",
			"rakkiri dissident",
			"monkeyshines",
			"cursory glance",
			"alratha, pearl of the sand sea",
			"oracle's vision",
			"event horizon",
			"recall forgotten eons",
			"crest",
			"anointed cursebreaker",
			"roggar's frenzy",
			"lost through dreams",
			"forked pillar",
			"unstoppable slaughter",
			"flourishing crevasse",
			"anzen, beyond the sea",
			"renewal grove",
			"valeri kripac",
			"ignition ritual",
			"xifang hu, light within",
			"unjust sentence",
			"forbidden palace",
			"conspiracy of ravens",
			"xanigan, the darkened cloud",
			"qi-long gust",
			"tal, locus sentry",
			"leafdown sizzlemage",
			"ramzi, traveling merchant",
			"heart of the glade",
			"enter mephisto's gate",
			"mattia, hero of tinyvale",
			"jejun, dark hunter",
			"unburdened rage",
			"ominous palace",
			"guiding light",
			"embodied soul",
			"lumenbay flyer line",
			"villainy",
			"ruin delver",
			"commanding princess",
			"mana ascetic",
			"invalidate",
			"emissary of antiquity",
			"civilization's cost",
			"tunu, ancient shaper",
			"banished companion",
			"terraformer's globe",
			"seek prophecy",
			"stormsurge",
			"wheat from chaff",
			"singularity's grasp",
			"fogspewer",
			"strike from the shadows",
			"basat charm",
			"bessie's brood",
			"beat & batter",
			"lay bare ambitions",
			"sigil of radiance",
			"ominous discovery",
			"auros, the red king",
			"tiny heroine totti",
			"northern express line",
			"tyrant of tributes",
			"celestial banishment",
			"aerie's pillar",
			"whisperwoods exploration",
			"fiery erasure",
			"miserable portent",
			"gift of the phoenix",
			"memento mori",
			"new divide",
			"unceasing flames",
			"holdsteady engine",
			"flamecaller's command",
			"caylin whirlwind",
			"leyran alpha",
			"eidolic palace",
			"ostracizer orb",
			"unearth",
			"intrepid",
			"esalia, steward of caer crann",
			"babyscale bruiser",
			"oozing yaoguai",
			"deform sanity",
			"inishtu, desert healer",
			"beneath the zhedina",
			"rot",
			"rushwater raider",
			"forsaken palace",
			"oriq soulweaver",
			"hierarch ranger",
			"channeler of the veil",
			"veilborn meddler",
			"here with you",
			"cinderhoof minotaur",
			"dovon, verdant experimenter",
			"mystery of the crashed craft",
			"primal resurgence",
			"imperial claim",
			"scrap metal",
			"heart of zhedina",
			"reveal eternities",
			"montane palace",
			"self replication",
			"agent of deception",
			"justiciar overseer",
			"endless helpless souls",
			"serene chapel",
			"roggar's gambit",
			"kai'oro, grave betrayer",
			"lotus barrens",
			"extraction mercenary",
			"convert to resources",
			"retire",
			"seeker of untouched beauty",
			"chi lee of the underworld",
			"thought blossom",
			"herald of oblivion",
			"thunder road",
			"rousing rubble",
			"distant thunder",
			"azos, tyrant of bleakrealm",
			"infectious ego",
			"vivien the sagittar",
			"lord of the bubbledome",
			"olantin pearlreader",
			"qililia's scavenger",
			"dancer of the great current",
			"miss margaret barton",
			"qi block",
			"kinken, the dragon's breath",
			"witch of spring's promise",
			"jade vault reclaimer",
			"small luxuries",
			"soul pierce",
			"petal scatterer",
			"neutralize",
			"opalescent palace",
			"calamitous crash",
			"tsang jin, master of the jade sea",
			"left on the wayside",
			"buy time",
			"creative salvage",
			"unhappy ending",
			"unraveling",
			"tyrant's breath",
			"devised companions",
			"bonetooth darter",
			"confining priest",
			"subdue false idols",
			"cresting bay",
			"selective breeding",
			"bustling marketplace",
			"powder scatterer",
			"aiel tazan",
			"brazen sacrilege",
			"tahli's council",
			"danithra muckbruiser",
			"hungering cult",
			"careless violence",
			"lisa, the daughter",
			"unexplored regions",
			"hemley eggfeather",
			"charming marauder",
			"envoy of divine progress",
			"bleak dominion",
			"channeling stone",
			"suitor of the sea",
			"reclamation grovesculptor",
			"pestilent scavenger",
			"henros, royal herald",
			"rawthlin market line",
			"become immersed",
			"tanya, leader of the pack",
			"eminent palace",
			"descend on the helpless",
			"nihilistic shock trooper",
			"karoa's downfall",
			"seto san, the dragonblade",
			"setting sun",
			"krismite vault",
			"sultan of avarice",
			"calciform wastes",
			"abscond",
			"legion angel",
			"unassuming swineherd",
			"banishing initiate",
			"cosmic coalescing",
			"wave racer",
			"ancestral council",
			"master negotiator",
			"sunken ambitions",
			"timeworn crags",
			"helene, bound by might",
			"children of the clouds",
			"arpechian champion",
			"mable of the sea's whimsy",
			"arrive, surrounded by petals",
			"theocracy",
			"bloodriver",
			"canyon creek",
			"twisted masterwork",
			"rod of marble row",
			"brutal blow",
			"fulmen, aether prodigy",
			"soul warden",
			"in dire straits",
			"inked summoner",
			"stormshaper adept",
			"curse of encroaching waters",
			"nacatl skirmisher",
			"traitor's execution",
			"radiant palace",
			"engrave",
			"volatile stonework",
			"nature's claim",
			"nereba, sandchoked archives",
			"irbek, crocodile hunter",
			"vaultkeeper",
			"henry, river cities mayor",
			"korrinary warcaller",
			"disciple of faradia",
			"helena, the awakener",
			"celestial mandate",
			"a most important prince",
			"no good deed goes unpunished",
			"destructive ambition",
			"sights beyond",
			"blossoming expanse",
			"dragon's eye descendant",
			"salome",
			"beckon of the wild",
			"ancient dominion",
			"crumbling shrine",
			"starlit raze",
			"den of vice",
			"crewmaster gillo",
			"brutalize",
			"weeping lotus",
			"mortal benediction",
			"wiretapper",
			"tenuous existence",
			"seismic colossus",
			"wayfarer's lantern",
			"spirit script",
			"soul's attendant",
			"serene palace",
			"zaukar of the ancient ways",
			"bal's descent",
			"whiterun ordainer",
			"antimagic",
			"reduce to naught",
			"unquenched greed",
			"illuminated firebird",
			"plasma enforcer",
			"end of all things",
			"somber river bearer",
			"stalwart dominion",
			"thrasios's endeavor",
			"invoking the name",
			"sofia, fortune's fated",
			"answer midnight's call",
			"lucien, the grifter",
			"curse of bleeding",
			"mindrip",
			"operation 433",
			"call of the huma",
			"refraction diver",
			"find nothing",
			"greenwood outrider",
			"ayala's concord",
			"ferocious flame",
			"petal-weaver alexa",
			"bloodstained calamity",
			"antithesis",
			"parish paragon",
			"through the ashen gate",
			"leyline invoker",
			"concordant palace",
			"reminiscence",
			"prove worthy",
			"ajani enlightened",
			"promethean grotto",
			"breach the lilies",
			"sea cache",
			"taranika's endeavor",
			"jara champion",
			"masahita, bloodtongue",
			"performer of ambition",
			"mina, jeweled minnow",
			"unstill unlife",
			"kalemn weller",
			"condor clearings",
			"shifty fink",
			"herd's bounty",
			"ria-demian charm",
			"fires of renewal",
			"monument to the fallen man",
			"pitchpyre curse",
			"cognitive fumigator",
			"secluded courtyard",
			"clean-up crew",
			"fungal swathe",
			"glymna blackrune",
			"hsu fu, architect of sunrise",
			"jerrold, fugitive",
			"the past is gone",
			"archaeological experience",
			"a rush of stillness in the air",
			"what lurks beyond",
			"enraptured countess",
			"adam of the ironside",
			"paint with starflame",
			"ameret, hope of night",
			"last request",
			"boxue and ma'long",
			"diffuse",
			"delve for treasures",
			"gate of realms",
			"sink into the floor",
			"graide, voice of autumn",
			"selvar's defiance",
			"earthbreaker behemoth",
			"seaside grotto",
			"vivid march",
			"hegemony monarch",
			"oracle's ploy",
			"elaborate transportation",
			"fractured reach",
			"aiko, tranquil fury",
			"flaming point technique",
			"stolen cache",
			"mosecf, the sunseeker's path",
			"through the divine gate",
			"the afterlife takes its due",
			"darksand acolyte",
			"sunrise river",
			"ominous dragoncaller",
			"anax's endeavor",
			"shifting cascade",
			"cranial violation",
			"bitter duckling",
			"end of the rainbow",
			"underpass sentinel",
			"union rail strikebreaker",
			"intisuyu's masterpiece",
			"ashe of the winged steed",
			"ring of souls",
			"tidehollow lich",
			"desperate android",
			"mpumo, who stands alone",
			"aguri, shadow of doubt",
			"crystal wave",
			"heartforge savant",
			"humble abode",
			"gao'wu, master soothsayer",
			"dustridden sepulcher",
			"fireshaper adept",
			"the girl who wouldn't die",
			"pensive songwriter",
			"find greater purpose",
			"daisy, the heart of chasmek",
			"overgrowth guardian",
			"yri, the daring blade",
			"judge's decree",
			"vielle, undercity wayfarer",
			"thassa, the implacable tide",
			"a planet far, far away",
			"crowded tavern",
			"xira, scatterer of seeds",
			"seedshrine",
			"goblin chariot",
			"chigau, the red market",
			"citadel gates",
			"ghulish unearthing",
			"cai lan, the puppeteer",
			"tendrilsnare",
			"black hole musings",
			"aethermancer's familiar",
			"thin the veil",
			"minotaur skullsmasher",
			"salome's messenger",
			"warhound shuja",
			"fox of the mushroom forest",
			"shi hou, the sun king",
			"osk, the maker's pet",
			"prince of stars",
			"soaring canyon",
			"sigil of the many",
			"power plant",
			"verdant dominion",
			"bant command",
			"surge of darkness",
			"gleaming river",
			"jak, daring vanguard",
			"pineblight caribou",
			"void portal",
			"many-voiced tower",
			"steward of empire's cradle",
			"minister of zealots",
			"meteor volley",
			"inexorable epidemic",
			"death pits trophy",
			"nyxfall",
			"cumulus horizon",
			"twilight ambush",
			"deadly harpoon",
			"observer of aeons",
			"zhelid, planar academy",
			"pristine dominion",
			"dayang's displeasure",
			"thriving budling",
			"reflect on serenity",
			"castigated sister",
			"the investigation of dr. vaughn",
			"spellbane adept",
			"brimstone oration",
			"mennin pack",
			"hidden garden entrance",
			"disassociate",
			"ambition's crown",
			"warfield excavator",
			"dreams come true",
			"fardancer liege",
			"posey, of the seal cloak",
			"getaway rider",
			"caulte axeslinger",
			"lady genvieve of caulder",
			"sunset monastery",
			"helene, steel of the exiled",
			"imperial achievement",
			"fierce combatant",
			"mausoleum resident",
			"silent wanderer",
			"flotsam",
			"vir of the starskipper",
			"faradia's anointed",
			"fleeting resonance",
			"learn through error",
			"extract the truth",
			"miyoga firebird",
			"mourn no more",
			"paul, rock bottom",
			"martial maestro",
			"adiran scryers",
			"bind the mind",
			"operative sporty",
			"legitimate establishment",
			"antali archdruid",
			"sukhar, consort to the dark",
			"tidal spite",
			"witch-queen yarag",
			"keeper of the sanctum",
			"liar's dice",
			"dawn hill forgemaster",
			"silent hypnotist",
			"onya the gilded",
			"lord rokai",
			"scion of silence",
			"plasma addict",
			"scuttling gnat",
			"archaezus, dark salvation",
			"jobiah, devoted farmer",
			"bizarre dreams",
			"little pig",
			"emperor's retainer",
			"ruined precipice",
			"dragon's breath throatsinger",
			"chikami castle",
			"warden of silence",
			"precursor sanctum",
			"fleeting moments",
			"forbidden shiangshi arts",
			"lightblessed claymore",
			"mark of dark opulence",
			"down with the ship",
			"bahum, the warden",
			"pathless shallows",
			"chikyu champion",
			"margyd's celebrant",
			"isolated",
			"rahit, arcane tutor",
			"sporeflow protector",
			"mei's collection",
			"ema, the traveler",
			"temporal resuscitation",
			"hermetic meditation",
			"hunter's hideout",
			"mei liva, the broken",
			"archivist's torment",
			"naogui the lotus-charmed",
			"angelic barracks",
			"plaxolotl pyari",
			"lone survivor",
			"prismatic cavern",
			"valinov collector",
			"paragon of honor",
			"dark behemoth",
			"rei's reinforcements",
			"godwatcher",
			"unbound expanse",
			"critters' companion",
			"summit guardian",
			"anthus's accomplice",
			"rocket admin",
			"encylopetia",
			"insipid metamorph",
			"misquantify",
			"eldritch egg",
			"ever-gnawing rat",
			"losing my religion",
			"tea of augury",
			"wildbond aspirant",
			"halcyon daze",
			"twilight blade",
			"seabreen nullmage",
			"trail blazer",
			"collect rotting remains",
			"provoke the gods",
			"powercell cultivator",
			"sunflower fields",
			"aurora hydra",
			"hunter's mark",
			"iroshi, blade of the old ways",
			"curse of grasping air",
			"overactive imagination",
			"from the forest's heart",
			"crystalcatcher",
			"jerrold's wretched cure",
			"kaur, end of lies",
			"queen andarli, the fierce",
			"pupil of lightning",
			"supernova",
			"emissary of dark tides",
			"anemothrys, reefcrown",
			"brightflame phoenix",
			"blessed spellroot",
			"shimmering dragon",
			"tsolmon, the huntress",
			"rippling curtain",
			"dawnwisp vents",
			"moonlight sanctum",
			"stalked healer",
			"crystal grotto",
			"against the waves",
			"just business",
			"asamund, queen of yroncaster",
			"leija's greenblade",
			"vaeldan's liberator",
			"calamity rose",
			"finish off",
			"xiyue dragondancer",
			"intrepid captain",
			"protective memory",
			"forest fellowship",
			"crimson curtain favored",
			"compelling pariah",
			"aukan, swift hawk",
			"hoarding crab",
			"nel toth shaman",
			"unwrite",
			"tegan, the sparrowhawk",
			"sunrise bluffs",
			"duchess odelia vii",
			"meteor harbinger",
			"velir the sunderer",
			"lord ellison crain",
			"crossing the fog",
			"i-6 dragoon",
			"shifting grove",
			"tranquil moment",
			"still-smoke skirmisher",
			"salome breaks the lies",
			"soliloquy",
			"ma'long, the skystorm",
			"kellythross' workshop",
			"culminating chaos",
			"sunrise prairie",
			"jade temple",
			"glitch, galactic muse",
			"festival sabotage",
			"founding hero",
			"xirix, the usurper",
			"mob rallier",
			"zhu bajie, shepherd of stone",
			"artificer's persuasion",
			"byron's gambit",
			"follow the light",
			"sharuum, archmagocrat",
			"fluffpuff whisperer",
			"slippery bunyip",
			"paygan archer",
			"operative baby",
			"paw valley alpha",
			"the lost titan",
			"impden mother",
			"lantern-bearer belle",
			"kanaan wardriver",
			"banish the intruders",
			"sculptor of the ruby sands",
			"eternal deliverance",
			"elder prophesier",
			"abandoned monument",
			"strongarm",
			"feathersword duelist",
			"kan, triumvirate tactician",
			"twin lis of the divine realm",
			"field tender",
			"relonche cavalry",
			"lost knowledge",
			"primal dominion",
			"paragon of purity",
			"shared reminiscence",
			"fulfill twisted dreams",
			"vorreia's farsight",
			"megalokraken",
			"hope spot",
			"muktann protectors",
			"redo",
			"procedural genesis",
			"karaja hetegex",
			"petal blade",
			"keeper of secret havens",
			"soul gate",
			"tranquil repose",
			"salome's intervention",
			"damning flames",
			"last stop",
			"peer into the cosmos",
			"call the backup actors",
			"milunda, prairie prince",
			"sweet nothings",
			"aether road caravan",
			"tabia of the lionheart",
			"blank pages",
			"astral cerberus",
			"capture brilliance",
			"reckless impulse",
			"voidbringer",
			"farseek",
			"imagine",
			"barbed reef",
			"ancient ossuary",
			"transplanted citadel",
			"dustchoked outpost",
			"ophidian oracle",
			"solar hatching",
			"eye of the beholder",
			"plasma blader",
			"bogsworn club",
			"gate to the beyond",
			"mennin reclamation",
			"maven of fear",
			"hoof cliff horngrove",
			"dead man's party",
			"chratteri restoration",
			"rule the world",
			"blood tide",
			"master of munitions",
			"dedicated bushwacker",
			"devoted artistry",
			"sacred songs",
			"malefic portal",
			"bearer of the lantern",
			"cradle of civilization",
			"rain of ruin",
			"unlit alley",
			"helena's rebuff",
			"fey grove",
			"shuilong technique",
			"one",
			"astrid, disgruntled princess",
			"master of masks",
			"mutilated warrior",
			"duskwood revolutionary",
			"bioluminescent display",
			"goddess' whimsy",
			"hazy moorland",
			"sphinx of ill omens",
			"fiery truthseeker",
			"staff of equilibrium",
			"primal ruffian",
			"brushcover elf",
			"wise old oak",
			"turi of hollow depths",
			"iron warden",
			"assessment of virtue",
			"magmatic cache",
			"azun, sheriff of daisite",
			"roots from ruin",
			"backburner",
			"doom",
			"ravaged monument",
			"tempered ankulim",
			"iekin's portal",
			"imagination unleashed",
			"snow drift",
			"ivenge's evangel",
			"green elemental circle",
			"fade",
			"ritual of soot",
			"waking pollution",
			"demolitionist deviser",
			"fireheart channeler",
			"ravenous extra",
			"pakka, the shadowcloak",
			"the shepherd of nowhere",
			"shadowed slums",
			"facsimile of divinity",
			"weku's influence",
			"experiment zero",
			"distilled inspiration",
			"crystal conjuration",
			"by the sea",
			"mieng, who dances with dragons",
			"astralhorn familiar",
			"vassal of the wild",
			"binding stones",
			"desolate dominion",
			"isochron wand",
			"impromptu escapade",
			"assemble the party",
			"flourishing dunes",
			"crater burst",
			"neural contagion",
			"futuretheft",
			"thallid cultivator",
			"dredgeline colossus",
			"shatter facade",
			"healing center",
			"clock of seasons",
			"protect the farm",
			"dispel",
			"dragoncalling",
			"thunder wave",
			"privilege's sway",
			"grixis command",
			"derelict town",
			"vanish",
			"the aurora's heart",
			"kantra of bounty",
			"ignition engine",
			"gilded gulch",
			"blind blackguard",
			"eminent extraction engine",
			"scathing review",
			"cloudsteel summit",
			"gateblessed explorer",
			"speed of darkness",
			"whatever it takes",
			"calming dromoryx",
			"ffion, famine warcaller",
			"seeker of mysteries",
			"space oddity",
			"true-form revelation",
			"grove's respite",
			"scarlet mist",
			"whimwing",
			"faerie infiltration",
			"biocultivator",
			"emperor tzhai",
			"rain zai, spiritscale",
			"crucify",
			"sealed evil in a cage",
			"fallacy's sanctifier",
			"sturdy outpost",
			"tomb of the roseblade",
			"esmerie, skysworn general",
			"crossroads harrier",
			"consuming symbiosis",
			"social graces",
			"phantasmal owl",
			"speaker of the iris",
			"counting clouds",
			"day of the emperor",
			"scramble the scouts",
			"edge of the water",
			"mark of the scaleblight",
			"speak no evil",
			"bahum's penance",
			"imposition",
			"phalanx beetle",
			"sword",
			"a sucker for you",
			"into the woods",
			"take a walk",
			"amelie mayn",
			"studies past",
			"seek the maker's egg",
			"tt-20 salvation",
			"archive guardian",
			"calcified dunes",
			"shawlbinder",
			"temporal insight",
			"caravan guard",
			"leafdown glimmerfox",
			"corecharge",
			"avatar of basat",
			"marin polgek, academy heiress",
			"price of memories",
			"xiong mao, the intrepid",
			"ghostspore mire",
			"reborn altar",
			"phoberos ragehorn",
			"hidden hollow",
			"kati evalin, world wanderer",
			"head of ulko",
			"tropical grove",
			"vast savannah",
			"shining crusader",
			"consecrated altar",
			"as a matter of course",
			"reclamation sage",
			"rally the railguard",
			"ephara's watcher",
			"tear loose",
			"light within shadow",
			"debaser of truth",
			"all that glitters",
			"power jam",
			"artificer's gift",
			"conjured acropolis",
			"corrupted memory",
			"pallid herald",
			"hard-working oxen",
			"reyhsia, the honorless",
			"bahum, penitent",
			"siesa tremund",
			"heist headquarters",
			"golden company tactics",
			"bogborn exorcist",
			"eryth, mire dredger",
			"mia, into the unknown",
			"sakaki, rocket gang boss",
			"cave of pleonexia",
			"olson's flockmaster",
			"hookhand freebooter",
			"heists most daring",
			"confident amateur",
			"gathering the gang",
			"sunlit meadow",
			"orodu's consumption",
			"rainbow phoenix",
			"abundant harvest",
			"dramatic understudy",
			"slippery assassin",
			"test of forsaking",
			"shionoshio, ocean's vow",
			"irika, wielder of secrets",
			"prismatic panes",
			"rethia cultivator",
			"light the fuse",
			"victory over phyrexia",
			"vedalken reshaper",
			"aquilifer axelius",
			"far wandering guardian",
			"hanabira, kogane's legacy",
			"art of evasion",
			"autumn fae",
			"scarhide, arsenal crafter",
			"agent e reminder",
			"tykron of the agnomachi",
			"secret-hoarder",
			"martoob beastkeeper",
			"pretty savage",
			"relic heist",
			"rylei wakebreaker",
			"rujan, the great pumpkin",
			"once scarred",
			"luminescent feathrets",
			"operative ginger",
			"yujei, crane companion",
			"starved oasis",
			"vicious slasher",
			"essential override",
			"improbable aim",
			"illusionary steed",
			"swarm of the dispossessed",
			"lofty denial",
			"bright future",
			"treasure beach",
			"chaos is your redemption",
			"griffin country",
			"unseen hand",
			"ancient counsel",
			"boiling ridge",
			"essence erasure",
			"giradrus, ashen master",
			"calamari dragon",
			"circling predators",
			"elmare's grandeur",
			"ruined shrine",
			"willow spirit",
			"devotee of winds",
			"gale conjurant",
			"the pyleas, siona's pride",
			"vantage point",
			"polytheism",
			"dawn silhouette",
			"speaker of deliverance",
			"blood frenzy",
			"glimpse beyond",
			"sundappled scrub",
			"release from death",
			"boneyard pass",
			"death in reverse",
			"warbringer titan",
			"mechanomind researcher",
			"twelve thousand eyes",
			"revela, star-touched",
			"animus seer",
			"serene prayer",
			"bind the great evil",
			"veteran lifeforger",
			"rustshell crustacean",
			"limb extension and generation system",
			"biohazard",
			"armament upgrade",
			"spirit-lantern incendiary",
			"lady heiffyd",
			"heddwyn, the law",
			"aerida, envious chronomancer",
			"barten's journal",
			"damian, the boss",
			"priestess of simplicity",
			"danithra champion",
			"crypt tutor",
			"wastes scrambler",
			"repurposed killdrone",
			"eternal wanderings",
			"holding out for a hero",
			"shizen, the thousand steps",
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