# Block door
execute if score !Timer Whitehouse_door matches ..0 run scoreboard players set !State Whitehouse_door 0

# Up
execute if score !Timer Whitehouse_door matches 1..50 run execute as @e[name=game_whitehouse_door,type=minecraft:armor_stand] at @s run teleport @s ~ ~0.06 ~

# Timer up
execute if score !State Whitehouse_door matches 2 run scoreboard players remove !Timer Whitehouse_door 1

# Barrier
execute as @e[name=game_whitehouse_door,type=minecraft:armor_stand,tag=top] at @s run fill ~ ~1 ~ ~ ~1 ~ barrier replace air 
