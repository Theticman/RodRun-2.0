# Kill bobber
execute as @e[type=armor_stand,name=game_whitehouse_door] at @s positioned ~ ~1.58 ~ run kill @e[type=minecraft:fishing_bobber,distance=..0.001]

# Detect open/close
execute if entity @a[x=490,y=20,z=-24,distance=5..8,gamemode=adventure] run scoreboard players set !State Whitehouse_door 2
execute if entity @a[x=490,y=20,z=-24,distance=..5,gamemode=adventure] run scoreboard players set !State Whitehouse_door 1

# Move door
execute if score !State Whitehouse_door matches 1 run function main:game/custom_maps/whitehouse/door/move_down
execute if score !State Whitehouse_door matches 2 run function main:game/custom_maps/whitehouse/door/move_up
