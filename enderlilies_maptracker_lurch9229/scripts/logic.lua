function has(item, amount)
  local count = Tracker:ProviderCountForCode(item)
  amount = tonumber(amount)
  if not amount then
    return count > 0
  else
    return count == amount
  end
end


--------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------ABILITY+CUSTOM LOGIC----------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------
 
function LEDGE()
  if has ("djump")
  or has ("silva")
  or has ("verboten")
  then
    return 1
  else
    return 0
  end
end

function LEDGE2()
  if (has ("djump") and has ("silva"))
  or (has ("djump") and has ("verboten"))
  or (has ("silva") and has ("verboten"))
  then 
    return 1
  else
    return 0
  end
end

function FULLSILVA()
  if (has ("silva") and has ("djump") and has ("verboten"))
  then
    return 1
  else
    return 0
  end
end

function HORIZONTAL()
  if has ("dodge2")
  or has ("sinner")
  then
    return 1
  else
    return 0
  end
end

function HORIZONTAL2()
  if (has ("dodge2") and has ("sinner"))
  then
    return 1
  else
    return 0
  end
end

function AIRSTALL()
  if has ("umbral")
  or has ("fretia")
  or has ("testsubject")
  or has ("headless")
  then
    return 1
  else
    return 0
  end
end

function jewelValue()
  jewel=Tracker:ProviderCountForCode("jewel")*50
  return jewel
end

function amuletValue()
  amulet=Tracker:ProviderCountForCode("fragment")*5
  return amulet
end

function gemValue()
  gem=Tracker:ProviderCountForCode("gem")*20
  return gem
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
--------------------------------------------------AREA LOGIC------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------
function B1ACCESS()
  return Tracker:ProviderCountForCode("defeatSiegrid")
end

function B3ACCESS()
  if (has ("$B1ACCESS") and has ("$LEDGE"))
  or (has ("$B1ACCESS") and has ("claws"))
  then
    return 1
  else
    return 0
  end
end

function B4ACCESS()
  if has ("$B3ACCESS")
  then
    return 1
  else
    return 0
  end
end

function B5ACCESS()
  if has ("$B4ACCESS")
  then
    return 1
  else
    return 0
  end
end

function B6ACCESS()
  if has ("$B4ACCESS")
  then
    return 1
  else
    return 0
  end
end

---------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------------

function C1ACCESS()
  if has ("$B5ACCESS")
  then
    return 1
  else
    return 0
  end
end

function C2ACCESS()
  if (has ("$C1ACCESS") and has ("$LEDGE"))
  or (has ("$C1ACCESS") and has ("claws"))
  then
    return 1
  else
    return 0
  end
end

function C3ACCESS()
  if has ("$C2ACCESS")
  then
    return 1
  else
    return 0
  end
end

function C4ACCESS()
  if has ("$C3ACCESS")
  then
    return 1
  else
    return 0
  end
end

function C5ACCESS()
  if (has ("$C4ACCESS") and has ("$LEDGE"))
  then
    return 1
  else
    return 0
  end
end

function C6ACCESS()
  if (has ("$C4ACCESS") and has ("$LEDGE"))
  then
    return 1
  else
    return 0
  end
end

function C7ACCESS()
  if has ("$C5ACCESS")
  or has ("$C6ACCESS")
  then
    return 1
  else
    return 0
  end
end

function C8ACCESS()
  if has ("$C7ACCESS")
  then
    return 1
  else
    return 0
  end
end

function C9ACCESS1()
  if (has ("$C1ACCESS") and has ("$LEDGE"))
  or (has ("$C1ACCESS") and has ("$HORIZONTAL") and has ("claws"))
  then
    return 1
  else
    return 0
  end
end


function C9ACCESS2()
  if (has ("$C2ACCESS") and has ("hammer"))
  then
    return 1
  else
    return 0
  end
end

function C10ACCESS4()
  if (has ("$C4ACCESS") and has ("hammer"))
  then
    return 1
  else
    return 0
  end
end

function C10ACCESS9()
  if has ("$C9ACCESS2")
  then
    return 1
  else
    return 0
  end
end

function C11ACCESS()
  if has ("$C10ACCESS9") and has ("$C10ACCESS4") and has ("aquatic")
  then 
    return 1
  else
    return 0
  end 
