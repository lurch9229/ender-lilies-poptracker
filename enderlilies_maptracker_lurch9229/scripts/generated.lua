--[ Logic was generated from tokenizer script ]--

function LEDGE()
  return has ("djump") 
  or has ("verboten") 
  or has ("silva")  
end

function LEDGE2()
  return has ("verboten") and has ("silva") 
  or has ("verboten") and has ("djump") 
  or has ("silva") and has ("djump") 
  or has ("silva") and has ("dodge2")  
end

function FULLSILVA()
  return has ("silva") and has ("djump") and has ("dodge2")  
end

function FULLJUMP()
  return has ("silva") and has ("djump") and has ("verboten")  
end

function HORIZONTAL()
  return has ("dodge2") 
  or has ("sinner")  
end

function HORIZONTAL2()
  return has ("dodge2") and has ("sinner")  
end

function MAXJUMP()
  return has ("silva") and has ("djump") and has ("dodge2") and has ("verboten")  
end

function CHARGE()
  return has ("dash") and has ("lance")  
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

function AIRSTALL2()
  return has ("umbral") and has ("fretia") 
  or has ("umbral") and has ("testsubject") 
  or has ("umbral") and has ("headless") 
  or has ("umbral") and has ("gerrod") 
  or has ("umbral") and has ("eleine") 
  or has ("umbral") and has ("ulv") 
  or has ("umbral") and has ("faden") 
  or has ("umbral") and has ("hoenir") 
  or has ("umbral") and has ("julius") 
  or has ("fretia") and has ("testsubject") 
  or has ("fretia") and has ("headless") 
  or has ("fretia") and has ("gerrod") 
  or has ("fretia") and has ("ulv") 
  or has ("fretia") and has ("faden") 
  or has ("fretia") and has ("hoenir") 
  or has ("fretia") and has ("julius") 
  or has ("testsubject") and has ("headless") 
  or has ("testsubject") and has ("gerrod") 
  or has ("testsubject") and has ("eleine") 
  or has ("testsubject") and has ("ulv") 
  or has ("testsubject") and has ("faden") 
  or has ("testsubject") and has ("hoenir") 
  or has ("testsubject") and has ("julius") 
  or has ("headless") and has ("gerrod") 
  or has ("headless") and has ("eleine") 
  or has ("headless") and has ("ulv") 
  or has ("headless") and has ("faden") 
  or has ("headless") and has ("hoenir") 
  or has ("headless") and has ("julius") 
  or has ("gerrod") and has ("eleine") 
  or has ("gerrod") and has ("ulv") 
  or has ("gerrod2") and has ("faden") 
  or has ("gerrod") and has ("hoenir") 
  or has ("gerrod") and has ("julius") 
  or has ("eleine") and has ("ulv") 
  or has ("eleine") and has ("faden") 
  or has ("eleine") and has ("hoenir") 
  or has ("eleine") and has ("julius") 
  or has ("ulv") and has ("faden") 
  or has ("ulv") and has ("hoenir") 
  or has ("ulv") and has ("julius") 
  or has ("faden") and has ("hoenir") 
  or has ("faden") and has ("julius") 
  or has ("hoenir") and has ("julius")  
end

function defeatUlv()
  return has ("defeatUlv")  
end

function curioACCESS()
  return has ("tabletch") and has ("tabletwt") and has ("tabletcc") and has ("tabletsa") and has ("tabletrc") and has ("tabletts") and has ("tabletvd")  
end

function church04ACCESS()
  return has ("defeatSiegrid")  
end

function church07ACCESS()
  return church04ACCESS() and LEDGE() 
  or church04ACCESS() and has ("claws")  
end

function church09ACCESS()
  return has ("claws")  
end

function church13ACCESS()
  return has ("unlock")
end

function church14ACCESS()
  return church09ACCESS() and has ("hook") and LEDGE()  
end

function church08ACCESS()
  return church07ACCESS()  
