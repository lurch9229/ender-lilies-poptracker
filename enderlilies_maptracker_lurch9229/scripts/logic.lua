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

ScriptHost:AddWatchForCode("useApLayout", "apLayout", apLayoutChange)

function apLayoutChange()
  if (string.find(Tracker.ActiveVariantUID, "map_tracker")) then
    local aptablets = Tracker:FindObjectForCode("apLayout")
    if aptablets.Active then
        Tracker:AddLayouts("layouts/tracker_standard_AP.json")
    else
        Tracker:AddLayouts("layouts/tracker_standard.json")
    end
  end
end