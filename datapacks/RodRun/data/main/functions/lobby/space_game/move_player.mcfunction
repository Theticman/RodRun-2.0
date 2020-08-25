# Move Right
execute if entity @a[tag=In_lobby_space_game,x=27.0,y=16,z=-19.1,dx=1,dy=1,dz=0] as @e[name=space_game_player,type=armor_stand] at @s run teleport @s ~ ~ ~0.5
execute if entity @a[tag=In_lobby_space_game,x=27.0,y=16,z=-19.1,dx=1,dy=1,dz=0] run teleport @a[tag=In_lobby_space_game] 27 16 -20 -90 -15

# Move left
execute if entity @a[tag=In_lobby_space_game,x=27.0,y=16,z=-20.9,dx=1,dy=1,dz=0] as @e[name=space_game_player,type=armor_stand] at @s run teleport @s ~ ~ ~-0.5
execute if entity @a[tag=In_lobby_space_game,x=27.0,y=16,z=-20.9,dx=1,dy=1,dz=0] run teleport @a[tag=In_lobby_space_game] 27 16 -20 -90 -15

# Limits
execute as @e[x=29,y=16.5,z=-16.6,distance=..1,name=space_game_player,type=armor_stand] at @s run teleport @s ~ ~ ~-0.5
execute as @e[x=29,y=16.5,z=-22.4,distance=..1,name=space_game_player,type=armor_stand] at @s run teleport @s ~ ~ ~0.5