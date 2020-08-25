# First bumper
execute if entity @e[type=boat,x=-32,y=9,z=-43,dx=3,dy=0.8,dz=3] if score !Bumper1 Lobby_boat matches -1 run scoreboard players set !Bumper1 Lobby_boat 5
execute if score !Bumper1 Lobby_boat matches 5 run setblock -30 7 -41 minecraft:redstone_block
execute if score !Bumper1 Lobby_boat matches 4 run setblock -30 7 -42 minecraft:redstone_block
execute if score !Bumper1 Lobby_boat matches 0.. run scoreboard players remove !Bumper1 Lobby_boat 1

# Second bumper
execute if entity @e[type=boat,x=-25,y=20,z=-43,dx=3,dy=0.8,dz=3] if score !Bumper2 Lobby_boat matches -1 run scoreboard players set !Bumper2 Lobby_boat 5
execute if score !Bumper2 Lobby_boat matches 5 run setblock -23 18 -41 minecraft:redstone_block
execute if score !Bumper2 Lobby_boat matches 4 run setblock -23 18 -42 minecraft:redstone_block
execute if score !Bumper2 Lobby_boat matches 0.. run scoreboard players remove !Bumper2 Lobby_boat 1
