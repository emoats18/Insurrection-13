GLOBAL_LIST_EMPTY(medic_crew_spawns)

/datum/spawnpoint/medic_crew
	display_name = "Medical Ship Crew"
	restrict_job = list("Medical Ship Crew")

/datum/spawnpoint/medic_crew/New()
	..()
	turfs = GLOB.medic_crew_spawns

/obj/effect/landmark/start/medic_crew
	name = "Medical Ship Crew"

/obj/effect/landmark/start/medic_crew/New()
	..()
	GLOB.medic_crew_spawns += loc

GLOBAL_LIST_EMPTY(ship_cap_medic_spawns)

/datum/spawnpoint/ship_cap_medic
	display_name = "Medical Ship Cap Crew"
	restrict_job = list("Medical Ship Captain")

/datum/spawnpoint/ship_cap_medic/New()
	..()
	turfs = GLOB.ship_cap_medic_spawns

/obj/effect/landmark/start/ship_cap_medic
	name = "Medical Ship Cap Crew"

/obj/effect/landmark/start/ship_cap_medic/New()
	..()
	GLOB.ship_cap_medic_spawns += loc


GLOBAL_LIST_EMPTY(medic_cmo_spawns)

/datum/spawnpoint/medic_cmo
	display_name = "Medical Ship Crew CMO"
	restrict_job = list("Medical Ship Chief Medical Officer")
/datum/spawnpoint/medic_cmo/New()
	..()
	turfs = GLOB.medic_cmo_spawns

/obj/effect/landmark/start/medic_cmo
	name = "Medical Ship CMO"

/obj/effect/landmark/start/medic_cmo/New()
	..()
	GLOB.medic_cmo_spawns += loc