end
  
function C13ACCESS()
  if has ("$C3ACCESS")
  then
    return 1
  else
    return 0
  end
end

function C14ACCESS()
  if has ("$C13ACCESS")
  then
    return 1
  else
    return 0
  end
end

function C15ACCESS()
  if (has ("$C5ACCESS") and has ("$HORIZONTAL2"))
  or (has ("$C5ACCESS") and has ("hook"))
  or (has ("$C5ACCESS") and has ("djump") and has ("$HORIZONTAL"))
  or (has ("$C5ACCESS") and has ("verboten") and has ("silva") and has ("ulv") and has ("fretia"))
  or (has ("$C5ACCESS") and has ("djump") and has ("silva"))
  or (has ("$C5ACCESS") and has ("djump") and has ("verboten") and ("silva"))
  or (has ("$C5ACCESS") and has ("sinner") and has ("silva"))
  or (has ("$C5ACCESS") and has ("verborten") and has ("sinner"))
  or (has ("$C5ACCESS") and has ("plume") and has ("dodge2") and has ("dash"))
  then
    return 1
  else
    return 0
  end
end

function C16ACCESS()
  if (has ("$C7ACCESS") and has ("aquatic"))
  then
    return 1
  else
    return 0
  end
end

function C17ACCESSH18()
  if (has ("$H18ACCESS") and has ("$FULLSILVA"))
  or (has ("$H18ACCESS") and has ("hook") and has ("$LEDGE"))
  or (has ("$H18ACCESS") and has ("silva") and has ("dodge2") and has ("djump"))
  then
    return 1
  else
    return 0
  end
end

function C17ACCESSC16()
  if (has ("$C16ACCESS") and has ("claws") and has ("$HORIZONTAL2"))
  or (has ("$C16ACCESS") and has ("claws") and has ("$FULLSILVA") and has ("$HORIZONTAL"))
  or (has ("$C16ACCESS") and has ("claws") and has ("$HORIZONTAL2") and has ("verboten"))
  or (has ("$C16ACCESS") and has ("claws") and has ("dodge2") and has ("dash") and has ("verboten") and has ("silva"))
  or (has ("$C16ACCESS") and has ("claws") and has ("hook") and has ("$HORIZONTAL"))
  or (has ("$C16ACCESS") and has ("claws") and has ("hook") and has ("djump"))
  or (has ("$C16ACCESS") and has ("claws") and has ("hook") and has ("verboten"))
  or (has ("$C16ACCESS") and has ("silva") and has ("djump") and has ("dodge2") and has ("hook"))
  or (has ("$C16ACCESS") and has ("$FULLSILVA") and has ("hook"))
  or (has ("$C16ACCESS") and has ("silva") and has ("verboten") and has ("dodge2") and has ("hook"))
  then
    return 1
  else
    return 0
  end
end

function C17ACCESSC18()
  if (has ("$C18ACCESSE18") and has ("hook"))
  or (has ("$C18ACCESSE18") and has ("$LEDGE"))
  then
    return 1
  else
    return 0
  end
end

function C18ACCESSC16()
  if (has ("$C16ACCESS") and has ("claws") and has ("$HORIZONTAL2"))
  or (has ("$C16ACCESS") and has ("claws") and has ("$FULLSILVA") and has ("#HORIZONTAL"))
  or (has ("$C16ACCESS") and has ("claws") and has ("$HORIZONTAL2") and has ("verboten"))
  or (has ("$C16ACCESS") and has ("claws") and has ("dodge2") and has ("dash") and has ("verboten") and has ("silva"))
  or (has ("$C16ACCESS") and has ("claws") and has ("hook") and has ("$HORIZONTAL"))
  or (has ("$C16ACCESS") and has ("claws") and has ("hook") and has ("djump"))
  or (has ("$C16ACCESS") and has ("claws") and has ("hook") and has ("verboten"))
  or (has ("$C16ACCESS") and has ("silva") and has ("djump") and has ("dodge2") and has ("hook"))
  or (has ("$C16ACCESS") and has ("$FULLSILVA") and has ("hook"))
  or (has ("$C16ACCESS") and has ("silva") and has ("verboten") and has ("dodge2") and has ("hook"))
  then
    return 1
  else
    return 0
  end
