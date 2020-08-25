# Timer add
scoreboard players add !Start_part_timer Lobby_boat 1

# Test if in boat
execute as @a[tag=Boat_race_start_part,x=-2,y=9,z=-59,distance=..3] run tag @s add Boat_race_second_start

# Start part
execute if entity @a[tag=Boat_race_second_start,nbt={Tags:["Boat_race_start_part"]}] run scoreboard players set !State Lobby_boat 0
execute if entity @a[tag=Boat_race_second_start,nbt={Tags:["Boat_race_start_part"]}] run scoreboard players set !Start_part_timer Lobby_boat -1
execute if entity @a[tag=Boat_race_second_start,nbt={Tags:["Boat_race_start_part"]}] run function main:lobby/boat/place_blocks
tag @a[tag=Boat_race_second_start,nbt={Tags:["Boat_race_start_part"]}] remove Boat_race_start_part
tag @a[tag=Boat_race_second_start] remove Boat_race_second_start

# Nobody left ?
execute unless entity @a[tag=Boat_race_start_part] run scoreboard players set !Start_part_timer Lobby_boat 300

# Reset if too long
execute if score !Start_part_timer Lobby_boat matches 300.. run scoreboard players set !State Lobby_boat 0
execute if score !Start_part_timer Lobby_boat matches 300.. as @a[tag=Boat_race_start_part] run function main:lobby/boat/reset_player
execute if score !Start_part_timer Lobby_boat matches 300.. run function main:lobby/boat/place_blocks
execute if score !Start_part_timer Lobby_boat matches 300.. run scoreboard players set !Start_part_timer Lobby_boat -1
