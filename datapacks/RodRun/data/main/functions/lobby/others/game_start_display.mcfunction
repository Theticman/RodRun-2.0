# Timer managment
scoreboard players add !Timer Game_start_text 1
execute if score !Timer Game_start_text matches 65.. run scoreboard players set !Timer Game_start_text -1

# Text change
execute if score !Timer Game_start_text matches 0 as @e[tag=game_start_aec,type=minecraft:area_effect_cloud] run data merge entity @s {CustomName:'[{"text":"Game start","color":"yellow"},{"text":"","color":"gold"},{"text":"","color":"yellow"}]'}
execute if score !Timer Game_start_text matches 3 as @e[tag=game_start_aec,type=minecraft:area_effect_cloud] run data merge entity @s {CustomName:'[{"text":"","color":"yellow"},{"text":"G","color":"gold"},{"text":"ame start","color":"yellow"}]'}
execute if score !Timer Game_start_text matches 6 as @e[tag=game_start_aec,type=minecraft:area_effect_cloud] run data merge entity @s {CustomName:'[{"text":"G","color":"yellow"},{"text":"a","color":"gold"},{"text":"me start","color":"yellow"}]'}
execute if score !Timer Game_start_text matches 9 as @e[tag=game_start_aec,type=minecraft:area_effect_cloud] run data merge entity @s {CustomName:'[{"text":"Ga","color":"yellow"},{"text":"m","color":"gold"},{"text":"e start","color":"yellow"}]'}
execute if score !Timer Game_start_text matches 12 as @e[tag=game_start_aec,type=minecraft:area_effect_cloud] run data merge entity @s {CustomName:'[{"text":"Gam","color":"yellow"},{"text":"e","color":"gold"},{"text":" start","color":"yellow"}]'}
execute if score !Timer Game_start_text matches 15 as @e[tag=game_start_aec,type=minecraft:area_effect_cloud] run data merge entity @s {CustomName:'[{"text":"Game ","color":"yellow"},{"text":"s","color":"gold"},{"text":"tart","color":"yellow"}]'}
execute if score !Timer Game_start_text matches 18 as @e[tag=game_start_aec,type=minecraft:area_effect_cloud] run data merge entity @s {CustomName:'[{"text":"Game s","color":"yellow"},{"text":"t","color":"gold"},{"text":"art","color":"yellow"}]'}
execute if score !Timer Game_start_text matches 21 as @e[tag=game_start_aec,type=minecraft:area_effect_cloud] run data merge entity @s {CustomName:'[{"text":"Game st","color":"yellow"},{"text":"a","color":"gold"},{"text":"rt","color":"yellow"}]'}
execute if score !Timer Game_start_text matches 24 as @e[tag=game_start_aec,type=minecraft:area_effect_cloud] run data merge entity @s {CustomName:'[{"text":"Game sta","color":"yellow"},{"text":"r","color":"gold"},{"text":"t","color":"yellow"}]'}
execute if score !Timer Game_start_text matches 27 as @e[tag=game_start_aec,type=minecraft:area_effect_cloud] run data merge entity @s {CustomName:'[{"text":"Game star","color":"yellow"},{"text":"t","color":"gold"},{"text":"","color":"yellow"}]'}
execute if score !Timer Game_start_text matches 30 as @e[tag=game_start_aec,type=minecraft:area_effect_cloud] run data merge entity @s {CustomName:'[{"text":"Game start","color":"yellow"},{"text":"","color":"gold"},{"text":"","color":"yellow"}]'}

execute if score !Timer Game_start_text matches 40 as @e[tag=game_start_aec,type=minecraft:area_effect_cloud] run data merge entity @s {CustomName:'[{"text":"Game start","color":"gold"},{"text":"","color":"gold"},{"text":"","color":"yellow"}]'}
execute if score !Timer Game_start_text matches 43 as @e[tag=game_start_aec,type=minecraft:area_effect_cloud] run data merge entity @s {CustomName:'[{"text":"Game start","color":"yellow"},{"text":"","color":"gold"},{"text":"","color":"yellow"}]'}
execute if score !Timer Game_start_text matches 46 as @e[tag=game_start_aec,type=minecraft:area_effect_cloud] run data merge entity @s {CustomName:'[{"text":"Game start","color":"gold"},{"text":"","color":"gold"},{"text":"","color":"yellow"}]'}
execute if score !Timer Game_start_text matches 49 as @e[tag=game_start_aec,type=minecraft:area_effect_cloud] run data merge entity @s {CustomName:'[{"text":"Game start","color":"yellow"},{"text":"","color":"gold"},{"text":"","color":"yellow"}]'}
execute if score !Timer Game_start_text matches 52 as @e[tag=game_start_aec,type=minecraft:area_effect_cloud] run data merge entity @s {CustomName:'[{"text":"Game start","color":"gold"},{"text":"","color":"gold"},{"text":"","color":"yellow"}]'}
execute if score !Timer Game_start_text matches 55 as @e[tag=game_start_aec,type=minecraft:area_effect_cloud] run data merge entity @s {CustomName:'[{"text":"Game start","color":"yellow"},{"text":"","color":"gold"},{"text":"","color":"yellow"}]'}