end

function C18ACCESSE18()
  if (has ("$E17ACCESS") and has ("djump") and has ("dodge2"))
  or (has ("$E17ACCESS") and has ("silva") and has ("djump"))
  or (has ("$E17ACCESS") and has ("sinner"))
  or (has ("$E17ACCESS") and has ("silva") and has ("verboten") and has ("ulv") and has ("fretia"))
  or (has ("$E17ACCESS") and has ("djump") and has ("ulv") and has ("verboten"))
  then
    return 1
  else
    return 0
  end
end
 
function C18ACCESSH18()
  if (has ("$H18ACCESS") and has ("hook"))
  or (has ("$H18ACCESS") and has ("$FULLSILVA"))
  or (has ("$H18ACCESS") and has ("silva") and has ("djump") and has ("dodge2"))
  then
    return 1
  else
    return 0
  end
end

function C19ACCESS()
  if (has ("$C8ACCESS") and has ("defeatGerrod"))
  then
    return 1
  else
    return 0
  end
end

function C19ACCESSC20()
  if (has ("$C20ACCESSH1") and has ("claws"))
  then
    return 1
  else
    return 0
  end
end

function C20ACCESS()
  if (has ("$C19ACCESS") and has ("claws"))
  then
    return 1
  else
    return 0
  end
end

function C20ACCESSH1()
  if has ("$H1ACCESS")
  then
    return 1
  else
    return 0
  end
end

---------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------

function D1ACCESS()
  if has ("$B6ACCESS")
  then
    return 1
  else
    return 0
  end
end

function D2ACCESS()
  if has ("$D1ACCESS")
  then
    return 1
  else
    return 0
  end
end

function D3ACCESS()
  if has ("$D1ACCESS")
  then
    return 1
  else
    return 0
  end
end

function D4ACCESS()
  if has ("$D2ACCESS")
  or has ("$D3ACCESS")
  then
    return 1
  else
    return 0
  end
end

function D5ACCESS()
  if has ("$D4ACCESS")
  then
    return 1
  else
    return 0
  end
end

function D6ACCESS()
  if has ("$D5ACCESS") 
  then
    return 1
  else
    return 0
  end
end

function D7ACCESS()
  if has ("$D6ACCESS")
  then
    return 1
  else
    return 0
  end
end

function D8ACCESS7() -- Witches Thicket from D7
  if has ("$D7ACCESS")
  then
    return 1
  else
    return 0
  end
end

function D8ACCESS11()
  if (has ("D11ACCESS10") and has ("aquatic"))
  then
    return 1
  else
    return 0
  end
end

function D9ACCESS()
  if has ("$D7ACCESS")
  then
    return 1
  else
    return 0
  end
end

function D10ACCESS()
  if has ("$D9ACCESS")
  then
    return 1
  else
    return 0
  end
end

function D11ACCESS10()
  if (has ("$D10ACCESS") and has ("$LEDGE"))
  or (has ("$D10ACCESS") and has ("claws") and has ("faden"))
  or (has ("$D10ACCESS") and has ("claws") and has ("sentinel"))
  or (has ("D10ACCESS") and has ("archer"))
  then
    return 1
  else
    return 0
  end
end

function D11ACCESS8()
  if (has ("$D8ACCESS7") and has ("aquatic"))
  then
    return 1
  else
    return 0
  end
end

function D12ACCESS()
  if has ("$D11ACCESS8")
  or has ("$D11ACCESS10")
  then
    return 1
  else
    return 0
  end
end

function D13ACCESS5()
  if (has ("$D5ACCESS") and has ("dodge2") and has ("$LEDGE"))
  or (has ("$D5ACCESS") and has ("sinner"))
  or (has ("$D5ACCESS") and has ("hook"))
  or (has ("$D5ACCESS") and has ("djump") and has ("verboten"))
  or (has ("$D5ACCESS") and has ("djump") and has ("silva"))
  or (has ("$D5ACCESS") and has ("dodge2") and has ("ulv") and has ("fretia"))
  or (has ("$D5ACCESS") and has ("dodge2") and has ("dash") and has ("plume"))
  or (has ("$D5ACCESS") and has ("dodge2") and has ("dash") and has ("anklet"))
  then
    return 1
  else
    return 0
  end
end

