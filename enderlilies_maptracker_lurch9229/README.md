# EnderLiliesTracker
PopTracker Package for Ender Lilies: Quietus of the Knights Randomizer, which can be downloaded here https://github.com/Trexounay/EnderLilies.Randomizer/releases
PopTracker Program: https://github.com/black-sliver/PopTracker/releases

NOW WITH AUTO-TRACKING!!!!

This package contains a Map tracker, which features all the areas of the game, a world map variant, which has all locations on a single map, and 2 items only variants.

Entrance Randomization variant coming in the future 

Logic for the Verboten Domain that involves going through blight is currently set to needing mask, or having 3 priestess' wishes, spellbound anklet, 150+hp (this includes health boosts from Soiled Prayer Beads and Royal Aegis Curio (not the unused health relic)) and 5 relic slots, or having 150+hp, holy water, spellbound anklet and 6 relic slots along with movement needed to each check or 120HP guardians wings (dodge upgrade) and dash (from Julius) with 3 wishes.

Logic to get through the Abyss Hell Run is set to needing 300+hp, spellbound anklet, ruined witches book, 6 wishes and 7 relic slots. This needs more vigorus testing so please let me know if you find over ways to get through gauntlet. Thanks.

Please address issues to this repository, or contact me on Discord Lurch9229#4849.

I hope you enjoy using this tracker alongside your rando playthroughs. Good Luck, Have Fun everyone.

How to use Poptracker

1. Add the Ender Lilies Tracker .zip (packed) into your poptracker\packs folder
2. Click on the folder in the top left and navigate to the Ender Lilies tracker and select the variant you want to use (more infomation below)
3. Next we need to select our settings. Click on the settings option next to UAT. This will bring up a popout with settings to select from including shuffles and Starting Location.
4. You should now have a bunch of red and green boxes all over the maps. Lets talk about those. Green are locations you can reach with your current itemset. Red shows areas you can not reach. Sometimes you may see Orange boxes. These show that you can get some items in a given area but not all of them. There is also a Yellow box which is used for showing locations you can reach by breaking logic, but currently the tracker does not account for these yet.
5. After you have defeated some bosses such as Siegrid, Gerrod and Ulv it is important to check these off as done. Code is written to unlock access past these bosses and currently map locations do not update automatically.
6. If you want to use the auto-tracker feature then be sure to check the box in livesplit to send items to poptracker. This allows the game and poptracker to communicate item pickups in real-time and update gained items automatically. If the autotracker and game are connected the UAT displayed will turn from red to green.
7. Poptracker has a broadcast view designed to be used as a display on streams and videos. You can open this popout window by click the button next to the settings button in the top left corner.

Variants currently available
Items Only - Displays no maps and shows all obtainable items.
Items Only Minimal - Only displays logical items needed for any playthrough.
Map Tracker -  The full works. Contains all obtainable items and all maps in detail to help learn locations in rooms.
World Map - Only contains the world map and all obtainable items.
Map and Minimal Items - Contains all maps with the minimal item layout.
World Map Minimal -  Contains only the world map and minimal items layout.
Maps Only - Contains no items but displays larger maps (can still be used in conjuction with autotracker and broadcast view).

Editing the Broadcast View
Sometimes you may want to change the broadcast layout to better fit your stream/video layout. This can be achieved by editing the layouts found within the .zip.
Here is a step by step giude on how each layout differs and how to change items shown and move them around. Please note that Poptracker has limitations of how layouts place items so experiment until you find the best fit
1. Unzip the Ender Lilies Tracker into the poptracker\packs folder.
1a. I recommend you first edit the manifest.json package_version to 1.x.x.dev so you will know which package is the one you are editing on poptracker
2. Navigate to poptracker\packs\enderlilies_maptracker_lurch9229\layouts or poptracker\packs\enderlilies_maptracker_lurch9229\minimal_layout
3. If you are using a variant that is not minimal then you want to edit the broadcast_horizontal.json. If you are editing a minimal layout then you want to change the broadcast_minimal.json
4. This may look daunting but I assure you it is not. Here we have a block that tells the broadcast view what you show. Lets use the items_only.json as an example. (ex1)
    The 1st couple of lines you may want to take interest in is item_margin and item_size. Margin is used to tell how much of a gap to put between each item, while Size can be used to change the display size of displayed icons
5. The rows are the most important part you want to change in this file. The name codes used for each item can be found in enderlilies_maptracker\items inside the json for each item type. So if we wanted to change the position of Silva to the bottom left we would go to row 9 and place "silva" at the start replacing "eldred". That is all well and good but what if you want gaps between items. Well we can just use an empty item to simulate an item being in that place. Using "" will act as said empty item. So let us place 3 rows with 6 items in different locations. (ex3)

