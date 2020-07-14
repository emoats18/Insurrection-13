
/datum/job/URF_commando
	title = "URF Commando"
	spawn_faction = "Insurrection"
	spawnpoint_override = "URF Commando"
	latejoin_at_spawnpoints = 1
	outfit_type = /decl/hierarchy/outfit/job/URF_commando
	alt_titles = list("URF Commando Medic",\
	"URF Commando Machine Gunner",\
	"URF Commando Engineer",\
	"URF Commando Marksman",\
	"URF Commando Breacher",\
	"URF Commando Sniper")
	total_positions = 8
	spawn_positions = 8
	selection_color = "#ff0000"
	access = list(252,632)
	is_whitelisted = 0

/datum/job/URF_commando_officer
	title = "URF Commando Officer"
	spawn_faction = "Insurrection"
	spawnpoint_override = "URF Commando Officer"
	latejoin_at_spawnpoints = 1
	outfit_type = /decl/hierarchy/outfit/job/URF_commando_officer
	total_positions = 2
	spawn_positions = 1
	selection_color = "#ff0000"
	access = list(252,632)
	is_whitelisted = 0