function D14ACCESS()
  if has ("$D7ACCESS")
  then
    return 1
  else
    return 0
  end
end

function D15ACCESS()
  if (has ("$D14ACCESS") and has ("aquatic") and has ("claw"))
  or (has ("$D14ACCESS") and has ("aquatic") and has ("$LEDGE"))
  then
    return 1
  else
    return 0
  end
end

function D16ACCESS()
  if has ("$D15ACCESS") and has ("dodge2")
  or has ("$D15ACCESS") and has ("dash")
  then
    return 1
  else
    return 0
  end
end

function D17ACCESS()
  if (has ("$D9ACCESS") and has ("hook"))
  or (has ("$D9ACCESS") and has ("claws") and has ("$LEDGE2"))
  or (has ("$D9ACCESS") and has ("djump") and has ("$HORIZONTAL2"))
  or (has ("$D9ACCESS") and has ("$FULLSILVA") and has ("ulv"))
  or (has ("$D9ACCESS") and has ("djump") and has ("$HORIZONTAL") and has ("verboten"))
  or (has ("$D9ACCESS") and has ("$HORIZONTAL") and has ("silva"))
  or (has ("$D9ACCESS") and has ("$LEDGE") and has ("dash") and has ("claws"))
  then
    return 1
  else
    return 0
  end
end

function D18ACCESS()
  if (has ("$D5ACCESS") and has ("$LEDGE"))
  then
    return 1
  else
    return 0
  end
end

function D19ACCESS()
  if (has ("$D10ACCESS") and has ("unlock") and has ("claws") and has ("djump") and has ("$HORIZONTAL"))
  or (has ("$D10ACCESS") and has ("unlock") and has ("claws") and has ("djump") and has ("silva"))
  or (has ("$D10ACCESS") and has ("unlock") and has ("claws") and has ("djump") and has ("verboten"))
  or (has ("$D10ACCESS") and has ("unlock") and has ("claws") and has ("verboten") and has ("djump"))
  or (has ("$D10ACCESS") and has ("unlock") and has ("claws") and has ("verboten") and has ("silva"))
  or (has ("$D10ACCESS") and has ("unlock") and has ("claws") and has ("verboten") and has ("$HORIZONTAL"))
  or (has ("$D10ACCESS") and has ("unlock") and has ("claws") and has ("silva") and has ("djump"))
  or (has ("$D10ACCESS") and has ("unlock") and has ("claws") and has ("silva") and has ("verboten"))
  or (has ("$D10ACCESS") and has ("unlock") and has ("claws") and has ("silva") and has ("$HORIZONTAL"))
  or (has ("$D10ACCESS") and has ("unlock") and has ("$FULLSILVA") and has ("verboten"))
  then
    return 1
  else
    return 0
  end
end

----------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------

function CatacombsACCESS()
  if has ("$C11ACCESS")
  or (has ("$C18ACCESSC16") and has ("djump") and has ("dodge2"))
  or (has ("$C18ACCESSC16") and has ("silva") and has ("djump"))
  or (has ("$C18ACCESSC16") and has ("djump") and has ("ulv") and ("verboten"))
  or (has ("$C18ACCESSC16") and has ("sinner"))
  or (has ("$C18ACCESSC16") and has ("silva") and has ("verboten") and has ("ulv") and has ("fretia"))
  or (has ("$C18ACCESSH18") and has ("djump") and has ("dodge2"))
  or (has ("$C18ACCESSH18") and has ("silva") and has ("djump"))
  or (has ("$C18ACCESSH18") and has ("djump") and has ("ulv") and ("verboten"))
  or (has ("$C18ACCESSH18") and has ("sinner"))
  or (has ("$C18ACCESSH18") and has ("silva") and has ("verboten") and has ("ulv") and has ("fretia"))
  or (has ("$C18ACCESSH18") and has ("silva") and has ("dodge2"))
  then
    return 1
  else
    return 0
  end
end

function E2ACCESS()
  if (has ("$CatacombsACCESS") and has ("hammer"))
  then
    return 1
  else
    return 0
  end
end

function E5ACCESS()
  if (has ("$CatacombsACCESS") and has ("$LEDGE"))
  then
    return 1
  else
    return 0
  end
end

