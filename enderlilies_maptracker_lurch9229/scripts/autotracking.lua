
trackedToggles = {
    ["Spirit.s5000"] = "umbral",
    ["Spirit.s5050"] = "gerrod",
    ["Spirit.s5020"] = "silva",
    ["Spirit.s5030"] = "julius",
    ["Spirit.s5070"] = "ulv",
    ["Spirit.s5040"] = "eleine",
    ["Spirit.s5060"] = "hoenir",
    ["Spirit.s5080"] = "faden",
    ["Spirit.s5010"] = "siegrid",
    ["Spirit.s2012"] = "cliffyouth",
    ["Spirit.s2002"] = "headless",
    ["Spirit.s2102"] = "merchant",
    ["Spirit.s2082"] = "maiden",
    ["Spirit.s2022"] = "archer",
    ["Spirit.s2162"] = "elderkeeper",
    ["Spirit.s2122"] = "fungal",
    ["Spirit.s2132"] = "floral",
    ["Spirit.s2192"] = "sentinel",
    ["Spirit.s2072"] = "testsubject",
    ["Spirit.s2182"] = "executioner",
    ["Spirit.s2052"] = "sinner",
    ["Spirit.s2172"] = "verboten",
    ["Spirit.s2112"] = "cliffelder",
    ["Spirit.s2092"] = "chief",
    ["Spirit.s2032"] = "royalaegis",
    ["Spirit.s2232"] = "fellwyrm",

    ["Aptitude.Heal"] = "pray",
    ["Aptitude.Jump"] = "jump",
    ["Aptitude.double_jump"] = "djump",
    ["Aptitude.stumble"] = "dodge",
    ["Aptitude.Dodge"] = "dodge2",
    ["Aptitude.dash"] = "dash",
    ["Aptitude.dash_attack"] = "lance",
    ["Aptitude.pound_attack"] = "hammer",
    ["Aptitude.swim"] = "paddle",
    ["Aptitude.dive"] = "aquatic",
    ["Aptitude.wallgrab"] = "claws",
    ["Aptitude.Hook"] = "hook",
    ["Aptitude.door_unlock"] = "unlock",
    ["Aptitude.summon_set_switch"] = "switch",
    ["Aptitude.special_attack"] = "rites",

    ["Generic.i_FinalPassivePart_Village"] = "tabletch",
    ["Generic.i_FinalPassivePart_Forest"] = "tabletwt",
    ["Generic.i_FinalPassivePart_Cave"] = "tabletcc",
    ["Generic.i_FinalPassivePart_Oubliette"] = "tabletsa",
    ["Generic.i_FinalPassivePart_Fort"] = "tabletts",
    ["Generic.i_FinalPassivePart_Castle"] = "tabletrc",
    ["Generic.i_FinalPassivePart_Swamp"] = "tabletvd",
	
    ["Parameter.i_maxHPUp_03"] = "jewel",
}

trackedConsumables = {
    ["Parameter.i_maxHPUp_01"] = "fragment",
    ["Parameter.i_maxHPUp_02"] = "gem",
    -- ["Generic.i_FinalPassivePart_Up"] = "tablet",
    ["Generic.i_PassiveSlot_Up"] = "relicslot",
    ["Generic.i_HealPower_Up"] = "wish",
}

