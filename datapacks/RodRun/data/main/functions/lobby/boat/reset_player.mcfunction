# Manage player
teleport @s -10 14.1 -42 90 0

# Kill boat
tag @s add Kill_own_boat
execute as @e[type=boat,tag=boat_race] if score @s Lobby_boat_id = @a[tag=Kill_own_boat,limit=1] Players_id run kill @s
execute as @e[type=area_effect_cloud,tag=boat_race] if score @s Lobby_boat_id = @a[tag=Kill_own_boat,limit=1] Players_id run kill @s

# Title
title @s times 0 50 5
title @s title {"text":""}
title @s[tag=Boat_race_init] subtitle {"text":"You need to join the boat faster!","color":"red"}
title @s[tag=Boat_race_start_part] subtitle {"text":"Move away faster to let others race!","color":"red"}
title @s[tag=Not_in_boat] subtitle {"text":"You went off the track!","color":"red"}

# Tags managment
tag @s remove In_boat_race
tag @s remove Boat_race
tag @s remove Boat_race_init
tag @s remove Boat_race_start_part
tag @s remove Kill_own_boat
tag @s remove Not_in_boat
tag @s add Ready

# Timer reset
scoreboard players reset @s Lobby_boat_timer
scoreboard players reset @s Lobby_boat_m
scoreboard players reset @s Lobby_boat_s
scoreboard players reset @s Lobby_boat_cs
title @s actionbar {"text":""}

# PlLaysound
execute at @s run playsound minecraft:entity.villager.no master @s