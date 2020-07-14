
/* INSURRECTION */

/datum/objective/destroy_unsc_ship
	short_text = "Destroy the UNSC warship"
	explanation_text = "UNSC warships are deadly, carrying special weapons and soldiers to crush many revolts before they can begin. Don't allow this one to escape."
	win_points = 100

/datum/objective/destroy_unsc_ship/check_completion()
	var/datum/game_mode/insurrection/game_mode = ticker.mode
	if(istype(game_mode))
		if(!game_mode.unsc_ship)
			return 1
	return 0

/datum/objective/assassinate/kill_unsc_leader
	short_text = "Kill UNSC commander"
	explanation_text = "We must cut the head off the snake to delay the UNSC efforts in this system. Kill the UNSC commander."
	win_points = 50
	find_specific_target = 1

/datum/objective/assassinate/kill_unsc_leader/find_target_specific(var/datum/mind/check_mind)
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
		explanation_text  = "Kill the UNSC commander."

/datum/objective/assassinate/kill_unsc_leader/check_completion()
	if(target && target.current)
		if(target.current.stat == DEAD || isbrain(target.current) || !target.current.ckey)
			return 1
	return 0

/datum/objective/protect/protect_innie_leader
	short_text = "Protect the Insurrectionist commander"
	explanation_text = "Without their inspirational lead, the Insurrection will fall apart. Protect the Insurrectionist Commander."
	lose_points = 50
	find_specific_target = 1

/datum/objective/protect/protect_innie_leader/find_target_specific(var/datum/mind/check_mind)
	if(check_mind)
		if(!target)
			if(check_mind.assigned_role == "Insurrectionist Commander")
				target = check_mind
			if(target)
				. = 1
	else
		find_target_by_role("Insurrectionist Commander")
		if(target)
			. = 1

	if(explanation_text == "Free Objective")
		explanation_text  = "Protect the Insurrectionist Commander."
