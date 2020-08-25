scoreboard players add @e[name=kill_effect_blood,type=armor_stand] Kill_effect 1
execute as @e[type=minecraft:armor_stand,name=kill_effect_blood,scores={Kill_effect=1..}] at @s run particle block redstone_block ~ ~1 ~ 0.2 0.5 0.2 1 100 force @a
execute as @e[type=minecraft:armor_stand,name=kill_effect_blood,scores={Kill_effect=1..}] at @s run playsound minecraft:block.stone.break master @a ~ ~ ~
execute as @e[type=minecraft:armor_stand,name=kill_effect_blood,scores={Kill_effect=1..}] run kill @s