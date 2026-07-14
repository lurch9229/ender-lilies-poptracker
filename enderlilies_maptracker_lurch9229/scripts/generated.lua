--[ Logic was generated from tokenizer script ]--

function LEDGE3()
  return has("djump") and has("silva") and has("verboten")
end

function LEDGE3_A()
  if has("djump") and has("silva") and has("verboten") then
    return AccessibilityLevel.Normal
  end
  return AccessibilityLevel.None
end

function LEDGE2()
  return has("djump") and has("silva") or has("djump") and has("verboten") or has("silva") and has("verboten")
end

function LEDGE2_A()
  if has("djump") and has("silva") or has("djump") and has("verboten") or has("silva") and has("verboten") then
    return AccessibilityLevel.Normal
  end
  return AccessibilityLevel.None
end

function LEDGE()
  return has("djump") or has("silva") or has("verboten")
end

function LEDGE_A()
  if has("djump") or has("silva") or has("verboten") then
    return AccessibilityLevel.Normal
  end
  return AccessibilityLevel.None
end

function HORIZONTAL2()
  return has("dodge2") and has("sinner")
end

function HORIZONTAL2_A()
  if has("dodge2") and has("sinner") then
    return AccessibilityLevel.Normal
  end
  return AccessibilityLevel.None
end

function HORIZONTAL()
  return has("dodge2") or has("sinner")
end

function HORIZONTAL_A()
  if has("dodge2") or has("sinner") then
    return AccessibilityLevel.Normal
  end
  return AccessibilityLevel.None
end

function FULLSILVA()
  return has("silva") and has("djump") and has("dodge2")
end

function FULLSILVA_A()
  if has("silva") and has("djump") and has("dodge2") then
    return AccessibilityLevel.Normal
  end
  return AccessibilityLevel.None
end

function CHARGE()
  return has("lance") and has("dash")
end

function CHARGE_A()
  if has("lance") and has("dash") then
    return AccessibilityLevel.Normal
  end
  return AccessibilityLevel.None
end

function HEAL3()
  return has("statue") and has("doll") and has("earrings")
end

function HEAL3_A()
  if has("statue") and has("doll") and has("earrings") then
    return AccessibilityLevel.Normal
  end
  return AccessibilityLevel.None
end

function Abyss01SilvasBloodstainedNoteI()
  return getLocAccess("@Abyss01Top")
end

function Abyss01FuriousBlightx100()
  return getLocAccess("@Abyss01Bottom")
end

function Abyss01Top()
  return math.max(getAccess("@Swamp18Bottom"), math.min(getAccess("@Faden"), getAccess("unlock")))
end

function Abyss01Bottom()
  return math.max(getAccess("@Abyss02Top"), getAccess("@Abyss02Right"))
end

function Abyss02AmuletFragment()
  return math.min(getAccess("@Abyss02Top"), getAccess("claws"), math.max(LEDGE2_A(), math.min(LEDGE2_A(), HORIZONTAL_A()), math.min(HORIZONTAL2_A(), LEDGE_A()), math.min(getAccess("dodge2"), getAccess("dash"), LEDGE_A())))
end

function Abyss02SilvasBloodstainedNoteII()
  return getLocAccess("@Abyss02Top")
end

function Abyss02FretiasMemoirsV()
  return getLocAccess("@Abyss02Top")
end

function Abyss02WhitePriestessEarrings()
  return getLocAccess("@Abyss02Top")
end

function Abyss02Right()
  return getLocAccess("@Abyss03Left")
end

function Abyss02Top()
  return math.max(getAccess("@Abyss01Bottom"), math.min(getAccess("@Abyss01Top"), CHARGE_A(), getAccess("hammer"), getAccess("aquatic"), math.max(math.min(HORIZONTAL2_A(), LEDGE_A()), FULLSILVA_A(), LEDGE3_A(), math.min(getAccess("silva"), math.max(getAccess("dodge2"), getAccess("djump"))), math.min(getAccess("verboten"), getAccess("djump")), math.min(getAccess("claws"), HORIZONTAL_A(), LEDGE_A())), math.max(getAccess("hook"), FULLSILVA_A(), LEDGE3_A(), math.min(HORIZONTAL2_A(), LEDGE_A()))))
end

function Abyss03Left()
  return math.max(getAccess("@Abyss02Right"), getAccess("@Abyss02Top"))
end

function Abyss04StagnantBlightx100()
  return math.min(getAccess("@Abyss04Top"), getAccess("heretic"), getAccess("claws"), getAccess("hammer"), getAccess("hook"), HEAL3_A(), getAccess("dash"))
end

function Abyss04StagnantBlightx100_1()
  return math.min(getAccess("@Abyss04Top"), getAccess("heretic"), getAccess("claws"), getAccess("hammer"), getAccess("hook"), HEAL3_A(), getAccess("dash"))
end

function Abyss04Top()
  return math.max(getAccess("@Swamp12Bottom"), math.min(getAccess("@Lab4"), getAccess("hammer"), getAccess("unlock")))
end

function Abyss04Bottom()
  return getLocAccess("@Abyss05Top")
end

function Abyss05DomainStoneTabletFragment()
  return math.min(getAccess("@Abyss05Top"), getAccess("aquatic"))
end

function Abyss05TheDeathlessPact()
  return math.min(getAccess("@Abyss05Top"), getAccess("aquatic"))
end

function Abyss05Teleport()
  return math.min(getAccess("@Abyss05Top"), getAccess("aquatic"))
end

function Abyss05AncientSoulx2()
  return math.min(getAccess("@Abyss05Top"), getAccess("aquatic"))
end

function Abyss05Top()
  return math.max(getAccess("@Abyss04Bottom"), math.min(getAccess("@Abyss04Top"), getAccess("heretic"), getAccess("claws"), getAccess("aquatic"), getAccess("hammer"), getAccess("hook"), HEAL3_A(), getAccess("dash")))
end

function Castle01CastleTownMaidenFight()
  return math.max(getAccess("@Castle01Left"), getAccess("@Castle01Right1"), getAccess("@Castle01Top"), getAccess("@Castle01Right2"))
end

function Castle01PriestessDoll()
  return math.min(getAccess("@Dog"), math.max(LEDGE_A(), HORIZONTAL_A()))
end

function Castle01DecayedCrown()
  return math.max(getAccess("@Castle01Right1"), getAccess("@Castle01Top"))
end

function Castle01StagnantBlightx100()
  return math.min(getAccess("@Dog"), CHARGE_A())
end

function Castle01FuriousBlightx100()
  return math.min(getAccess("@Dog"), CHARGE_A())
end

function Castle01Left()
  return math.max(getAccess("@Village11Right"), math.min(getAccess("@Village11Left"), getAccess("claws")))
end

function Castle01Right2()
  return math.max(getAccess("@Castle02Left2"), getAccess("@Castle02Left1"), getAccess("@Castle02Top"), getAccess("@Castle02Bottom"))
end

function Castle01Right1()
  return math.max(getAccess("@Castle02Left1"), math.min(getAccess("@Castle02Left2"), math.min(getAccess("claws"), math.max(getAccess("djump"), getAccess("verboten")))))
end

function Castle01Top()
  return getLocAccess("@MaelstromRemparts")
end

function Castle02AmuletFragment()
  return math.min(getAccess("@Castle02Top"), math.max(LEDGE_A(), HORIZONTAL_A(), getAccess("dash"), getAccess("claws"), getAccess("hook")))
end

function Castle02Top()
  return math.max(getAccess("@Castle05Bottom"), getAccess("@Castle05Right"), getAccess("@Castle05Left"), getAccess("@Castle05Top"))
end

function Castle02StagnantBlightx30()
  return math.min(getAccess("@Castle02Top"), getAccess("hook"))
end

function Castle02Left2()
  return math.max(getAccess("@Castle01Right2"), math.min(getAccess("@Dog"), math.max(HORIZONTAL_A(), LEDGE_A(), getAccess("dash"))))
end

function Castle02Bottom()
  return math.max(getAccess("@Castle04Top"), math.min(getAccess("@RuinedCastleCellar"), math.max(LEDGE_A(), getAccess("claws"), HORIZONTAL_A())))
end

function Castle02Left1()
  return math.max(getAccess("@Castle01Right1"), getAccess("@Castle01Top"))
end

function Castle03AmuletFragment()
  return math.min(math.max(getAccess("@Castle03Top1"), getAccess("@Castle03Top2")), math.max(getAccess("hook"), getAccess("claws"), HORIZONTAL_A(), getAccess("dash"), LEDGE_A()))
end

function Castle03StagnantBlightx30()
  return math.min(math.max(getAccess("@Castle03Top1"), getAccess("@Castle03Top2")), math.max(getAccess("hook"), getAccess("claws"), math.min(LEDGE_A(), HORIZONTAL_A())))
end

function Castle03Bottom()
  return getLocAccess("@Castle05Top")
end

function Castle03Top1()
  return math.max(getAccess("@Castle11Bottom1"), getAccess("@Castle11Left"))
end

function Castle03Top2()
  return math.max(getAccess("@Castle11Bottom2"), getAccess("@Castle11Right"))
end

function Castle04ReportfromaVerbotenMage()
  return math.max(getAccess("@RuinedCastleCellar"), getAccess("@Castle04Top"))
end

function Castle04Top()
  return math.max(getAccess("@Castle02Bottom"), getAccess("@Castle02Left2"))
end

function Castle05Bottom()
  return math.max(getAccess("@Castle02Top"), math.min(getAccess("@Castle02Left2"), math.max(getAccess("hook"), LEDGE_A(), getAccess("claws"))))
end

function Castle05Right()
  return math.max(getAccess("@Castle06Left"), getAccess("@Castle06Top"))
end

function Castle05Left()
  return math.max(getAccess("@Castle08Right"), getAccess("@Castle08Top"))
end

function Castle05Top()
  return math.max(getAccess("@Castle03Bottom"), getAccess("@Castle03Top1"), getAccess("@Castle03Top2"))
end

function Castle06RoyalAegisCrest()
  return getLocAccess("@Castle06Top")
end

function Castle06Top()
  return math.max(getAccess("@Castle12Bottom"), math.min(getAccess("@Castle12Left"), math.max(math.min(getAccess("hook"), math.max(getAccess("claws"), LEDGE_A(), HORIZONTAL_A())), getAccess("hammer"))))
end

function Castle06Right()
  return math.max(getAccess("@Castle07Left"), getAccess("@GuestChamber"))
end

function Castle06StagnantBlightx30()
  return math.min(getAccess("@Castle06Right"), getAccess("claws"))
end

function Castle06Left()
  return math.max(getAccess("@Castle05Right"), getAccess("@Castle05Bottom"))
end

function Castle07ProofofFounding()
  return math.max(getAccess("@GuestChamber"), getAccess("@Castle07Right"), getAccess("@Castle07Left"))
end

function Castle07Right()
  return math.max(getAccess("@Fort01Left1"), math.min(getAccess("@Sentinel"), getAccess("hook")))
end

function Castle07Left()
  return math.max(getAccess("@Castle06Right"), getAccess("@Castle06Top"), getAccess("@Castle06Left"))
end

function Castle08ChainofSorcery()
  return math.min(getAccess("@Castle08Top"), getAccess("claws"), math.max(LEDGE_A(), HORIZONTAL_A(), getAccess("dash")))
end

function Castle08BlightwreathedBlade()
  return getLocAccess("@Castle08Top")
end

function Castle08StagnantBlightx10()
  return getLocAccess("@Castle08Top")
end

function Castle08StagnantBlightx10_1()
  return getLocAccess("@Castle08Top")
end

function Castle08StagnantBlightx10_2()
  return getLocAccess("@Castle08Right")
end

function Castle08Right()
  return math.max(getAccess("@Castle05Left"), getAccess("@Castle05Bottom"))
end

function Castle08Top()
  return math.max(getAccess("@Castle09Bottom"), getAccess("@Castle09Right"), getAccess("@Castle09Left"))
end

function Castle09FuriousBlightx30()
  return math.min(getAccess("@Castle09Left"), math.max(HORIZONTAL2_A(), math.min(getAccess("claws"), math.max(LEDGE2_A(), math.min(LEDGE_A(), HORIZONTAL_A()))), FULLSILVA_A(), math.min(LEDGE_A(), getAccess("sinner")), math.min(getAccess("djump"), getAccess("dash"), math.max(getAccess("silva"), getAccess("dodge2")))))
end

function Castle09Right()
  return math.max(getAccess("@Castle11Left"), getAccess("@Castle11Bottom1"))
end

function Castle09Bottom()
  return math.max(getAccess("@Castle08Top"), math.min(getAccess("@Castle08Right"), math.max(getAccess("claws"), LEDGE_A(), HORIZONTAL_A())))
end

function Castle09Left()
  return getLocAccess("@MaelstromRemparts")
end

function Castle10JuliusBook()
  return math.max(getAccess("@MaelstromRemparts"), getAccess("@Castle10Right"), getAccess("@Castle10Bottom"))
end

function Castle10StagnantBlightx30()
  return getLocAccess("@MaelstromRemparts")
end

function Castle10Right()
  return math.max(getAccess("@Castle09Left"), getAccess("@Castle09Bottom"))
end

function Castle10Bottom()
  return math.min(getAccess("@Castle01Right1"), getAccess("claws"))
end

function Castle11Right()
  return math.max(getAccess("@Castle12Left"), getAccess("@Castle12Bottom"))
end

function Castle11Left()
  return math.max(getAccess("@Castle09Right"), getAccess("@Castle09Bottom"))
end

function Castle11Top()
  return math.max(getAccess("@Castle13Bottom"), getAccess("@Castle13Left"), getAccess("@Castle13Right"))
end

function Castle11Bottom1()
  return math.max(math.min(getAccess("@Castle03Top1"), getAccess("claws")), math.min(getAccess("@Castle03Top2"), getAccess("claws"), HORIZONTAL_A(), LEDGE2_A()), math.min(getAccess("@Castle03Bottom"), getAccess("claws"), math.max(math.min(HORIZONTAL2_A(), LEDGE2_A()), math.min(HORIZONTAL_A(), LEDGE3_A()))))
end

function Castle11Bottom2()
  return math.max(math.min(getAccess("@Castle03Top2"), getAccess("claws")), math.min(getAccess("@Castle03Top1"), getAccess("claws"), HORIZONTAL_A(), LEDGE2_A()), math.min(getAccess("@Castle03Bottom"), getAccess("claws"), math.max(math.min(HORIZONTAL2_A(), LEDGE2_A()), math.min(HORIZONTAL_A(), LEDGE3_A()))))
end

function Castle12ChainofSorcery()
  return math.min(getAccess("@Castle12Bottom"), math.max(getAccess("hook"), math.min(LEDGE3_A(), getAccess("claws"), getAccess("dodge2"))))
