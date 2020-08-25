# Already powerup
execute at @e[type=item,tag=game_powerup_item] run tag @e[type=minecraft:area_effect_cloud,tag=random_spawnpoint,distance=..1] add already_powerup

# Teleport
execute if score !Map OptionsInGame matches 2 as @e[name=random_Warehouse,sort=random,limit=1,tag=!already_powerup] at @s run teleport @e[tag=game_powerup_item_teleport] @s
execute if score !Map OptionsInGame matches 3 as @e[name=random_Whitehouse,sort=random,limit=1,tag=!already_powerup] at @s run teleport @e[tag=game_powerup_item_teleport] @s
execute if score !Map OptionsInGame matches 4 as @e[name=random_Egypt,sort=random,limit=1,tag=!already_powerup] at @s run teleport @e[tag=game_powerup_item_teleport] @s
execute if score !Map OptionsInGame matches 5 as @e[name=random_Hostel,sort=random,limit=1,tag=!already_powerup] at @s run teleport @e[tag=game_powerup_item_teleport] @s
execute if score !Map OptionsInGame matches 6 as @e[name=random_Cyber,sort=random,limit=1,tag=!already_powerup] at @s run teleport @e[tag=game_powerup_item_teleport] @s
execute if score !Map OptionsInGame matches 7 as @e[name=random_Tron,sort=random,limit=1,tag=!already_powerup] at @s run teleport @e[tag=game_powerup_item_teleport] @s
execute if score !Map OptionsInGame matches 8 as @e[name=random_Island,sort=random,limit=1,tag=!already_powerup] at @s run teleport @e[tag=game_powerup_item_teleport] @s
execute if score !Map OptionsInGame matches 9 as @e[name=random_Metro,sort=random,limit=1,tag=!already_powerup] at @s run teleport @e[tag=game_powerup_item_teleport] @s
execute if score !Map OptionsInGame matches 10 as @e[name=random_Aquarium,sort=random,limit=1,tag=!already_powerup] at @s run teleport @e[tag=game_powerup_item_teleport] @s
execute if score !Map OptionsInGame matches 11 as @e[name=random_Parking,sort=random,limit=1,tag=!already_powerup] at @s run teleport @e[tag=game_powerup_item_teleport] @s
execute if score !Map OptionsInGame matches 12 as @e[name=random_Cabaret,sort=random,limit=1,tag=!already_powerup] at @s run teleport @e[tag=game_powerup_item_teleport] @s
execute if score !Map OptionsInGame matches 13 as @e[name=random_Mall,sort=random,limit=1,tag=!already_powerup] at @s run teleport @e[tag=game_powerup_item_teleport] @s
execute if score !Map OptionsInGame matches 14 as @e[name=random_Paris,sort=random,limit=1,tag=!already_powerup] at @s run teleport @e[tag=game_powerup_item_teleport] @s

# Tags remove
tag @s remove game_powerup_item_teleport
tag @e[type=area_effect_cloud,tag=already_powerup] remove already_powerup
