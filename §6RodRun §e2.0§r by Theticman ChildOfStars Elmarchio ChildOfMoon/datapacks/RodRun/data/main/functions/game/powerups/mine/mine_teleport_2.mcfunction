# Tag add
tag @s add Mine_button_teleport

# Select mine main to execute function
execute as @e[name=game_mine,type=armor_stand,distance=..3] if score @s Mine_id = @e[tag=Mine_button_teleport,limit=1] Mine_id run function main:game/powerups/mine/mine_teleport

# Remove tag
tag @s remove Mine_button_teleport
