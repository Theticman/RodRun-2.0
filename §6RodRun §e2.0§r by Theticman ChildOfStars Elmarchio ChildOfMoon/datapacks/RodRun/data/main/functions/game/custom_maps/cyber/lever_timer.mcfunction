# Lever 1
execute if score !Lever_1 Cyber_lever matches 1 run scoreboard players add !Lever_1_timer Cyber_lever 1
execute if score !Lever_1_timer Cyber_lever matches 0.. run setblock -510 45 -512 minecraft:lever[powered=true,face=floor,facing=south]
execute if score !Lever_1_timer Cyber_lever matches 0.. run setblock -510 43 -512 minecraft:redstone_lamp[lit=true]
execute if score !Lever_1_timer Cyber_lever matches 0.. run particle minecraft:flame -508 46.75 -500 -1 0 0 .8 0 normal @a
execute if score !Lever_1_timer Cyber_lever matches 0.. run particle minecraft:flame -508 45.75 -500 -1 0 0 .8 0 normal @a
execute if score !Lever_1_timer Cyber_lever matches 0.. run particle minecraft:flame -508 44.75 -500 -1 0 0 .8 0 normal @a
execute if score !Lever_1_timer Cyber_lever matches 200.. run setblock -510 45 -512 minecraft:lever[powered=false,face=floor,facing=south]
execute if score !Lever_1_timer Cyber_lever matches 200.. run setblock -510 43 -512 minecraft:redstone_lamp[lit=false]
execute if score !Lever_1_timer Cyber_lever matches 200.. run scoreboard players set !Lever_1 Cyber_lever 0
execute if score !Lever_1_timer Cyber_lever matches 200.. run scoreboard players set !Lever_1_timer Cyber_lever -1

# Lever 2
execute if score !Lever_2 Cyber_lever matches 1 run scoreboard players add !Lever_2_timer Cyber_lever 1
execute if score !Lever_2_timer Cyber_lever matches 0.. run setblock -490 45 -488 minecraft:lever[powered=true,face=floor,facing=north]
execute if score !Lever_2_timer Cyber_lever matches 0.. run setblock -490 43 -488 minecraft:redstone_lamp[lit=true]
execute if score !Lever_2_timer Cyber_lever matches 0.. run particle minecraft:flame -492 46.75 -500 1 0 0 .8 0 normal @a
execute if score !Lever_2_timer Cyber_lever matches 0.. run particle minecraft:flame -492 45.75 -500 1 0 0 .8 0 normal @a
execute if score !Lever_2_timer Cyber_lever matches 0.. run particle minecraft:flame -492 44.75 -500 1 0 0 .8 0 normal @a
execute if score !Lever_2_timer Cyber_lever matches 200.. run setblock -490 45 -488 minecraft:lever[powered=false,face=floor,facing=north]
execute if score !Lever_2_timer Cyber_lever matches 200.. run setblock -490 43 -488 minecraft:redstone_lamp[lit=false]
execute if score !Lever_2_timer Cyber_lever matches 200.. run scoreboard players set !Lever_2 Cyber_lever 0
execute if score !Lever_2_timer Cyber_lever matches 200.. run scoreboard players set !Lever_2_timer Cyber_lever -1
