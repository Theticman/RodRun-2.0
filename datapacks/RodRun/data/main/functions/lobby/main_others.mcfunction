# Effects
function main:lobby/others/effects

# Lock blocks
function main:lobby/others/lock_blocks

# Spectate item
execute if score !State Gamestate matches 2 run function main:lobby/others/spectate_item

# Stats item
function main:lobby/stats/stats_head

# Lever
execute if block 43 15 -38 lever[powered=true] run function main:lobby/others/lever

# Ladders
function main:lobby/others/ladder

# Painting
function main:lobby/others/painting

# Teleport support boat race
function main:lobby/others/boat_support_teleport

# Game start display
function main:lobby/others/game_start_display

# Kick exit boat race
execute as @a[tag=!Boat_race,nbt={Tags:["In_lobby"]},x=-20,y=31,z=-45,dx=4,dy=3,dz=7] run function main:lobby/others/kick_finish

# Unlock kill effect
function main:lobby/others/unlock_kill_effect

# Crash
execute as @a[scores={Crash=-200..}] run function main:lobby/others/crash