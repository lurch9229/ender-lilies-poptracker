local variant = Tracker.ActiveVariantUID

--LOADED SCRIPTS
ScriptHost:LoadScript("scripts/logic.lua")
ScriptHost:LoadScript("scripts/generated.lua")
if AutoTracker.ReadVariable then
    ScriptHost:LoadScript("scripts/autotracking.lua")
end

--LOAD ITEMS
Tracker:AddItems("items/relics.json")
Tracker:AddItems("items/spirits.json")
Tracker:AddItems("items/items.json")
Tracker:AddItems("items/settings.json")

-- Open Maps, Then Layouts, Then Locations
if (string.find(Tracker.ActiveVariantUID, "minimal_items")) then
    Tracker:AddLayouts("minimal_layout/items_minimal.json")
    Tracker:AddLayouts("minimal_layout/broadcast_minimal.json")
else if (string.find(Tracker.ActiveVariantUID, "maps_only")) then
    Tracker:AddMaps("maps/maps.json")
    Tracker:AddLayouts("layouts/maps_only.json")
    Tracker:AddLayouts("layouts/settings_popup.json")
    Tracker:AddLayouts("layouts/broadcast_horizontal.json")
    Tracker:AddLocations("locations/cathedral.json")
    Tracker:AddLocations("locations/white_parish.json")
    Tracker:AddLocations("locations/cliffs_west.json")
    Tracker:AddLocations("locations/cliffs_east.json")
    Tracker:AddLocations("locations/witches_thicket.json")
    Tracker:AddLocations("locations/catacombs.json")
    Tracker:AddLocations("locations/twin_spires.json")
    Tracker:AddLocations("locations/stockade.json")
    Tracker:AddLocations("locations/ruined_castle.json")
    Tracker:AddLocations("locations/verboten_domain.json")
else if (string.find(Tracker.ActiveVariantUID, "minimal_maps")) then
    Tracker:AddMaps("maps/maps.json")
    Tracker:AddLayouts("minimal_layout/minimal_maps.json")
    Tracker:AddLayouts("layouts/settings_popup.json")
    Tracker:AddLayouts("minimal_layout/broadcast_minimal.json")
    Tracker:AddLocations("locations/cathedral.json")
    Tracker:AddLocations("locations/white_parish.json")
    Tracker:AddLocations("locations/cliffs_west.json")
    Tracker:AddLocations("locations/cliffs_east.json")
    Tracker:AddLocations("locations/witches_thicket.json")
    Tracker:AddLocations("locations/catacombs.json")
    Tracker:AddLocations("locations/twin_spires.json")
    Tracker:AddLocations("locations/stockade.json")
    Tracker:AddLocations("locations/ruined_castle.json")
    Tracker:AddLocations("locations/verboten_domain.json")
else if (string.find(Tracker.ActiveVariantUID, "items_only")) then
    Tracker:AddLayouts("layouts/items_only.json")
    Tracker:AddLayouts("layouts/broadcast_horizontal.json")
else if (string.find(Tracker.ActiveVariantUID, "world_map")) then
    Tracker:AddMaps("maps/world_map.json")
    Tracker:AddLayouts("layouts/tracker_worldmap.json")
    Tracker:AddLayouts("layouts/settings_popup.json")
    Tracker:AddLayouts("layouts/broadcast_horizontal.json")
    Tracker:AddLocations("locations/cathedral.json")
    Tracker:AddLocations("locations/white_parish.json")
    Tracker:AddLocations("locations/cliffs_west.json")
    Tracker:AddLocations("locations/cliffs_east.json")
    Tracker:AddLocations("locations/witches_thicket.json")
    Tracker:AddLocations("locations/catacombs.json")
    Tracker:AddLocations("locations/twin_spires.json")
    Tracker:AddLocations("locations/stockade.json")
    Tracker:AddLocations("locations/ruined_castle.json")
    Tracker:AddLocations("locations/verboten_domain.json")
else if (string.find(Tracker.ActiveVariantUID, "world_minimal")) then
    Tracker:AddMaps("maps/world_map.json")
    Tracker:AddLayouts("minimal_layout/minimal_world.json")
    Tracker:AddLayouts("layouts/settings_popup.json")
    Tracker:AddLayouts("minimal_layout/broadcast_minimal.json")
    Tracker:AddLocations("locations/cathedral.json")
    Tracker:AddLocations("locations/white_parish.json")
    Tracker:AddLocations("locations/cliffs_west.json")
    Tracker:AddLocations("locations/cliffs_east.json")
    Tracker:AddLocations("locations/witches_thicket.json")
    Tracker:AddLocations("locations/catacombs.json")
    Tracker:AddLocations("locations/twin_spires.json")
    Tracker:AddLocations("locations/stockade.json")
    Tracker:AddLocations("locations/ruined_castle.json")
    Tracker:AddLocations("locations/verboten_domain.json")
else if (string.find(Tracker.ActiveVariantUID,"map_tracker")) then
    Tracker:AddMaps("maps/maps.json")
    Tracker:AddLayouts("layouts/tracker_standard.json")
    Tracker:AddLayouts("layouts/settings_popup.json")
    Tracker:AddLayouts("layouts/broadcast_horizontal.json")
    Tracker:AddLocations("locations/cathedral.json")
    Tracker:AddLocations("locations/white_parish.json")
    Tracker:AddLocations("locations/cliffs_west.json")
    Tracker:AddLocations("locations/cliffs_east.json")
    Tracker:AddLocations("locations/witches_thicket.json")
    Tracker:AddLocations("locations/catacombs.json")
    Tracker:AddLocations("locations/twin_spires.json")
    Tracker:AddLocations("locations/stockade.json")
    Tracker:AddLocations("locations/ruined_castle.json")
    Tracker:AddLocations("locations/verboten_domain.json")
end
end
end
end
end
end
end