end

function village01ACCESS()
  return church08ACCESS()  
end

function forest01ACCESS()
  return church08ACCESS()  
end

function village02ACCESS()
  return village01ACCESS()  
end

function village03ACCESS()
  return village02ACCESS() and LEDGE() 
  or village02ACCESS() and has ("claws")  
end

function village04ACCESS()
  return village05ACCESS()  
end

function village04_1ACCESS()
  return village04ACCESS()  
end

function village05ACCESS()
  return village03ACCESS()  
end

function village06LeftACCESS()
  return village05ACCESS()  
end

function village06RightACCESS()
  return village06LeftACCESS() and LEDGE() 
  or village06LeftACCESS() and has ("hook")  
end

function village07ACCESS()
  return village06RightACCESS()  
end

function village08ACCESS()
  return village06RightACCESS()  
end

function village09ACCESS()
  return village07ACCESS() 
  or village08ACCESS()  
end

function village10ACCESS()
  return village09ACCESS()  
end

function village11ACCESS()
  return village10ACCESS() and has ("defeatGerrod")  
end

function village11ACCESSFromCastle01()
  return castle01ACCESSFromCastle02() and has ("claws")  
end

function village11_1ACCESS()
  return village11ACCESS() 
  or village11ACCESSFromCastle01()  
end

function village12ACCESS()
  return village13RightACCESS()  
end

function village13LeftACCESS()
  return village02ACCESS()  
end

function village13RightACCESS()
  return village03ACCESS() and has ("hammer")  
end

function village14ACCESS()
  return village07ACCESS() and HORIZONTAL2() 
  or village07ACCESS() and has ("hook") 
  or village07ACCESS() and has ("silva") and HORIZONTAL() 
  or village07ACCESS() and has ("djump") and has ("silva") 
  or village07ACCESS() and FULLJUMP() 
  or village07ACCESS() and has ("silva") and HORIZONTAL() 
  or village07ACCESS() and has ("verboten") and has ("sinner") 
  or village07ACCESS() and has ("plume") and has ("dodge2") and has ("dash")  
end

function village15ACCESS()
  return village09ACCESS() and has ("aquatic")  
end

function village15ACCESSFromFort()
  return fort01ACCESSFromCastle() and has ("aquatic") 
  or fort01ACCESSFromCatacombs() and has ("aquatic")
end

function ruinedCastleACCESS()
  return castle01ACCESS() 
  or castle07ACCESS()  
end

function castle01ACCESS()
  return village11ACCESS() and has ("claws")  
end

function castle01ACCESSFromCastle02()
  return castle07ACCESS()  
end

function castle07ACCESS()
  return fort01ACCESSFromVillage() and has ("hook") 
  or fort01ACCESSFromCatacombs() and has ("hook")  
end

function castle16ACCESS()
  return ruinedCastleACCESS() and has ("hook") and has ("claws") 
  or ruinedCastleACCESS() and has ("hook") and FULLSILVA() 
  or ruinedCastleACCESS() and has ("hook") and FULLJUMP() 
  or ruinedCastleACCESS() and has ("claws") and FULLJUMP() 
  or ruinedCastleACCESS() and FULLSILVA() and has ("sinner") 
  or ruinedCastleACCESS() and has ("silva") and has ("sinner") and has ("verboten") and has ("dash")  
end

function castle20ACCESS()
  return ruinedCastleACCESS() and has ("claws") 
  or ruinedCastleACCESS() and has ("hook") and LEDGE() 
  or ruinedCastleACCESS() and has ("hook") and HORIZONTAL() 
  or ruinedCastleACCESS() and LEDGE2()  
end

function forest02ACCESS()
  return forest01ACCESS()  
end

function forest03ACCESS()
  return forest02ACCESS()  
end

function forest04ACCESS()
  return forest02ACCESS()  
end

