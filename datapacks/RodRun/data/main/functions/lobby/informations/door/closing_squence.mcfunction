# Timer
scoreboard players add !Door_timer Informations 1

# Close door
execute if score !Door_timer Informations matches 230 run function main:lobby/informations/door/move_down
execute if score !Door_timer Informations matches 240 run function main:lobby/informations/door/move_down
execute if score !Door_timer Informations matches 250 run function main:lobby/informations/door/move_down
execute if score !Door_timer Informations matches 260 run function main:lobby/informations/door/move_down
execute if score !Door_timer Informations matches 270 run function main:lobby/informations/door/move_down
execute if score !Door_timer Informations matches 280 run function main:lobby/informations/door/move_down

# Keep people safe
execute if score !Door_timer Informations matches 249..280 as @a[x=61,y=27,z=-123,dx=0,dy=3,dz=6] at @s run teleport @s ~1 ~ ~

# Replace button
execute if score !Door_timer Informations matches 300 run setblock 55 26 -120 minecraft:spruce_button[face=floor,facing=east]
execute if score !Door_timer Informations matches 300 run setblock 62 32 -120 minecraft:spruce_button[face=ceiling,facing=east]

# Reset
execute if score !Door_timer Informations matches 300 run scoreboard players set !Door_timer Informations -1