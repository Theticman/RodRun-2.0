# Teleport villager facing
execute as @e[type=villager,tag=lobby_bar_click,limit=1] at @s run teleport @s ~ ~ ~ facing entity @p

# Store rotation
execute store result score !Head_rot_x Lobby_bar run data get entity @e[type=villager,tag=lobby_bar_click,limit=1] Rotation[0] 1
execute store result score !Head_rot_y Lobby_bar run data get entity @e[type=villager,tag=lobby_bar_click,limit=1] Rotation[1] 1

scoreboard players add !Head_rot_x Lobby_bar 180
execute if score !Head_rot_y Lobby_bar matches 0 run scoreboard players add !Head_rot_y Lobby_bar 1

# Adjust head
execute store result entity @e[type=minecraft:armor_stand,tag=lobby_bar_barman,limit=1] Pose.Head[1] float 1 run scoreboard players get !Head_rot_x Lobby_bar
execute store result entity @e[type=minecraft:armor_stand,tag=lobby_bar_barman,limit=1] Pose.Head[0] float 1 run scoreboard players get !Head_rot_y Lobby_bar