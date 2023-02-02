class ConditionIsTelsi < Condition
	def search(db)
		names = [
			"kiora, empress of the flood",
			"dragon's wake",
			"spellmaster's dominance",
			"protector of the innocent",
			"treacherous devil",
			"ada, the free",
			"elusive fatecrafter",
			"fateweaving",
			"intents",
			"heat of the moment",
			"learn from mistakes",
			"vaneir, necromaster",
			"jachsechep, god's wife",
			"kan'gi, the reverent",
			"loot hoarder dragon",
			"ambition's crown",
			"duke gerard hoff",
			"visiting dignitary",
			"emperor azuma hashiro",
			"hisana-no-oni",
			"raiun bay scourge",
			"puppetize",
			"cloudfisher",
			"devious naiad",
			"graygulch revenant",
			"haide bankbuster",
			"howler sheriff",
			"murderkeep",
			"roxite of nightrail",
			"stolen cache",
			"threaten",
			"train heist",
			"wu, the shackled",
			"compulsion's voice",
			"cogent recruiter",
			"syrina, the dragon queen",
			"demonqueller mage",
			"serafina's gift",
			"awestone",
			"flawless heist",
			"gentleman thief",
			"saia's protege",
			"zegarra, the rival",
			"aether road caravan",
			"contested discovery",
			"siraj, interplanar thief",
			"the ark project",
			"olde king koswe",
			"sphinx paramount",
			"tharrsus, tyrant's scion",
			"fall in line",
			"rocket admin",
			"the rocket gang strikes!",
			"h.s.s. demeter",
			"master negotiator",
			"kleptomania",
			"herald of flame",
			"spirit of the sands",
			"bearer of silk chains",
			"infectious ego",
			"seize dominance",
			"tempting shahmaran",
			"thief of mortals",
			"fickle songstress",
			"penny and pete",
			"plasma addict",
			"dr. telsi of the ark",
			"marianne's mercies",
			"admiral olson stout",
			"damaris alfahir",
			"bustling marketplace",
			"chamber of ceremonies",
			"lord yaran, the usurper",
			"usurper's sway",
			"horse thief",
			"ashen mare",
			"sea's allure",
			"nothing left",
			"ram wrangler",
			"barx, aspiring archvillain",
			"oshu of the bosk",
			"coerced tutelage",
]

		names
			.map{|n| db.cards[n]}
			.flat_map{|card| card ? card.printings : []}
			.to_set
	end

	def to_s
		'is:telsi'
	end
end