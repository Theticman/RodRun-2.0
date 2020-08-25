scoreboard players add @e[name=kill_effect_totem,type=armor_stand] Kill_effect 1
execute as @e[type=minecraft:armor_stand,name=kill_effect_totem,scores={Kill_effect=1..}] at @s run particle minecraft:totem_of_undying ~ ~1 ~ 0.2 0.5 0.2 0.3 70 force @a
execute as @e[type=minecraft:armor_stand,name=kill_effect_totem,scores={Kill_effect=1..}] at @s run playsound minecraft:entity.illusioner.prepare_mirror master @a ~ ~ ~
execute as @e[type=minecraft:armor_stand,name=kill_effect_totem,scores={Kill_effect=1..}] run kill @s