end

function Castle12KingoftheFirstAgesDiaryI()
  return getLocAccess("@Castle12Bottom")
end

function Castle12KingoftheFirstAgesDiaryII()
  return getLocAccess("@Castle12Bottom")
end

function Castle12Bottom()
  return math.max(getAccess("@Castle06Top"), getAccess("@Castle06Right"))
end

function Castle12StagnantBlightx30()
  return math.min(getAccess("@Castle12Bottom"), math.max(getAccess("hook"), getAccess("claws"), HORIZONTAL_A()))
end

function Castle12Left()
  return math.max(getAccess("@Castle11Right"), getAccess("@Castle11Bottom2"))
end

function Castle12Right()
  return getLocAccess("@Castle21Left")
end

function Castle13AmuletGem()
  return math.min(getAccess("@Castle13Bottom"), math.max(math.min(getAccess("silva"), getAccess("djump"), getAccess("claws")), math.min(math.max(FULLSILVA_A(), LEDGE3_A()), getAccess("hook")), math.min(LEDGE2_A(), getAccess("hook"), getAccess("claws")), math.min(LEDGE_A(), HORIZONTAL_A(), getAccess("claws"), getAccess("hook"))))
end

function Castle13Left()
  return getLocAccess("@Castle17Right")
end

function Castle13Bottom()
  return math.max(getAccess("@Castle11Top"), math.min(getAccess("@Castle11Left"), getAccess("@Castle11Right"), LEDGE_A()))
end

function Castle13Right()
  return math.max(getAccess("@Castle14Left"), getAccess("@Castle14Top"))
end

function Castle14AmuletFragment()
  return math.min(getAccess("@Castle14Left"), getAccess("hook"))
end

function Castle14StagnantBlightx100()
  return math.min(getAccess("@Castle14Left"), CHARGE_A(), math.max(getAccess("claws"), math.min(LEDGE_A(), HORIZONTAL_A())))
end

function Castle14FuriousBlightx800()
  return math.min(getAccess("@Castle14Left"), math.min(getAccess("claws"), math.max(LEDGE3_A(), FULLSILVA_A(), math.min(getAccess("sinner"), LEDGE2_A()), math.min(getAccess("silva"), HORIZONTAL2_A()), math.min(getAccess("dodge2"), getAccess("dash"), LEDGE2_A()))))
end

function Castle14Left()
  return math.max(getAccess("@Castle13Right"), getAccess("@Castle13Bottom"))
end

function Castle14Top()
  return getLocAccess("@TowerAlcove")
end

function Castle15PriestessWish()
  return getLocAccess("@TowerAlcove")
end

function Castle15PriestessCastleMemo()
  return math.max(getAccess("@Castle15Bottom"), getAccess("@Castle15Left"))
end

function Castle15Left()
  return math.min(getAccess("@Aegis"), math.max(LEDGE2_A(), getAccess("claws")))
end

function Castle15Bottom()
  return math.max(getAccess("@Castle14Top"), math.min(getAccess("@Castle14Left"), math.max(LEDGE_A(), getAccess("hook"))))
end

function Castle16OneEyedRoyalAegisFight()
  return getLocAccess("@Castle16Right")
end

function Castle16StagnantBlightx102nd()
  return getLocAccess("@Aegis")
end

function Castle16StagnantBlightx105th()
  return getLocAccess("@Aegis")
end

function Castle16StagnantBlightx109th()
  return getLocAccess("@Aegis")
end

function Castle16StagnantBlightx101st()
  return getLocAccess("@Aegis")
end

function Castle16StagnantBlightx108th()
  return getLocAccess("@Aegis")
end

function Castle16StagnantBlightx103rd()
  return getLocAccess("@Aegis")
end

function Castle16StagnantBlightx107th()
  return getLocAccess("@Aegis")
end

function Castle16StagnantBlightx106th()
  return getLocAccess("@Aegis")
end

function Castle16StagnantBlightx104th()
  return getLocAccess("@Aegis")
end

function Castle16StagnantBlightx10()
  return math.min(getAccess("@Aegis"), getAccess("claws"))
end

function Castle16BottomLeft()
  return getLocAccess("@Aegis")
end

function Castle16Right()
  return math.min(getAccess("@TowerAlcove"), getAccess("claws"), math.max(getAccess("hook"), math.min(FULLSILVA_A(), getAccess("sinner")), LEDGE3_A()))
end

function Castle17StagnantBlightx30()
  return math.min(getAccess("@Castle17Right"), math.max(LEDGE_A(), getAccess("claws"), HORIZONTAL_A()))
end

function Castle17Right()
  return math.max(getAccess("@Castle13Left"), getAccess("@Castle13Bottom"))
end

function Castle17Top()
  return math.max(getAccess("@Castle18Bottom"), math.min(getAccess("@Castle18Right"), math.max(getAccess("claws"), math.min(getAccess("hook"), LEDGE_A()))), getAccess("@Castle18Top"))
end

function Castle18AmuletFragment()
  return math.min(getAccess("@Castle18Right"), CHARGE_A())
end

function Castle18KingsNoteII()
  return math.min(getAccess("@Castle18Bottom"), math.max(getAccess("claws"), math.min(getAccess("hook"), LEDGE_A())), CHARGE_A())
end

function Castle18EldredsRing()
  return math.min(getAccess("@Castle18Bottom"), math.max(getAccess("claws"), math.min(getAccess("hook"), LEDGE_A())), CHARGE_A())
end

function Castle18FuriousBlightx100()
  return math.min(getAccess("@Castle18Bottom"), getAccess("hook"), LEDGE_A(), CHARGE_A())
end

function Castle18Right()
  return getLocAccess("@KingsChamber")
end

function Castle18Bottom()
  return math.max(getAccess("@Castle17Top"), math.min(getAccess("@Castle17Right"), LEDGE_A()))
end

function Castle19KingsNoteI()
  return math.max(getAccess("@Castle19Right"), getAccess("@Castle19Left"))
end

function Castle19Right()
  return getLocAccess("@Castle20Left")
end

function Castle19Left()
  return math.max(getAccess("@Castle18Right"), math.min(getAccess("@Castle18Bottom"), math.max(getAccess("claws"), math.min(getAccess("hook"), LEDGE_A()))))
end

function Castle20KnightCaptainJuliusFight()
  return getLocAccess("@Castle20Left")
end

function Castle20Left()
  return getLocAccess("@KingsChamber")
end

function Castle21KingoftheFirstAgesDiaryIII()
  return getLocAccess("@Castle21Left")
end

function Castle21CastleStoneTabletFragment()
  return getLocAccess("@Castle21Left")
end

function Castle21Left()
  return math.max(getAccess("@Castle12Right"), math.min(getAccess("@Castle12Bottom"), getAccess("unlock")))
end

function Castle21StagnantBlightx100()
  return getLocAccess("@Castle21Left")
end

function CathedralCloister()
  return math.max(getAccess("@CathedralCloister"), getAccess("@Church05Right"), getAccess("@Church05Bottom"), getAccess("@Church05Top"))
end

function Cave01FretiasRing()
  return math.max(getAccess("@BottomOfTheWell"), getAccess("@Cave01Bottom"), getAccess("@Cave01Left"))
end

function Cave01FuriousBlightx800()
  return math.max(math.min(getAccess("@Cave01Bottom"), math.max(getAccess("claws"), getAccess("djump"), getAccess("verboten"), math.min(getAccess("silva"), getAccess("dodge2")))), math.min(getAccess("@Cave01Left"), LEDGE3_A(), HORIZONTAL2_A()))
end

function Cave01Bottom()
  return math.min(getAccess("@Cave02Right"), getAccess("claws"), math.max(math.min(FULLSILVA_A(), getAccess("dash")), LEDGE3_A(), math.min(LEDGE2_A(), HORIZONTAL2_A()), math.min(getAccess("silva"), HORIZONTAL2_A()), math.min(getAccess("silva"), getAccess("sinner"), getAccess("djump")), math.min(getAccess("dash"), getAccess("djump"), getAccess("verboten"), getAccess("sinner"))))
end

function Cave01Left()
  return math.max(getAccess("@Village12Right"), math.min(getAccess("@Village12Left1"), getAccess("@Village12Top"), getAccess("aquatic")))
end

function Cave02StagnantBlightx30()
  return math.min(getAccess("@Cave02Right"), math.max(getAccess("hook"), math.min(getAccess("claws"), math.max(HORIZONTAL_A(), math.min(LEDGE_A(), getAccess("dash"))))))
end

function Cave02StagnantBlightx10()
  return getLocAccess("@Cave02Right")
end

function Cave02Right()
  return math.max(getAccess("@Cave05Left"), getAccess("@Cave05Bottom"))
end

function Cave02Bottom()
  return math.min(getAccess("@Spider"), getAccess("claws"), getAccess("hook"), math.max(FULLSILVA_A(), LEDGE3_A()))
end

function Cave02Top()
  return getLocAccess("@BottomOfTheWell")
end

function Cave03DefenseoftheTwinSpiresII()
  return math.max(getAccess("@Charnel"), getAccess("@Cave03Left"), getAccess("@Cave03Right"), getAccess("@Cave03Top"))
end

function Cave03FretiasMemoirsIV()
  return getLocAccess("@Cave03Right")
end

function Cave03Left()
  return getLocAccess("@Spider")
end

function Cave03Right()
  return math.max(getAccess("@Cave08Left"), getAccess("@Cave08Top"), getAccess("@Cave08Right"))
end

function Cave03Top()
  return math.max(getAccess("@Cave06Bottom"), getAccess("@Cave06Top"))
end

function Cave04AmuletFragment()
  return getLocAccess("@Cave04Bottom")
end

function Cave04Right()
  return math.max(getAccess("@Cave16Left"), getAccess("@GreatHall"))
end

function Cave04Bottom()
  return math.max(getAccess("@Cave05Top"), getAccess("@Cave05Bottom"))
end

function Cave04Left()
  return getLocAccess("@Cave12Right")
end

function Cave05FuriousBlightx10()
  return math.min(getAccess("@Cave05Bottom"), math.max(getAccess("hook"), LEDGE_A(), getAccess("dash"), HORIZONTAL_A()))
end

function Cave05Left()
  return math.max(getAccess("@Cave02Right"), getAccess("@Cave02Bottom"), getAccess("@Cave02Top"))
end

function Cave05Top()
  return math.max(getAccess("@Cave04Bottom"), getAccess("@Cave04Right"))
end

function Cave05Bottom()
  return math.max(getAccess("@Cave06Top"), getAccess("@Cave06Bottom"))
end

function Cave05Right()
  return math.max(getAccess("@Cave10Left"), math.min(getAccess("@Cave10Bottom"), math.max(getAccess("hook"), LEDGE2_A(), HORIZONTAL2_A(), math.min(LEDGE_A(), HORIZONTAL_A()), math.min(getAccess("sinner"), getAccess("dash")))))
end

function Cave06FretiasMemoirsII()
  return getLocAccess("@Cave06Top")
end

function Cave06FretiasMemoirsI()
  return getLocAccess("@Cave06Top")
end

function Cave06KilteusRing()
  return getLocAccess("@Cave06Top")
end

function Cave06Top()
  return math.max(getAccess("@Cave05Bottom"), getAccess("@Cave05Left"), getAccess("@Cave05Right"), getAccess("@Cave05Top"))
end

function Cave06Bottom()
  return getLocAccess("@Charnel")
end

function Cave07ElderCryptKeeperFight()
  return math.max(getAccess("@Cave07Right"), getAccess("@Cave07Top"))
end

function Cave07StagnantBlightx10()
  return math.min(getAccess("@Spider"), getAccess("aquatic"))
end

function Cave07Top()
  return math.max(getAccess("@Cave02Bottom"), math.min(getAccess("@Cave02Right"), getAccess("hammer")))
end

function Cave07Right()
  return getLocAccess("@Cave03Left")
end

function Cave08AmuletFragment()
  return math.min(getAccess("@Cave08Left"), getAccess("hammer"))
end

function Cave08Top()
  return math.max(getAccess("@Cave09Bottom"), getAccess("@Cave09Top"), getAccess("@Cave09Right"))
end

function Cave08Left()
  return getLocAccess("@Cave03Right")
end

function Cave08Bottom()
  return getLocAccess("@Cave17Top")
end

function Cave08Right()
  return math.max(getAccess("@Cave11Left"), math.min(getAccess("@Cave11Tip"), math.max(getAccess("hook"), HORIZONTAL_A(), LEDGE_A(), getAccess("claws"))))
end

function Cave09AmuletFragment()
  return math.min(getAccess("@Cave09Top"), math.max(getAccess("claws"), LEDGE_A()))
end

function Cave09ChainofSorcery()
  return getLocAccess("@Cave09Top")
end

function Cave09Top()
  return math.max(getAccess("@Cave10Bottom"), getAccess("@Cave10Right"), getAccess("@Cave10Top"), getAccess("@Cave10Left"))
end

function Cave09Bottom()
  return math.max(getAccess("@Cave08Top"), math.min(getAccess("@Cave08Left"), math.max(getAccess("hook"), LEDGE_A(), getAccess("dash"), HORIZONTAL_A())))
end

function Cave09Right()
  return math.max(getAccess("@Cave21Left"), getAccess("@Cave21Right"))
end

function Cave10AmuletFragment()
  return getLocAccess("@Cave10Left")
end

function Cave10StagnantBlightx10()
  return getLocAccess("@Cave10Bottom")
end

function Cave10Right()
  return getLocAccess("@Silva")
end

function Cave10Left()
  return math.max(getAccess("@Cave05Right"), math.min(getAccess("@Cave05Bottom"), math.max(getAccess("claws"), LEDGE2_A(), HORIZONTAL2_A(), math.min(LEDGE_A(), HORIZONTAL_A()))))
end

function Cave10Bottom()
  return math.max(getAccess("@Cave09Top"), math.min(getAccess("@Cave09Bottom"), math.max(getAccess("claws"), LEDGE_A())))
end

function Cave10Top()
  return getLocAccess("@Cave16Bottom")
end

function Cave11SilvasNoteII()
  return math.max(getAccess("@Cave11Left"), getAccess("@Cave11Top"), getAccess("@Cave11Right1"), getAccess("@Cave11Right2"))
end

function Cave11StagnantBlightx10()
  return math.min(getAccess("@Cave11Left"), math.max(LEDGE_A(), HORIZONTAL_A(), getAccess("hook"), getAccess("dash")))
end

function Cave11FuriousBlightx10()
  return math.min(getAccess("@Cave11Tip"), getAccess("aquatic"))
end

function Cave11Left()
  return math.max(getAccess("@Cave08Right"), getAccess("@Cave08Left"))
