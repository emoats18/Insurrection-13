#if !defined(using_map_DATUM)

	#include "../../faction_bases/base_areas.dm"
	#include "../../faction_bases/faction_base.dm"
	#include "../../faction_bases/faction_spawns.dm"
	#include "../../faction_bases/faction_base.dm"
	#include "../../civ_ships/civ_crew_spawns.dm"
	#include "../../civ_ships/medic_crew_spawns.dm"
	#include "../../civ_ships/civ_crew_jobs.dm"
	#include "../../civ_ships/medic_crew_jobs.dm"

	//#include "../../faction_bases/Covenant_Station.dmm"

	#include "../../faction_bases/Human_Station_1.dmm"

	#include "../../faction_bases/Human_Station_2.dmm"

	#include "../../faction_bases/Innie_Base.dmm"

	#include "../../Exoplanet Research/includes.dm"

	#include "../../geminus_city/geminus_city.dm"
	#include "jobdefs_geminus.dm"

	#include "../../ks7_elmsville/ks7_elmsville.dm"

	#include "../../Admin Planet/includes.dm"

	#include "../../UNSC_Bertels/includes.dm"

	#include "../../URF Commando Ship/includes.dm"

	#include "../../Asteroid Listening Post/includes.dm"

	#include "../../UNSC_Thorin/includes.dm"

	//#include "../../kig_yar_pirates/includes.dm"

	#include "innie_crew_jobs.dm"
	#include "innie_crew_spawns.dm"
	#include "odst_crew_jobs.dm"


	#include "../../civ_ships/CCV_Comet.dm"
	#include "../../civ_ships/CCV_Comet.dmm"
	#include "../../civ_ships/CCV_Star.dm"
	#include "../../civ_ships/CCV_Star.dmm"
	#include "../../civ_ships/CCV_Slow_But_Steady.dm"
	#include "../../civ_ships/CCV_Slow_But_Steady.dmm"
	#include "../../civ_ships/CCV_Deliverance.dm"
	#include "../../civ_ships/CCV_Deliverance.dmm"

	#include "overall_outfits.dm"
	#include "mapdef.dm"

	#include "../../../code/modules/halo/lobby_music/odst_music.dm"
	#include "../../../code/modules/halo/lobby_music/halo_music.dm"

	#include "gamemode.dm"

	#define using_map_DATUM /datum/map/geminus_city

#elif !defined(MAP_OVERRIDE)

	#warn A map has already been included, ignoring Invasion: Geminus City

#endif
