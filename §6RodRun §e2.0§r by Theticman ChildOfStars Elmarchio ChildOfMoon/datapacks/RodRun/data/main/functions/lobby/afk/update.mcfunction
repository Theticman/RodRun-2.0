# Update rotation
execute store result score @s AFK_rot_x run data get entity @s Rotation[0] 100
execute store result score @s AFK_rot_y run data get entity @s Rotation[1] 100

# Update position
scoreboard players reset @s AFK_walk
scoreboard players reset @s AFK_sprint
scoreboard players reset @s AFK_crouch
scoreboard players reset @s AFK_fly
scoreboard players reset @s AFK_move