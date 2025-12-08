/obj/item/organ/liver/dwarf
	maxHealth = 1.2 * STANDARD_ORGAN_THRESHOLD
	alcohol_tolerance = ALCOHOL_RATE * 0.5

/datum/species/dwarf
	mutantliver = /obj/item/organ/liver/dwarf

/datum/species/dwarf/on_species_gain(mob/living/carbon/human/human_who_gained_species, datum/species/old_species, pref_load, regenerate_icons, replace_missing)
	. = ..()
	human_who_gained_species.physiology.brute_mod *= 0.1
	human_who_gained_species.physiology.burn_mod *= 0.05
	human_who_gained_species.add_movespeed_modifier(/datum/movespeed_modifier/dwarf)
	huwan_who_gained_species.mind?.adjust_experience(/datum/skill/mining, SKILL_EXP_LIST[SKILLED_QUIRK_SKILL_LEVEL])
	huwan_who_gained_species.mind?.adjust_experience(/datum/skill/smithing, SKILL_EXP_LIST[SKILLED_QUIRK_SKILL_LEVEL])

/datum/movespeed_modifier/dwarf
	multiplicative_slowdown = 0.05

/mob/living/carbon/human/on_dwarf_trait(datum/source)
	return
