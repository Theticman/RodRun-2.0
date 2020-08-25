scoreboard players add @e[name=kill_effect_cloud,type=armor_stand] Kill_effect 1
execute as @e[type=minecraft:armor_stand,name=kill_effect_cloud,scores={Kill_effect=1..}] at @s run particle minecraft:cloud ~ ~1 ~ 0.2 0.5 0.2 0 100 force @a
execute as @e[type=minecraft:armor_stand,name=kill_effect_cloud,scores={Kill_effect=1..}] run kill @s