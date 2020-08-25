# Join White
team join 102_L_W_Creator @s[tag=MapMaker]
team join 112_L_W_Friend @s[tag=Friend]
team join 122_L_W_Mojang @s[tag=Mojang]
team join 132_L_W_Tester @s[tag=Tester]
team join 192_L_W_Player @s[tag=Player]

# Playsound
execute at @s[tag=!White] run playsound minecraft:block.note_block.pling master @s ~ ~ ~
execute at @s[tag=White] run playsound minecraft:entity.villager.no master @s ~ ~ ~

# Tellraw
tellraw @s[tag=!White] [{"text":"[","color":"dark_gray"},{"text":"RodRun","color":"gold","bold":true},{"text":"] ","color":"dark_gray"},{"text":"You joined the ","color":"yellow"},{"text":"White","color":"white"},{"text":" team.","color":"yellow"}]
title @s[tag=White] actionbar [{"text":" Already in that team!","color":"red"}]

# Tags
tag @s remove Blue
tag @s add White
tag @s remove Red

# Clear boots
replaceitem entity @s armor.feet air