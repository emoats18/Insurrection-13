
#define SPARTAN_MOBS list(/mob/living/carbon/human/spartan)
#define SPARTAN_OUTFITS typesof(/decl/hierarchy/outfit/doomguy)
#define DOOMGUY_START 'code/modules/halo/misc/doomslayer.ogg'

/datum/admin_secret_item/fun_secret/spawn_doomguy
	name = "Summon the Slayer"

/datum/admin_secret_item/fun_secret/spawn_doomguy/can_execute(var/mob/user)
	if(!ticker) return 0
	return ..()

/datum/admin_secret_item/fun_secret/spawn_doomguy/proc/make_sound(var/sound)
	for(var/mob/M in GLOB.player_list)
		sound_to(M, sound)

/datum/admin_secret_item/fun_secret/spawn_doomguy/execute(var/mob/user)
	. = ..()
	if(.)

		var/end_selection

		while(!end_selection)
			var/mob/mob_selected = input(user,"Select the mob to create. Cancel to end team selection","Mob Selection","Cancel") as anything in SPARTAN_MOBS + list("Cancel")
			if(mob_selected == "Cancel")
				end_selection = 1
				break
			var/ckey_selected = input(user,"Choose a Ckey for the mob.","Ckey Selection",null)
			var/custom_name = input(user,"Pick a custom name for this mob. (Leave null to randomly generate)","Name selection",null)
			var/mob/new_mob = new mob_selected
			new_mob.loc = user.loc
			var/name_original = new_mob.real_name
			new_mob.name = custom_name
			new_mob.real_name = custom_name
			if(!new_mob.real_name)
				new_mob.real_name = name_original
				new_mob.name = name_original
			if(!isnull(ckey_selected))
				new_mob.ckey = ckey_selected
	return 1


#undef SPARTAN_OUTFITS
#undef SPARTAN_MOBS