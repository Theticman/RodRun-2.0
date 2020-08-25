# Kill previous villagers
kill @e[tag=Lobby_option_villager]
kill @e[tag=Lobby_option_armor_stand]
kill @e[tag=Lobby_option_aec]

kill @e[tag=Villager2]
kill @e[tag=Villager1]
kill @e[tag=Villager1_1]
kill @e[tag=Villager3]
kill @e[tag=Villager4]

# Summon new villager
# Map villager
summon villager 23 21 -16 {Rotation:[180F],CustomName:'[{"text":"♦","color":"dark_green"},{"text":" Map ","color":"white"},{"text":"♦","color":"darj_green"}]',Silent:1b,Invulnerable:0b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b,Willing:0b,Tags:["Lobby_option_villager","option_map"],VillagerData:{level:5,profession:"minecraft:nitwit",type:"minecraft:snow"}}
summon armor_stand 22.5 22 -16 {NoGravity:1b,Rotation:[180f],Invulnerable:1b,Small:1b,Invisible:1b,PersistenceRequired:1b,Tags:["Villager1_1","Lobby_option_armor_stand"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:paper",Count:1b}]}
summon armor_stand 24.5 22 -16 {NoGravity:1b,Rotation:[180f],Invulnerable:1b,Small:1b,Invisible:1b,PersistenceRequired:1b,Tags:["Villager1","Lobby_option_armor_stand"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:paper",Count:1b}]}
# Live villager
summon villager 28 21 -21 {Rotation:[90F],CustomName:'[{"text":"♦","color":"dark_green"},{"text":" Lives ","color":"white"},{"text":"♦","color":"dark_green"}]',Silent:1b,Invulnerable:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b,Willing:0b,Tags:["Lobby_option_villager","option_live"],VillagerData:{level:5,profession:"minecraft:nitwit",type:"minecraft:desert"}}
# Powerups villager
summon villager 18 21 -21 {Rotation:[-90F],CustomName:'[{"text":"♦","color":"dark_green"},{"text":" Powerups ","color":"white"},{"text":"♦","color":"dark_green"}]',Silent:1b,Invulnerable:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b,Willing:0b,Tags:["Lobby_option_villager","option_powerups"],VillagerData:{level:5,profession:"minecraft:nitwit",type:"minecraft:swamp"}}
# Player name
summon villager 28 21 -25 {Rotation:[90F],CustomName:'[{"text":"♦","color":"dark_green"},{"text":" Nametag ","color":"white"},{"text":"♦","color":"dark_green"}]',Silent:1b,Invulnerable:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b,Willing:0b,Tags:["Lobby_option_villager","option_player_name"],VillagerData:{level:5,profession:"minecraft:nitwit",type:"minecraft:plains"}}
# Deathmatch
summon villager 18 21 -25 {Rotation:[-90F],CustomName:'[{"text":"♦","color":"dark_green"},{"text":" Sudden death ","color":"white"},{"text":"♦","color":"dark_green"}]',Silent:1b,Invulnerable:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b,Willing:0b,Tags:["Lobby_option_villager","option_deathmatch"],VillagerData:{level:5,profession:"minecraft:nitwit",type:"minecraft:plains"}}
# AFK glowing
summon villager 28 21 -29 {Rotation:[90F],CustomName:'[{"text":"♦","color":"dark_green"},{"text":" AFK glowing ","color":"white"},{"text":"♦","color":"dark_green"}]',Silent:1b,Invulnerable:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b,Willing:0b,Tags:["Lobby_option_villager","option_afk_glowing"],VillagerData:{level:5,profession:"minecraft:nitwit",type:"minecraft:plains"}}
# Game time
summon villager 18 21 -29 {Rotation:[-90F],CustomName:'[{"text":"♦","color":"dark_green"},{"text":" Time ","color":"white"},{"text":"♦","color":"dark_green"}]',Silent:1b,Invulnerable:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b,Willing:0b,Tags:["Lobby_option_villager","option_time"],VillagerData:{level:5,profession:"minecraft:nitwit",type:"minecraft:plains"}}

# Summon new area effect cloud
# Map option
execute if score !Map Options matches 1 run summon area_effect_cloud 23 23 -16 {PersistenceRequired:1b,CustomNameVisible:1b,Duration:2147483647,CustomName:'[{"text":"["},{"text":" Random ","color":"dark_purple","bold":"true"},{"text":"]"}]',Tags:["Lobby_option_aec","option_map"]}
execute if score !Map Options matches 2 run summon area_effect_cloud 23 23 -16 {PersistenceRequired:1b,CustomNameVisible:1b,Duration:2147483647,CustomName:'[{"text":"["},{"text":" Hostel ","color":"blue","bold":"true"},{"text":"]"}]',Tags:["Lobby_option_aec","option_map"]}
execute if score !Map Options matches 3 run summon area_effect_cloud 23 23 -16 {PersistenceRequired:1b,CustomNameVisible:1b,Duration:2147483647,CustomName:'[{"text":"["},{"text":" Wharehouse ","color":"gray","bold":"true"},{"text":"]"}]',Tags:["Lobby_option_aec","option_map"]}
execute if score !Map Options matches 4 run summon area_effect_cloud 23 23 -16 {PersistenceRequired:1b,CustomNameVisible:1b,Duration:2147483647,CustomName:'[{"text":"["},{"text":" Whitehouse ","color":"white","bold":"true"},{"text":"]"}]',Tags:["Lobby_option_aec","option_map"]}
execute if score !Map Options matches 5 run summon area_effect_cloud 23 23 -16 {PersistenceRequired:1b,CustomNameVisible:1b,Duration:2147483647,CustomName:'[{"text":"["},{"text":" Egypte ","color":"gold","bold":"true"},{"text":"]"}]',Tags:["Lobby_option_aec","option_map"]}
execute if score !Map Options matches 6 run summon area_effect_cloud 23 23 -16 {PersistenceRequired:1b,CustomNameVisible:1b,Duration:2147483647,CustomName:'[{"text":"["},{"text":"Cy","color":"dark_purple","bold":"true"},{"text":"ber","color":"gold","bold":"true"},{"text":"]"}]',Tags:["Lobby_option_aec","option_map"]}
execute if score !Map Options matches 7 run summon area_effect_cloud 23 23 -16 {PersistenceRequired:1b,CustomNameVisible:1b,Duration:2147483647,CustomName:'[{"text":"["},{"text":"Tr","color":"blue","bold":"true"},{"text":"on","color":"gold","bold":"true"},{"text":"]"}]',Tags:["Lobby_option_aec","option_map"]}

# Live option
execute if score !Live Options matches 1 run summon area_effect_cloud 28 23 -21 {PersistenceRequired:1b,CustomNameVisible:1b,Duration:2147483647,CustomName:'[{"text":"["},{"text":" Random ","color":"dark_purple","bold":"true"},{"text":"]"}]',Tags:["Lobby_option_aec","option_live"]}
execute if score !Live Options matches 2 run summon area_effect_cloud 28 23 -21 {PersistenceRequired:1b,CustomNameVisible:1b,Duration:2147483647,CustomName:'[{"text":"["},{"text":" ❤ ","color":"dark_red","bold":"true"},{"text":"]"}]',Tags:["Lobby_option_aec","option_live"]}
execute if score !Live Options matches 3 run summon area_effect_cloud 28 23 -21 {PersistenceRequired:1b,CustomNameVisible:1b,Duration:2147483647,CustomName:'[{"text":"["},{"text":" ❤❤ ","color":"dark_red","bold":"true"},{"text":"]"}]',Tags:["Lobby_option_aec","option_live"]}
execute if score !Live Options matches 4 run summon area_effect_cloud 28 23 -21 {PersistenceRequired:1b,CustomNameVisible:1b,Duration:2147483647,CustomName:'[{"text":"["},{"text":" ❤❤❤ ","color":"dark_red","bold":"true"},{"text":"]"}]',Tags:["Lobby_option_aec","option_live"]}
execute if score !Live Options matches 5 run summon area_effect_cloud 28 23 -21 {PersistenceRequired:1b,CustomNameVisible:1b,Duration:2147483647,CustomName:'[{"text":"["},{"text":" ❤❤❤❤ ","color":"dark_red","bold":"true"},{"text":"]"}]',Tags:["Lobby_option_aec","option_live"]}
execute if score !Live Options matches 6 run summon area_effect_cloud 28 23 -21 {PersistenceRequired:1b,CustomNameVisible:1b,Duration:2147483647,CustomName:'[{"text":"["},{"text":" ❤❤❤❤❤ ","color":"dark_red","bold":"true"},{"text":"]"}]',Tags:["Lobby_option_aec","option_live"]}
# Powerups option
execute if score !Powerups Options matches 1 run summon area_effect_cloud 18 23 -21 {PersistenceRequired:1b,CustomNameVisible:1b,Duration:2147483647,CustomName:'[{"text":"["},{"text":" Random ","color":"dark_purple","bold":"true"},{"text":"]"}]',Tags:["Lobby_option_aec","option_powerups"]}
execute if score !Powerups Options matches 2 run summon area_effect_cloud 18 23 -21 {PersistenceRequired:1b,CustomNameVisible:1b,Duration:2147483647,CustomName:'[{"text":"["},{"text":" ON ","color":"green","bold":"true"},{"text":"]"}]',Tags:["Lobby_option_aec","option_powerups"]}
execute if score !Powerups Options matches 3 run summon area_effect_cloud 18 23 -21 {PersistenceRequired:1b,CustomNameVisible:1b,Duration:2147483647,CustomName:'[{"text":"["},{"text":" OFF ","color":"red","bold":"true"},{"text":"]"}]',Tags:["Lobby_option_aec","option_powerups"]}
# Player name
execute if score !Player_name Options matches 1 run summon area_effect_cloud 28 23 -25 {PersistenceRequired:1b,CustomNameVisible:1b,Duration:2147483647,CustomName:'[{"text":"["},{"text":" Random ","color":"dark_purple","bold":"true"},{"text":"]"}]',Tags:["Lobby_option_aec","option_player_name"]}
execute if score !Player_name Options matches 2 run summon area_effect_cloud 28 23 -25 {PersistenceRequired:1b,CustomNameVisible:1b,Duration:2147483647,CustomName:'[{"text":"["},{"text":" Hidden ","color":"red","bold":"true"},{"text":"]"}]',Tags:["Lobby_option_aec","option_player_name"]}
execute if score !Player_name Options matches 3 run summon area_effect_cloud 28 23 -25 {PersistenceRequired:1b,CustomNameVisible:1b,Duration:2147483647,CustomName:'[{"text":"["},{"text":" Displayed ","color":"green","bold":"true"},{"text":"]"}]',Tags:["Lobby_option_aec","option_player_name"]}
# Deathmatch
execute if score !Deathmatch Options matches 1 run summon area_effect_cloud 18 23 -25 {PersistenceRequired:1b,CustomNameVisible:1b,Duration:2147483647,CustomName:'[{"text":"["},{"text":" Random ","color":"dark_purple","bold":"true"},{"text":"]"}]',Tags:["Lobby_option_aec","option_deathmatch"]}
execute if score !Deathmatch Options matches 2 run summon area_effect_cloud 28 23 -25 {PersistenceRequired:1b,CustomNameVisible:1b,Duration:2147483647,CustomName:'[{"text":"["},{"text":" Hidden ","color":"red","bold":"true"},{"text":"]"}]',Tags:["Lobby_option_aec","option_deathmatch"]}
execute if score !Deathmatch Options matches 3 run summon area_effect_cloud 28 23 -25 {PersistenceRequired:1b,CustomNameVisible:1b,Duration:2147483647,CustomName:'[{"text":"["},{"text":" Displayed ","color":"green","bold":"true"},{"text":"]"}]',Tags:["Lobby_option_aec","option_deathmatch"]}

# AFK glowing
execute if score !AFK_glowing Options matches 1 run summon area_effect_cloud 28 23 -29 {PersistenceRequired:1b,CustomNameVisible:1b,Duration:2147483647,CustomName:'[{"text":"["},{"text":" Random ","color":"dark_purple","bold":"true"},{"text":"]"}]',Tags:["Lobby_option_aec","option_afk_glowing"]}
execute if score !AFK_glowing Options matches 2 run summon area_effect_cloud 28 23 -29 {PersistenceRequired:1b,CustomNameVisible:1b,Duration:2147483647,CustomName:'[{"text":"["},{"text":" Hidden ","color":"red","bold":"true"},{"text":"]"}]',Tags:["Lobby_option_aec","option_afk_glowing"]}
execute if score !AFK_glowing Options matches 3 run summon area_effect_cloud 28 23 -29 {PersistenceRequired:1b,CustomNameVisible:1b,Duration:2147483647,CustomName:'[{"text":"["},{"text":" Displayed ","color":"green","bold":"true"},{"text":"]"}]',Tags:["Lobby_option_aec","option_afk_glowing"]}

# Game time option
execute if score !Time Options matches 1 run summon area_effect_cloud 18 23 -29 {PersistenceRequired:1b,CustomNameVisible:1b,Duration:2147483647,CustomName:'[{"text":"["},{"text":" Random ","color":"dark_purple","bold":"true"},{"text":"]"}]',Tags:["Lobby_option_aec","option_time"]}
execute if score !Time Options matches 2 run summon area_effect_cloud 18 23 -29 {PersistenceRequired:1b,CustomNameVisible:1b,Duration:2147483647,CustomName:'[{"text":"["},{"text":" Hidden ","color":"red","bold":"true"},{"text":"]"}]',Tags:["Lobby_option_aec","option_time"]}
execute if score !Time Options matches 3 run summon area_effect_cloud 18 23 -29 {PersistenceRequired:1b,CustomNameVisible:1b,Duration:2147483647,CustomName:'[{"text":"["},{"text":" Displayed ","color":"green","bold":"true"},{"text":"]"}]',Tags:["Lobby_option_aec","option_time"]}