end

function Cave11Top()
  return getLocAccess("@Ossuary")
end

function Cave11Right1()
  return getLocAccess("@Cave18Left1")
end

function Cave12CatacombsStoneTabletFragment()
  return math.min(getAccess("@Cave12Right"), math.max(getAccess("verboten"), getAccess("silva")))
end

function Cave12Right()
  return math.max(getAccess("@Cave04Left"), math.min(getAccess("@Cave04Bottom"), getAccess("unlock")))
end

function Cave13SilvasNoteI()
  return math.max(getAccess("@Ossuary"), getAccess("@Cave13Top"), getAccess("@Cave13Left"), getAccess("@Cave13Right"), getAccess("@Cave13Bottom"))
end

function Cave13FuriousBlightx30()
  return math.max(math.min(getAccess("@Ossuary"), getAccess("hook")), math.min(getAccess("@Cave13Bottom"), getAccess("claws")))
end

function Cave13FuriousBlightx10()
  return math.min(getAccess("@Cave13Left"), math.max(getAccess("dash"), LEDGE_A(), HORIZONTAL_A()))
end

function Cave13Bottom()
  return math.min(getAccess("@Cave11Tip"), getAccess("claws"))
end

function Cave13Top()
  return math.max(getAccess("@Cave14Bottom"), getAccess("@Cave14Right"), getAccess("@Cave14Left"))
end

function Cave13Left()
  return getLocAccess("@Silva")
end

function Cave13Right()
  return math.max(getAccess("@Cave20Left"), getAccess("@Cave20Bottom"), getAccess("@Cave20Top"))
end

function Cave14StagnantBlightx10()
  return getLocAccess("@Cave14Right")
end

function Cave14Bottom()
  return getLocAccess("@Ossuary")
end

function Cave14Left()
  return math.max(getAccess("@Cave15Right"), math.min(getAccess("@Cave15Left"), getAccess("aquatic"), math.max(LEDGE_A(), getAccess("claws"))))
end

function Cave14Right()
  return math.max(getAccess("@Cave22Left"), math.min(getAccess("@Cave22Bottom"), math.max(LEDGE2_A(), getAccess("hook"), getAccess("claws"), math.min(LEDGE_A(), HORIZONTAL_A()))))
end

function Cave15DefenseoftheTwinSpiresI()
  return getLocAccess("@Cave15Right")
end

function Cave15StagnantBlightx10()
  return math.min(getAccess("@Cave15Right"), getAccess("hammer"))
end

function Cave15StagnantBlightx10_1()
  return math.max(getAccess("@Cave15Right"), getAccess("@Cave15Left"))
end

function Cave15Right()
  return math.max(getAccess("@Cave14Left"), math.min(getAccess("@Cave14Bottom"), LEDGE_A()))
end

function Cave15Left()
  return math.max(getAccess("@Cave16Right"), getAccess("@GreatHall"))
end

function Cave16TheNextWhitePriestess()
  return math.max(getAccess("@GreatHall"), getAccess("@Cave16Right"), getAccess("@Cave16Bottom"), getAccess("@Cave16Left"))
end

function Cave16StagnantBlightx30()
  return math.min(getAccess("@GreatHall"), math.max(getAccess("hook"), math.min(getAccess("claws"), math.max(LEDGE2_A(), math.min(LEDGE_A(), HORIZONTAL_A())))))
end

function Cave16Right()
  return math.max(getAccess("@Cave15Left"), getAccess("@Cave15Right"))
end

function Cave16Bottom()
  return math.max(getAccess("@Cave10Top"), getAccess("@Cave10Bottom"))
end

function Cave16Left()
  return math.max(getAccess("@Cave04Right"), getAccess("@Cave04Bottom"))
end

function Cave17AncientSoulx2()
  return math.min(getAccess("@Cave17Top"), getAccess("aquatic"))
end

function Cave17Top()
  return math.max(getAccess("@Cave08Bottom"), math.min(getAccess("@Cave08Left"), getAccess("aquatic"), getAccess("hammer")))
end

function Cave18HolySpringWater()
  return getLocAccess("@Cave18Left1")
end

function Cave18Left1()
  return math.max(getAccess("@Cave11Right1"), math.min(getAccess("@Cave11Tip"), math.max(getAccess("hook"), math.min(getAccess("claws"), math.max(LEDGE_A(), getAccess("sinner"), math.min(getAccess("dodge2"), getAccess("dash")))), LEDGE2_A(), HORIZONTAL2_A(), math.min(LEDGE_A(), HORIZONTAL_A()))))
end

function Cave18Left2()
  return math.min(getAccess("@Cave18Left1"), getAccess("aquatic"))
end

function Cave19FallenArcherFight()
  return math.max(getAccess("@Cave19Top"), getAccess("@Cave19Left"))
end

function Cave19PriestessWish()
  return getLocAccess("@Archer")
end

function Cave19ChainofSorcery()
  return math.min(getAccess("@Archer"), math.max(getAccess("hook"), LEDGE_A(), HORIZONTAL_A()))
end

function Cave19Top()
  return math.max(getAccess("@Cave20Bottom"), getAccess("@Cave20Left"), getAccess("@Cave20Top"))
end

function Cave19Left()
  return math.max(getAccess("@Cave21Right"), getAccess("@Cave21Left"))
end

function Cave20AmuletFragment()
  return getLocAccess("@Cave20Top")
end

function Cave20TheHeirloomofLandsEnd()
  return getLocAccess("@Cave20Top")
end

function Cave20StagnantBlightx10()
  return getLocAccess("@Cave20Top")
end

function Cave20Top()
  return math.max(getAccess("@Cave22Bottom"), getAccess("@Cave22Right"), getAccess("@Cave22Left"))
end

function Cave20Bottom()
  return math.max(getAccess("@Cave19Top"), getAccess("@Archer"))
end

function Cave20Left()
  return getLocAccess("@Ossuary")
end

function Cave21PriestessStatue()
  return math.max(getAccess("@Cave21Right"), getAccess("@Cave21Left"))
end

function Cave21Left()
  return math.max(getAccess("@Cave09Right"), math.min(getAccess("@Cave09Top"), math.max(getAccess("sinner"), math.min(getAccess("dodge2"), math.max(LEDGE_A(), math.min(getAccess("dash"), getAccess("claws")))), math.min(getAccess("djump"), math.max(getAccess("verboten"), getAccess("silva"), getAccess("dash"))), math.min(getAccess("claws"), getAccess("verboten")))))
end

function Cave21Right()
  return math.max(getAccess("@Cave19Left"), math.min(getAccess("@Cave19Top"), math.max(math.min(HORIZONTAL_A(), LEDGE_A()), getAccess("claws"), LEDGE2_A())))
end

function Cave22FretiasMemoirsIII()
  return getLocAccess("@Cave22Right")
end

function Cave22Right()
  return math.max(getAccess("@Fort02Left"), math.min(getAccess("@Fort02Right"), math.max(math.min(LEDGE_A(), HORIZONTAL_A()), HORIZONTAL2_A(), LEDGE2_A(), getAccess("sinner"), math.min(getAccess("dash"), LEDGE_A()), math.min(getAccess("dash"), getAccess("dodge2")))))
end

function Cave22Left()
  return math.max(getAccess("@Cave14Right"), math.min(getAccess("@Cave14Bottom"), math.max(getAccess("hook"), getAccess("claws"), LEDGE2_A(), math.min(LEDGE_A(), HORIZONTAL_A()))))
end

function Cave22Bottom()
  return math.max(getAccess("@Cave20Top"), math.min(getAccess("@Cave20Bottom"), math.max(getAccess("hook"), getAccess("claws"), LEDGE_A())))
end

function Cave23GuardianSilvaFight()
  return math.max(getAccess("@Cave23Right"), getAccess("@Cave23Left"))
end

function Cave23UnfinishedNote()
  return getLocAccess("@Silva")
end

function Cave23Right()
  return math.max(getAccess("@Cave13Left"), math.min(getAccess("@Ossuary"), math.max(getAccess("claws"), LEDGE2_A(), getAccess("sinner"), math.min(LEDGE_A(), HORIZONTAL_A()))))
end

function Cave23Left()
  return math.max(getAccess("@Cave10Right"), getAccess("@Cave10Bottom"))
end

function Church01Bottom()
  return math.max(getAccess("@Church02Top"), math.min(getAccess("@Church02Right"), math.max(getAccess("djump"), getAccess("verboten"), math.min(getAccess("silva"), getAccess("dodge2")))))
end

function Church01Left()
  return math.max(getAccess("@Church12Right"), getAccess("@Start"))
end

function Church02AmuletFragment()
  return getLocAccess("@Church02Right")
end

function Church02EleinesLetter()
  return getLocAccess("@Church02Right")
end

function Church02Top()
  return math.max(getAccess("@Church01Bottom"), getAccess("@Church01Left"), getAccess("@Church01Top"))
end

function Church02Right()
  return math.max(getAccess("@Church10Left"), getAccess("@Cellar"))
end

function Church03defeatSiegrid()
  return getLocAccess("@Church03Left")
end

function Church03Left()
  return getLocAccess("@CathedralCloister")
end

function Church03Right()
  return math.max(getAccess("@Church04Left"), getAccess("@SaintsPassage"))
end

function Church04GroasLetter()
  return math.max(getAccess("@SaintsPassage"), getAccess("@Church04Right"), getAccess("@Church04Left"))
end

function Church04Left()
  return math.max(getAccess("@Church03Right"), getAccess("@Church03Left"))
end

function Church04Right()
  return math.max(getAccess("@Church06Left"), getAccess("@Church06Right"))
end

function Church05SoiledPrayerBeads()
  return math.max(getAccess("@Church05Top"), math.min(getAccess("@CathedralCloister"), LEDGE_A()))
end

function Church05Bottom()
  return math.max(getAccess("@Church11Top"), getAccess("@Church11Left"))
end

function Church05Right()
  return math.max(getAccess("@Church03Left"), getAccess("@Church03Right"))
end

function Church05Top()
  return math.max(getAccess("@Church09Bottom"), getAccess("@Church09Top"))
end

function Church06Left()
  return math.max(getAccess("@Church04Right"), getAccess("@SaintsPassage"))
end

function Church06Right()
  return math.max(getAccess("@Church07Left"), math.min(getAccess("@Youth"), math.max(LEDGE_A(), getAccess("claws"))))
end

function Church07CliffsideHamletYouthFight()
  return getLocAccess("@Church07Right")
end

function Church07ChainofSorcery()
  return math.min(getAccess("@Youth"), getAccess("hammer"))
end

function Church07Left()
  return math.max(getAccess("@Church06Right"), math.min(getAccess("@Church06Left"), math.max(LEDGE_A(), getAccess("claws"))))
end

function Church07Right()
  return getLocAccess("@Crossroads")
end

function Church08AmuletFragment()
  return math.min(getAccess("@Crossroads"), getAccess("aquatic"))
end

function Church08TheParishWayII()
  return math.max(getAccess("@Crossroads"), getAccess("@Church08Top"), getAccess("@Church08Bottom"), getAccess("@Church08Left"))
end

function Church08Top()
  return math.max(getAccess("@Village01Bottom"), getAccess("@Village01Right"))
end

function Church08Bottom()
  return math.max(getAccess("@Forest01Top"), math.min(getAccess("@Forest01Right"), math.max(LEDGE_A(), getAccess("claws"))))
end

function Church08Left()
  return math.max(getAccess("@Church07Right"), math.min(getAccess("@Church07Left"), math.max(LEDGE_A(), getAccess("claws"))), getAccess("@Youth"))
end

function Church09ChiefGuardianFight()
  return math.max(getAccess("@Church09Bottom"), getAccess("@Church09Top"))
end

function Church09VibrantPlume()
  return math.min(getAccess("@Church09Bottom"), CHARGE_A(), math.max(math.min(LEDGE_A(), getAccess("claws")), LEDGE3_A()))
end

function Church09FuriousBlightx30()
  return getLocAccess("@Chief")
end

function Church09Bottom()
  return math.min(getAccess("@CathedralCloister"), getAccess("claws"))
end

function Church09Bottom2()
  return getLocAccess("@Chief")
end

function Church09Top()
  return getLocAccess("@Church14Bottom")
end

function Church10OntheBlightedI()
  return math.max(getAccess("@Cellar"), getAccess("@Church10Left"), getAccess("@Church10Right"))
end

function Church10OntheBlightedII()
  return getLocAccess("@Cellar")
end

function Church10Left()
  return math.max(getAccess("@Church02Right"), getAccess("@Church02Top"))
end

function Church10Right()
  return getLocAccess("@Church11Left")
end

function Church11AmuletFragment()
  return getLocAccess("@Church11Left")
end

function Church11TheParishWayI()
  return getLocAccess("@Church11Top")
end

function Church11Top()
  return getLocAccess("@CathedralCloister")
end

function Church11Left()
  return math.max(getAccess("@Church10Right"), getAccess("@Cellar"))
end

function Church12StatueInscription()
  return math.max(getAccess("@Start"), getAccess("@Church12Right"))
end

function Church12Right()
  return math.max(getAccess("@Church01Left"), getAccess("@Church01Bottom"), getAccess("@Church01Top"))
end

function Church12Bottom()
  return getLocAccess("@Church13Top")
end

function Church13RestoringtheAegisCurio()
  return getLocAccess("@Church13Top")
end

function Church13Top()
  return math.max(getAccess("@Church12Bottom"), math.min(getAccess("@Start"), math.min(getAccess("unlock"), math.max(getAccess("djump"), getAccess("verboten"), math.min(getAccess("silva"), getAccess("dodge2")), getAccess("claws")))))
end

function Church14PriestessWish()
  return getLocAccess("@Church14Bottom")
end

function Church14LilysNote()
  return getLocAccess("@Church14Bottom")
end

function Church14Bottom()
  return math.min(getAccess("@Church09Bottom"), getAccess("hook"))
end

function Forest01Top()
  return getLocAccess("@Crossroads")
end

function Forest01Right()
  return math.max(getAccess("@Forest02Left"), getAccess("@Forest02Right1"))
end

function Forest02StagnantBlightx10()
  return math.max(getAccess("@Forest02Left"), math.min(getAccess("@Forest02Right2"), getAccess("hook")))
end

function Forest02Left()
  return math.max(getAccess("@Forest01Right"), getAccess("@Forest01Top"))
end

function Forest02Right1()
  return math.max(getAccess("@Forest04Left"), math.min(getAccess("@Forest04Right"), math.max(LEDGE_A(), getAccess("claws"))))
end

function Forest02Right2()
  return math.max(getAccess("@Forest03Left"), getAccess("@Forest03Right"))
end

function Forest03AmuletFragment()
  return math.min(getAccess("@Forest03Left"), getAccess("aquatic"))