trackedProgressives = {
    ["Game.DifficultyLevel"] = "ch1",

    ["Passive.i_passive_maxhpup_LV1"] = "prayerbeads",
    ["Passive.i_passive_maxhpup_LV2"] = "royalcrest",
    ["Passive.i_passive_maxhpup_LV3"] = "gift",
    ["Passive.i_passive_dmgcut_LV1"] = "music",
    ["Passive.i_passive_dmgcut_LV2"] = "familiar",
    ["Passive.i_passive_dmgcut_LV3"] = "snowdrop",
    ["Passive.i_passive_dmgup"] = "appendage",
    ["Passive.i_passive_dmgup_grounded"] = "giant",
    ["Passive.i_passive_dmgup_grounded_LV2"] = "orb",
    ["Passive.i_passive_dmgup_airborne"] = "dragonclaw",
    ["Passive.i_passive_dmgup_airborne_LV2"] = "heiml",
    ["Passive.i_passive_dmgup_swimming"] = "ornament",
    ["Passive.i_passive_dmgup_maxhp"] = "executionergloves",
    ["Passive.i_passive_stunstamina_damage_up"] = "crown",
    ["Passive.i_passive_regenHP_kill"] = "weatherneck",
    ["Passive.i_passive_regenHP_attack"] = "immortal",
    ["Passive.i_passive_spirit_maxcast_count_up_LV1"] = "manisa",
    ["Passive.i_passive_spirit_maxcast_count_up_LV2"] = "aura",
    ["Passive.i_passive_spirit_maxcast_count_up_LV3"] = "miriel",
    ["Passive.i_passive_recast_time_cut_LV1"] = "kilteus",
    ["Passive.i_passive_recast_time_cut_LV2"] = "caliva",
    ["Passive.i_passive_recast_time_cut_LV3"] = "groa",
    ["Passive.i_passive_heal_count_up_1"] = "statue",
    ["Passive.i_passive_heal_count_up_3"] = "doll",
    ["Passive.i_passive_heal_count_up_2"] = "earrings",
    ["Passive.i_passive_heal_power_up"] = "holywater",
    ["Passive.i_passive_shortheal"] = "nymphilia",
    ["Passive.i_passive_move_speed_up"] = "spellbound",
    ["Passive.i_passive_jump_height_up"] = "plume",
    ["Passive.i_passive_swim_fast"] = "witchbook",
    ["Passive.i_passive_expup_1"] = "ribbon",
    ["Passive.i_passive_expup_2"] = "blightblade",
    ["Passive.i_passive_ignore_damage_area"] = "heretic",
    ["Passive.i_passive_stamina_up"] = "hood",
    ["Passive.i_passive_mp_restore_up_LV1"] = "eldred",
    ["Passive.i_passive_maxmpup"] = "ricorus",
    ["Passive.i_passive_post_damage_invincibility"] = "iris",
    ["Passive.i_passive_flag_ending_c"] = "luminantcurio",
    ["Passive.i_passive_override_skin_level"] = "heirloom",
    ["Passive.i_passive_override_skin_level_max"] = "phantom",
    ["Passive.i_passive_parry"] = "fretia",
}


function updateToggles(store, vars)
    for _, var in ipairs(vars) do
        local o = Tracker:FindObjectForCode(trackedToggles[var])
        local val = store:ReadVariable(var)
        o.Active = (val and type(val) == "number" and val > 0)
    end
end

function updateConsumables(store, vars)
    for _, var in ipairs(vars) do
        local o = Tracker:FindObjectForCode(trackedConsumables[var])
        local val = store:ReadVariable(var)
        if type(val) == "number" then
            o.AcquiredCount = val
        else
            o.AcquiredCount = 0
        end
    end
end

function updateProgressiveToggles(store, vars)
    for _, var in ipairs(vars) do
        local o = Tracker:FindObjectForCode(trackedProgressives[var])
        local val = store:ReadVariable(var)
        if type(val) == "number" and val > 0 then
            o.CurrentStage = val
            o.Active = true
        else
            o.CurrentStage = 0
            o.Active = false
        end
    end
end

for gameVar, trackerVar in pairs(trackedToggles) do
    ScriptHost:AddVariableWatch(gameVar, { gameVar }, updateToggles)
end
for gameVar, trackerVar in pairs(trackedConsumables) do
    ScriptHost:AddVariableWatch(gameVar, { gameVar }, updateConsumables)
end
for gameVar, trackerVar in pairs(trackedProgressives) do
    ScriptHost:AddVariableWatch(gameVar, { gameVar }, updateProgressiveToggles)
end
