# Lever 1 On
execute if block -510 45 -512 lever[powered=true] if score !Lever_1 Cyber_lever matches 0 positioned -290 45 12 run playsound minecraft:block.beacon.activate master @a
execute if block -510 45 -512 lever[powered=true] if score !Lever_1 Cyber_lever matches 0 run scoreboard players set !Lever_1 Cyber_lever 1

# Lever 2 On
execute if block -490 45 -488 lever[powered=true] if score !Lever_2 Cyber_lever matches 0 positioned -310 45 -12 run playsound minecraft:block.beacon.activate master @a
execute if block -490 45 -488 lever[powered=true] if score !Lever_2 Cyber_lever matches 0 run scoreboard players set !Lever_2 Cyber_lever 1