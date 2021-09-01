class ConditionIsStaple < Condition
	def search(db)
		names = [
			"wayfarer's shrine",
			"nebula of empty gold",
			"seal the tomb",
			"pith wilt",
			"magmatic torrent",
			"shardstone rift",
			"mysterious cataract",
			"crumbling precipice",
			"flooded depths",
			"crystal cavern",
			"event horizon",
			"stand unassailable",
			"stolen secrets",
			"grim bastion",
			"murmuring falls",
			"shifting glade",
			"lush oasis",
			"flooded morass",
			"corpsebed",
			"lavatorn fields",
			"sedate tundra",
			"cosmic sinkhole",
			"nomad's township",
			"spell pierce",
			"frostfire geysers",
			"fungal mire",
			"amber hills",
			"shal'draen's rage",
			"lumbering hillock",
			"ocean monastery",
			"timber range",
			"out-of-body experience",
			"sunlit highland",
			"pool of light",
			"soul gate",
			"prying inquiry",
			"cursory glance",
			"sacrificial bull",
			"descend on the helpless",
			"roggar's frenzy",
			"resplendent substratum",
			"cane dancer",
			"shikai's redoubt",
			"mana confluence",
			"portal fracture",
			"solar flare",
			"voidflare",
			"titan snare",
			"memento mori",
			"rampant summit",
			"thought blossom",
			"monkeyshines",
			"wheat from chaff",
			"still the pandemonium",
			"reveal eternities",
			"recall forgotten eons",
			"forgotten steppe",
			"the high prairies",
			"suitor of the sea",
			"banished companion",
			"hierarch ranger",
			"stormsurge",
			"etherium abrogator",
			"bounty of the gardens",
			"flourishing crevasse",
			"rage of the ravaged",
			"heart of the glade",
			"chi lee of the underworld",
			"violent collapse",
			"basat charm",
			"prodigious panya",
			"long forgotten",
			"fractured reach",
			"tiny heroine totti",
			"scorch",
			"veilborn meddler",
			"endless helpless souls",
			"mirrorgate",
			"nature's claim",
			"fair trial",
			"cradle of corruption",
			"unceasing flames",
			"shugenja sanctuary",
			"last passage",
			"once abandoned",
			"seek prophecy",
			"end of all things",
			"chikyu champion",
			"hugo of the shadowstaff",
			"inishtu, desert healer",
			"tenacious guide",
			"northern express line",
			"ostracizer orb",
			"volatile stonework",
			"dreamsight well",
			"mystery of the crashed craft",
			"rift splicing",
			"seto san, the dragonblade",
			"bant command",
			"idyllic odyssey",
			"impden mother",
			"forked pillar",
			"rot",
			"departed evangel",
			"unjust sentence",
			"polyp pools",
			"singularity's grasp",
			"flaming point technique",
			"rousing rubble",
			"murky peat",
			"tamiyo, lunar arcanist",
			"profane emissary",
			"tidehollow lich",
			"autumnal watch",
			"conjure realities",
			"aiel tazan",
			"dovon, verdant experimenter",
			"unearth",
			"theocracy",
			"dawson's loot",
			"verdant bluff",
			"new divide",
			"rakkiri dissident",
			"ancestral council",
			"garth of the chimera",
			"powder scatterer",
			"duress",
			"nacatl skirmisher",
			"canyon creek",
			"embodied soul",
			"grim slums",
			"sigil of radiance",
			"bloodriver",
			"lumenbay flyer line",
			"ria-demian charm",
			"corrupted memory",
			"union rail strikebreaker",
			"face the dawn",
			"fogspewer",
			"ignition point",
			"corvid heretic",
			"caulte axeslinger",
			"brushcover elf",
			"sunken ambitions",
			"thunder road",
			"mindstorm's eye",
			"guiding light",
			"palace of reflections",
			"diffuse",
			"danithra muckbruiser",
			"silent hypnotist",
			"lord rickard dawson",
			"finish off",
			"heist headquarters",
			"leija's greenblade",
			"destructive ambition",
			"waxing angel",
			"cognitive fumigator",
			"warded tome",
			"gift of the phoenix",
			"ever-gnawing rat",
			"egg of avarice",
			"gaze deeper",
			"martial maestro",
			"seabreen nullmage",
			"bitter duckling",
			"vaultkeeper",
			"self replication",
			"aerie's pillar",
			"shifting cascade",
			"turi of hollow depths",
			"answer midnight's call",
			"neutralize",
			"desolate dominion",
			"channeling stone",
			"mark of dark opulence",
			"sedraxis trepanator",
			"verdant dominion",
			"cumulus horizon",
			"velir the sunderer",
			"dead-set duo",
			"sea cache",
			"smoldering pages",
			"scuttling gnat",
			"masahita, bloodtongue",
			"sun-sigil ordainer",
			"ruin delver",
			"pitchpyre curse",
			"bessie's brood",
			"clockwork gaucho",
			"roggar's gambit",
			"source decay",
			"hazy moorland",
			"seismic colossus",
			"performer of ambition",
			"shadowband consul",
			"leyran alpha",
			"budding companion",
			"kati evalin, world wanderer",
			"seedshrine",
			"stalked healer",
			"holcomb of the peregrine",
			"xirix, the usurper",
			"mausoleum suffragan",
			"herald of oblivion",
			"blessed spellroot",
			"veteran lifeforger",
			"lord ellison crain",
			"brazen sacrilege",
			"curse of bleeding",
			"avatar of the natural",
			"tropical grove",
			"nightwatch rallier",
			"fey grove",
			"azun, sheriff of daisite",
			"chains of subdual",
			"monsoon lagoon",
			"shifting canyon",
			"fiery burst",
			"soaring canyon",
			"coralight champion",
			"sporeflow protector",
]

		names
			.map{|n| db.cards[n]}
			.flat_map{|card| card ? card.printings : []}
			.to_set
	end

	def to_s
		"is:staple"
	end
end
