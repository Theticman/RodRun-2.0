# BLock door
execute if score !Timer Whitehouse_door matches 70.. run scoreboard players set !State Whitehouse_door 0

# Timer down
execute if score !State Whitehouse_door matches 1 run scoreboard players add !Timer Whitehouse_door 1

# Down
execute if score !Timer Whitehouse_door matches 1..50 run execute as @e[name=game_whitehouse_door,type=minecraft:armor_stand] at @s run teleport @s ~ ~-0.06 ~
execute if score !Timer Whitehouse_door matches 70 run scoreboard players set !State Whitehouse_door 0

# Barrier
execute as @e[name=game_whitehouse_door,type=minecraft:armor_stand,tag=top] at @s run fill ~ ~3.5 ~ ~ ~3.5 ~ air replace barrier