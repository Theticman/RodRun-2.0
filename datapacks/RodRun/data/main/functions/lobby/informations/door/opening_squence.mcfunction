# Timer
scoreboard players add !Door_timer Informations 1

# Remove button
execute if score !Door_timer Informations matches 1 run setblock 55 26 -120 air destroy
execute if score !Door_timer Informations matches 1 run setblock 62 32 -120 air destroy

# Particles
execute if score !Door_timer Informations matches 1..5 positioned 55 26 -120 rotated -90 -60 run function main:lobby/informations/door/particle
execute if score !Door_timer Informations matches 10..15 positioned 55 26 -120 rotated -110 -60 run function main:lobby/informations/door/particle
execute if score !Door_timer Informations matches 20..25 positioned 55 26 -120 rotated -70 -60 run function main:lobby/informations/door/particle

# Open door
execute if score !Door_timer Informations matches 30 run function main:lobby/informations/door/move_up
execute if score !Door_timer Informations matches 40 run function main:lobby/informations/door/move_up
execute if score !Door_timer Informations matches 50 run function main:lobby/informations/door/move_up
execute if score !Door_timer Informations matches 60 run function main:lobby/informations/door/move_up
execute if score !Door_timer Informations matches 70 run function main:lobby/informations/door/move_up
execute if score !Door_timer Informations matches 80 run function main:lobby/informations/door/move_up