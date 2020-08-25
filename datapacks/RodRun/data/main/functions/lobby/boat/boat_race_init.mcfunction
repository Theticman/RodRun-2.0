# Error messages
execute if score !State Lobby_boat matches 1 run tellraw @s [{"text":"Someone is already starting"}]
execute if score !State Lobby_boat matches 2 run tellraw @s [{"text":"Let the other a little bit of time"}]

# Start
tag @s add Boat_race_init
execute if score !State Lobby_boat matches 1.. run tag @s remove Boat_race_init
execute if entity @a[tag=Boat_race_init] run scoreboard players set !State Lobby_boat 1

tag @s[tag=Boat_race_init] add In_boat_race
tag @s[tag=Boat_race_init] remove Ready
clear @s[tag=Boat_race_init]
teleport @s[tag=Boat_race_init] -9.5 14.0 -45.0 180 30

execute if entity @a[tag=Boat_race_init] run summon minecraft:boat -10 14 -48 {Invulnerable:1b,Rotation:[180f],Tags:["boat_need_id","boat_race"],Passengers:[{id:"minecraft:area_effect_cloud",Duration:2000000000,Tags:["boat_need_id","boat_race"]}]}
scoreboard players operation @e[tag=boat_need_id] Lobby_boat_id = @s[tag=Boat_race_init] Players_id
tag @e[tag=boat_need_id] remove boat_need_id

# Manage blocks
execute if entity @a[tag=Boat_race_init] run fill -11 14 -44 -9 15 -44 minecraft:red_stained_glass_pane
execute if entity @a[tag=Boat_race_init] run fill -11 14 -45 -9 14 -45 air destroy