end

function Forest03ChainofSorcery()
  return math.min(getAccess("@Forest03Left"), getAccess("aquatic"))
end

function Forest03Right()
  return math.max(getAccess("@Forest05Left"), getAccess("@DryadLake"))
end

function Forest03Left()
  return math.max(getAccess("@Forest02Right2"), getAccess("@Forest02Left"))
end

function Forest04AmuletFragment()
  return getLocAccess("@Forest04Right")
end

function Forest04RustedBlueOrnament()
  return math.min(getAccess("@Forest04Left"), math.max(LEDGE_A(), math.min(getAccess("claws"), HORIZONTAL_A())))
end

function Forest04StagnantBlightx10()
  return math.min(getAccess("@Forest04Left"), math.min(getAccess("hammer"), LEDGE_A()))
end

function Forest04Right()
  return math.max(getAccess("@Forest05Top"), math.min(getAccess("@DryadLake"), LEDGE_A()))
end

function Forest04Left()
  return math.max(getAccess("@Forest02Right1"), getAccess("@Forest02Left"), math.min(getAccess("@Forest02Right2"), math.max(getAccess("claws"), LEDGE_A())))
end

function Forest05CovenHandbook()
  return math.max(getAccess("@DryadLake"), getAccess("@Forest05Right"), getAccess("@Forest05Left"), getAccess("@Forest05Top"))
end

function Forest05Right()
  return math.max(getAccess("@Forest07Left"), math.min(getAccess("@Forest07Bottom"), LEDGE_A()), math.min(getAccess("@Forest07Right"), math.max(LEDGE_A(), getAccess("hook"), HORIZONTAL_A(), getAccess("dash"))))
end

function Forest05Left()
  return math.max(getAccess("@Forest03Right"), math.min(getAccess("@Forest03Left"), math.max(getAccess("claws"), LEDGE_A(), HORIZONTAL_A())))
end

function Forest05Top()
  return math.max(getAccess("@Forest04Right"), math.min(getAccess("@Forest04Left"), math.max(LEDGE_A(), getAccess("claws"), math.min(HORIZONTAL_A(), getAccess("aquatic")))))
end

function Forest06FungalSorcererFight()
  return math.min(getAccess("@Forest06Bottom"), LEDGE_A())
end

function Forest06LoversLetter()
  return math.min(getAccess("@Forest06Bottom"), LEDGE_A())
end

function Forest06FuriousBlightx10()
  return math.min(getAccess("@Forest06Bottom"), math.max(getAccess("hook"), math.min(LEDGE_A(), getAccess("hammer")), LEDGE2_A(), math.min(LEDGE_A(), HORIZONTAL_A())))
end

function Forest06Bottom()
  return math.max(getAccess("@Forest07Top"), math.min(getAccess("@Forest07Left"), LEDGE_A()))
end

function Forest07AmuletFragment()
  return math.min(math.max(getAccess("@Forest07Left"), getAccess("@Forest07Bottom")), math.max(LEDGE_A(), getAccess("hook"), HORIZONTAL_A(), getAccess("claws")))
end

function Forest07StagnantBlightx30()
  return math.min(getAccess("@Forest07Right"), math.max(getAccess("hook"), math.min(getAccess("claws"), LEDGE_A())))
end

function Forest07StagnantBlightx10()
  return math.max(getAccess("@Forest07Left"), getAccess("@Forest07Right"))
end

function Forest07Right()
  return math.max(getAccess("@Oubliette01Left"), math.min(getAccess("@Oubliette01Right"), getAccess("aquatic")))
end

function Forest07Bottom()
  return math.max(getAccess("@Forest08Top"), math.min(getAccess("@Forest08Right"), math.max(LEDGE_A(), getAccess("claws"))))
end

function Forest07Left()
  return math.max(getAccess("@Forest05Right"), getAccess("@DryadLake"))
end

function Forest07Top()
  return getLocAccess("@Forest06Bottom")
end

function Forest08ManisasRing()
  return math.min(getAccess("@Forest08Top"), math.max(LEDGE_A(), getAccess("hook"), math.min(getAccess("claws"), HORIZONTAL_A())))
end

function Forest08CrackedFamiliarStone()
  return math.min(getAccess("@ManisasRing"), math.max(LEDGE2_A(), math.min(LEDGE_A(), HORIZONTAL_A()), math.min(getAccess("claws"), getAccess("sinner")), getAccess("hook")))
end

function Forest08FuriousBlightx10()
  return math.min(getAccess("@Forest08Top"), math.max(LEDGE_A(), HORIZONTAL_A(), getAccess("dash")))
end

function Forest08Top()
  return math.max(getAccess("@Forest07Bottom"), getAccess("@Forest07Left"))
end

function Forest08Right()
  return math.max(getAccess("@Forest10Left"), getAccess("@WitchsHermitage"))
end

function Forest09PriestessWish()
  return math.min(getAccess("@Forest10Left"), getAccess("aquatic"), math.max(LEDGE_A(), getAccess("claws")))
end

function Forest09TarnishedPicture()
  return math.min(getAccess("@Forest10Left"), getAccess("aquatic"), math.max(LEDGE_A(), getAccess("claws")))
end

function Forest09Top()
  return math.max(getAccess("@Forest10Bottom1"), getAccess("@WitchsHermitage"))
end

function Forest09FuriousBlightx10()
  return math.min(math.max(getAccess("@Forest09Top"), getAccess("@Forest09Left")), getAccess("aquatic"))
end

function Forest09Left()
  return math.max(getAccess("@Swamp2Top"), getAccess("@Swamp2Right"))
end

function Forest10Bottom2()
  return math.max(getAccess("@Forest11Top"), getAccess("@Forest11Right"))
end

function Forest10Bottom1()
  return math.max(getAccess("@Forest09Top"), math.min(getAccess("@Forest09Left"), getAccess("aquatic")))
end

function Forest10SorcerersNote()
  return math.max(getAccess("@WitchsHermitage"), getAccess("@Forest10Bottom2"), getAccess("@Forest10Bottom1"), getAccess("@Forest10Left"), getAccess("@Forest10Right"))
end

function Forest10Left()
  return math.max(getAccess("@Forest08Right"), math.min(getAccess("@Forest08Top"), math.max(LEDGE_A(), getAccess("hook"), getAccess("claws"))))
end

function Forest10Right()
  return math.max(getAccess("@Forest12Left"), math.min(getAccess("@Forest12Bottom"), math.max(LEDGE_A(), getAccess("hook"))))
end

function Forest11FloralSorceressFight()
  return getLocAccess("@Forest11Top")
end

function Forest11AmuletFragment()
  return getLocAccess("@Forest11Top")
end

function Forest11ChainofSorcery()
  return getLocAccess("@Forest11Top")
end

function Forest11RuinedWitchsBook()
  return math.min(getAccess("@Forest11Right"), math.max(LEDGE_A(), HORIZONTAL_A(), getAccess("dash")))
end

function Forest11Top()
  return math.max(getAccess("@Forest10Bottom2"), getAccess("@WitchsHermitage"))
end

function Forest11StagnantBlightx30()
  return math.min(getAccess("@Forest11Right"), math.max(math.min(LEDGE_A(), getAccess("claws")), getAccess("hook"), math.min(HORIZONTAL2_A(), math.max(getAccess("dash"), getAccess("djump"), getAccess("silva")))))
end

function Forest11StagnantBlightx10()
  return math.min(getAccess("@Forest11Right"), getAccess("aquatic"))
end

function Forest11Right()
  return math.max(getAccess("@Forest14Left"), math.min(getAccess("@CovenHalls"), getAccess("aquatic")))
end

function Forest12AmuletFragment()
  return math.min(getAccess("@Forest12Left"), math.max(LEDGE_A(), getAccess("claws"), getAccess("hook")))
end

function Forest12StagnantBlightx10()
  return math.max(getAccess("@Forest12Bottom"), getAccess("@Forest12Right"))
end

function Forest12Left()
  return math.max(getAccess("@Forest10Right"), getAccess("@WitchsHermitage"))
end

function Forest12Bottom()
  return math.max(getAccess("@Forest13Top"), getAccess("@Forest13Bottom"))
end

function Forest12Right()
  return getLocAccess("@Forest17Left")
end

function Forest13StagnantBlightx10()
  return getLocAccess("@Forest13Top")
end

function Forest13Top()
  return math.max(getAccess("@Forest12Bottom"), getAccess("@Forest12Right"), math.min(getAccess("@Forest12Left"), math.max(LEDGE_A(), getAccess("hook"))))
end

function Forest13Bottom()
  return getLocAccess("@CovenHalls")
end

function Forest13Right()
  return getLocAccess("@Forest16Left")
end

function Forest14TheParishWayIII()
  return math.max(getAccess("@CovenHalls"), getAccess("@Forest14Bottom"), getAccess("@Forest14Top"), getAccess("@Forest14Left"))
end

function Forest14Bottom()
  return getLocAccess("@Forest15Top")
end

function Forest14Top()
  return math.max(getAccess("@Forest13Bottom"), math.min(getAccess("@Forest13Top"), LEDGE_A()))
end

function Forest14Left()
  return math.max(getAccess("@Forest11Right"), math.min(getAccess("@Forest11Top"), getAccess("aquatic")))
end

function Forest15DarkWitchEleineFight()
  return getLocAccess("@Forest15Top")
end

function Forest15Top()
  return getLocAccess("@CovenHalls")
end

function Forest16EleinesDiaryIII()
  return getLocAccess("@Forest16Left")
end

function Forest16ThicketStoneTabletFragment()
  return getLocAccess("@Forest16Left")
end

function Forest16StagnantBlightx800()
  return getLocAccess("@Forest16Left")
end

function Forest16Left()
  return math.max(getAccess("@Forest13Right"), math.min(getAccess("@Forest13Top"), getAccess("claws"), getAccess("unlock"), math.max(math.min(LEDGE_A(), HORIZONTAL_A()), LEDGE2_A())))
end

function Forest17AmuletGem()
  return math.min(getAccess("@Forest17Left"), math.max(getAccess("claws"), LEDGE_A()))
end

function Forest17EleinesDiaryII()
  return math.min(getAccess("@Forest17Left"), math.max(getAccess("claws"), math.min(LEDGE_A(), getAccess("hook")), math.min(getAccess("silva"), getAccess("djump"))))
end

function Forest17SpellboundAnklet()
  return math.min(getAccess("@Forest17Left"), math.max(getAccess("claws"), LEDGE_A()))
end

function Forest17Left()
  return math.max(getAccess("@Forest12Right"), math.min(getAccess("@Forest12Left"), math.max(math.min(getAccess("claws"), math.max(getAccess("djump"), getAccess("verboten"))), math.min(getAccess("claws"), LEDGE_A(), math.max(HORIZONTAL_A(), getAccess("dash"))), math.min(getAccess("silva"), getAccess("djump")), math.min(LEDGE_A(), getAccess("sinner")), math.min(LEDGE2_A(), HORIZONTAL_A()))), math.min(getAccess("@Forest12Bottom"), getAccess("hook")))
end

function Forest17EleinesDiaryI()
  return getLocAccess("@Forest17Left")
end

function Fort01FallenSentinelFight()
  return math.max(getAccess("@Fort01Left1"), math.min(getAccess("@Fort01Right"), math.max(LEDGE_A(), getAccess("hook"))))
end

function Fort01FuriousBlightx30()
  return getLocAccess("@Fort01Left1")
end

function Fort01Right()
  return math.min(getAccess("@BastionGates"), math.max(getAccess("hook"), LEDGE_A()))
end

function Fort01Left2()
  return math.max(getAccess("@Village15Right"), math.min(getAccess("@Village15Left"), getAccess("@Village800")))
end

function Fort01Left1()
  return math.max(getAccess("@Castle07Right"), math.min(getAccess("@GuestChamber"), math.max(getAccess("hook"), LEDGE3_A())))
end

function Fort02StagnantBlightx10()
  return getLocAccess("@Fort02Left")
end

function Fort02FuriousBlightx10()
  return getLocAccess("@Fort02Right")
end

function Fort02Right()
  return getLocAccess("@BastionGates")
end

function Fort02Left()
  return math.max(getAccess("@Cave22Right"), getAccess("@Cave22Bottom"))
end

function Fort03BloodiedNoteI()
  return math.max(getAccess("@BastionGates"), getAccess("@Fort03Right"), getAccess("@Fort03Left1"), getAccess("@Fort03Left2"), getAccess("@Fort03Top"))
end

function Fort03Right()
  return math.max(getAccess("@Fort04Left"), getAccess("@Fort04Top"))
end

function Fort03Left1()
  return math.max(getAccess("@Fort01Right"), getAccess("@Fort01Left1"), getAccess("@Fort01Left2"))
end

function Fort03Left2()
  return math.max(getAccess("@Fort02Right"), math.min(getAccess("@Fort02Left"), math.max(math.min(LEDGE_A(), HORIZONTAL_A()), HORIZONTAL2_A(), math.min(getAccess("djump"), math.max(getAccess("silva"), getAccess("verboten"))))))
end

function Fort03Top()
  return math.max(getAccess("@Fort05Bottom1"), math.min(getAccess("@Fort05Bottom2"), LEDGE_A()))
end

function Fort04StagnantBlightx100()
  return math.min(getAccess("@Fort04Left"), math.min(CHARGE_A(), math.max(LEDGE_A(), getAccess("claws"), HORIZONTAL_A())))
end

function Fort04Top()
  return math.max(getAccess("@Fort05Bottom2"), getAccess("@Fort05Right"))
end

function Fort04Left()
  return getLocAccess("@BastionGates")
end

function Fort05AmuletFragment()
  return math.min(getAccess("@Fort05Right"), LEDGE_A())
end

function Fort05ChainofSorcery()
  return math.min(getAccess("@Fort05Bottom2"), math.min(LEDGE_A(), math.max(getAccess("hook"), getAccess("claws"))))
end

function Fort05StagnantBlightx10()
  return math.max(math.min(getAccess("@Fort05Bottom2"), LEDGE_A(), getAccess("hammer")), getAccess("@Fort05Bottom1"))
end

function Fort05Bottom2()
  return math.max(getAccess("@Fort04Top"), math.min(getAccess("@Fort04Left"), LEDGE_A()))
end

function Fort05Right()
  return math.max(getAccess("@Fort06Left"), getAccess("@Fort06Bottom"), math.min(getAccess("@Fort06Right"), math.max(LEDGE_A(), HORIZONTAL_A(), getAccess("dash"))))
end

function Fort05Bottom1()
  return math.min(getAccess("@BastionGates"), getAccess("claws"))
end

function Fort05Top()
  return math.max(getAccess("@Fort15Bottom"), getAccess("@Fort15Top"))
