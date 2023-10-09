function has(item, amount)
  local count = Tracker:ProviderCountForCode(item)
  amount = tonumber(amount)
  if not amount then
    return count > 0
  else
    return count == amount
  end
end

function amuletValue()
  amulet=Tracker:ProviderCountForCode("fragment")*5
  return amulet
end

function gemValue()
  gem=Tracker:ProviderCountForCode("gem")*20
  return gem
end

function jewelValue()
  jewel=Tracker:ProviderCountForCode("jewel")*50
  return jewel
end

function haveBeads()
  beads=Tracker:ProviderCountForCode("prayerbeads")*1
  return beads
end

function haveAegis()
  aegis=Tracker:ProviderCountForCode("aegis")*1
  return aegis
end

function beadsMath(hp)
  return hp + (hp*haveBeads() /20)
end

function aegisMath(hp)
  return hp + (hp*haveAegis() /10)
end

function wishNum(amount)
  wish=Tracker:ProviderCountForCode("wish")*1
  return (wish >= amount)
end

function slotNum(amount)
  relicslot=Tracker:ProviderCountForCode("relicslot")*1
  return (relicslot >= amount)
end

function domainMath()
  hp = 100 + amuletValue() + gemValue() + jewelValue()
  hp = beadsMath(hp)
  hp = aegisMath(hp)
  if (hp >= 150 and wishNum(3) and has ("spellbound") and slotNum(5) and has ("dodge2"))
  or (hp >= 150 and has ("holywater") and has ("spellbound") and slotNum(6) and has ("dodge2"))
  or (hp >= 120 and wishNum(3) and has ("dodge2") and has ("dash"))
  or (hp >= 150 and has ("spellbound") and has ("shuffle_slots") and slotNum(12) and has ("dodge2"))
  or (hp >= 150 and has ("spellbound") and has ("holywater") and has ("shuffle_slots") and slotNum(16) and has ("dodge2"))
  or (hp >= 175 and has ("dodge2") and wishNum(3))
  then
    return 1
  else
    return 0
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
--------------------------------------------------START AREA LOGIC------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------
