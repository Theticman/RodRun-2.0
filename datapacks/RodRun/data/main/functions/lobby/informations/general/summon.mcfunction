
# Kill previous
kill @e[type=armor_stand,tag=general_information]

# Summon 
summon minecraft:armor_stand 115 29.5 -120 {CustomName:'[{"text":"General Information","color":"yellow","underlined":"true","bold":"true"}]',Small:1b,NoGravity:1b,NoBasePlate:1b,Invisible:1b,Tags:["general_information_0","general_information","information"]}

# Summon others
execute at @e[type=minecraft:armor_stand,tag=general_information_0] run summon minecraft:armor_stand ~ ~-.6 ~ {CustomName:'[{"text":"RodRun","color":"gold"},{"text":" is a ","color":"yellow"},{"text":"PVP","color":"gold"},{"text":" minigame.","color":"yellow"}]',Small:1b,NoGravity:1b,NoBasePlate:1b,Invisible:1b,Tags:["general_information","information"]}
execute at @e[type=minecraft:armor_stand,tag=general_information_0] run summon minecraft:armor_stand ~ ~-.9 ~ {CustomName:'[{"text":"Catch your opponents with the ","color":"yellow"},{"text":"hook","color":"gold"},{"text":" of your","color":"yellow"}]',Small:1b,NoGravity:1b,NoBasePlate:1b,Invisible:1b,Tags:["general_information","information"]}
execute at @e[type=minecraft:armor_stand,tag=general_information_0] run summon minecraft:armor_stand ~ ~-1.2 ~ {CustomName:'[{"text":"fishing rod","color":"gold"},{"text":" to take their lives away!","color":"yellow"}]',Small:1b,NoGravity:1b,NoBasePlate:1b,Invisible:1b,Tags:["general_information","information"]}

execute at @e[type=minecraft:armor_stand,tag=general_information_0] run summon minecraft:armor_stand ~ ~-1.7 ~ {CustomName:'[{"text":"You will ","color":"yellow"},{"text":"respawn","color":"gold"},{"text":" as long as you have","color":"yellow"}]',Small:1b,NoGravity:1b,NoBasePlate:1b,Invisible:1b,Tags:["general_information","information"]}
execute at @e[type=minecraft:armor_stand,tag=general_information_0] run summon minecraft:armor_stand ~ ~-2.0 ~ {CustomName:'[{"text":"at least ","color":"yellow"},{"text":"one life","color":"gold"},{"text":" remaining!","color":"yellow"}]',Small:1b,NoGravity:1b,NoBasePlate:1b,Invisible:1b,Tags:["general_information","information"]}

execute at @e[type=minecraft:armor_stand,tag=general_information_0] run summon minecraft:armor_stand ~ ~-2.5 ~ {CustomName:'[{"text":"Whether you are playing solo or with a team, ","color":"yellow"},{"text":"establish","color":"gold"}]',Small:1b,NoGravity:1b,NoBasePlate:1b,Invisible:1b,Tags:["general_information","information"]}
execute at @e[type=minecraft:armor_stand,tag=general_information_0] run summon minecraft:armor_stand ~ ~-2.8 ~ {CustomName:'[{"text":"the best strategy to ","color":"yellow"},{"text":"win","color":"gold"},{"text":" the game!","color":"yellow"}]',Small:1b,NoGravity:1b,NoBasePlate:1b,Invisible:1b,Tags:["general_information","information"]}