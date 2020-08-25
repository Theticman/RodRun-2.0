# Join Red
team join 103_L_R_Creator @s[tag=MapMaker]
team join 113_L_R_Friend @s[tag=Friend]
team join 123_L_R_Mojang @s[tag=Mojang]
team join 133_L_R_Tester @s[tag=Tester]
team join 193_L_R_Player @s[tag=Player]

# Playsound
execute at @s[tag=!Red] run playsound minecraft:block.note_block.pling master @s ~ ~ ~
execute at @s[tag=Red] run playsound minecraft:entity.villager.no master @s ~ ~ ~

# Tellraw
tellraw @s[tag=!Red] [{"text":"[","color":"dark_gray"},{"text":"RodRun","color":"gold","bold":true},{"text":"] ","color":"dark_gray"},{"text":"You joined the ","color":"yellow"},{"text":"Red","color":"red"},{"text":" team.","color":"yellow"}]
title @s[tag=Red] actionbar [{"text":" Already in that team!","color":"red"}]

# Tags
tag @s remove Blue
tag @s remove White
tag @s add Red

# Clear boots
replaceitem entity @s armor.feet air