end

function Fort06StagnantBlightx30()
  return math.min(getAccess("@Fort06Right"), math.min(LEDGE_A(), getAccess("claws")))
end

function Fort06Left()
  return math.max(getAccess("@Fort05Right"), math.min(getAccess("@Fort05Bottom2"), LEDGE_A()))
end

function Fort06Right()
  return math.max(getAccess("@Fort07Left"), math.min(getAccess("@Fort07Top"), LEDGE_A()))
end

function Fort06Bottom()
  return math.min(getAccess("@Courtyard"), getAccess("claws"), LEDGE_A())
end

function Fort07StagnantBlightx10()
  return math.min(getAccess("@Fort07Bottom1"), math.max(LEDGE_A(), getAccess("claws")))
end

function Fort07Bottom1()
  return math.max(getAccess("@Fort09Top1"), math.min(getAccess("@Fort09Left"), math.max(LEDGE_A(), getAccess("hook"))))
end

function Fort07Right()
  return math.max(getAccess("@Fort08Left"), getAccess("@SecondSpireChamber"))
end

function Fort07Left()
  return math.max(getAccess("@Fort06Right"), math.min(getAccess("@Fort06Left"), math.max(LEDGE_A(), HORIZONTAL_A(), getAccess("dash"))))
end

function Fort07Top()
  return math.max(getAccess("@Fort11Bottom"), getAccess("@Fort11Left"), getAccess("@Fort11Top1"), getAccess("@Fort11Top2"))
end

function Fort07Bottom2()
  return math.max(getAccess("@Fort09Top2"), math.min(getAccess("@Fort09Right"), LEDGE_A(), getAccess("claws")))
end

function Fort08HoenirsDiaryIII()
  return math.max(getAccess("@SecondSpireChamber"), getAccess("@Fort08Left"))
end

function Fort08Left()
  return math.max(getAccess("@Fort07Right"), getAccess("@Fort07Top"))
end

function Fort09NoteontheCastleWall()
  return getLocAccess("@Fort09Left")
end

function Fort09SnowdropBracelet()
  return math.min(getAccess("@Fort09Left"), CHARGE_A())
end

function Fort09StagnantBlightx10()
  return getLocAccess("@Fort09Top1")
end

function Fort09FuriousBlightx30()
  return getLocAccess("@Fort09Top2")
end

function Fort09Right()
  return getLocAccess("@Outside03Top")
end

function Fort09Left()
  return getLocAccess("@Courtyard")
end

function Fort09Top1()
  return math.max(getAccess("@Fort07Right"), getAccess("@Fort07Bottom1"), getAccess("@Fort07Top"), math.min(getAccess("@Fort07Bottom2"), getAccess("claws")))
end

function Fort09Top2()
  return math.max(getAccess("@Fort07Bottom2"), math.min(getAccess("@Fort07Bottom1"), getAccess("claws")))
end

function Fort10AmuletFragment()
  return math.min(getAccess("@Courtyard"), getAccess("claws"), LEDGE_A())
end

function Fort10BloodiedNoteII()
  return math.max(getAccess("@Courtyard"), getAccess("@Fort10Right"), getAccess("@Fort10Top"))
end

function Fort10Right()
  return math.max(getAccess("@Fort09Left"), getAccess("@Fort09Right"), getAccess("@Fort09Top1"), getAccess("@Fort09Top2"))
end

function Fort10Top()
  return math.max(getAccess("@Fort06Bottom"), getAccess("@Fort06Left"), getAccess("@Fort06Right"))
end

function Fort11RicorusRing()
  return math.min(getAccess("hammer"), getAccess("aquatic"), math.max(getAccess("@Fort11Stagnant"), math.min(getAccess("@Fort11Bottom"), math.max(math.min(LEDGE_A(), math.max(getAccess("sinner"), math.min(getAccess("dodge2"), getAccess("claws")))), LEDGE2_A()))))
end

function Fort11StagnantBlightx30()
  return math.max(getAccess("@Fort11Top2"), math.min(getAccess("@Fort11Bottom"), math.max(math.min(LEDGE_A(), math.max(getAccess("sinner"), math.min(getAccess("dodge2"), getAccess("claws")))), LEDGE2_A()), math.max(getAccess("hook"), math.min(LEDGE2_A(), getAccess("claws")), LEDGE3_A())))
end

function Fort11Bottom()
  return math.max(getAccess("@Fort07Top"), getAccess("@Fort07Bottom1"), math.min(getAccess("@Fort07Left"), math.max(LEDGE_A(), getAccess("claws"))), getAccess("@Fort07Right"))
end

function Fort11Left()
  return math.max(getAccess("@Fort12Right"), getAccess("@Fort12Left"))
end

function Fort11Top1()
  return math.max(getAccess("@Fort13Bottom1"), getAccess("@Fort13Bottom2"), getAccess("@Fort13Left"), getAccess("@Fort13Top"))
end

function Fort11Top2()
  return math.max(getAccess("@Fort13Bottom2"), getAccess("@Fort13Top"), getAccess("@Fort13Bottom1"))
end

function Fort12ForsakenFellwyrmFight()
  return math.min(getAccess("@Fort12HP"), CHARGE_A())
end

function Fort12AmuletFragment()
  return math.max(getAccess("@Fort12Top"), math.min(getAccess("@Fort12Right"), math.max(math.min(getAccess("claws"), math.max(math.min(LEDGE_A(), HORIZONTAL_A()), LEDGE2_A())), LEDGE3_A())))
end

function Fort12Right()
  return math.max(getAccess("@Fort11Left"), math.min(getAccess("@Fort11Bottom"), LEDGE_A()), math.min(getAccess("@Fort11Top1"), math.max(HORIZONTAL_A(), LEDGE_A(), getAccess("dash"))))
end

function Fort12Top()
  return math.max(getAccess("@Fort14Bottom"), getAccess("@Fort14Right"), getAccess("@Fort14Left"))
end

function Fort12Left()
  return getLocAccess("@Fort16Right")
end

function Fort13AmuletFragment()
  return getLocAccess("@Fort13Left")
end

function Fort13ChainofSorcery()
  return math.max(math.min(getAccess("@Fort13Bottom1"), getAccess("claws"), LEDGE_A()), getAccess("@Fort13Top"))
end

function Fort13Bottom1()
  return math.max(getAccess("@Fort11Top1"), math.min(getAccess("@Fort11Left"), math.max(getAccess("claws"), LEDGE_A(), HORIZONTAL_A(), getAccess("dash"))))
end

function Fort13Bottom2()
  return math.max(math.min(getAccess("@Fort11Top2"), getAccess("claws")), math.min(getAccess("@Fort11Stagnant"), getAccess("claws")))
end

function Fort13Left()
  return math.max(getAccess("@Fort14Right"), getAccess("@Fort14Left"), getAccess("@Fort14Bottom"))
end

function Fort13Top()
  return math.max(getAccess("@Fort19Bottom"), math.min(getAccess("@Fort19Top"), getAccess("claws")))
end

function Fort14Tabletx800StagnantWritingontheWall()
  return math.min(getAccess("@Fort14Right"), getAccess("hook"), getAccess("hammer"), getAccess("unlock"), getAccess("aquatic"))
end

function Fort14StagnantBlightx100()
  return math.min(getAccess("@Fort14Bottom"), CHARGE_A())
end

function Fort14FuriousBlightx10()
  return math.max(getAccess("@Fort14Right"), getAccess("@Fort14Left"), getAccess("@Fort14Bottom"))
end

function Fort14Left()
  return math.max(getAccess("@Fort15Right1"), math.min(getAccess("@Fort15Right2"), LEDGE_A()))
end

function Fort14Right()
  return math.max(getAccess("@Fort13Left"), math.min(getAccess("@Fort13Bottom1"), math.max(LEDGE_A(), getAccess("claws"))))
end

function Fort14Bottom()
  return math.min(getAccess("@Fort12Top"), LEDGE_A(), getAccess("claws"))
end

function Fort15BloodiedNoteIII()
  return getLocAccess("@Fort15Right2")
end

function Fort15ImmortalsCrest()
  return math.min(getAccess("@Fort15Top"), math.max(getAccess("hook"), LEDGE2_A()))
end

function Fort15StagnantBlightx30()
  return math.max(math.min(getAccess("@Fort15Right2"), getAccess("claws")), getAccess("@Fort15Top"), getAccess("@Fort15Bottom"))
end

function Fort15StagnantBlightx10()
  return math.min(getAccess("@Fort15Right2"), LEDGE_A())
end

function Fort15Right2()
  return getLocAccess("@Fort16Left1")
end

function Fort15Right1()
  return math.max(getAccess("@Fort14Left"), math.min(getAccess("@Fort14Right"), math.max(getAccess("dash"), HORIZONTAL_A(), LEDGE_A())))
end

function Fort15Bottom()
  return math.min(getAccess("@Fort05Bottom2"), LEDGE_A(), getAccess("claws"))
end

function Fort15Top()
  return getLocAccess("@Fort17Bottom")
end

function Fort15Right3()
  return getLocAccess("@Fort16Left2")
end

function Fort16MonumentEngraving()
  return math.max(getAccess("@Fort16Left1"), getAccess("@Fort16Top"), getAccess("@Fort16Left2"), getAccess("@Fort16Right"))
end

function Fort16Left1()
  return math.max(getAccess("@Fort15Right2"), getAccess("@Fort15Right1"), getAccess("@Fort15Top"), math.min(getAccess("@Fort15Bottom"), LEDGE_A()))
end

function Fort16Top()
  return math.max(getAccess("@Fort18Bottom"), getAccess("@Fort18Right"))
end

function Fort16Left2()
  return math.max(getAccess("@Fort15Right3"), math.min(getAccess("@Fort15Bottom"), LEDGE_A()), getAccess("@Fort15Right2"))
end

function Fort16Right()
  return math.max(getAccess("@Fort12Left"), getAccess("@Fort12Right"), getAccess("@Fort12Top"))
end

function Fort17AmuletFragment()
  return getLocAccess("@Fort17Bottom")
end

function Fort17Bottom()
  return math.max(getAccess("@Fort15Top"), math.min(getAccess("@Fort15Right3"), LEDGE_A()))
end

function Fort17Right()
  return math.max(getAccess("@Fort18Left"), getAccess("@Fort18Right"))
end

function Fort18AmuletGem()
  return math.min(getAccess("@Fort18Right"), math.min(getAccess("claws"), math.max(getAccess("sinner"), math.min(getAccess("dodge2"), LEDGE_A()), LEDGE2_A(), math.min(getAccess("djump"), getAccess("dash")))))
end

function Fort18ChainofSorcery()
  return math.min(getAccess("@Fort18Bottom"), math.max(LEDGE_A(), getAccess("claws")))
end

function Fort18Left()
  return math.max(getAccess("@Fort17Right"), getAccess("@Fort17Bottom"))
end

function Fort18Right()
  return math.max(getAccess("@Fort19Left"), math.min(getAccess("@Fort19Top"), LEDGE_A()))
end

function Fort18Bottom()
  return getLocAccess("@Fort16Top")
end

function Fort19AncientDragonClaw()
  return getLocAccess("@Fort19Top")
end

function Fort19FuriousBlightx30()
  return math.min(getAccess("@Fort19Top"), getAccess("claws"))
end

function Fort19FuriousBlightx10()
  return math.min(getAccess("@Fort19Left"), getAccess("hammer"))
end

function Fort19Left()
  return math.max(getAccess("@Fort18Right"), getAccess("@Fort18Left"), getAccess("@Fort18Bottom"))
end

function Fort19Top()
  return math.max(getAccess("@Fort20Bottom"), getAccess("@MourningHall"))
end

function Fort19Bottom()
  return math.max(math.min(getAccess("@Fort13Top"), getAccess("claws"), LEDGE_A()), math.min(getAccess("@Fort13Bottom1"), getAccess("claws"), LEDGE_A()))
end

function Fort20Bottom()
  return math.max(getAccess("@Fort19Top"), math.min(getAccess("@Fort19Left"), LEDGE_A()))
end

function Fort20Top()
  return getLocAccess("@Fort21Bottom")
end

function Fort21defeatUlv()
  return getLocAccess("@Fort21Bottom")
end

function Fort21PriestessWish()
  return math.min(getAccess("@Ulv"), math.max(getAccess("claws"), math.min(getAccess("silva"), getAccess("djump"), math.max(getAccess("verboten"), getAccess("dodge2")))))
end

function Fort21WhitePriestessBastionLetter()
  return math.min(getAccess("@Ulv"), math.max(getAccess("claws"), math.min(getAccess("silva"), getAccess("djump"), math.max(getAccess("verboten"), getAccess("dodge2")))))
end

function Fort21Bottom()
  return math.max(getAccess("@Fort20Top"), getAccess("@MourningHall"))
end

function MourningHall()
  return math.max(getAccess("@MourningHall"), getAccess("@Fort20Bottom"), getAccess("@Fort20Top"))
end

function Oubliette01AmuletFragment()
  return math.min(getAccess("@Oubliette01Left"), getAccess("aquatic"))
end

function Oubliette01StagnantBlightx10()
  return math.min(getAccess("@Oubliette01Left"), getAccess("aquatic"))
end

function Oubliette01Left()
  return math.max(getAccess("@Forest07Right"), math.min(getAccess("@Forest07Left"), math.max(math.min(getAccess("dodge2"), math.max(LEDGE_A(), getAccess("dash"))), LEDGE2_A(), getAccess("hook"), getAccess("sinner"), math.min(math.max(getAccess("djump"), getAccess("verboten")), getAccess("dash")), math.min(getAccess("silva"), getAccess("dash"), getAccess("claws")))))
end

function Oubliette01Right()
  return math.max(getAccess("@Oubliette02Left"), math.min(getAccess("@Aqueduct"), math.max(LEDGE_A(), getAccess("claws"))))
end

function Oubliette02ExecutionersVow()
  return math.max(getAccess("@Aqueduct"), getAccess("@Oubliette02Left"), getAccess("@Oubliette02Right1"), getAccess("@Oubliette02Right2"))
end

function Oubliette02Left()
  return math.max(getAccess("@Oubliette01Right"), math.min(getAccess("@Oubliette01Left"), getAccess("aquatic")))
end

function Oubliette02Right1()
  return math.max(getAccess("@Oubliette05Left"), getAccess("@Oubliette05Right"), getAccess("@Oubliette05Top1"))
end

function Oubliette02Right2()
  return math.max(math.min(getAccess("@Oubliette04Right"), math.max(getAccess("claws"), getAccess("hook"), LEDGE_A())), getAccess("@Oubliette04Left"))
end

function Oubliette03StagnantBlightx10()
  return math.min(getAccess("@Oubliette03Left"), getAccess("aquatic"))