function E9ACCESS8()
  if (has ("$CatacombsACCESS") and has ("$LEDGE") and has ("aquatic"))
  or (has ("$CatacombsACCESS") and has ("plume") and has ("aquatic"))
  then
    return 1
  else
    return 0
  end
end

function E10ACCESS()
  if (has ("$E9ACCESS8") and has ("$LEDGE"))
  or (has ("$E9ACCESS8") and has ("plume"))
  or has ("$E14ACCESS")
  then
    return 1
  else
    return 0
  end
end

function E14ACCESS()
  if (has ("$E5ACCESS") and has ("claws"))
  or (has ("$E5ACCESS") and has ("dodge2") and has ("$LEDGE"))
  or (has ("$E5ACCESS") and has ("sinner"))
  or (has ("$E5ACCESS") and has ("djump") and has ("silva"))
  or (has ("$E5ACCESS") and has ("djump") and has ("verboten") and has ("ulv")) 
  or (has ("$E5ACCESS") and has ("djump") and has ("verboten") and has ("plume"))
  then
    return 1
  else
    return 0
  end
end

function E15ACCESS()
  if has ("$E14ACCESS")
  then
    return 1
  else
    return 0
  end
end

function E16ACCESS()
  if has ("$E10ACCESS")
  then
    return 1
  else
    return 0
  end
end

function E17ACCESS()
  if (has ("$E16ACCESS") and has ("djump"))
  or (has ("$E16ACCESS") and has ("verboten") and has ("$HORIZONTAL"))
  or (has ("$E16ACCESS") and has ("silva") and has ("$HORIZONTAL"))
  or (has ("$E9ACCESS8") and has ("$LEDGE") and has ("hook"))
  or (has ("$E9ACCESS8") and has ("$LEDGE") and has ("claws"))
  or (has ("$E9ACCESS8") and has ("silva") and has ("djump"))
  or (has ("$E9ACCESS8") and has ("djump") and has ("verboten"))
  or (has ("$E9ACCESS8") and has ("$HORIZONTAL2"))
  then
    return 1
  else
    return 0
  end
end

function E18ACCESSRev()
  if (has ("$C18ACCESSC16") and has ("djump") and has ("dodge2"))
  or (has ("$C18ACCESSC16") and has ("silva") and has ("djump"))
  or (has ("$C18ACCESSC16") and has ("djump") and has ("ulv") and ("verboten"))
  or (has ("$C18ACCESSC16") and has ("sinner"))
  or (has ("$C18ACCESSC16") and has ("silva") and has ("verboten") and has ("ulv") and has ("fretia"))
  or (has ("$C18ACCESSH18") and has ("djump") and has ("dodge2"))
  or (has ("$C18ACCESSH18") and has ("silva") and has ("djump"))
  or (has ("$C18ACCESSH18") and has ("djump") and has ("ulv") and ("verboten"))
  or (has ("$C18ACCESSH18") and has ("sinner"))
  or (has ("$C18ACCESSH18") and has ("silva") and has ("verboten") and has ("ulv") and has ("fretia"))
  or (has ("$C18ACCESSH18") and has ("silva") and has ("dodge2"))
  then
    return 1
  else
    return 0
  end
end


function E20ACCESS()
  if (has ("$E10ACCESS") and has ("sinner"))
  or (has ("$E10ACCESS") and has ("$LEDGE") and has ("dodge2"))
  or (has ("$E10ACCESS") and has ("silva") and has ("dash"))
  or (has ("$E10ACCESS") and has ("djump") and has ("silva"))
  or (has ("$E10ACCESS") and has ('djump') and has ("verboten"))
  or (has ("$E10ACCESS") and has ("verboten") and has ("silva") and has ("ulv") and has ("fretia"))
  or (has ("$E10ACCESS") and has ("dodge2") and has ("ulv"))
  or (has ("$E10ACCESS") and has ("ulv") and has ("djump") and has ("fretia"))
  or (has ("$E10ACCESS") and has ("claws") and has ("$LEDGE"))
  or (has ("$E10ACCESS") and has ("$LEDGE2"))
  or (has ("$E10ACCESS") and has ("$HORIZONTAL2"))
  then
    return 1
  else
    return 0
  end
end

