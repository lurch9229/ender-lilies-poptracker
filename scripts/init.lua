local variant = Tracker.ActiveVariantUID

--LOADED SCRIPTS
ScriptHost:LoadScript("scripts/logic.lua")
ScriptHost:LoadScript("scripts/generated.lua")
ScriptHost:LoadScript("scripts/layouts.lua")
if AutoTracker.ReadVariable then
    ScriptHost:LoadScript("scripts/autotracking(uat).lua")
    ScriptHost:LoadScript("scripts/autotracking(ap).lua")
end

--global item layout
Tracker:AddLayouts("layouts/item_grids_standard.json")

--LOAD ITEMS
Tracker:AddItems("items/relics.json")
Tracker:AddItems("items/spirits.json")
Tracker:AddItems("items/items.json")
Tracker:AddItems("items/settings.json")

