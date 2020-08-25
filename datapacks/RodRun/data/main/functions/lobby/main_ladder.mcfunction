# Start animation
execute if block -7 25 -25 minecraft:spruce_button[powered=true] if score !State Lobby_ladder matches 0 run particle minecraft:witch -6.47 25.44 -24.13 0 0 0 0 10
execute if block -7 25 -25 minecraft:spruce_button[powered=true] if score !State Lobby_ladder matches 0 run scoreboard players set !State Lobby_ladder 1

# === Timer === #
# Timer add
execute if score !State Lobby_ladder matches 1.. run scoreboard players add !Timer Lobby_ladder 1
execute if score !Timer Lobby_ladder matches 0 run kill @e[type=minecraft:armor_stand,name=lobby_ladder]

# Summon ladder
execute if score !Timer Lobby_ladder matches 0..140 run function main:lobby/ladder/summon_init

# Move ladder down
execute if score !Timer Lobby_ladder matches 0..140 run execute as @e[name=lobby_ladder,type=minecraft:armor_stand] at @s run teleport @s ~ ~-0.07 ~

execute if score !Timer Lobby_ladder matches 140 run scoreboard players set !State Lobby_ladder 2

execute if score !Timer Lobby_ladder matches 140..260 run effect clear @a[tag=In_lobby] minecraft:levitation
execute if score !Timer Lobby_ladder matches 140..260 run effect give @a[tag=In_lobby,x=-8,y=25,z=-26,dx=0,dy=5,dz=0] minecraft:levitation 1 4 true
execute if score !Timer Lobby_ladder matches 120..260 run particle rain -8 35.5 -26 .2 0 .2 0 10 normal @a

execute if score !Timer Lobby_ladder matches 260 run scoreboard players set !State Lobby_ladder 3

# Move ladder up
execute if score !Timer Lobby_ladder matches 260..400 run execute as @e[name=lobby_ladder,type=minecraft:armor_stand] at @s run teleport @s ~ ~0.07 ~
execute if score !Timer Lobby_ladder matches 260..400 run kill @e[x=-8,y=36,z=-25,distance=..1.1,type=minecraft:armor_stand,name=lobby_ladder]

# === End timer === #
execute if score !Timer Lobby_ladder matches 400.. run scoreboard players set !State Lobby_ladder 0
execute if score !Timer Lobby_ladder matches 400.. run scoreboard players set !Timer Lobby_ladder -1

# Particle
particle rain -8 35.5 -26 .2 0 .2 0 1 normal @a