function E21ACCESS()
  if (has ("$E10ACCESS") and has ("hook"))
  or (has ("$E10ACCESS") and has ("silva") and has ("dodge2") and has ("claws"))
  or (has ("$E10ACCESS") and ("sinner"))
  or (has ("$E10ACCESS") and has ("djump") and has ("dodge2"))
  or (has ("$E10ACCESS") and has ("djump") and has ("silva"))
  or (has ("$E10ACCESS") and has ("djump") and has ("verboten") and has ("ulv"))
  or (has ("$E10ACCESS") and has ('dodge2') and has ("verboten"))
  or (has ("$E10ACCESS") and has ("plume") and has ("djump") and has ("verboten"))
  then
    return 1
  else
    return 0
  end
end

function E22ACCESS()
  if (has ("$E10ACCESS") and has ("hammer") and has ("aquatic"))
  then
    return 1
  else
    return 0
  end
end
------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------

function StockadeACCESS()
  if (has ("$D13ACCESS5") and has ("aquatic"))
  then
    return 1
  else 
    return 0
  end
end

function F5ACCESS()
  if (has ("$StockadeACCESS") and has ("aquatic"))
  then
    return 1
  else
    return 0
  end
end

function F6ACCESS()
  if (has ("$F5ACCESS") and has ("aquatic"))
  then
    return 1
  else
    return 0
  end
end

function F7ACCESS()
  if has ("$F6ACCESS")
  then
    return 1
  else
    return 0
  end
end

function F8ACCESS()
  if (has ("$F6ACCESS") and ("$LEDGE"))
  or (has ("$F6ACCESS") and has ("$HORIZONTAL"))
  or has ("$F7ACCESS")
  then
    return 1
  else
    return 0
  end
end

function F9ACCESS8()
  if (has ("$F6ACCESS") and has ("silva") and has ("djump") and has ("dodge2") and has ("claws"))
  or (has ("$F6ACCESS") and has ("$FULLSILVA") and has ("claws"))
  or (has ("$F6ACCESS") and has ("hook"))
  then
    return 1
  else
    return 0
  end
end

function F10ACCESS8()
  if (has ("$F8ACCESS") and has ("hook"))
  or (has ("$F8ACCESS") and has ("$LEDGE") and has ("ulv"))
  or (has ("$F8ACCESS") and has ("$LEDGE2"))
  or (has ("$F8ACCESS") and has ("$HORIZONTAL") and has ("$LEDGE"))
  then
    return 1
  else
    return 0
  end
end

function F13ACCESS()
  if has ("$F7ACCESS")
  or has ("$F10ACCESS8")
  then
    return 1
  else
    return 0
  end
end

function F14ACCESS()
  if has ("$F5ACCESS")
  then
    return 1
  else
    return 0
  end
end

function F25ACCESS()
  if (has ("$F7ACCESS") and has ("hook") and has ("$HORIZONTAL") and has ("claws"))
  or (has ("$F7ACCESS") and has ("hook") and has ("djump") and has ("claws"))
  or (has ("$F7ACCESS") and has ("hook") and has ("silva") and has ("verboten") and has ("claws"))
  or (has ("$F7ACCESS") and has ("$FULLSILVA") and has ("claws"))
  or (has ("$F7ACCESS") and has ("silva") and has ("djump") and has ("dodge2") and has ("claws"))
  or (has ("$F10ACCESS8") and has ("hook") and has ("$HORIZONTAL") and has ("claws"))
  or (has ("$F10ACCESS8") and has ("hook") and has ("djump") and has ("claws"))
  or (has ("$F10ACCESS8") and has ("hook") and has ("silva") and has ("verboten") and has ("claws"))
  then
    return 1
  else
    return 0
  end
end

function F26ACCESS()
  if (has ("$F5ACCESS") and has ("lance") and has ("dash"))
  then
    return 1
  else
    return 0
  end
end
----------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------

function TwinSpiresACCESS()
  if (has ("$RuinedCastleACCESS") and has ("hook"))
  or (has ("$RuinedCastleACCESS") and has ("$FULLSILVA"))
  or (has ("$RuinedCastleACCESS") and has ("silva") and has ("djump") and has ("dodge2"))
  or has ("$C18ACCESSE18")
  or has ("$C18ACCESSC16")
  or has ("$C18ACCESSH18")
  then
    return 1
  else
    return 0
  end