function forest05ACCESS()
  return forest03ACCESS() and HORIZONTAL() 
  or forest03ACCESS() and LEDGE() 
  or forest03ACCESS() and has ("claws") 
  or forest04ACCESS() and LEDGE() 
  or forest04ACCESS() and has ("claws")  
end

function forest06ACCESS()
  return forest07ACCESS() and LEDGE()  
end

function forest07ACCESS()
  return forest05ACCESS()  
end

function forest07RightACCESS()
  return forest07ACCESS() and LEDGE() and HORIZONTAL() 
  or forest07ACCESS() and has ("hook") 
  or forest07ACCESS() and LEDGE2() 
  or forest07ACCESS() and has ("sinner") 
  or forest07ACCESS() and has ("dodge2") and has ("dash") 
  or forest07ACCESS() and has ("djump") and has ("dash")  
end

function forest08ACCESS()
  return forest07ACCESS()  
end

function forest10ACCESS()
  return forest08ACCESS() and LEDGE() 
  or forest08ACCESS() and has ("claws") 
  or forest08ACCESS() and has ("hook")  
end

function forest09ACCESS()
  return forest10ACCESS() and has ("aquatic")  
end

function forest11ACCESS()
  return forest10ACCESS()  
end

function forest12ACCESS()
  return forest10ACCESS() 
  or forest13ACCESSFromForest14()  
end

function forest13ACCESS()
  return forest12ACCESS() and LEDGE() 
  or forest12ACCESS() and has ("hook") 
  or forest12ACCESS() and has ("chief") 
  or forest12ACCESS() and has ("gerrod") and has ("ults") 
  or forest12ACCESS() and has ("julius") and has ("ults") 
  or forest12ACCESS() and has ("fellwyrm")  
end

function forest14ACCESS()
  return forest13ACCESS() and LEDGE() 
  or forest13ACCESS() and has ("claws") and HORIZONTAL()  
end

function forest14ACCESSFromForest11()
  return forest11ACCESS() and has ("aquatic")  
end

function forest13ACCESSFromForest14()
  return forest14ACCESSFromForest11()  
end

function forest15ACCESS()
  return forest14ACCESS() 
  or forest14ACCESSFromForest11()  
end

function forest17ACCESS()
  return forest12ACCESS() and has ("hook") 
  or forest12ACCESS() and has ("claws") and has ("djump") 
  or forest12ACCESS() and has ("claws") and LEDGE() 
  or forest12ACCESS() and has ("claws") and has ("sinner") 
  or forest12ACCESS() and has ("silva") and has ("djump") and AIRSTALL() 
  or forest12ACCESS() and LEDGE2() and HORIZONTAL() 
  or forest12ACCESS() and has ("LEDGE") and HORIZONTAL2()  
end

function forest16ACCESS()
  return forest13ACCESS() and has ("unlock") and has ("claws") and LEDGE() and HORIZONTAL() 
  or forest13ACCESS() and has ("unlock") and has ("claws") and LEDGE2() 
  or forest13ACCESS() and has ("unlock") and has ("claws") and FULLJUMP() 
  or forest13ACCESS() and has ("unlock") and has ("claws") and FULLSILVA() 
  or forest13ACCESSFromForest14() and has ("unlock") and has ("claws") and LEDGE() and HORIZONTAL() 
  or forest13ACCESSFromForest14() and has ("unlock") and has ("claws") and LEDGE2() 
  or forest13ACCESSFromForest14() and has ("unlock") and has ("claws") and FULLJUMP() 
  or forest13ACCESSFromForest14() and has ("unlock") and has ("claws") and FULLSILVA()  
end

function catacombsACCESS()
  return cave01ACCESS() 
  or catacombsREV()  
end

function catacombsREV()
  return fort02ACCESSFromFort03()  
end

function cave01ACCESS()
  return village06LeftACCESS() and has ("hammer") and has ("aquatic")  
end

function cave07ACCESS()
  return catacombsACCESS() and has ("hammer")  