end

function Oubliette03StagnantBlightx10_1()
  return math.min(getAccess("@Oubliette03Left"), getAccess("aquatic"))
end

function Oubliette03Left()
  return math.max(getAccess("@Oubliette04Right"), getAccess("@Oubliette04Left"))
end

function Oubliette03Right()
  return math.max(getAccess("@Oubliette10Left1"), getAccess("@DarkChamber"))
end

function Oubliette03Top()
  return math.max(getAccess("@Oubliette05Bottom3"), getAccess("@Oubliette05Left"))
end

function Oubliette03StagnantBlightx800()
  return math.min(getAccess("@Oubliette03Right"), CHARGE_A())
end

function Oubliette04StagnantBlightx30()
  return math.min(getAccess("@Oubliette04Left"), math.max(FULLSILVA_A(), getAccess("hook"), LEDGE3_A(), math.min(getAccess("sinner"), getAccess("silva"), getAccess("djump")), math.min(getAccess("silva"), getAccess("verboten"), getAccess("dodge2")), math.min(HORIZONTAL2_A(), getAccess("dash"), LEDGE_A()), math.min(getAccess("djump"), getAccess("verboten"), HORIZONTAL_A())))
end

function Oubliette04FuriousBlightx10()
  return math.max(getAccess("@Oubliette04Right"), getAccess("@Oubliette04Left"))
end

function Oubliette04Right()
  return math.max(getAccess("@Oubliette03Left"), math.min(getAccess("@Oubliette03Right"), getAccess("aquatic")))
end

function Oubliette04Left()
  return math.max(getAccess("@Oubliette02Right2"), getAccess("@Aqueduct"))
end

function Oubliette051Bottom()
  return math.max(getAccess("@Oubliette05Top1"), math.min(getAccess("@Oubliette05Left"), LEDGE_A()))
end

function Oubliette05FuriousBlightx10()
  return getLocAccess("@Oubliette051Bottom")
end

function Oubliette052Bottom1()
  return math.max(getAccess("@Oubliette05Top2"), getAccess("@Oubliette05Top1"))
end

function Oubliette05StagnantBlightx10()
  return math.min(getAccess("@Oubliette052Bottom1"), math.min(LEDGE_A(), getAccess("claws"), getAccess("hook")))
end

function Oubliette052Bottom2()
  return getLocAccess("@Oubliette05Top4")
end

function Oubliette05ChainofSorcery()
  return getLocAccess("@Oubliette053Top")
end

function Oubliette053Top()
  return math.max(getAccess("@Oubliette05Bottom2"), getAccess("@Oubliette05Left"))
end

function Oubliette05AmuletGemStagnantBlightx30()
  return getLocAccess("@Oubliette05Top4")
end

function Oubliette05Top2()
  return math.max(getAccess("@Oubliette052Bottom1"), getAccess("@Oubliette052Bottom2"))
end

function Oubliette05Bottom2()
  return getLocAccess("@Oubliette053Top")
end

function Oubliette05Top3()
  return getLocAccess("@Oubliette072Bottom")
end

function Oubliette05Top1()
  return getLocAccess("@Oubliette051Bottom")
end

function Oubliette05Bottom1()
  return getLocAccess("@Oubliette071Top")
end

function Oubliette05StagnantBlightx100()
  return math.min(getAccess("@Oubliette05Top1"), CHARGE_A())
end

function Oubliette05Left()
  return math.max(getAccess("@Oubliette02Right1"), getAccess("@Aqueduct"))
end

function Oubliette05Right()
  return math.max(getAccess("@Oubliette06Left"), math.min(getAccess("@Oubliette06Bottom"), getAccess("hook")))
end

function Oubliette05Bottom3()
  return math.max(getAccess("@Oubliette03Top"), math.min(getAccess("@Oubliette03Right"), getAccess("hook")))
end

function Oubliette05Top4()
  return math.max(getAccess("@Oubliette052Bottom2"), math.min(getAccess("@Oubliette052Bottom1"), math.min(LEDGE_A(), getAccess("claws"), getAccess("hook"))))
end

function Oubliette06HoenirsDiaryI()
  return math.max(getAccess("@Cells"), getAccess("@Oubliette061Left"))
end

function Oubliette061Left()
  return math.max(getAccess("@Oubliette07Right1"), math.min(getAccess("@Oubliette07Bottom1"), math.max(getAccess("hook"), LEDGE_A())))
end

function Oubliette06ExecutionersGloves()
  return math.min(getAccess("@Oubliette062Bottom2"), getAccess("aquatic"))
end

function Oubliette062Bottom2()
  return math.max(getAccess("@Oubliette07Bottom2"), getAccess("@Oubliette07Bottom1"))
end

function Oubliette06ChainofSorcery()
  return getLocAccess("@Oubliette063Left1")
end

function Oubliette063Left1()
  return math.max(getAccess("@Oubliette07Left1"), math.min(getAccess("@Oubliette07Bottom1"), math.max(math.min(getAccess("hook"), math.max(LEDGE_A(), HORIZONTAL_A())), math.min(getAccess("silva"), getAccess("djump")))))
end

function Oubliette06StockadeStoneTabletFragment()
  return getLocAccess("@Oubliette064Top")
end

function Oubliette064Top()
  return math.max(getAccess("@Oubliette07Top"), math.min(getAccess("@Oubliette07Left1"), getAccess("unlock"), math.max(getAccess("hook"), math.min(getAccess("claws"), math.max(LEDGE3_A(), FULLSILVA_A())))))
end

function Oubliette06AmuletFragment()
  return getLocAccess("@Oubliette06Bottom")
end

function Oubliette06ChainofSorcery_1()
  return math.min(getAccess("@Oubliette06Bottom"), getAccess("hook"))
end

function Oubliette06StagnantBlightx10()
  return getLocAccess("@Oubliette06Bottom")
end

function Oubliette06Left()
  return math.max(getAccess("@Oubliette05Right"), math.min(getAccess("@Oubliette05Top4"), getAccess("hammer")))
end

function Oubliette06Right()
  return getLocAccess("@Oubliette07Left2")
end

function Oubliette06Bottom()
  return math.max(getAccess("@Oubliette10Top"), getAccess("@DarkChamber"))
end

function Oubliette07ForbiddenTextScrap()
  return getLocAccess("@Oubliette071Top")
end

function Oubliette071Top()
  return math.max(getAccess("@Oubliette05Bottom1"), getAccess("@Oubliette05Left"))
end

function Oubliette07HiddenTestSubjectFight()
  return getLocAccess("@Oubliette072Bottom")
end

function Oubliette072Bottom()
  return math.max(getAccess("@Oubliette05Top3"), getAccess("@Oubliette05Top1"))
end

function Oubliette07Right1()
  return math.max(getAccess("@Oubliette061Left"), getAccess("@Cells"))
end

function Oubliette07Left1()
  return getLocAccess("@Oubliette063Left1")
end

function Oubliette07Bottom2()
  return getLocAccess("@Oubliette062Bottom2")
end

function Oubliette07Top()
  return getLocAccess("@Oubliette064Top")
end

function Oubliette07Left2()
  return math.max(getAccess("@Oubliette06Right"), math.min(getAccess("@Oubliette06Bottom"), getAccess("hook")))
end

function Oubliette07Right2()
  return math.max(getAccess("@Oubliette13Left"), math.min(getAccess("@Oubliette13Right"), math.max(getAccess("hook"), math.min(LEDGE_A(), getAccess("claws"), HORIZONTAL_A()))))
end

function Oubliette07Bottom1()
  return math.max(getAccess("@Oubliette09Top"), getAccess("@Oubliette09Left"))
end

function Oubliette08FuriousBlightx30()
  return math.min(getAccess("hammer"), math.max(getAccess("@Oubliette08Top"), math.min(getAccess("@Oubliette08Right"), math.max(getAccess("hook"), LEDGE_A(), HORIZONTAL_A()))))
end

function Oubliette08FuriousBlightx30_1()
  return math.min(getAccess("@Oubliette08Left"), getAccess("hook"))
end

function Oubliette08Right()
  return math.max(getAccess("@Oubliette11Left2"), getAccess("@Oubliette11Left1"), getAccess("@Oubliette11Right1"), getAccess("@Oubliette11Top"), getAccess("@Oubliette11Right2"))
end

function Oubliette08Left()
  return math.max(getAccess("@Oubliette09Right"), math.min(getAccess("@Oubliette09Top"), getAccess("aquatic"), HORIZONTAL_A()))
end

function Oubliette08Top()
  return math.max(getAccess("@Oubliette13Bottom"), getAccess("@Oubliette13Right"))
end

function Oubliette09x2AmuletFragments()
  return math.min(getAccess("@Oubliette09Top"), getAccess("claws"))
end

function Oubliette09x2AmuletFragments_1()
  return math.min(getAccess("@Oubliette09Top"), getAccess("claws"))
end

function Oubliette09StagnantBlightx30()
  return math.min(getAccess("@Oubliette09Top"), getAccess("aquatic"))
end

function Oubliette09Right()
  return math.max(getAccess("@Oubliette08Left"), getAccess("@Oubliette08Right"), getAccess("@Oubliette08Top"))
end

function Oubliette09Left()
  return math.max(getAccess("@Oubliette10Right"), getAccess("@DarkChamber"))
end

function Oubliette09Top()
  return math.max(getAccess("@Oubliette07Bottom1"), getAccess("@Oubliette07Left1"), getAccess("@Oubliette07Left2"), getAccess("@Oubliette07Bottom2"), getAccess("@Oubliette07Right1"), getAccess("@Oubliette07Right2"))
end

function Oubliette10ExecutionersMissive()
  return math.max(getAccess("@DarkChamber"), getAccess("@Oubliette10Left1"), getAccess("@Oubliette10Right"), getAccess("@Oubliette10Left2"), getAccess("@Oubliette10Top"))
end

function Oubliette10Right()
  return math.max(getAccess("@Oubliette09Left"), math.min(getAccess("@Oubliette09Top"), getAccess("aquatic")))
end

function Oubliette10Left1()
  return math.max(getAccess("@Oubliette03Right"), math.min(getAccess("@Oubliette03Left"), getAccess("aquatic")), math.min(getAccess("@Oubliette03Top"), math.max(LEDGE_A(), getAccess("claws"), getAccess("aquatic"))))
end

function Oubliette10Left2()
  return getLocAccess("@Oubliette17Right")
end

function Oubliette10Top()
  return math.max(getAccess("@Oubliette06Bottom"), getAccess("@Oubliette06Right"), getAccess("@Oubliette06Left"))
end

function Oubliette11FuriousBlightx10()
  return math.max(math.min(getAccess("@Oubliette11Left1"), math.max(LEDGE_A(), getAccess("dash"), HORIZONTAL_A(), getAccess("hook"))), math.min(getAccess("@Oubliette11Left2"), getAccess("hook")))
end

function Oubliette11Right1()
  return math.max(getAccess("@Oubliette12Left"), getAccess("@Executioner"))
end

function Oubliette11Left2()
  return math.max(getAccess("@Oubliette08Right"), math.min(getAccess("@Oubliette08Left"), LEDGE_A()))
end

function Oubliette11Right2()
  return math.max(getAccess("@Oubliette14Left"), getAccess("@ExecutionGrounds"))
end

function Oubliette11Left1()
  return math.max(getAccess("@Oubliette13Right"), getAccess("@Oubliette13Left"))
end

function Oubliette11Bottom()
  return getLocAccess("@Oubliette132Top")
end

function Oubliette11Top()
  return getLocAccess("@Oubliette131Bottom")
end

function Oubliette12DarkExecutionerFight()
  return getLocAccess("@Oubliette12Left")
end

function Oubliette12Left()
  return math.max(getAccess("@Oubliette11Right1"), getAccess("@Oubliette11Left1"), getAccess("@Oubliette11Top"))
end

function Oubliette13AurasRing()
  return getLocAccess("@Oubliette131Bottom")
end

function Oubliette131Bottom()
  return math.max(getAccess("@Oubliette11Top"), math.min(getAccess("@Oubliette11Left1"), getAccess("claws"), math.max(FULLSILVA_A(), math.min(getAccess("hook"), math.max(HORIZONTAL_A(), LEDGE_A())))))
end

function Oubliette13AncientSoul()
  return getLocAccess("@Oubliette132Top")
end

function Oubliette132Top()
  return math.max(getAccess("@Oubliette11Bottom"), math.min(getAccess("@Oubliette11Left1"), getAccess("hammer")))
end

function Oubliette13ChainofSorcery()
  return math.min(getAccess("@Oubliette13Right"), math.max(math.min(getAccess("claws"), LEDGE_A()), LEDGE2_A(), getAccess("hook")))
end

function Oubliette13SlipofPaper()
  return getLocAccess("@Oubliette13Left")
end

function Oubliette13StagnantBlightx30()
  return getLocAccess("@Oubliette13Left")
end

function Oubliette13StagnantBlightx100()
  return math.min(getAccess("@Oubliette13Left"), CHARGE_A(), math.max(LEDGE_A(), HORIZONTAL_A(), getAccess("hook"), getAccess("dash"), getAccess("claws")))
end

function Oubliette13Bottom()
  return math.max(getAccess("@Oubliette08Top"), math.min(getAccess("@Oubliette08Right"), getAccess("hook")))
end

function Oubliette13Right()
  return math.max(getAccess("@Oubliette11Left1"), math.min(getAccess("@Oubliette11Left2"), getAccess("hook")), math.min(getAccess("@Oubliette11Right2"), math.max(HORIZONTAL_A(), LEDGE_A())))
end

function Oubliette13Left()
  return math.max(getAccess("@Oubliette07Right2"), getAccess("@Oubliette07Bottom1"))
end

function Oubliette14HoenirsDiaryII()
  return math.max(getAccess("@ExecutionGrounds"), getAccess("@Oubliette14Left"), getAccess("@Oubliette14Right"))
end

function Oubliette14Left()
  return math.max(getAccess("@Oubliette11Right2"), getAccess("@Oubliette11Left2"))
end

function Oubliette14Right()
  return math.max(getAccess("@Oubliette15Left"), getAccess("@Oubliette15Right"))
end

function Oubliette15defeatHoenir()
  return math.max(getAccess("@Oubliette15Left"), getAccess("@Oubliette15Right"))
end

function Oubliette15Left()
  return math.max(getAccess("@Oubliette14Right"), getAccess("@ExecutionGrounds"))
end

function Oubliette15Right()
  return math.max(getAccess("@Oubliette16Left"), getAccess("@Oubliette16Right"))
end

function Oubliette16PriestessWish()
  return getLocAccess("@Oubliette16Right")
end

function Oubliette16StagnantBlightx10()
  return getLocAccess("@Oubliette16Left")
