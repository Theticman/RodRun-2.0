scoreboard players add @e[name=kill_effect_xp,type=armor_stand] Kill_effect 1

execute as @e[type=minecraft:armor_stand,name=kill_effect_xp,scores={Kill_effect=1}] at @s run summon minecraft:experience_bottle ~ ~2 ~ {Motion:[0.0,0.2,0.0]}
execute as @e[type=minecraft:armor_stand,name=kill_effect_xp,scores={Kill_effect=2}] at @s run summon minecraft:experience_bottle ~ ~2 ~ {Motion:[-0.2,0.2,0.0]}
execute as @e[type=minecraft:armor_stand,name=kill_effect_xp,scores={Kill_effect=3}] at @s run summon minecraft:experience_bottle ~ ~2 ~ {Motion:[0.2,0.2,0.0]}
execute as @e[type=minecraft:armor_stand,name=kill_effect_xp,scores={Kill_effect=4}] at @s run summon minecraft:experience_bottle ~ ~2 ~ {Motion:[0.0,0.2,-0.2]}
execute as @e[type=minecraft:armor_stand,name=kill_effect_xp,scores={Kill_effect=5}] at @s run summon minecraft:experience_bottle ~ ~2 ~ {Motion:[0.0,0.2,0.2]}
execute as @e[type=minecraft:armor_stand,name=kill_effect_xp,scores={Kill_effect=6}] at @s run summon minecraft:experience_bottle ~ ~2 ~ {Motion:[-0.2,0.2,0.2]}
execute as @e[type=minecraft:armor_stand,name=kill_effect_xp,scores={Kill_effect=7}] at @s run summon minecraft:experience_bottle ~ ~2 ~ {Motion:[-0.2,0.2,-0.2]}
execute as @e[type=minecraft:armor_stand,name=kill_effect_xp,scores={Kill_effect=8}] at @s run summon minecraft:experience_bottle ~ ~2 ~ {Motion:[0.2,0.2,-0.2]}
execute as @e[type=minecraft:armor_stand,name=kill_effect_xp,scores={Kill_effect=9}] at @s run summon minecraft:experience_bottle ~ ~2 ~ {Motion:[0.2,0.2,0.2]}
execute as @e[type=minecraft:armor_stand,name=kill_effect_xp,scores={Kill_effect=10}] at @s run summon minecraft:experience_bottle ~ ~2 ~ {Motion:[0.0,0.5,0.0]}

execute as @e[type=minecraft:armor_stand,name=kill_effect_xp,scores={Kill_effect=1}] at @s run playsound minecraft:entity.player.levelup master @a
execute as @e[type=minecraft:armor_stand,name=kill_effect_xp,scores={Kill_effect=10..}] run kill @s