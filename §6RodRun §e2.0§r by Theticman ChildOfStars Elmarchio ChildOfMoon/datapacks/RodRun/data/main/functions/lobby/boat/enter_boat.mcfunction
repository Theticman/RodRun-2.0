# Teleport player out
teleport @a[tag=!Boat_race_init,x=-11,y=14,z=-45,dx=2,dy=2,dz=.14] -10 14.1 -42 -180 0

# Title
title @a[tag=Boat_race_init] times 0 10 10
title @a[tag=Boat_race_init] title {"text":""}
title @a[tag=Boat_race_init] subtitle {"text":"Enter the boat to start the race!","color":"yellow"}

# Timer add
scoreboard players add !Start_timer Lobby_boat 1

# Test if in boat
execute as @a[tag=Boat_race_init] at @s if entity @e[type=boat,distance=..1] run tag @s add Boat_race_start_part

# Start part
tag @a[tag=Boat_race_start_part] remove Boat_race_init
tag @a[tag=Boat_race_start_part] add Boat_race
execute as @a[tag=Boat_race_start_part] at @s run playsound minecraft:block.note_block.pling master @s
title @a[tag=Boat_race_start_part] title {"text":"Let's go!","color":"yellow"}
title @a[tag=Boat_race_start_part] subtitle {"text":""}

execute if entity @a[tag=Boat_race_start_part] run scoreboard players set !State Lobby_boat 2
execute if entity @a[tag=Boat_race_start_part] run scoreboard players set !Start_timer Lobby_boat -1

# Reset if too long
execute if score !Start_timer Lobby_boat matches 60.. run scoreboard players set !State Lobby_boat 0
execute if score !Start_timer Lobby_boat matches 60.. as @a[tag=Boat_race_init] run function main:lobby/boat/reset_player
execute if score !Start_timer Lobby_boat matches 60.. run kill @e[type=boat,x=-10,y=13,z=-48,distance=..2]
execute if score !Start_timer Lobby_boat matches 60.. run function main:lobby/boat/place_blocks
execute if score !Start_timer Lobby_boat matches 60.. run scoreboard players set !Start_timer Lobby_boat -1
