
/* UNSC */

/datum/objective/destroy_innie_ship
	short_text = "Destroy the URF warship"
	explanation_text = "The URF stole this one from us. Don't let them leave with it intact."
	win_points = 100

/datum/objective/destroy_innie_ship/check_completion()
	var/datum/game_mode/insurrection/game_mode = ticker.mode
	if(istype(game_mode))
		if(!game_mode.innie_ship)
			return 1
	return 0

/datum/objective/protect/protect_unsc_leader
	short_text = "Protect the UNSC commander"
	explanation_text = "Without a strong chain of command, everything is lost. Protect the UNSC executive officer."
	lose_points = 50
	find_specific_target = 1

/datum/objective/protect/protect_unsc_leader/find_target_specific(var/datum/mind/check_mind)
	if(check_mind)
		if(!target)
			if(check_mind.assigned_role == "UNSC Heavens Above Commanding Officer")
				target = check_mind
			else if(check_mind.assigned_role == "UNSC Bertels Commanding Officer")
				target = check_mind
			if(target)
				. = 1
	else
		find_target_by_role("UNSC Heavens Above Commanding Officer")
		if(!target)
			find_target_by_role("UNSC Bertels Commanding Officer")
		if(target)
			. = 1

	if(explanation_text == "Free Objective")
		explanation_text  = "Protect your executive officer."

/datum/objective/protect_unsc_ship
	short_text = "Protect the UNSC warship"
	explanation_text = "Although cheaper than a MJOLNIR suit, even Spartans need a way to leave atmosphere. Protect the UNSC ship."
	lose_points = 100

/datum/objective/protect_unsc_ship/check_completion()
	var/datum/game_mode/insurrection/game_mode = ticker.mode
	if(istype(game_mode))
		if(game_mode.unsc_ship && game_mode.unsc_ship.loc)
			return 1
	return 0

//todo: oni agent job role

/datum/objective/capture_innies
	short_text = "Capture Insurrectionists for ONI interrogation"
	explanation_text = "The Insurrection worsens every year. Put some on ice in ONI cryopods for later black site interrogation. Kill the rest"
	var/points_per_capture = 25
	var/points_per_kill = 10
	var/list/minds_captured = list()
	var/list/minds_killed = list()

/datum/objective/capture_innies/check_completion()
	win_points = 0

	win_points += minds_captured.len * points_per_capture
	win_points += minds_killed.len * points_per_kill

	return win_points > 0

