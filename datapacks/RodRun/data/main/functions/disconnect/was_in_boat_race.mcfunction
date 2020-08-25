# Manage player
teleport @s -10 14.1 -42 90 0

# Kill boat
tag @s add Kill_own_boat
execute as @e[type=boat,tag=boat_race] if score @s Lobby_boat_id = @a[tag=Kill_own_boat,limit=1] Players_id run kill @s
execute as @e[type=area_effect_cloud,tag=boat_race] if score @s Lobby_boat_id = @a[tag=Kill_own_boat,limit=1] Players_id run kill @s
tag @s remove Kill_own_boat

# Tags managment
tag @s remove In_boat_race
tag @s remove Boat_race
tag @s remove Boat_race_init
tag @s remove Boat_race_start_part
tag @s remove Not_in_boat
tag @s add Ready

# Timer reset
scoreboard players reset @s Lobby_boat_timer
scoreboard players reset @s Lobby_boat_m
scoreboard players reset @s Lobby_boat_s
scoreboard players reset @s Lobby_boat_cs
title @s actionbar {"text":""}