end

function cave18ACCESS()
  return catacombsACCESS() and LEDGE() and HORIZONTAL() 
  or catacombsACCESS() and has ("silva") and has ("djump") 
  or catacombsACCESS() and has ("verboten") and has ("djump") 
  or catacombsACCESS() and has ("hook") 
  or catacombsACCESS() and has ("sinner") and has ("claws") 
  or catacombsACCESS() and has ("claws") and LEDGE()  
end

function cave17ACCESS()
  return catacombsACCESS() and has ("hammer") and has ("aquatic")  
end

function cave20ACCESS()
  return catacombsACCESS() and has ("claws") 
  or catacombsACCESS() and LEDGE() and HORIZONTAL() 
  or catacombsACCESS() and HORIZONTAL2()  
end

function cave21ACCESS()
  return LEDGE2() 
  or LEDGE() and HORIZONTAL() 
  or has ("claws") 
  or LEDGE2() and HORIZONTAL() 
  or HORIZONTAL2()  
end

function cave22ACCESS()
  return catacombsACCESS()  
end

function spiresACCESS()
  return fort03ACCESS() and LEDGE()  
end

function spiresLeftWallACCESS()
  return spiresACCESS() and has ("claws") and LEDGE() 
  or spiresACCESS() and MAXJUMP()  
end

function spiresLeftWallTopACCESS()
  return spiresACCESS() and LEDGE() and has ("claws")  
end

function fort01ACCESSFromCatacombs()
  return fort02ACCESS() and has ("hook") 
  or fort02ACCESS() and LEDGE()  
end

function fort01ACCESSFromCastle()
  return castle01ACCESS() and has ("hook")
  or castle01ACCESS() and FULLJUMP()
  or castle01ACCESS() and FULLSILVA()
end

function fort01ACCESSFromVillage()
  return village15ACCESS() and has ("claws") and HORIZONTAL2() 
  or village15ACCESS() and has ("claws") and FULLSILVA() and HORIZONTAL() 
  or village15ACCESS() and has ("claws") and HORIZONTAL2() and has ("verboten") 
  or village15ACCESS() and has ("claws") and has ("dodge2") and has ("dash") and has ("verboten") and has ("silva") 
  or village15ACCESS() and has ("claws") and has ("hook") and HORIZONTAL() 
  or village15ACCESS() and has ("claws") and has ("hook") and has ("djump") 
  or village15ACCESS() and has ("claws") and has ("hook") and has ("verboten") 
  or village15ACCESS() and has ("silva") and has ("djump") and has ("hook") 
  or village15ACCESS() and has ("silva") and has ("dodge2") and has ("hook") 
  or village15ACCESS() and has ("silva") and has ("verboten") and has ("dodge2") and has ("hook") 
  or village15ACCESS() and has ("claws") and has ("dodge") and has ("silva")  
end

function fort02ACCESS()
  return cave22ACCESS()  
end

function fort02ACCESSFromFort03()
  return fort01ACCESSFromCastle() and has ("djump") and has ("dodge2") 
  or fort01ACCESSFromCastle() and has ("silva") and has ("djump") 
  or fort01ACCESSFromCastle() and has ("sinner") 
  or fort01ACCESSFromCastle() and has ("verboten") and has ("dodge2")
  or fort01ACCESSFromVillage() and has ("djump") and has ("dodge2") 
  or fort01ACCESSFromVillage() and has ("silva") and has ("djump")
  or fort01ACCESSFromVillage() and has ("verboten") and has ("dodge2")
  or fort01ACCESSFromVillage() and has ("sinner")
end

function fort03ACCESS()
  return fort01ACCESSFromVillage() 
  or fort01ACCESSFromCastle() 
  or fort02ACCESS() and has ("djump") and has ("dodge2") 
  or fort02ACCESS() and has ("silva") and has ("djump") 
  or fort02ACCESS() and has ("sinner")  
end