end

function G2ACCESS()
  if (has ("$TwinSpiresACCESS") and has ("$LEDGE"))
  then
    return 1
  else
    return 0
  end
end

function G3ACCESS()
  if has ("$G2ACCESS")
  then
    return 1
  else
    return 0
  end
end

function G5ACCESS()
  if has ("$G3ACCESS")
  then
    return 1
  else
    return 0
  end
end

function G6ACCESS()
  if has ("$G5ACCESS")
  then
    return 1
  else
    return 0
  end
end

function G8ACCESS()
  if has ("$G6ACCESS")
  or has ("$G3ACCESS")
  then
    return 1
  else
    return 0
  end
end

function G9ACCESS()
  if has ("$G8ACCESS")
  then
    return 1
  else
    return 0
  end
end

function G11ACCESS()
  if has ("$G8ACCESS")
  then
    return 1
  else
    return 0
  end
end

function G12ACCESS()
  if has ("$G11ACCESS")
  then
    return 1
  else
    return 0
  end
end

function G13ACCESS()
  if (has ("$G2ACCESS") and has ("claws"))
  or has ("$G12ACCESS")
  then
    return 1
  else
    return 0
  end
end

function G14ACCESS()
  if (has ("$G13ACCESS") and has ("claws"))
  or (has ("$G13ACCESS") and has ("djump"))
  or (has ("$G13ACCESS") and has ("$HORIZONTAL"))
  or (has ("$G13ACCESS") and has ("$LEDGE2"))
  or (has ("$G13ACCESS") and has ("silva") and has ("ult"))
  then
    return 1
  else
    return 0
  end
end

function G15ACCESS()
  if has ("$G14ACCESS")
  or has ("$G16ACCESS")
  then
    return 1
  else
    return 0
  end
end

function G16ACCESS()
  if has ("$G14ACCESS")
  or (has ("$G11ACCESS") and has ("claws") and has ("djump"))
  or (has ("$G11ACCESS") and has ("claws") and has ("verboten"))
  then
    return 1
  else
    return 0
  end
end

function G18ACCESS()
  if (has ("$G14ACCESS") and has ("claws"))
  or (has ("$G14ACCESS") and has ("$LEDGE2"))
  or (has ("$G14ACCESS") and has ("$HORIZONTAL"))
  or (has ("$G11ACCESS") and has ("claws") and has ("djump"))
  or (has ("$G11ACCESS") and has ("claws") and has ("Verboten"))
  then
    return 1
  else
    return 0
  end
end

function G19ACCESS()
  if (has ("$G5ACCESS") and has ("claws"))
  or (has ("$F13ACCESS") and has ("hook") and has ("claws"))
  or (has ("$F13ACCESS") and has ("silva") and has ("djump") and has ("$HORIZONTAL") and has ("claws"))
  or (has ("$F13ACCESS") and has ("silva") and has ("djump") and has ("ulv") and has ("claws"))
  then
    return 1
  else
    return 0
  end
end

----------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------

function RuinedCastleACCESS()
  if (has ("$H1ACCESS") and has ("$LEDGE"))
  or (has ("$H18ACCESS") and has ("$LEDGE"))
  then
    return 1
  else
    return 0
  end
end

function H1ACCESS()
  if (has ("$C17ACCESSC16") and has ("hook"))
  or (has ("$C18ACCESSE18") and has ("hook"))
  then
    return 1
  else
    return 0
  end
end


function H7ACCESS()
  if has ("$RuinedCastleACCESS")
  then
    return 1
  else
    return 0
  end
end

function H11ACCESS10()
  if (has ("$RuinedCastleACCESS") and has ("$LEDGE2"))
  or (has ("$RuinedCastleACCESS") and has ("hook"))
  or (has ("$RuinedCastleACCESS") and has ("claws"))
  then
    return 1
  else
    return 0
  end
end

function H16ACCESS()
  if (has ("$RuinedCastleACCESS") and has ("hook") and has ("claws"))
  or (has ("$RuinedCastleACCESS") and has ("hook") and has ("$FULLSILVA"))
  or (has ("$RuinedCastleACCESS") and has ("hook") and has ("silva") and has ("dodge2") and has ("djump"))
  or (has ("$RuinedCastleACCESS") and has ("$FULLSILVA") and has ("claws"))
  or (has ("$RuinedCastleACCESS") and has ("claws") and has ("silva") and has ("djump") and has ("dodge2") and has ("plume"))
  then
    return 1
  else
    return 0
  end
