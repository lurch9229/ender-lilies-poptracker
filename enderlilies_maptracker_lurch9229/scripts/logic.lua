function has(item, amount)
  local count = Tracker:ProviderCountForCode(item)
  amount = tonumber(amount)
  if not amount then
    return count > 0
  else
    return count == amount
  end
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

function defeatUlv()
  if has ("defeatUlv")
  then
    return 1
  else
    return 0
  end
end

------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------LAYOUT WATCHERS-------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------

function apLayoutChange()
  local aptablets = Tracker:FindObjectForCode("apLayout")
  print("1")
  if (string.find(Tracker.ActiveVariantUID, "map_tracker")) or
  (string.find(Tracker.ActiveVariantUID, "world_map")) then
    print("2")
    if aptablets.Active then
      print("4")
        Tracker:AddLayouts("layouts/item_grids_AP.json")
        Tracker:AddLayouts("layouts/broadcast_horizontal_AP.json")
    else
      print("5")
        Tracker:AddLayouts("layouts/item_grids_standard.json")
end
  elseif (string.find(Tracker.ActiveVariantUID, "items_only")) then
    print ("6")
    if aptablets.Active then
      Tracker:AddLayouts("layouts/items_only_AP.json")
      Tracker:AddLayouts("layouts/broadcast_horizontal_AP.json")
    else
      Tracker:AddLayouts("layouts/items_only.json")
end
  elseif (string.find(Tracker.ActiveVariantUID, "minimal_items")) then
    print ("7")
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
  print("toggle b")
  if abyss01ACCESS() == true
  then
    Tracker:FindObjectForCode("Bend").Active = true

  end
  if Tracker:FindObjectForCode("gomode").CurrentStage <1 then
    Tracker:FindObjectForCode("gomode").CurrentStage = 1
  end
  return Tracker:FindObjectForCode("Bend").Active 
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
