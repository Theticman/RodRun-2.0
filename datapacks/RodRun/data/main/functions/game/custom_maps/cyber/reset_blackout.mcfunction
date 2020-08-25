# Reset scores
scoreboard players set !Lever_1 Cyber_lever 0
scoreboard players set !Lever_2 Cyber_lever 0
scoreboard players set !Lever_1_timer Cyber_lever -1
scoreboard players set !Lever_2_timer Cyber_lever -1
scoreboard players set !Blackout Cyber_lever -1

# Replace blocks
setblock -290 43 12 minecraft:redstone_lamp[lit=false]
setblock -310 43 -12 minecraft:redstone_lamp[lit=false]

setblock -290 45 12 minecraft:lever[powered=false,face=floor,facing=south]
setblock -310 45 -12 minecraft:lever[powered=false,face=floor,facing=north]