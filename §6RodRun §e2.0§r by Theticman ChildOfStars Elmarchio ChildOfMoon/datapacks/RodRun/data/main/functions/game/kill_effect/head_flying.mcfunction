scoreboard players add @e[name=kill_effect_head_flying,type=armor_stand] Kill_effect 1
execute as @e[type=minecraft:armor_stand,name=kill_effect_head_flying,scores={Kill_effect=1..40}] at @s as @e[type=armor_stand,name=game_kill_effect_head_flying_holder,distance=..0.001] at @s run teleport @s ~ ~0.04 ~ ~10 ~
execute as @e[type=minecraft:armor_stand,name=kill_effect_head_flying,scores={Kill_effect=1..40}] at @s run teleport @s ~ ~0.04 ~
execute as @e[type=minecraft:armor_stand,name=kill_effect_head_flying,scores={Kill_effect=1..40}] at @s run particle end_rod ~ ~0.6 ~ 0 0 0 0.01 1 force @a
execute as @e[type=minecraft:armor_stand,name=kill_effect_head_flying,scores={Kill_effect=40}] at @s run kill @e[type=armor_stand,name=game_kill_effect_head_flying_holder,distance=..0.001,limit=1]
execute as @e[type=minecraft:armor_stand,name=kill_effect_head_flying,scores={Kill_effect=40..}] run kill @s