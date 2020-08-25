# Timer display
scoreboard players add !Display Powerups 1
execute if score !Display Powerups matches 50.. run scoreboard players set !Display Powerups 0

# Name
execute if score !Display Powerups matches 1..3 as @e[type=item,tag=game_powerup_item] run data merge entity @s {CustomName:'[{"text":"Powerup","color":"yellow"}]'}
execute if score !Display Powerups matches 4..6 as @e[type=item,tag=game_powerup_item] run data merge entity @s {CustomName:'[{"text":"P","color":"gold"},{"text":"owerup","color":"yellow"}]'}
execute if score !Display Powerups matches 7..9 as @e[type=item,tag=game_powerup_item] run data merge entity @s {CustomName:'[{"text":"Po","color":"gold"},{"text":"werup","color":"yellow"}]'}
execute if score !Display Powerups matches 10..12 as @e[type=item,tag=game_powerup_item] run data merge entity @s {CustomName:'[{"text":"Pow","color":"gold"},{"text":"erup","color":"yellow"}]'}
execute if score !Display Powerups matches 13..15 as @e[type=item,tag=game_powerup_item] run data merge entity @s {CustomName:'[{"text":"Powe","color":"gold"},{"text":"rup","color":"yellow"}]'}
execute if score !Display Powerups matches 16..18 as @e[type=item,tag=game_powerup_item] run data merge entity @s {CustomName:'[{"text":"Power","color":"gold"},{"text":"up","color":"yellow"}]'}
execute if score !Display Powerups matches 19..21 as @e[type=item,tag=game_powerup_item] run data merge entity @s {CustomName:'[{"text":"Poweru","color":"gold"},{"text":"p","color":"yellow"}]'}
execute if score !Display Powerups matches 22..24 as @e[type=item,tag=game_powerup_item] run data merge entity @s {CustomName:'[{"text":"Powerup","color":"gold"}]'}

execute if score !Display Powerups matches 25..27 as @e[type=item,tag=game_powerup_item] run data merge entity @s {CustomName:'[{"text":"Powerup","color":"gold"}]'}
execute if score !Display Powerups matches 28..30 as @e[type=item,tag=game_powerup_item] run data merge entity @s {CustomName:'[{"text":"P","color":"yellow"},{"text":"owerup","color":"gold"}]'}
execute if score !Display Powerups matches 31..33 as @e[type=item,tag=game_powerup_item] run data merge entity @s {CustomName:'[{"text":"Po","color":"yellow"},{"text":"werup","color":"gold"}]'}
execute if score !Display Powerups matches 34..36 as @e[type=item,tag=game_powerup_item] run data merge entity @s {CustomName:'[{"text":"Pow","color":"yellow"},{"text":"erup","color":"gold"}]'}
execute if score !Display Powerups matches 37..39 as @e[type=item,tag=game_powerup_item] run data merge entity @s {CustomName:'[{"text":"Powe","color":"yellow"},{"text":"rup","color":"gold"}]'}
execute if score !Display Powerups matches 40..42 as @e[type=item,tag=game_powerup_item] run data merge entity @s {CustomName:'[{"text":"Power","color":"yellow"},{"text":"up","color":"gold"}]'}
execute if score !Display Powerups matches 43..45 as @e[type=item,tag=game_powerup_item] run data merge entity @s {CustomName:'[{"text":"Poweru","color":"yellow"},{"text":"p","color":"gold"}]'}
execute if score !Display Powerups matches 46..48 as @e[type=item,tag=game_powerup_item] run data merge entity @s {CustomName:'[{"text":"Powerup","color":"yellow"}]'}

# Flame particle
execute as @e[type=item,tag=game_powerup_item] at @s positioned ^ ^ ^0.3 run particle minecraft:flame ~ ~0.1 ~ 0 0 0 0 1 force @a[tag=In_game]
execute as @e[type=item,tag=game_powerup_item] at @s run teleport @s ~ ~ ~ ~10 ~