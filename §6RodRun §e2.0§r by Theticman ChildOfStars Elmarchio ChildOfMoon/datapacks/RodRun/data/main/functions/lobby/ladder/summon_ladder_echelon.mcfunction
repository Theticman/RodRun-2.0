# Summon main
summon minecraft:area_effect_cloud -7.4 36.2 -25.1 {CustomName:'{"text":"main_test_ladder"}',Duration:1}

# Summon bars
execute as @e[name=main_test_ladder,type=minecraft:area_effect_cloud] at @s positioned ~-.5 ~-1.2 ~-.5 run summon minecraft:armor_stand ~ ~ ~ {DisabledSlots:4144959,Small:1b,Invisible:1b,Pose:{Head:[90f,-45f,0f]},Silent:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b}],CustomName:'{"text":"lobby_ladder"}'}

execute as @e[name=main_test_ladder,type=minecraft:area_effect_cloud] at @s positioned ~-.65 ~-2 ~.3625 run summon minecraft:armor_stand ~ ~ ~ {DisabledSlots:4144959,Rotation:[90f],Invisible:1b,Pose:{Head:[0f,0f,-45f]},Silent:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b}],CustomName:'{"text":"lobby_ladder"}'}
execute as @e[name=main_test_ladder,type=minecraft:area_effect_cloud] at @s positioned ~-.15 ~-2 ~.3625 run summon minecraft:armor_stand ~ ~ ~ {DisabledSlots:4144959,Rotation:[90f],Invisible:1b,Pose:{Head:[0f,0f,-45f]},Silent:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b}],CustomName:'{"text":"lobby_ladder"}'}