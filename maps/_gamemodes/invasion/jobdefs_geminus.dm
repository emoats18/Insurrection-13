
/datum/map/geminus_city
	allowed_jobs = list(\
		/datum/job/researchdirector,\
		/datum/job/researcher,\
		/datum/job/ONIGUARD,\
		/datum/job/ONIGUARDS,\
		/datum/job/ship_crew_innie,\
		/datum/job/ship_cap_innie,\
		/datum/job/URF_commando,\
		/datum/job/URF_commando_officer,\
		/datum/job/unscbertels_co,\
		/datum/job/unscbertels_xo,\
		/datum/job/unsc_ship_iwo,\
		/datum/job/unscbertels_ship_crew,\
		/datum/job/unscbertels_medical_crew,\
		/datum/job/bertelsunsc_ship_marine,\
		/datum/job/unsc_ship_marineplatoon,\
		/datum/job/bertelsODST,\
		/datum/job/bertelsODSTO,\
		/datum/job/colonist,\
		/datum/job/colonist_mayor,\
		/datum/job/police,\
		/datum/job/police_chief,\
		/datum/job/colony_ai,\
		/datum/job/ship_crew_civ,\
		/datum/job/ship_cap_civ,\
		/datum/job/ship_crew_medic,\
		/datum/job/ship_cap_medic,\
		/datum/job/ship_cmo_medic)
		//datum/job/covenant/sangheili_minor,\
		/datum/job/covenant/sangheili_shipmaster,\
		/datum/job/covenant/kigyarminor,\
		/datum/job/covenant/kigyarmajor,\
		/datum/job/covenant/unggoy_minor,\
		/datum/job/covenant/unggoy_major,\
		/datum/job/covenant/skirmminor,\
		/datum/job/covenant/skirmmajor,\
		/datum/job/covenant/skirmmurmillo)

	allowed_spawns = list(\
		DEFAULT_SPAWNPOINT_ID,\
		"Innie Base Spawns",\
		"UNSC Base Spawns",\
		"Civilian Ship Crew",\
		"Civ Ship Cap Crew",\
		"Medical Ship Crew",\
		"Medical Ship Cap Crew",\
		"Medical Ship Crew CMO",\
		"Covenant Base Spawns",\
		"Research Facility Spawn",\
		"Research Facility Director Spawn",\
		"Research Facility Security Spawn")

	default_spawn = DEFAULT_SPAWNPOINT_ID

	species_to_job_whitelist = list()
		//datum/species/kig_yar = list(/datum/job/covenant/kigyarminor,/datum/job/covenant/kigyarmajor,/datum/job/covenant/kigyarcorvette/captain),\
		/datum/species/unggoy = list(/datum/job/covenant/unggoy_minor,/datum/job/covenant/unggoy_major),\
		/datum/species/sangheili = list(/datum/job/covenant/sangheili_minor,/datum/job/covenant/sangheili_major,/datum/job/covenant/sangheili_honour_guard,/datum/job/covenant/sangheili_shipmaster),\
		/datum/species/kig_yar_skirmisher = list(/datum/job/covenant/skirmminor,/datum/job/covenant/skirmmajor,/datum/job/covenant/skirmmurmillo,/datum/job/covenant/skirmcommando),\
		/datum/species/spartan = list(),\
		/datum/species/brutes = list(),\
		/datum/species/sanshyuum = list(/datum/job/covenant/lesser_prophet),\
		)