function fort15TopACCESS()
  return spiresACCESS() and LEDGE() and HORIZONTAL() 
  or spiresACCESS() and LEDGE() and has ("claws") 
  or spiresACCESS() and LEDGE2()  
end

function fort17ACCESS()
  return fort15TopACCESS() 
  or spiresLeftWallTopACCESS()  
end

function fort20ACCESS()
  return fort17ACCESS() and LEDGE() 
  or spiresLeftWallTopACCESS()  
end

function oubliette01ACCESS()
  return forest07RightACCESS() and has ("aquatic")  
end

function oubliette02ACCESS()
  return oubliette01ACCESS()  
end

function oubliette05ACCESS()
  return oubliette02ACCESS() and LEDGE()  
end

function oubliette05TopACCESS()
  return oubliette05_2ACCESS() and has ("claws") and has ("hook") and LEDGE() 
  or oubliette05_2ACCESS() and has ("hook") and MAXJUMP()
end

function oubliette05_1ACCESS()
  return oubliette05ACCESS()  
end

function oubliette05_2ACCESS()
  return oubliette05ACCESS()  
end

function oubliette05_3ACCESS()
  return oubliette05ACCESS()  
end

function oubliette07_1ACCESS()
  return oubliette05ACCESS()  
end

function oubliette07_2ACCESS()
  return oubliette05ACCESS()  
end

function oubliette04ACCESS()
  return oubliette02ACCESS()  
end

function oubliette03ACCESS()
  return oubliette04ACCESS() 
  or oubliette05ACCESS()  
end

function oubliette06ACCESS()
  return oubliette05TopACCESS() 
  or oubliette10ACCESS()  
end

function oubliette06_1ACCESS()
  return oubliette07ACCESS() and LEDGE() 
  or oubliette07ACCESS() and has ("hook")  
end

function oubliette06_2ACCESS()
  return oubliette07ACCESS()  
end

function oubliette06_3ACCESS()
  return oubliette07ACCESS() and has ("hook") and LEDGE() 
  or oubliette07ACCESS() and has ("hook") and HORZONTAL() 
  or oubliette07ACCESS() and FULLJUMP() 
  or oubliette07ACCESS() and has ("silva") and has ("djump") 
  or oubliette07ACCESS() and has ("silva") and has ("dodge2")  
end

function oubliette06_4ACCESS()
  return oubliette07ACCESS() and has ("unlock") and has ("hook") 
  or oubliette07ACCESS() and has ("unlock") and MAXJUMP() 
  or oubliette07ACCESS() and has ("unlock") and FULLSILVA() and has ("claws")  
end

function oubliette07ACCESS()
  return oubliette06ACCESS() and has ("hook") 
  or oubliette09ACCESS()  
end

function oubliette08ACCESS()
  return oubliette09ACCESS() 
  or oubliette07ACCESS()  
end

function oubliette09ACCESS()
  return oubliette10ACCESS() and has ("aquatic")
end

function oubliette09ACCESSFrom07()
  return oubliette07ACCESS()  
end

function oubliette10ACCESS()
  return oubliette03ACCESS() 
  or oubliette05TopACCESS()  
end

function oubliette11UpperACCESS()
  return oubliette13ACCESS() 
  or oubliette08ACCESS() and has ("claws") and FULLSILVA() 
  or oubliette08ACCESS() and has ("claws") and FULLJUMP() 
  or oubliette08ACCESS() and has ("hook")  
end

function oubliette11LowerACCESS()
  return oubliette08ACCESS() and LEDGE()
  or oubliette08ACCESS() and HORIZONTAL()
  or oubliette13ACCESS()
end

function oubliette13ACCESS()
  return oubliette08ACCESS() and has ("claws") and FULLSILVA()
  or oubliette08ACCESS() and has ("claws") and FULLJUMP()
  or oubliette08ACCESS() and has ("hook")
  or oubliette07ACCESS()
end

