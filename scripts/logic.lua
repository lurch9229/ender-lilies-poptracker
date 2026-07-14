function has(item, amount)
  local count = Tracker:ProviderCountForCode(item)
  amount = tonumber(amount)
  if not amount then
    return count > 0
  else
    return count == amount
  end
end

function getLocAccess(location)
  local obj = Tracker:FindObjectForCode(location)
  if obj == nil then
    print(string.format("Location %s doesn't exist !", location))
    return AccessibilityLevel.None
  end
  return obj.AccessibilityLevel
end

function getAccess(code, amount)
  if string.sub(code,1,1) == "@" then
    return getLocAccess(code)
  elseif has(code, amount) then
    return AccessibilityLevel.Normal
  else
    return AccessibilityLevel.None
  end
end

spawn_table = {
  ["Start"] = "start_lily_chamber_On",
  ["Cellar"] = "start_cellar_on",
  ["CathedralCloister"] = "start_cloister_on",
  ["SaintsPassage"] = "start_saint_passage_on",
  ["Crossroads"] = "start_crossroads_on",
  ["CollapsedShack"] = "start_shack_on",
  ["BridgeHead"] = "start_bridgehead_on",
  ["RuinedCastleCellar"] = "start_castle_cellar_on",
  ["GuestChamber"] = "start_guest_chambers_on",
  ["MaelstromRemparts"] = "start_ramparts_on",
  ["BastionGates"] = "start_bastion_on",
  ["Courtyard"] = "start_courtyard_on",
  ["SecondSpireChamber"] = "start_second_spire_on",
  ["MonumentOfTheWind"] = "start_motw_on",
  ["MourningHall"] = "start_mourning_hall_on",
  ["DryadLake"] = "start_dryad_lake_on",
  ["WitchsHermitage"] = "start_witchs_hermitage_on",
  ["CovenHalls"] = "start_coven_halls_on",
  ["BottomOfTheWell"] = "start_botw_on",
  ["Charnel"] = "start_charnel_on",
  ["Ossuary"] = "start_ossuary_on",
  ["GreatHall"] = "start_great_hall_on",
  ["Aqueduct"] = "start_aqueduct_on",
  ["Cells"] = "start_cells_on",
  ["DarkChamber"] = "start_dark_chamber_on",
  ["ExecutionGrounds"] = "start_execution_on",
  ["Lab1"] = "start_labs1_on",
  ["Lab2"] = "start_labs2_on",
}

function isSpawn(location)
  return has(spawn_table[location])
end

function abyssGauntlet()
  hp = 100 + amuletValue() + gemValue() + jewelValue()
  hp = beadsMath(hp)
  hp = aegisMath(hp)
  if hp >= 300
  then
    return 1
  else
    return 0
  end
end

----------------------------------------------------GLITCH LOGIC---------------------------------------------------------------

function MAXJUMP()
  return has ("silva") and has ("djump") and has ("dodge2") and has ("verboten")
end

function AIRSTALL()
  return has ("umbral")
  or has ("fretia")
  or has ("testsubject")
  or has ("headless")
  or has ("gerrod")
  or has ("eleine")
  or has ("ulv")
  or has ("faden")
  or has ("hoenir")
  or has ("julius")
end

-- Has at least 2 airstall abilities
function AIRSTALL2()
  local has_airstall = false
  local items = { "umbral", "fretia", "testsubject", "headless", "gerrod", "eleine", "ulv", "faden", "hoenir", "julius"}
  for _, i in ipairs(items) do
    if has (i) then
      -- return true immediately when a second airstall is found
      if has_airstall then
        return true
      end
      
      has_airstall = true
    end
  end
  return false
end

------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------LAYOUT WATCHERS-------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------

function apLayoutChange()
  local aptablets = Tracker:FindObjectForCode("apLayout")
  if (string.find(Tracker.ActiveVariantUID, "map_tracker")) or
  (string.find(Tracker.ActiveVariantUID, "world_map")) then
    if aptablets.Active then
        Tracker:AddLayouts("layouts/item_grids_AP.json")
        Tracker:AddLayouts("layouts/broadcast_horizontal_AP.json")
    else
        Tracker:AddLayouts("layouts/item_grids_standard.json")
end
  elseif (string.find(Tracker.ActiveVariantUID, "items_only")) then
    if aptablets.Active then
      Tracker:AddLayouts("layouts/items_only_AP.json")
      Tracker:AddLayouts("layouts/broadcast_horizontal_AP.json")
    else
      Tracker:AddLayouts("layouts/items_only.json")
end
  elseif (string.find(Tracker.ActiveVariantUID, "minimal_items")) then
    if aptablets.Active then
      Tracker:AddLayouts("minimal_layout/items_minimal_AP.json")
      Tracker:AddLayouts("minimal_layout/broadcast_minimal_AP.json")
    else
      Tracker:AddLayouts("minimal_layout/items_minimal.json")
    end
  end
  finishCEnd()
end

ScriptHost:AddWatchForCode("useApLayout", "apLayout", apLayoutChange)


function finishBEnd()
  print("can reach b")
  return getLocAccess("@Abyss03Left") >= AccessibilityLevel.Normal
end

function toggleBEnd()
  local bEnd = Tracker:FindObjectForCode("gomode")
  print("toggle B")
  if finishBEnd() == true
  then
    print("b toggled on")
    bEnd.Active = true
    return Tracker:FindObjectForCode("Bend").Active
  end
end

function finishCEnd()
  print("toggle c")
  if finishBEnd() == true and has ("luminantcurio")
  then
  Tracker:FindObjectForCode("Cend").Active = true
  if Tracker:FindObjectForCode("gomode").CurrentStage <2 then
    Tracker:FindObjectForCode("gomode").CurrentStage = 2
  end
  end
end
