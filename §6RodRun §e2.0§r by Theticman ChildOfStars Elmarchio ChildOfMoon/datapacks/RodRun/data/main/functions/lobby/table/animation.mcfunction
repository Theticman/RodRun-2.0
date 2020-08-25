# Timer add / reset
scoreboard players add !Timer Lobby_table 1
execute if score !Timer Lobby_table matches 122.. run scoreboard players set !Timer Lobby_table -1

# Opening squence
# Get positions
execute if score !Timer Lobby_table matches 1 run execute store result score !Pos_bottom Lobby_table run data get entity @e[type=minecraft:armor_stand,name=Lobby_table_holder,tag=Lobby_table_bottom,limit=1] Pos[2] 1000
execute if score !Timer Lobby_table matches 1 run execute store result score !Pos_top Lobby_table run data get entity @e[type=minecraft:armor_stand,name=Lobby_table_holder,tag=Lobby_table_top,limit=1] Pos[2] 1000
execute if score !Timer Lobby_table matches 1 run execute store result score !Pos_middle_right Lobby_table run data get entity @e[type=minecraft:armor_stand,name=Lobby_table_holder,tag=Lobby_table_middle_right,limit=1] Pos[2] 1000
execute if score !Timer Lobby_table matches 1 run execute store result score !Pos_middle_left Lobby_table run data get entity @e[type=minecraft:armor_stand,name=Lobby_table_holder,tag=Lobby_table_middle_left,limit=1] Pos[2] 1000
execute if score !Timer Lobby_table matches 1 run scoreboard players set !Speed Lobby_table 0
execute if score !Timer Lobby_table matches 1 run scoreboard players set !Speed2 Lobby_table 0

# Update speed
execute if score !Timer Lobby_table matches 1..20 run scoreboard players operation !Speed Lobby_table += !Acceleration Lobby_table
execute if score !Timer Lobby_table matches 1..20 run scoreboard players operation !Speed2 Lobby_table += !Acceleration2 Lobby_table
execute if score !Timer Lobby_table matches 21..40 run scoreboard players operation !Speed Lobby_table -= !Acceleration Lobby_table
execute if score !Timer Lobby_table matches 21..40 run scoreboard players operation !Speed2 Lobby_table -= !Acceleration2 Lobby_table

execute if score !Timer Lobby_table matches 81..100 run scoreboard players operation !Speed Lobby_table += !Acceleration Lobby_table
execute if score !Timer Lobby_table matches 81..100 run scoreboard players operation !Speed2 Lobby_table += !Acceleration2 Lobby_table
execute if score !Timer Lobby_table matches 101..120 run scoreboard players operation !Speed Lobby_table -= !Acceleration Lobby_table
execute if score !Timer Lobby_table matches 101..120 run scoreboard players operation !Speed2 Lobby_table -= !Acceleration2 Lobby_table

# Update position
execute if score !Timer Lobby_table matches 1..40 run scoreboard players operation !Pos_top Lobby_table += !Speed Lobby_table
execute if score !Timer Lobby_table matches 1..40 run scoreboard players operation !Pos_bottom Lobby_table -= !Speed Lobby_table
execute if score !Timer Lobby_table matches 1..40 run scoreboard players operation !Pos_middle_right Lobby_table += !Speed2 Lobby_table
execute if score !Timer Lobby_table matches 1..40 run scoreboard players operation !Pos_middle_left Lobby_table -= !Speed2 Lobby_table

execute if score !Timer Lobby_table matches 81..120 run scoreboard players operation !Pos_top Lobby_table -= !Speed Lobby_table
execute if score !Timer Lobby_table matches 81..120 run scoreboard players operation !Pos_bottom Lobby_table += !Speed Lobby_table
execute if score !Timer Lobby_table matches 81..120 run scoreboard players operation !Pos_middle_right Lobby_table -= !Speed2 Lobby_table
execute if score !Timer Lobby_table matches 81..120 run scoreboard players operation !Pos_middle_left Lobby_table += !Speed2 Lobby_table

# Change position
execute if score !Timer Lobby_table matches 1..120 run execute as @e[type=minecraft:armor_stand,name=Lobby_table_holder,tag=Lobby_table_bottom] store result entity @s Pos[2] double 0.001 run scoreboard players get !Pos_bottom Lobby_table
execute if score !Timer Lobby_table matches 1..120 run execute as @e[type=minecraft:armor_stand,name=Lobby_table_holder,tag=Lobby_table_top] store result entity @s Pos[2] double 0.001 run scoreboard players get !Pos_top Lobby_table
execute if score !Timer Lobby_table matches 1..120 run execute as @e[type=minecraft:armor_stand,name=Lobby_table_holder,tag=Lobby_table_middle_right] store result entity @s Pos[2] double 0.001 run scoreboard players get !Pos_middle_right Lobby_table
execute if score !Timer Lobby_table matches 1..120 run execute as @e[type=minecraft:armor_stand,name=Lobby_table_holder,tag=Lobby_table_middle_left] store result entity @s Pos[2] double 0.001 run scoreboard players get !Pos_middle_left Lobby_table

# Barrier
execute if score !Timer Lobby_table matches 10 run fill 18 21 -42 17 21 -42 minecraft:air
execute if score !Timer Lobby_table matches 10 run fill 18 20 -41 17 20 -43 minecraft:air
execute if score !Timer Lobby_table matches 30 run fill 18 21 -41 17 21 -41 minecraft:air
execute if score !Timer Lobby_table matches 30 run fill 18 21 -43 17 21 -43 minecraft:air

execute if score !Timer Lobby_table matches 90 run fill 18 21 -41 17 21 -41 minecraft:barrier
execute if score !Timer Lobby_table matches 90 run fill 18 21 -43 17 21 -43 minecraft:barrier
execute if score !Timer Lobby_table matches 90 run fill 18 20 -41 17 20 -41 minecraft:jungle_slab[type=top]
execute if score !Timer Lobby_table matches 90 run fill 18 20 -43 17 20 -43 minecraft:jungle_slab[type=top]
execute if score !Timer Lobby_table matches 110 run fill 18 21 -42 17 21 -42 minecraft:barrier
execute if score !Timer Lobby_table matches 110 run fill 18 20 -42 17 20 -42 minecraft:jungle_slab[type=top]



# Reset door
execute if score !Timer Lobby_table matches 121 run function main:lobby/table/summon_table