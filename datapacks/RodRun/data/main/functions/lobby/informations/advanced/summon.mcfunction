# Kill previous
kill @e[type=armor_stand,tag=advanced_information]

# Summon 
summon minecraft:armor_stand 113 29.2 -112 {CustomName:'[{"text":"Advanced Information","color":"yellow","underlined":"true","bold":"true"}]',Small:1b,NoGravity:1b,NoBasePlate:1b,Invisible:1b,Tags:["advanced_information_0","advanced_information","information"]}

# Summon others
execute at @e[type=minecraft:armor_stand,tag=advanced_information_0] run summon minecraft:armor_stand ~ ~-.6 ~ {CustomName:'[{"text":"The ","color":"yellow"},{"text":"hook","color":"gold"},{"text":" is represented by ","color":"yellow"},{"text":"particles","color":"gold"}]',Small:1b,NoGravity:1b,NoBasePlate:1b,Invisible:1b,Tags:["advanced_information","information"]}
execute at @e[type=minecraft:armor_stand,tag=advanced_information_0] run summon minecraft:armor_stand ~ ~-.9 ~ {CustomName:'[{"text":"because the ","color":"yellow"},{"text":"bobber\'s","color":"gold"},{"text":" position is ","color":"yellow"},{"text":"inaccurate","color":"gold"},{"text":".","color":"yellow"}]',Small:1b,NoGravity:1b,NoBasePlate:1b,Invisible:1b,Tags:["advanced_information","information"]}
execute at @e[type=minecraft:armor_stand,tag=advanced_information_0] run summon minecraft:armor_stand ~ ~-1.4 ~ {CustomName:'[{"text":"The ","color":"yellow"},{"text":"hook","color":"gold"},{"text":" has a killing radius of ","color":"yellow"},{"text":"two blocks","color":"gold"},{"text":",","color":"yellow"}]',Small:1b,NoGravity:1b,NoBasePlate:1b,Invisible:1b,Tags:["advanced_information","information"]}
execute at @e[type=minecraft:armor_stand,tag=advanced_information_0] run summon minecraft:armor_stand ~ ~-1.7 ~ {CustomName:'[{"text":"meaning that you can ","color":"yellow"},{"text":"touch","color":"gold"}]',Small:1b,NoGravity:1b,NoBasePlate:1b,Invisible:1b,Tags:["advanced_information","information"]}
execute at @e[type=minecraft:armor_stand,tag=advanced_information_0] run summon minecraft:armor_stand ~ ~-2 ~ {CustomName:'[{"text":" your opponents ","color":"yellow"},{"text":"through","color":"gold"},{"text":" the walls!","color":"yellow"}]',Small:1b,NoGravity:1b,NoBasePlate:1b,Invisible:1b,Tags:["advanced_information","information"]}
execute at @e[type=minecraft:armor_stand,tag=advanced_information_0] run summon minecraft:armor_stand ~ ~-2.5 ~ {CustomName:'[{"text":"Mines","color":"gold"},{"text":" have a killing radius of ","color":"yellow"},{"text":"one block","color":"gold"},{"text":".","color":"yellow"}]',Small:1b,NoGravity:1b,NoBasePlate:1b,Invisible:1b,Tags:["advanced_information","information"]}
