# Reset if there isn't anybody
execute if score !State Space_game matches 1.. unless entity @a[tag=In_lobby_space_game] run scoreboard players set !Score Space_game -1
execute if score !State Space_game matches 1.. unless entity @a[tag=In_lobby_space_game] run scoreboard players set !State Space_game 3

# Move player inside outside
execute if score !State Space_game matches 1..3 run teleport @a[tag=!In_lobby_space_game,x=26,y=15,z=-25,dx=4,dy=3,dz=10] 20 16 -20 -90 0

# Start new game
execute if score !State Space_game matches 1 run function main:lobby/space_game/starting_squence

# Ending sequence
execute if score !State Space_game matches 3 run function main:lobby/space_game/reset

# Move player
execute if score !State Space_game matches 2 run function main:lobby/space_game/move_player

# Add score
execute if score !State Space_game matches 2 run scoreboard players add !Score Space_game 1

# Restart music
execute if score !State Space_game matches 2 if score !Score Space_game matches 4620 as @a[tag=In_lobby_space_game] run function space_game:play
execute if score !State Space_game matches 2 if score !Score Space_game matches 9240 as @a[tag=In_lobby_space_game] run function space_game:play
execute if score !State Space_game matches 2 if score !Score Space_game matches 13860 as @a[tag=In_lobby_space_game] run function space_game:play

# Summon asteroids
execute if score !State Space_game matches 2 run function main:lobby/space_game/random_summon

# Asteroids go down
execute if score !State Space_game matches 2 as @e[type=armor_stand,name=space_game_asteroid] at @s run teleport @s ~ ~-0.02 ~
execute if score !State Space_game matches 2 if score !Score Space_game matches 200.. as @e[type=armor_stand,name=space_game_asteroid] at @s run teleport @s ~ ~-0.01 ~
execute if score !State Space_game matches 2 if score !Score Space_game matches 400.. as @e[type=armor_stand,name=space_game_asteroid] at @s run teleport @s ~ ~-0.01 ~
execute if score !State Space_game matches 2 if score !Score Space_game matches 600.. as @e[type=armor_stand,name=space_game_asteroid] at @s run teleport @s ~ ~-0.01 ~
execute if score !State Space_game matches 2 if score !Score Space_game matches 800.. as @e[type=armor_stand,name=space_game_asteroid] at @s run teleport @s ~ ~-0.01 ~

execute if score !State Space_game matches 2 if score !Score Space_game matches 1000.. as @e[type=armor_stand,name=space_game_asteroid] at @s run teleport @s ~ ~-0.008 ~
execute if score !State Space_game matches 2 if score !Score Space_game matches 1200.. as @e[type=armor_stand,name=space_game_asteroid] at @s run teleport @s ~ ~-0.008 ~
execute if score !State Space_game matches 2 if score !Score Space_game matches 1400.. as @e[type=armor_stand,name=space_game_asteroid] at @s run teleport @s ~ ~-0.008 ~
execute if score !State Space_game matches 2 if score !Score Space_game matches 1600.. as @e[type=armor_stand,name=space_game_asteroid] at @s run teleport @s ~ ~-0.008 ~
execute if score !State Space_game matches 2 if score !Score Space_game matches 1800.. as @e[type=armor_stand,name=space_game_asteroid] at @s run teleport @s ~ ~-0.008 ~

execute if score !State Space_game matches 2 if score !Score Space_game matches 2000.. as @e[type=armor_stand,name=space_game_asteroid] at @s run teleport @s ~ ~-0.006 ~
execute if score !State Space_game matches 2 if score !Score Space_game matches 2200.. as @e[type=armor_stand,name=space_game_asteroid] at @s run teleport @s ~ ~-0.006 ~
execute if score !State Space_game matches 2 if score !Score Space_game matches 2400.. as @e[type=armor_stand,name=space_game_asteroid] at @s run teleport @s ~ ~-0.006 ~
execute if score !State Space_game matches 2 if score !Score Space_game matches 2600.. as @e[type=armor_stand,name=space_game_asteroid] at @s run teleport @s ~ ~-0.006 ~
execute if score !State Space_game matches 2 if score !Score Space_game matches 2800.. as @e[type=armor_stand,name=space_game_asteroid] at @s run teleport @s ~ ~-0.006 ~