end

function Oubliette16Left()
  return math.max(getAccess("@Oubliette15Right"), getAccess("@Oubliette15Left"))
end

function Oubliette16Right()
  return getLocAccess("@Outside01Left2")
end

function Oubliette17Right()
  return math.max(getAccess("@Oubliette10Left2"), math.min(getAccess("@DarkChamber"), CHARGE_A()))
end

function Oubliette17Bottom()
  return getLocAccess("@Swamp06Top")
end

function Outside01Right()
  return getLocAccess("@Outside02Left")
end

function Outside01Left1()
  return math.max(getAccess("@Outside03Right"), getAccess("@Outside03Top"))
end

function Outside01Left2()
  return math.max(getAccess("@Oubliette16Right"), math.min(getAccess("@Oubliette16Left"), math.max(math.min(getAccess("hook"), math.max(math.min(getAccess("sinner"), math.max(LEDGE_A(), getAccess("dash"), getAccess("dodge2"))), math.min(getAccess("silva"), math.max(getAccess("djump"), getAccess("dodge2"), math.min(getAccess("verboten"), getAccess("dash")))), math.min(getAccess("djump"), math.max(getAccess("dodge2"), getAccess("verboten"))))), math.min(getAccess("silva"), getAccess("djump"), math.max(getAccess("claws"), getAccess("verboten"), getAccess("dodge2"))))))
end

function Outside02Left()
  return math.max(getAccess("@Outside01Right"), getAccess("@Outside01Left1"), getAccess("@Outside01Left2"))
end

function Outside03KingoftheFirstAgesTornNoteI()
  return math.min(getAccess("@Outside03Right"), math.min(getAccess("claws"), math.max(LEDGE2_A(), math.min(LEDGE_A(), HORIZONTAL_A()), getAccess("verboten"))))
end

function Outside03KingoftheFirstAgesTornNoteII()
  return getLocAccess("@Grotto")
end

function Outside03NymphiliasRing()
  return math.min(getAccess("@Outside03Right"), getAccess("aquatic"))
end

function Outside03StagnantBlightx100()
  return getLocAccess("@Grotto")
end

function Outside03Right()
  return math.max(getAccess("@Outside01Left1"), math.min(getAccess("@Outside01Right"), getAccess("claws"), math.max(getAccess("djump"), getAccess("verboten"), LEDGE2_A())))
end

function Outside03Top()
  return math.max(getAccess("@Fort09Right"), math.min(getAccess("@Fort09Top1"), getAccess("claws")))
end

function Swamp04VerbotenChampionFight()
  return math.min(getAccess("@Swamp04Bottom"), getAccess("unlock"))
end

function Swamp04ChainofSorcery()
  return getLocAccess("@Swamp04Left")
end

function Swamp04Bottom()
  return math.max(getAccess("@Swamp05Top"), math.min(getAccess("@Swamp05Right"), math.max(LEDGE_A(), getAccess("claws"))))
end

function Swamp04Left()
  return math.max(getAccess("@Swamp3Right"), getAccess("@Swamp3Bottom"), getAccess("@Swamp3Top"))
end

function Swamp05FuriousBlightx100()
  return math.min(getAccess("@Swamp05Left"), getAccess("aquatic"))
end

function Swamp05Top()
  return math.max(getAccess("@Swamp04Bottom"), math.min(getAccess("@Swamp04Left"), LEDGE_A()))
end

function Swamp05Right()
  return math.max(getAccess("@Swamp06Left"), getAccess("@Lab2"))
end

function Swamp05Bottom()
  return getLocAccess("@Swamp07Right")
end

function Swamp05Left()
  return math.max(getAccess("@Swamp09Right2"), getAccess("@Swamp09Right1"))
end

function Swamp05StagnantBlightx30()
  return math.min(getAccess("@Swamp05Left"), getAccess("aquatic"))
end

function Swamp06VerbotenDomainNotice()
  return math.max(getAccess("@Lab2"), getAccess("@Swamp06Left"), getAccess("@Swamp06Top"))
end

function Swamp06HereticsMask()
  return getLocAccess("@Swamp06Top")
end

function Swamp06StagnantBlightx30()
  return getLocAccess("@Swamp06Top")
end

function Swamp06Left()
  return math.max(getAccess("@Swamp05Right"), getAccess("@Swamp05Top"), math.min(getAccess("@Swamp05Left"), math.max(LEDGE_A(), getAccess("claws"))))
end

function Swamp06Top()
  return math.max(getAccess("@Oubliette17Bottom"), math.min(getAccess("@Oubliette17Right"), math.min(CHARGE_A(), getAccess("hammer"), math.max(math.min(getAccess("dodge2"), getAccess("claws")), getAccess("hook")))))
end

function Swamp07AmuletFragment()
  return math.min(getAccess("@Swamp07Right"), getAccess("claws"))
end

function Swamp07CaliviasRing()
  return math.min(getAccess("@Swamp07Left"), math.min(getAccess("claws"), LEDGE_A()))
end

function Swamp07Bottom()
  return math.max(getAccess("@Swamp16Top"), getAccess("@Lab5"))
end

function Swamp07Right()
  return math.max(getAccess("@Swamp05Bottom"), math.min(getAccess("@Swamp05Left"), getAccess("aquatic"), CHARGE_A()))
end

function Swamp07Left()
  return math.max(getAccess("@Swamp08Right1"), math.min(getAccess("@Swamp08Right2"), math.max(getAccess("hook"), math.min(getAccess("claws"), math.max(getAccess("djump"), getAccess("verboten"), math.min(getAccess("silva"), getAccess("dodge2"))))), math.max(getAccess("djump"), HORIZONTAL_A())))
end

function Swamp07Top()
  return math.max(getAccess("@Swamp3Bottom"), getAccess("@Swamp3Top"), getAccess("@Swamp3Right"))
end

function Swamp08AmuletGem()
  return math.min(getAccess("@Swamp08Right2"), getAccess("aquatic"))
end

function Swamp08StagnantBlightx100()
  return math.min(getAccess("@Swamp08Right2"), getAccess("aquatic"))
end

function Swamp08FuriousBlightx100()
  return math.min(getAccess("@Swamp08Right2"), getAccess("aquatic"))
end

function Swamp08Right1()
  return getLocAccess("@Swamp07Left")
end

function Swamp08Right2()
  return math.max(getAccess("@Swamp15Left"), math.min(getAccess("@Swamp15Right"), LEDGE_A()))
end

function Swamp08Top()
  return math.max(getAccess("@Swamp14Bottom"), getAccess("@Swamp14Right"))
end

function Swamp09WeatheredNecklace()
  return math.min(getAccess("@Swamp09Right2"), math.max(LEDGE_A(), HORIZONTAL_A()))
end

function Swamp09StagnantBlightx30()
  return math.min(getAccess("@Swamp09Right1"), math.max(math.min(LEDGE_A(), HORIZONTAL_A()), LEDGE2_A()))
end

function Swamp09Bottom1()
  return math.max(getAccess("@Swamp13Top1"), math.min(getAccess("@Swamp13Bottom"), getAccess("claws"), LEDGE3_A()))
end

function Swamp09Right1()
  return math.max(getAccess("@Swamp3Left"), getAccess("@Swamp3Bottom"))
end

function Swamp09Bottom2()
  return getLocAccess("@Swamp13Top2")
end

function Swamp09Right2()
  return math.max(getAccess("@Swamp05Left"), getAccess("@Swamp05Right"))
end

function Swamp1FadensArchivesIII()
  return math.max(getAccess("@Lab1"), getAccess("@Swamp1Bottom"), getAccess("@Swamp1Left"))
end

function Swamp1Bottom()
  return math.max(getAccess("@Swamp3Top"), math.min(getAccess("@Swamp3Left"), LEDGE_A()))
end

function Swamp1Left()
  return math.max(getAccess("@Swamp2Right"), math.min(getAccess("@Swamp2Top"), math.max(getAccess("dash"), getAccess("dodge2"))))
end

function Swamp10FadensArchivesIV()
  return getLocAccess("@Swamp10Right")
end

function Swamp10StagnantBlightx30()
  return math.min(getAccess("@Lab3"), getAccess("aquatic"))
end

function Swamp10Right()
  return math.max(getAccess("@Swamp13Left"), math.min(getAccess("@Swamp13Top1"), getAccess("hammer")), math.min(getAccess("@Swamp13Top2"), CHARGE_A(), getAccess("hammer")))
end

function Swamp11AmuletFragment()
  return math.min(getAccess("@Swamp11Left"), math.max(math.min(LEDGE_A(), HORIZONTAL_A()), HORIZONTAL2_A(), math.min(getAccess("silva"), getAccess("djump"))))
end

function Swamp11BlightedAppendage()
  return getLocAccess("@Swamp11Left")
end

function Swamp11Bottom()
  return math.max(getAccess("@Swamp15Top"), math.min(getAccess("@Swamp15Right"), math.max(getAccess("verboten"), getAccess("djump"), math.min(getAccess("silva"), getAccess("dodge2")))))
end

function Swamp11Left()
  return math.max(getAccess("@Swamp14Right"), getAccess("@Swamp14Top"), math.min(getAccess("@Swamp14Bottom"), math.max(LEDGE_A(), getAccess("claws"), getAccess("hook"))))
end

function Swamp12PriestessWish()
  return math.min(getAccess("@Lab4"), getAccess("hammer"))
end

function Swamp12FadensArchivesII()
  return math.max(getAccess("@Swamp12Left"), getAccess("@Swamp12Bottom"), getAccess("@Swamp12TP"))
end

function Swamp12Left()
  return math.max(getAccess("@Swamp15Right"), math.min(getAccess("@Swamp15Left"), math.max(getAccess("claws"), getAccess("hook"))), getAccess("@Swamp15Top"))
end

function Swamp12Bottom()
  return getLocAccess("@Abyss04Top")
end

function Swamp13AmuletFragment()
  return getLocAccess("@Swamp13Top2")
end

function Swamp13StagnantBlightx30()
  return math.max(math.min(getAccess("@Swamp13Top1"), getAccess("hammer")), math.min(getAccess("@Swamp13Top2"), CHARGE_A(), getAccess("hammer")))
end

function Swamp13FuriousBlightx30()
  return math.min(getAccess("@Swamp13Bottom"), math.max(getAccess("hook"), getAccess("claws")))
end

function Swamp13Left()
  return math.max(getAccess("@Swamp10Right"), getAccess("@Lab3"))
end

function Swamp13Top1()
  return math.max(getAccess("@Swamp09Bottom1"), math.min(getAccess("@Swamp09Right1"), CHARGE_A()))
end

function Swamp13Top2()
  return math.max(getAccess("@Swamp09Bottom2"), getAccess("@Swamp09Right2"))
end

function Swamp13Bottom()
  return math.max(getAccess("@Swamp14Top"), math.min(getAccess("@Swamp14Bottom"), getAccess("claws"), LEDGE3_A()))
end

function Swamp14ChainofSorcery()
  return math.max(getAccess("@Swamp14Top"), math.min(getAccess("@Swamp14Bottom"), math.max(LEDGE_A(), getAccess("claws"), getAccess("hook"))))
end

function Swamp14StagnantBlightx100()
  return math.min(getAccess("@Swamp14Top"), math.max(LEDGE2_A(), getAccess("hook")))
end

function Swamp14Top()
  return math.max(getAccess("@Swamp13Bottom"), math.min(getAccess("hammer"), math.max(getAccess("@Swamp13Top1"), getAccess("@Swamp13Left"))))
end

function Swamp14Right()
  return math.max(getAccess("@Swamp11Left"), math.min(getAccess("@Swamp11Bottom"), math.max(getAccess("hook"), getAccess("claws"), LEDGE2_A()), math.max(getAccess("djump"), getAccess("verboten"), math.min(getAccess("silva"), getAccess("dodge2")))))
end

function Swamp14Bottom()
  return math.max(getAccess("@Swamp08Top"), math.min(getAccess("@Swamp08Right2"), LEDGE_A()))
end

function Swamp15IncompetentSinnerFight()
  return math.min(getAccess("@Swamp15Left"), getAccess("aquatic"), getAccess("heretic"))
end

function Swamp15StagnantBlightx30()
  return getLocAccess("@Swamp15Top")
end

function Swamp15Top()
  return math.max(getAccess("@Swamp11Bottom"), getAccess("@Swamp11Left"))
end

function Swamp15Left()
  return math.max(getAccess("@Swamp08Right2"), getAccess("@Swamp08Top"), getAccess("@Swamp08Right1"))
end

function Swamp15Right()
  return math.max(getAccess("@Swamp12Left"), getAccess("@Lab4"))
end

function Swamp16FadensArchivesI()
  return math.max(getAccess("@Swamp16Top"), getAccess("@Swamp16Left"))
end

function Swamp16Top()
  return math.max(getAccess("@Swamp07Bottom"), math.min(getAccess("@Swamp07Right"), getAccess("@Swamp07Left"), getAccess("@Swamp07Top")))
end

function Swamp16Left()
  return math.max(getAccess("@Swamp17Right"), getAccess("@Swamp17Left"))
end

function Swamp17Left()
  return math.max(getAccess("@Swamp18Right"), getAccess("@Faden"))
end

function Swamp17Right()
  return math.max(getAccess("@Swamp16Left"), getAccess("@Lab5"))
end

function Swamp18FindingMirielsBlightedLetter()
  return getLocAccess("@Faden")
end

function Swamp18FindingFadensArchivesV()
  return getLocAccess("@Faden")
end

function Swamp18Faden()
  return getLocAccess("@Swamp18Right")
end

function Swamp18StagnantBlightx800()
  return math.min(getAccess("@Faden"), getAccess("claws"), math.max(LEDGE3_A(), math.min(getAccess("sinner"), LEDGE2_A()), FULLSILVA_A(), math.min(getAccess("dodge2"), getAccess("silva"), getAccess("verboten")), math.min(HORIZONTAL2_A(), getAccess("verboten"), getAccess("djump"))))
end

function Swamp18Bottom()
  return getLocAccess("@Abyss01Top")
end

function Swamp18Right()
  return math.max(getAccess("@Swamp17Left"), getAccess("@Swamp17Right"))
end

function Swamp2FuriousBlightx10()
  return getLocAccess("@Swamp2Top")
end

function Swamp2FuriousBlightx30()
  return math.min(getAccess("@Swamp2Top"), math.max(getAccess("claws"), math.min(LEDGE_A(), getAccess("hook"))))
end

function Swamp2Right()
  return math.max(getAccess("@Swamp1Left"), getAccess("@Lab1"))
end

function Swamp2Top()
  return math.max(getAccess("@Forest09Left"), math.min(getAccess("@Forest09Top"), getAccess("aquatic"), math.max(LEDGE_A(), getAccess("claws"))))
