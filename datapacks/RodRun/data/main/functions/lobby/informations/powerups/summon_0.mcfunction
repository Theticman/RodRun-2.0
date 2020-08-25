# Kill previous
kill @e[tag=powerups_information]

# Summon 
summon minecraft:armor_stand 90 29 -110 {CustomName:'[{"text":"Powerups Information","color":"yellow","underlined":"true","bold":"true"}]',CustomNameVisible:1b,Small:1b,NoGravity:1b,NoBasePlate:1b,Invisible:1b,Tags:["powerups_information_0","powerups_information","information"]}

# Summon others
execute at @e[type=minecraft:armor_stand,tag=powerups_information_0] run summon minecraft:armor_stand ~ ~-.6 ~ {CustomName:'[{"text":"§eThe powerups room is §6located §eat the back of"}]',CustomNameVisible:1b,Small:1b,NoGravity:1b,NoBasePlate:1b,Invisible:1b,Tags:["powerups_information_1","powerups_information","information"]}
execute at @e[type=minecraft:armor_stand,tag=powerups_information_0] run summon minecraft:armor_stand ~ ~-.9 ~ {CustomName:'[{"text":"§ethe lobby near the §6MapMaker §elounge."}]',CustomNameVisible:1b,Small:1b,NoGravity:1b,NoBasePlate:1b,Invisible:1b,Tags:["powerups_information_2","powerups_information","information"]}
execute at @e[type=minecraft:armor_stand,tag=powerups_information_0] run summon minecraft:armor_stand ~ ~-1.2 ~ {CustomName:'[{"text":"§6Interact §ewith the villager to change"}]',CustomNameVisible:1b,Small:1b,NoGravity:1b,NoBasePlate:1b,Invisible:1b,Tags:["powerups_information_3","powerups_information","information"]}
execute at @e[type=minecraft:armor_stand,tag=powerups_information_0] run summon minecraft:armor_stand ~ ~-1.5 ~ {CustomName:'[{"text":"§ethe corresponding option. Select §6Random"}]',CustomNameVisible:1b,Small:1b,NoGravity:1b,NoBasePlate:1b,Invisible:1b,Tags:["powerups_information_4","powerups_information","information"]}
execute at @e[type=minecraft:armor_stand,tag=powerups_information_0] run summon minecraft:armor_stand ~ ~-1.8 ~ {CustomName:'[{"text":"§eand the option will be selected §6randomly§e."}]',CustomNameVisible:1b,Small:1b,NoGravity:1b,NoBasePlate:1b,Invisible:1b,Tags:["powerups_information_5","powerups_information","information"]}

execute at @e[type=minecraft:armor_stand,tag=powerups_information_0] run summon minecraft:armor_stand ~ ~-2.3 ~ {CustomName:'[{"text":"§e(§61§e/5)","bold":"true"}]',CustomNameVisible:1b,Small:1b,NoGravity:1b,NoBasePlate:1b,Invisible:1b,Tags:["powerups_information_page","powerups_information","information"]}
execute at @e[type=minecraft:armor_stand,tag=powerups_information_0] run summon minecraft:armor_stand ~ ~-2.6 ~ {CustomName:'[{"text":"§e➤","bold":"true"}]',CustomNameVisible:1b,Small:1b,NoGravity:1b,NoBasePlate:1b,Invisible:1b,Tags:["powerups_information","information","next_page"]}

execute at @e[type=minecraft:armor_stand,tag=powerups_information_0] run summon minecraft:villager ~ ~-3 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:999999999,ShowParticles:0b}],VillagerData:{profession:"minecraft:nitwit"},Tags:["powerups_information","information"]}
scoreboard players set !Powerups_page Informations 1