So we now have a broadcast view that will be in a 3x6 layout. From here we can simply save the .json, restart poptracker and see out results https://i.imgur.com/gza5h6T.png 
If you have any other questions about layouts feel free to message me.

ex1
{
  "item_grid_broadcast": 
  {
    "type": "container",
    "content": 
    [
      {
        "type": "itemgrid",
        "h_alignment": "left",
        "item_margin": "5,5,5,5",
		"item_size": "50,50",
        "rows": 
        [
          [ "umbral", "gerrod", "silva", "julius", "ulv", "eleine", "hoenir", "", "", "pray", "jump", "dodge", "paddle", "switch"],
          [ "faden", "siegrid", "cliffyouth", "headless", "merchant", "maiden", "archer", "", "", "djump", "hammer", "aquatic", "dodge2", "rites"],
          [ "elderkeeper", "fungal", "floral", "sentinel", "testsubject", "executioner", "sinner", "", "", "hook", "claws", "dash", "lance", "unlock"],
          [ "", "verboten", "cliffelder", "chief", "royalaegis", "fellwyrm", "", "", "", "jewel", "gem", "fragment", "relicslot", "wish"],
          [ "prayerbeads", "royalcrest", "music", "familiar", "snowdrop", "appendage", "giant"],
          [ "dragonclaw", "ornament", "executionergloves", "crown", "weatherneck", "immortal", "manisa", "", "", "", "tabletch", "tabletwt", "tabletcc"],
          [ "aura", "kilteus", "caliva", "statue", "doll", "earrings", "holywater", "", "", "", "tabletsa", "tabletts", "tabletrc"],
          [ "nymphilia", "spellbound", "plume", "witchbook", "ribbon", "blightblade", "heretic", "", "", "", "ch0", "tabletvd", "Bend"],
          [ "eldred", "ricorus", "luminantcurio", "heirloom", "phantom", "fretia", "iris"]
        ]
      }
    ]
  },
  
  "tracker_broadcast": 
  {
    "type": "array",
    "drop_shadow": true,
    "orientation": "horizontal",
    "margin": "0,0",
    "content":
    [
      {
        "type": "layout",
        "key": "item_grid_broadcast"
      }
    ]
  }
}

ex2
{
  "item_grid_broadcast": 
  {
    "type": "container",
    "content": 
    [
      {
        "type": "itemgrid",
        "h_alignment": "left",
        "item_margin": "5,5,5,5",
		"item_size": "50,50",
        "rows": 
        [
          [ "umbral", "gerrod", "eldred", "julius", "ulv", "eleine", "hoenir", "", "", "pray", "jump", "dodge", "paddle", "switch"],
          [ "faden", "siegrid", "cliffyouth", "headless", "merchant", "maiden", "archer", "", "", "djump", "hammer", "aquatic", "dodge2", "rites"],
          [ "elderkeeper", "fungal", "floral", "sentinel", "testsubject", "executioner", "sinner", "", "", "hook", "claws", "dash", "lance", "unlock"],
          [ "", "verboten", "cliffelder", "chief", "royalaegis", "fellwyrm", "", "", "", "jewel", "gem", "fragment", "relicslot", "wish"],
          [ "prayerbeads", "royalcrest", "music", "familiar", "snowdrop", "appendage", "giant"],
          [ "dragonclaw", "ornament", "executionergloves", "crown", "weatherneck", "immortal", "manisa", "", "", "", "tabletch", "tabletwt", "tabletcc"],
          [ "aura", "kilteus", "caliva", "statue", "doll", "earrings", "holywater", "", "", "", "tabletsa", "tabletts", "tabletrc"],
          [ "nymphilia", "spellbound", "plume", "witchbook", "ribbon", "blightblade", "heretic", "", "", "", "ch0", "tabletvd", "Bend"],
          [ "silva", "ricorus", "luminantcurio", "heirloom", "phantom", "fretia", "iris"]
        ]
      }
    ]
  },
  
  "tracker_broadcast": 
  {
    "type": "array",
    "drop_shadow": true,
    "orientation": "horizontal",
    "margin": "0,0",
    "content":
    [
      {
        "type": "layout",
        "key": "item_grid_broadcast"
      }
    ]
  }
}

ex3
{
  "item_grid_broadcast": 
  {
    "type": "container",
    "content": 
    [
      {
        "type": "itemgrid",
        "h_alignment": "left",
        "item_margin": "5,5,5,5",
		"item_size": "50,50",
        "rows": 
        [
          ["", "", "djump", "", "hammer", ""],
          ["umbral", "", "", "hook", "", ""],
          ["", "fretia", "", "", "", "champion"]
        ]
      }
    ]
  },
  
  "tracker_broadcast": 
  {
    "type": "array",
    "drop_shadow": true,
    "orientation": "horizontal",
    "margin": "0,0",
    "content":
    [
      {
        "type": "layout",
        "key": "item_grid_broadcast"
      }
    ]
  }
}