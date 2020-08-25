scoreboard players add @e[name=kill_effect_note,type=armor_stand] Kill_effect 1
execute as @e[type=minecraft:armor_stand,name=kill_effect_note,scores={Kill_effect=1}] at @s run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,CustomName:"{\"text\":\"game_kill_effect_notblock_holder\"}",NoGravity:1b,Small:1b,ArmorItems:[{},{},{},{id:"minecraft:jukebox",Count:1b}],DisabledSlots:4144959}
execute as @e[type=minecraft:armor_stand,name=kill_effect_note,scores={Kill_effect=1..40},limit=1] as @e[type=armor_stand,name=game_kill_effect_notblock_holder] at @s run teleport @s ~ ~ ~ ~10 ~

execute as @e[type=minecraft:armor_stand,name=kill_effect_note,scores={Kill_effect=1}] at @s run particle note ~ ~1 ~ 0.2 0.5 0.2 1 1 force @a
execute as @e[type=minecraft:armor_stand,name=kill_effect_note,scores={Kill_effect=1}] at @s run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1 1
execute as @e[type=minecraft:armor_stand,name=kill_effect_note,scores={Kill_effect=6}] at @s run particle note ~ ~1 ~ 0.2 0.5 0.2 1 1 force @a
execute as @e[type=minecraft:armor_stand,name=kill_effect_note,scores={Kill_effect=6}] at @s run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1 1
execute as @e[type=minecraft:armor_stand,name=kill_effect_note,scores={Kill_effect=11}] at @s run particle note ~ ~1 ~ 0.2 0.5 0.2 1 1 force @a
execute as @e[type=minecraft:armor_stand,name=kill_effect_note,scores={Kill_effect=11}] at @s run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1 1
execute as @e[type=minecraft:armor_stand,name=kill_effect_note,scores={Kill_effect=21}] at @s run particle note ~ ~1 ~ 0.2 0.5 0.2 1 1 force @a
execute as @e[type=minecraft:armor_stand,name=kill_effect_note,scores={Kill_effect=21}] at @s run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1 1.3
execute as @e[type=minecraft:armor_stand,name=kill_effect_note,scores={Kill_effect=23}] at @s run particle note ~ ~1 ~ 0.2 0.5 0.2 1 1 force @a
execute as @e[type=minecraft:armor_stand,name=kill_effect_note,scores={Kill_effect=23}] at @s run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1 1.3
execute as @e[type=minecraft:armor_stand,name=kill_effect_note,scores={Kill_effect=30}] at @s run particle note ~ ~1 ~ 0.2 0.5 0.2 1 1 force @a
execute as @e[type=minecraft:armor_stand,name=kill_effect_note,scores={Kill_effect=30}] at @s run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1 1.2
execute as @e[type=minecraft:armor_stand,name=kill_effect_note,scores={Kill_effect=35}] at @s run particle note ~ ~1 ~ 0.2 0.5 0.2 1 1 force @a
execute as @e[type=minecraft:armor_stand,name=kill_effect_note,scores={Kill_effect=35}] at @s run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1 1
execute as @e[type=minecraft:armor_stand,name=kill_effect_note,scores={Kill_effect=40}] at @s run particle note ~ ~1 ~ 0.2 0.5 0.2 1 1 force @a
execute as @e[type=minecraft:armor_stand,name=kill_effect_note,scores={Kill_effect=40}] at @s run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1 0.8
execute as @e[type=minecraft:armor_stand,name=kill_effect_note,scores={Kill_effect=40}] at @s run kill @e[type=armor_stand,name=game_kill_effect_notblock_holder,distance=..0.001,limit=1]
execute as @e[type=minecraft:armor_stand,name=kill_effect_note,scores={Kill_effect=40..}] run kill @s