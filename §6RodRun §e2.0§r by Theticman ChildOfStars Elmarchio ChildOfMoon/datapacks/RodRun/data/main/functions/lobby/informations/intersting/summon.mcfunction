# Kill previous
kill @e[type=armor_stand,tag=interesting_information]

# Summon 
summon minecraft:armor_stand 113 29.2 -128 {CustomName:'[{"text":"Interesting Information","color":"yellow","underlined":"true","bold":"true"}]',Small:1b,NoGravity:1b,NoBasePlate:1b,Invisible:1b,Tags:["interesting_information_0","interesting_information","information"]}

# Summon others
execute at @e[type=minecraft:armor_stand,tag=interesting_information_0] run summon minecraft:armor_stand ~ ~-.6 ~ {CustomName:'[{"text":"Development on ","color":"yellow"},{"text":"RodRun","color":"gold"},{"text":" began in ","color":"yellow"},{"text":"2017","color":"gold"},{"text":"!","color":"yellow"}]',Small:1b,NoGravity:1b,NoBasePlate:1b,Invisible:1b,Tags:["interesting_information","information"]}
execute at @e[type=minecraft:armor_stand,tag=interesting_information_0] run summon minecraft:armor_stand ~ ~-.9 ~ {CustomName:'[{"text":"The last version was designed for ","color":"yellow"},{"text":"1.12.2","color":"gold"}]',Small:1b,NoGravity:1b,NoBasePlate:1b,Invisible:1b,Tags:["interesting_information","information"]}
execute at @e[type=minecraft:armor_stand,tag=interesting_information_0] run summon minecraft:armor_stand ~ ~-1.2 ~ {CustomName:'[{"text":"Over ","color":"yellow"},{"text":"500","color":"gold"},{"text":" hours of work has been put into ","color":"yellow"},{"text":"RodRun","color":"gold"}]',Small:1b,NoGravity:1b,NoBasePlate:1b,Invisible:1b,Tags:["interesting_information","information"]}
execute at @e[type=minecraft:armor_stand,tag=interesting_information_0] run summon minecraft:armor_stand ~ ~-1.5 ~ {CustomName:'[{"text":"Over ","color":"yellow"},{"text":"30","color":"gold"},{"text":" Easter Eggs and special features!","color":"yellow"}]',Small:1b,NoGravity:1b,NoBasePlate:1b,Invisible:1b,Tags:["interesting_information","information"]}
execute at @e[type=minecraft:armor_stand,tag=interesting_information_0] run summon minecraft:armor_stand ~ ~-1.8 ~ {CustomName:'[{"text":"Two ","color":"gold"},{"text":"hidden minigames","color":"yellow"}]',Small:1b,NoGravity:1b,NoBasePlate:1b,Invisible:1b,Tags:["interesting_information","information"]}
execute at @e[type=minecraft:armor_stand,tag=interesting_information_0] run summon minecraft:armor_stand ~ ~-2.1 ~ {CustomName:'[{"text":"Over ","color":"yellow"},{"text":"10,000","color":"gold"},{"text":" commands!","color":"yellow"}]',Small:1b,NoGravity:1b,NoBasePlate:1b,Invisible:1b,Tags:["interesting_information","information"]}
