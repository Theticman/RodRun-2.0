# Keep falling blocks
execute as @e[tag=Lobby_table_falling_block,type=minecraft:falling_block] run data merge entity @s {Time:100}

# Open init
execute if block 17 22 -37 minecraft:birch_button[powered=true] if score !Timer Lobby_table matches -1 run function main:lobby/table/init_open

# Opeing squence
execute if score !Timer Lobby_table matches 0.. run function main:lobby/table/animation