end

function H18ACCESS()
  if (has ("$C20ACCESS") and has ("claws"))
  then
    return 1
  else
    return 0
  end
end

----------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------

function VerbotenDomainACCESS()
  if (has ("$D16ACCESS") and has ("dodge2"))
  or (has ("$D16ACCESS") and has ("dash"))
  or (has ("$F26ACCESS") and has ("hammer") and has ("hook") and has ("dash") and has ("lance"))
  then
    return 1
  else
    return 0
  end
end

function J4ACCESSF26()
  if (has ("$F26ACCESS") and has ("hook") and has ("hammer") and has ("dash") and has ("lance"))
  or (has ("$F26ACCESS") and has ("claws") and has ("hammer") and has ("dash") and has ("lance") and has ("dodge2"))
  then
    return 1
  else
    return 0
  end
end

function J6ACCESS()
  if (has ("$VerbotenDomainACCESS") and has ("$domainMath") and has ("dash") and has ("lance") and has ("hammer"))
  or (has ("$VerbotenDomainACCESS") and has ("mask") and has ("dash") and has ("lance") and has ("hammer"))
  then
    return 1
  else
    return 0
  end
end

function J7ACCESS()
  if has ("$J6ACCESS")
  then
    return 1
  else
    return 0
  end
end

function J8ACCESS()
  if has ("$J6ACCESS")
  then
    return 1
  else
    return 0
  end
end

function J9ACCESS()
  if has ("$J8ACCESS")
  then
    return 1
  else
    return 0
  end
end

function J10ACCESS()
  if has ("$J8ACCESS")
  then
    return 1
  else
    return 0
  end
end

function J11ACCESS()
  if has ("$J8ACCESS")
  then
    return 1
  else
    return 0
  end
end

function J12ACCESS()
  if has ("$J8ACCESS")
  then
    return 1
  else
    return 0
  end
end

function J13ACCESSW()
  if (has ("$J9ACCESS") and has ("hook"))
  or (has ("$J9ACCESS") and has ("$LEDGE2") and has ("claws"))
  or (has ("$J9ACCESS") and has ("$FULLSILVA") and has ("dodge2"))
  then
    return 1
  else
    return 0
  end
end

function J13ACCESSE()
  if (has ("$VerbotenDomainACCESS") and has ("aquatic") and has ("$domainMath") and has ("dash") and has ("lance"))
  or (has ("$VerbotenDomainACCESS") and has ("mask") and has ("aquatic") and has ("dash") and has ("lance"))
  then
    return 1
  else
    return 0
  end
end

function J14ACCESS()
  if (has ("$J13ACCESSE") and has ("$J13ACCESSW"))
  then
    return 1
  else
    return 0
  end
end

function K1ACCESS()
  if (has ("$J14ACCESS") and has ("unlock"))
  then
    return 1
  else
    return 0
  end
end

function K2ACCESS()
  if (has ("$K1ACCESS") and has ("$LEDGE2") and has ("hammer") and has ("aquatic"))
  or (has ("$K1ACCESS") and has ("hook") and has ("hammer") and has ("aquatic"))
  then
    return 1
  else
    return 0
  end
end

function K4ACCESS()
  if (has ("$J11ACCESS") and has ("hammer") and has ("unlock") and has ("mask"))
  then
    return 1
  else
    return 0
  end
end

function K5ACCESS()
  if (has ("$K4ACCESS") and has ("$abyssGauntlet") and has ("dodge2") and has ("dash") and has ("djump") and has ("aquatic") and has ("hook") and has ("hammer") and has ("spellbound") and has ("witchbook") and wishNum(6) and has ("holywater") and slotNum(7))
  or (has ("$K4ACCESS") and has ("setting_slots") and has ("$abyssGauntlet") and has ("dodge2") and has ("dash") and has ("djump") and has ("aquatic") and has ("hook") and has ("hammer") and has ("spellbound") and has ("witchbook") and wishNum(6) and has ("holywater") and slotNum(16))
  then
    return 1
  else
    return 0
  end
end
