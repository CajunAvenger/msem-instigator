class ConditionIsAshe < Condition
	def search(db)
		names = [
			"bretala of redsky",
			"dragoncalling",
			"lady ashtongue",
			"warrior's request",
			"brass dragon",
			"crimson hellmaw",
			"hao'tai, the ancient one",
			"mieng, who dances with dragons",
			"peakblazer dragon",
			"tseng, warden of the peak",
			"xiusheng of the dragon realm",
			"miyoga dragonsoul",
			"newborn dragon",
			"raidragos' avenger",
			"wingless dragon",
			"reckoner of man",
			"shimmering dragon",
			"ferocious desert-hunter",
			"sandmouth dragon",
			"whistled dragons",
			"dragonfire fury",
			"doombringer dragon",
			"dragon initiate",
			"dynamic wyvern",
			"fang, the lavaclasm",
			"cataclysmic skytyrant",
			"loot hoarder dragon",
			"vestige of skithiryx",
			"ryukami, the first sovereign",
			"sovereign of old jidai",
			"scourge of the skies",
			"searshot dragon",
			"dragonmaw wurm",
			"dragonsoul disciple",
			"scales of seishin",
			"scaletongue mistress",
			"dragon queen's disciple",
			"syrina, the dragon queen",
			"syrina's brood",
			"warfury dragon",
			"twinfire dragon",
			"dragongate",
			"emissary of antiquity",
			"rubble scavenger",
			"trove tyrant",
			"rimebreath tyrant",
			"vindictive regent",
			"ontarachie apex",
			"champion of scales",
			"dreadfire tyrant",
			"polyp pools",
			"rhyolithic hellkite",
			"calamity dragon",
			"novaheart dragon",
			"frostbreath dragon",
			"kaor awoken",
			"molten incubation",
			"skyscreecher dragon",
			"starborne hellkite",
			"hellkite omnivore",
			"jund command",
			"kaalia, sky's end",
			"kaalia's abomination",
			"sangrite dragon",
			"scorchpass sovereign",
			"tharrsus, tyrant's scion",
			"scavenging hilakites",
			"chikyu champion",
			"sunset herald",
			"tyrant of tributes",
			"adoroth, the baneful",
			"giradrus, ashen master",
			"harbinger of giradrus",
			"pyre apostle",
			"the winged steed",
			"anemothrys, reefcrown",
			"calamari dragon",
			"gold retriever",
			"molting linnorm",
			"nidhir, the one beyond",
			"raid the dragon's lair",
			"volcano tyrant",
			"herald of flame",
			"hadak, end of progress",
			"zenith of greed",
			"scrapyard sovereign",
			"iviana, speaker of fangs",
			"synchronous hellkite",
			"horizon sovereign",
			"dragonglass harp",
			"luminal lifethreader",
			"watcher of the polyps",
			"dragon's breath throatsinger",
			"ashe of the winged steed",
			"vidal's conjurant",
			"bleakrealm mini-menace",
			"seven seas scourge",
			"azos, tyrant of bleakrealm",
			"shoal dragon",
			"vune, the facemaker",
			"dragonheart seer",
			"venwyn, the dragon's fang",
			"hellkite annihilator",
			"hoarding dragon",
			"trove keeper",
			"varagan wyrmling",
			"zarthane, scourge of galdurheim",
			"tyrant's breath",
			"great vorganisaath",
			"kalyn, wildkin envoy",
			"xedrios, progenitor wyrm",
			"vorganisaath's flamewaker",
			"scourge of the mountains",
			"tyrant of prophecies",
			"glorious herald",
			"crested cloudfisher",
			"cloud swine",
			"draconic admiration",
			"fleeting soulkite",
			"scrappy hatchling",
			"seaside skimmer",
			"skullhoarder dragon",
			"aspiring dragon",
			"curio hellkite",
			"dragon dance",
			"flying with dragons",
			"ilieth, transcendent",
			"prismscale dragon",
			"skiviar scraplord",
			"blizzard dragon",
			"flynn skara",
			"in league with dragons",
			"sisterhood of the traveling planes",
			"waxing celestial",
			"bai long ma, fabled innocence",
			"sha long, harmonious wind",
			"qi-long rainbringer",
			"qing long, capricious wind",
			"augur of bleak horizons",
			"pan long, remorseless wind",
			"ancient of reflections",
			"zhu long, refulgent wind",
			"hibiscus snapdragon",
			"lian taizi, bountiful earth",
			"ancient of lotus lake",
			"cascading zhenzu",
			"heaven's end chronicler",
			"fabled chishou",
			"terracotta sage",
			"hao'tai, the reverent",
			"ma'long, the skystorm",
			"papier-mâché marvel",
			"fang luo, the astral tide",
			"xihuo, the onyx flame",
			"mieng of the pyre waltz",
			"tseng, the shooting star",
			"judgment of hao'tai",
			"dragon emperor's chariot",
			"old lord xiusheng",
			"cheng, wild tyrant",
			"duan's aeriform ribbons",
			"fervid dragonheart",
			"rapacious regent",
			"celebrations of ferocity",
			"song of wind and fire",
			"effigy of ivory fire",
			"scourge of the sun",
]

		names
			.map{|n| db.cards[n]}
			.flat_map{|card| card ? card.printings : []}
			.to_set
	end

	def to_s
		'is:ashe'
	end
end