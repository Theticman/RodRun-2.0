# Join blue
team join 101_L_B_Creator @s[tag=MapMaker]
team join 111_L_B_Friend @s[tag=Friend]
team join 121_L_B_Mojang @s[tag=Mojang]
team join 131_L_B_Tester @s[tag=Tester]
team join 191_L_B_Player @s[tag=Player]

# Playsound
execute at @s[tag=!Blue] run playsound minecraft:block.note_block.pling master @s ~ ~ ~
execute at @s[tag=Blue] run playsound minecraft:entity.villager.no master @s ~ ~ ~

# Tellraw
tellraw @s[tag=!Blue] [{"text":"[","color":"dark_gray"},{"text":"RodRun","color":"gold","bold":true},{"text":"] ","color":"dark_gray"},{"text":"You joined the ","color":"yellow"},{"text":"Blue","color":"blue"},{"text":" team.","color":"yellow"}]
title @s[tag=Blue] actionbar [{"text":" Already in that team!","color":"red"}]

# Tags
tag @s add Blue
tag @s remove White
tag @s remove Red

# Clear boots
replaceitem entity @s armor.feet air