execute if score !State Space_game matches 2 if score !Score Space_game matches 3000.. as @e[type=armor_stand,name=space_game_asteroid] at @s run teleport @s ~ ~-0.003 ~
execute if score !State Space_game matches 2 if score !Score Space_game matches 3200.. as @e[type=armor_stand,name=space_game_asteroid] at @s run teleport @s ~ ~-0.003 ~
execute if score !State Space_game matches 2 if score !Score Space_game matches 3400.. as @e[type=armor_stand,name=space_game_asteroid] at @s run teleport @s ~ ~-0.003 ~
execute if score !State Space_game matches 2 if score !Score Space_game matches 3600.. as @e[type=armor_stand,name=space_game_asteroid] at @s run teleport @s ~ ~-0.003 ~
execute if score !State Space_game matches 2 if score !Score Space_game matches 3800.. as @e[type=armor_stand,name=space_game_asteroid] at @s run teleport @s ~ ~-0.003 ~

execute if score !State Space_game matches 2 if score !Score Space_game matches 4000.. as @e[type=armor_stand,name=space_game_asteroid] at @s run teleport @s ~ ~-0.001 ~
execute if score !State Space_game matches 2 if score !Score Space_game matches 4200.. as @e[type=armor_stand,name=space_game_asteroid] at @s run teleport @s ~ ~-0.001 ~
execute if score !State Space_game matches 2 if score !Score Space_game matches 4400.. as @e[type=armor_stand,name=space_game_asteroid] at @s run teleport @s ~ ~-0.001 ~
execute if score !State Space_game matches 2 if score !Score Space_game matches 4600.. as @e[type=armor_stand,name=space_game_asteroid] at @s run teleport @s ~ ~-0.001 ~
execute if score !State Space_game matches 2 if score !Score Space_game matches 4800.. as @e[type=armor_stand,name=space_game_asteroid] at @s run teleport @s ~ ~-0.001 ~

execute if score !State Space_game matches 2 if score !Score Space_game matches 5000.. as @e[type=armor_stand,name=space_game_asteroid] at @s run teleport @s ~ ~-0.0005 ~
execute if score !State Space_game matches 2 if score !Score Space_game matches 5200.. as @e[type=armor_stand,name=space_game_asteroid] at @s run teleport @s ~ ~-0.0005 ~
execute if score !State Space_game matches 2 if score !Score Space_game matches 5400.. as @e[type=armor_stand,name=space_game_asteroid] at @s run teleport @s ~ ~-0.0005 ~
execute if score !State Space_game matches 2 if score !Score Space_game matches 5600.. as @e[type=armor_stand,name=space_game_asteroid] at @s run teleport @s ~ ~-0.0005 ~
execute if score !State Space_game matches 2 if score !Score Space_game matches 5800.. as @e[type=armor_stand,name=space_game_asteroid] at @s run teleport @s ~ ~-0.0005 ~

# Set score
execute if score !State Space_game matches 2 run data merge block 28 16 -20 {Text1:'{"text":"-==oOo==-","color":"dark_gray"}',Text2:'{"text":"Score:","color":"yellow"}',Text3:'{"score":{"name":"!Score","objective":"Space_game"},"color":"gold"}',Text4:'{"text":"-==oOo==-","color":"dark_gray"}'}
execute if score !State Space_game matches 2 run data merge block 29 18 -17 {Text1:'{"text":"-==oOo==-","color":"dark_gray"}',Text2:'{"text":"Score:","color":"yellow"}',Text3:'{"score":{"name":"!Score","objective":"Space_game"},"color":"gold"}',Text4:'{"text":"-==oOo==-","color":"dark_gray"}'}
execute if score !State Space_game matches 2 run data merge block 29 18 -23 {Text1:'{"text":"-==oOo==-","color":"dark_gray"}',Text2:'{"text":"Score:","color":"yellow"}',Text3:'{"score":{"name":"!Score","objective":"Space_game"},"color":"gold"}',Text4:'{"text":"-==oOo==-","color":"dark_gray"}'}

# Kill when at the bottom
execute if score !State Space_game matches 2 run kill @e[x=29,y=15,z=-22,dx=0,dy=0.4,dz=4,name=space_game_asteroid,type=minecraft:armor_stand]

# Hit detection
execute if score !State Space_game matches 2 as @e[name=space_game_player,type=minecraft:armor_stand] at @s positioned ~ ~0.1 ~ if entity @e[name=space_game_asteroid,type=minecraft:armor_stand,distance=..0.3] run scoreboard players set !State Space_game 3