end

function Swamp3AmuletFragment()
  return math.min(getAccess("@Swamp3Top"), LEDGE_A())
end

function Swamp3StagnantBlightx30()
  return getLocAccess("@Swamp3Top")
end

function Swamp3Left()
  return math.max(getAccess("@Swamp09Right1"), math.min(getAccess("@Swamp09Right2"), math.max(LEDGE_A(), HORIZONTAL_A())))
end

function Swamp3Top()
  return math.max(getAccess("@Swamp1Bottom"), getAccess("@Lab1"))
end

function Swamp3Right()
  return math.max(getAccess("@Swamp04Left"), math.min(getAccess("@Swamp04Bottom"), LEDGE_A()))
end

function Swamp3Bottom()
  return getLocAccess("@Swamp07Top")
end

function Village01Right()
  return math.max(getAccess("@Village02Left"), getAccess("@Village02Bottom"))
end

function Village01Bottom()
  return getLocAccess("@Crossroads")
end

function Village02AmuletFragment()
  return getLocAccess("@Village02Left")
end

function Village02StagnantBlightx30()
  return math.min(getAccess("@Village02Left"), math.max(math.min(getAccess("djump"), math.max(getAccess("silva"), getAccess("verboten"))), math.min(math.max(getAccess("djump"), getAccess("silva")), HORIZONTAL_A()), getAccess("hook")))
end

function Village02StagnantBlightx10()
  return math.min(getAccess("@Village02Left"), math.max(LEDGE2_A(), math.min(getAccess("silva"), getAccess("dodge2")), math.min(getAccess("hook"), math.max(LEDGE_A(), getAccess("claws")))))
end

function Village02Right()
  return math.max(getAccess("@Village03Bottom1"), math.min(getAccess("@Village03Right"), math.max(LEDGE_A(), HORIZONTAL_A(), getAccess("hook"), getAccess("dash"))))
end

function Village02Left()
  return math.max(getAccess("@Village01Right"), getAccess("@Village01Bottom"))
end

function Village02Bottom()
  return math.max(getAccess("@Village13Left"), getAccess("@Village13Right"))
end

function Village03AmuletFragment()
  return math.min(getAccess("hammer"), math.max(math.min(getAccess("@Village03Right"), math.max(LEDGE_A(), HORIZONTAL_A(), getAccess("hook"), getAccess("dash"))), math.min(getAccess("@Village03Bottom1"), math.max(LEDGE_A(), getAccess("claws")))))
end

function Village03BrokenMusicBox()
  return math.min(getAccess("@Village03Right"), math.max(getAccess("claws"), LEDGE_A(), HORIZONTAL_A(), getAccess("hook"), getAccess("dash")))
end

function Village03StagnantBlightx10()
  return math.max(math.min(getAccess("@Village03Right"), math.max(LEDGE_A(), HORIZONTAL_A(), getAccess("hook"), getAccess("dash"))), math.min(getAccess("@Village03Bottom1"), math.max(LEDGE_A(), getAccess("claws"))))
end

function Village03FuriousBlightx10()
  return math.min(getAccess("hammer"), math.max(math.min(getAccess("@Village03Right"), math.max(LEDGE_A(), HORIZONTAL_A(), getAccess("hook"), getAccess("dash"))), math.min(getAccess("@Village03Bottom1"), math.max(LEDGE_A(), getAccess("claws")))))
end

function Village03Bottom1()
  return math.max(getAccess("@Village02Right"), getAccess("@Village02Bottom"), math.min(getAccess("@Village02Left"), math.max(LEDGE_A(), getAccess("claws"))))
end

function Village03Right()
  return math.max(getAccess("@Village05Left"), getAccess("@CollapsedShack"))
end

function Village03Bottom2()
  return math.max(getAccess("@Village13Top"), math.min(getAccess("@Village13Right"), LEDGE_A()))
end

function Village04WesternMerchantFight()
  return getLocAccess("@Village041Bottom")
end

function Village041Bottom()
  return math.max(getAccess("@Village04Top"), getAccess("@Village04Right"))
end

function Village04AmuletFragment()
  return getLocAccess("@Village04Top")
end

function Village04BloodstainedRibbon()
  return math.min(getAccess("@Village04Right"), math.max(math.min(getAccess("hook"), math.max(LEDGE_A(), getAccess("claws"))), math.min(LEDGE_A(), HORIZONTAL_A()), LEDGE2_A(), math.min(LEDGE_A(), getAccess("claws"))))
end

function Village04Top()
  return getLocAccess("@Village041Bottom")
end

function Village04StagnantBlightx10()
  return getLocAccess("@Village04Top")
end

function Village04Right()
  return math.max(getAccess("@Village05Top"), getAccess("@CollapsedShack"))
end

function Village05TrueBelieversNote()
  return math.max(getAccess("@CollapsedShack"), getAccess("@Village05Top"), getAccess("@Village05Left"), getAccess("@Village05Right"))
end

function Village05Top()
  return math.max(getAccess("@Village04Right"), getAccess("@Village04Top"))
end

function Village05Left()
  return math.max(getAccess("@Village03Right"), math.min(getAccess("@Village03Bottom1"), math.max(LEDGE_A(), getAccess("claws"))))
end

function Village05Right()
  return math.max(getAccess("@Village06Left"), math.min(getAccess("@Village06Right2"), LEDGE_A(), getAccess("claws")))
end

function Village06AmuletFragment()
  return getLocAccess("@Village06Left")
end

function Village06StagnantBlightx30()
  return math.min(getAccess("@Village06Right2"), math.max(LEDGE2_A(), math.min(LEDGE_A(), getAccess("claws")), math.min(math.max(getAccess("silva"), getAccess("djump")), HORIZONTAL_A()), math.min(getAccess("verboten"), getAccess("sinner"))))
end

function Village06x2StagnantBlightsx10()
  return math.min(getAccess("@Village06Left"), getAccess("hammer"), math.max(LEDGE2_A(), math.min(LEDGE_A(), getAccess("claws")), getAccess("hook")))
end

function Village06FuriousBlightx10()
  return math.min(getAccess("@Village06Left"), math.max(LEDGE_A(), getAccess("hook")))
end

function Village06FuriousBlightx10_1()
  return math.min(getAccess("@Village06Left"), getAccess("hammer"), math.max(LEDGE_A(), getAccess("hook")))
end

function Village06Left()
  return math.max(getAccess("@Village05Right"), getAccess("@CollapsedShack"))
end

function Village06Right1()
  return math.max(getAccess("@Village07Left"), getAccess("@Village07Right"))
end

function Village06Bottom()
  return getLocAccess("@Village12Top")
end

function Village06Right2()
  return math.max(getAccess("@Village08Left"), getAccess("@Village08Right"))
end

function Village07ChainofSorcery()
  return getLocAccess("@Village07Left")
end

function Village07StagnantBlightx10()
  return getLocAccess("@Village07Left")
end

function Village07FuriousBlightx10()
  return math.min(getAccess("@Village07Left"), math.max(getAccess("hook"), LEDGE2_A()))
end

function Village07Left()
  return math.max(getAccess("@Village06Right1"), math.min(getAccess("@Village06Right2"), math.max(LEDGE_A(), HORIZONTAL_A())))
end

function Village07Right()
  return math.max(getAccess("@Village09Left1"), getAccess("@BridgeHead"))
end

function Village07Top()
  return getLocAccess("@Village14Bottom")
end

function Village08HeadlessDefenderFight()
  return getLocAccess("@Village08Left")
end

function Village08AmuletFragment()
  return getLocAccess("@Village08Left")
end

function Village08StagnantBlightx10()
  return math.min(getAccess("@Village08Left"), getAccess("aquatic"))
end

function Village08Left()
  return math.max(getAccess("@Village06Right2"), math.min(getAccess("@Village06Left"), math.max(getAccess("hook"), LEDGE_A())), getAccess("@Village06Right1"))
end

function Village08Right()
  return math.max(getAccess("@Village09Left2"), getAccess("@BridgeHead"))
end

function Village09AdherentsLetter()
  return getLocAccess("@BridgeHead")
end

function Village09HamletRequestI()
  return math.max(getAccess("@BridgeHead"), getAccess("@Village09Right1"), getAccess("@Village09Right2"), getAccess("@Village09Left1"), getAccess("@Village09Left2"))
end

function Village09Right1()
  return getLocAccess("@Gerrod")
end

function Village09Right2()
  return math.max(getAccess("@Village15Left"), math.min(getAccess("@Village15Right"), getAccess("aquatic")))
end

function Village09Left1()
  return math.max(getAccess("@Village07Right"), getAccess("@Village07Left"), getAccess("@Village07Top"))
end

function Village09Left2()
  return math.max(getAccess("@Village08Right"), getAccess("@Village08Left"))
end

function Village10defeatGerrod()
  return math.max(getAccess("@Village10Left"), getAccess("@Village10Right"))
end

function Village10Left()
  return math.max(getAccess("@Village09Right1"), getAccess("@BridgeHead"))
end

function Village10Right()
  return math.max(getAccess("@Village11Left"), math.min(getAccess("@Village11Right"), getAccess("claws")))
end

function Village11PriestessWish()
  return math.min(getAccess("@Village111Bottom"), getAccess("hammer"))
end

function Village111Bottom()
  return math.max(getAccess("@Village11Top"), getAccess("@Village11Left"))
end

function Village11HamletScrawl()
  return getLocAccess("@Village11Left")
end

function Village11HamletRequestII()
  return getLocAccess("@Village11Left")
end

function Village11Top()
  return getLocAccess("@Village111Bottom")
end

function Village11FuriousBlightx10()
  return getLocAccess("@Village11Left")
end

function Village11Left()
  return getLocAccess("@Gerrod")
end

function Village11Right()
  return math.max(getAccess("@Castle01Left"), getAccess("@Dog"))
end

function Village12StagnantBlightx10()
  return getLocAccess("@Village12Left1")
end

function Village12Top()
  return math.max(getAccess("@Village06Bottom"), math.min(getAccess("@Village06Left"), getAccess("hammer")))
end

function Village12Left1()
  return math.max(getAccess("@Village13Right"), getAccess("@Village13Top"))
end

function Village12Right()
  return getLocAccess("@BottomOfTheWell")
end

function Village12Left2()
  return getLocAccess("@Village16Right")
end

function Village13AmuletGem()
  return math.min(getAccess("@Village13Right"), math.max(LEDGE2_A(), math.min(LEDGE_A(), math.max(getAccess("dash"), HORIZONTAL_A()))))
end

function Village13ChainofSorcery()
  return getLocAccess("@Village13Right")
end

function Village13GiantsRing()
  return math.min(getAccess("@Village13Left"), getAccess("aquatic"))
end

function Village13StagnantBlightx10()
  return getLocAccess("@Village13Left")
end

function Village13Top()
  return math.max(getAccess("@Village03Bottom2"), math.min(getAccess("@Village03Right"), getAccess("hammer")))
end

function Village13Left()
  return math.max(getAccess("@Village02Bottom"), getAccess("@Village02Right"))
end

function Village13Right()
  return math.max(getAccess("@Village12Left1"), math.min(getAccess("@Village12Right"), getAccess("@Village12Top")))
end

function Village14CliffsideHamletElderFight()
  return math.min(getAccess("@Village14Bottom"), math.max(LEDGE_A(), getAccess("hook")))
end

function Village14StagnantBlightx30()
  return math.min(getAccess("@Elder"), math.min(getAccess("hammer"), math.max(getAccess("hook"), math.min(LEDGE_A(), getAccess("sinner")), math.min(getAccess("silva"), math.max(getAccess("djump"), getAccess("dodge2"))), math.min(getAccess("verboten"), math.max(getAccess("dash"), getAccess("claws")), math.max(getAccess("silva"), getAccess("djump"))))))
end

function Village14FuriousBlightx30()
  return math.min(getAccess("@Elder"), math.min(getAccess("hammer"), math.max(getAccess("hook"), LEDGE3_A(), FULLSILVA_A(), math.min(getAccess("claws"), LEDGE_A()))))
end

function Village14Bottom()
  return math.max(getAccess("@Village07Top"), math.min(getAccess("@Village07Right"), math.max(getAccess("hook"), math.min(LEDGE_A(), getAccess("sinner")), math.min(getAccess("djump"), math.max(getAccess("dodge2"), getAccess("silva"), getAccess("verboten"))), math.min(getAccess("dodge2"), math.max(getAccess("silva"), math.min(getAccess("verboten"), getAccess("dash")))))))
end

function Village15StagnantBlightx800()
  return math.max(math.min(getAccess("@Village15Left"), getAccess("aquatic"), math.max(math.min(getAccess("claws"), math.max(math.min(getAccess("sinner"), math.max(getAccess("djump"), getAccess("verboten"))), math.min(getAccess("dodge2"), getAccess("silva")), math.min(LEDGE2_A(), HORIZONTAL_A()))), math.min(getAccess("hook"), math.max(LEDGE2_A(), math.min(getAccess("claws"), math.max(LEDGE_A(), HORIZONTAL_A())))))), math.min(getAccess("@Village15Right"), getAccess("claws"), getAccess("djump"), getAccess("silva")))
end

function Village15StagnantBlightx30()
  return math.min(getAccess("@Village15Right"), getAccess("aquatic"))
end

function Village15FuriousBlightx10()
  return math.min(getAccess("@Village15Left"), getAccess("aquatic"))
end

function Village15Left()
  return math.max(getAccess("@Village09Right2"), math.min(getAccess("@BridgeHead"), getAccess("aquatic")))
end

function Village15Right()
  return math.max(getAccess("@Fort01Left2"), math.min(getAccess("@Fort01Right"), getAccess("aquatic")))
end

function Village16FadensLetter()
  return getLocAccess("@Village16Right")
end

function Village16HamletStoneTabletFragment()
  return getLocAccess("@Village16Right")
end

function Village16Right()
  return math.max(getAccess("@Village12Left2"), math.min(getAccess("@Village12Left1"), CHARGE_A()))
end

function Cave11Right2()
  return getLocAccess("@Cave18Left2")
end

function Church01Top()
  return getLocAccess("@Church09Bottom2")
end

function Swamp12TP()
  return getLocAccess("@Abyss05Teleport")
end

function Castle18Top()
  return getLocAccess("@Castle16BottomLeft")
end

function Church13LuminantAegisCurio()
  return math.min(getAccess("@Church13Top"), math.max(getAccess("tabletAP", 7), math.min(getAccess("tabletch"), getAccess("tabletwt"), getAccess("tabletcc"), getAccess("tabletsa"), getAccess("tabletts"), getAccess("tabletrc"), getAccess("tabletvd"))))
end

