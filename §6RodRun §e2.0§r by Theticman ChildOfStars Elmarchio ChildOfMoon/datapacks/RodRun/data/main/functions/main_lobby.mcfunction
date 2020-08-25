# Spawn
function main:lobby/spawn/spawn

# Ready / not ready system
function main:lobby/main_ready

# Afk test
function main:lobby/main_afk

# Ender chests
function main:lobby/main_ender_chest

# Options
function main:lobby/main_options

# Count ready
function main:lobby/others/count_ready

# Table system
function main:lobby/main_table

# Lock blocks
function main:lobby/lock_blocks

# Carrots no break
function main:lobby/main_plantations

# Boat
function main:lobby/main_boat

# Ladder
function main:lobby/main_ladder

# Others
function main:lobby/main_others

# Theatre
function main:lobby/main_space_game

# Tester room
function main:lobby/main_tester_room

# Bar
function main:lobby/main_bar

# Gold pressure plate
execute unless block 31 22 -42 minecraft:light_weighted_pressure_plate[power=0] run teleport @a[x=31.5,y=22.0,z=-41.5,distance=..1,limit=1] 29 22 -42 90 0

# Informations
function main:lobby/main_informations

# Friends
function main:lobby/main_friends

# Jump
function main:lobby/main_jump

# Tips
function main:lobby/main_tips