function oubliette13_1ACCESS()
  return oubliette11UpperACCESS() and has ("claws") and FULLSILVA() 
  or oubliette11UpperACCESS() and has ("claws") and has ("hook") and HORIZONTAL() 
  or oubliette11UpperACCESS() and has ("claws") and has ("hook") and LEDGE()  
end

function oubliette14ACCESS()
  return oubliette11LowerACCESS()  
end

function oubliette15ACCESS()
  return oubliette14ACCESS()  
end

function oubliette16ACCESS()
  return oubliette15ACCESS() and has ("defeatHoenir")  
end

function oubliette17ACCESS()
  return oubliette10ACCESS() and CHARGE()  
end

function outside01ACCESS()
  return oubliette16ACCESS() and has ("hook") and has ("sinner") and LEDGE() 
  or oubliette16ACCESS() and has ("hook") and has ("sinner") and has ("dash") 
  or oubliette16ACCESS() and has ("hook") and has ("sinner") and has ("dodge2") 
  or oubliette16ACCESS() and has ("hook") and has ("silva") and has ("djump") 
  or oubliette16ACCESS() and has ("hook") and has ("silva") and has ("dodge2") 
  or oubliette16ACCESS() and has ("hook") and has ("silva") and has ("dash") and has ("verboten") 
  or oubliette16ACCESS() and has ("hook") and has ("djump") and has ("dodge2") and has ("verboten") 
  or oubliette16ACCESS() and has ("silva") and has ("djump") and has ("claws") 
  or oubliette16ACCESS() and has ("silva") and has ("djump") and has ("verboten") 
  or oubliette16ACCESS() and FULLSILVA()
end

function outside03ACCESS()
  return spiresACCESS() and has ("claws") 
  or outside01ACCESS() and has ("claws") and LEDGE() 
  or outside01ACCESS() and MAXJUMP() and has ("plume") 
  or spiresACCESS() and has ("claws")  
end

function domainACCESS()
  return swamp06TopACCESS() and has ("hammer")
  or swamp01ACCESS()
end

function swamp02ACCESS()
  return forest07ACCESS() and has ("aquatic")  
end

function swamp02FromSwamp06ACCESS()
  return swamp06TopACCESS() and has ("hammer") and LEDGE()  
end

function swamp01ACCESS()
  return swamp02ACCESS() and has ("dash") 
  or swamp02ACCESS() and has ("dodge2")  
end

function swamp06TopACCESS()
  return oubliette17ACCESS() and has ("hammer") and has ("hook") 
  or oubliette17ACCESS() and has ("hammer") and has ("claws")  
end

function swamp13ACCESS()
  return domainACCESS() and CHARGE() and has ("hammer")
end

function swamp07RightACCESS()
  return domainACCESS() and CHARGE() and has ("aquatic")
end

function swamp07LeftACCESS()
  return (swamp13ACCESS() and has ("hook") and has ("dash") and HORIZONTAL())
  or (swamp13ACCESS() and has ("hook") and LEDGE() and HORIZONTAL())
  or (swamp13ACCESS() and has ("hook") and has ("dash") and LEDGE())
  or (swamp13ACCESS() and has ("hook") and HORIZONTAL2())
  or (swamp13ACCESS() and has ("hook") and LEDGE2())
  or (swamp13ACCESS() and has ("claws") and FULLJUMP())
  or (swamp13ACCESS() and has ("claws") and FULLSILVA())
end

function swamp16ACCESS()
  return swamp07LeftACCESS() and swamp07RightACCESS()
end

function abyss01ACCESS()
  return swamp16ACCESS() and has ("unlock")  
end

function abyss04ACCESS()
  return swamp13ACCESS() and has ("unlock") and has ("mask") and has ("hook") and has ("dodge2") and has ("aquatic") and abyssGauntlet() and has ("dash")
end

function abyss05ACCESS()
  return abyss04ACCESS() and has ("aquatic")  
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