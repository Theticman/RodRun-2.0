# Test rotations
execute store result score !Test AFK_rot_x run data get entity @s Rotation[0] 100
execute unless score !Test AFK_rot_x = @s AFK_rot_x run scoreboard players set @s AFK_timer 0

execute store result score !Test AFK_rot_y run data get entity @s Rotation[1] 100
execute unless score !Test AFK_rot_y = @s AFK_rot_y run scoreboard players set @s AFK_timer 0

# Test positions
scoreboard players operation @s AFK_move += @s AFK_walk
scoreboard players operation @s AFK_move += @s AFK_sprint
scoreboard players operation @s AFK_move += @s AFK_crouch
scoreboard players operation @s AFK_move += @s AFK_fly
execute if score @s AFK_move matches 1.. run scoreboard players set @s AFK_timer 0

# Update
function main:lobby/afk/update
