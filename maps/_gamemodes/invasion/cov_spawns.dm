
GLOBAL_LIST_EMPTY(sangheili_spawns)

/datum/spawnpoint/sangheili_spawn
	display_name =  "Sangheili Spawn"
	restrict_job = list("Sangheili - Minor","Sangheili - Major","Sangheili - Ultra","Sangheili - Shipmaster")

/datum/spawnpoint/sangheili_spawn/New()
	..()
	turfs = GLOB.sangheili_spawns

/obj/effect/landmark/start/sangheili_spawn
	name = "Sangheili Spawn"

/obj/effect/landmark/start/sangheili_spawn/New()
	..()
	GLOB.sangheili_spawns += loc

GLOBAL_LIST_EMPTY(kigyar_spawns)

/datum/spawnpoint/kigyar_spawn
	display_name =  "Kig-Yar Spawn"
	restrict_job = list("Kig-Yar - Minor","Kig-Yar - Major","Kig-Yar - Shipmistress","T-Voan - Major","T-Voan - Minor","T-Voan - Murmillo")

/datum/spawnpoint/kigyar_spawn/New()
	..()
	turfs = GLOB.kigyar_spawns

/obj/effect/landmark/start/kigyar_spawn
	name = "Kig-Yar Spawn"

/obj/effect/landmark/start/kigyar_spawn/New()
	..()
	GLOB.kigyar_spawns += loc

GLOBAL_LIST_EMPTY(unggoy_spawns)

/datum/spawnpoint/unggoy_spawn
	display_name =  "Unggoy Spawn"
	restrict_job = list("Unggoy - Minor","Unggoy - Major")

/datum/spawnpoint/unggoy_spawn/New()
	..()
	turfs = GLOB.unggoy_spawns

/obj/effect/landmark/start/unggoy_spawn
	name = "Unggoy Spawn"

/obj/effect/landmark/start/unggoy_spawn/New()
	..()
	GLOB.unggoy_spawns += loc
