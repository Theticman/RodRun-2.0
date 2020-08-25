# Enter boat
execute if score !State Lobby_boat matches 1 run function main:lobby/boat/enter_boat

# Exit stat part
execute if score !State Lobby_boat matches 2 run function main:lobby/boat/exit_start_part

# Still in boat
execute as @a[tag=Boat_race] run function main:lobby/boat/still_in_boat

# Not on track
execute as @e[type=boat,tag=boat_race,nbt={OnGround:1b}] run function main:lobby/boat/not_on_track

# Bumpers
function main:lobby/boat/bumpers

# Timer
execute as @a[tag=Boat_race] run function main:lobby/boat/timer

# End race
execute as @a[tag=Boat_race,x=-17,y=32,z=-44,dx=1,dy=0,dz=5] run function main:lobby/boat/end_race

# Display
function main:lobby/boat/podium/display_name