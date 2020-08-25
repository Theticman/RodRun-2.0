# Recursive function
scoreboard players add !Count_particle Informations 1
particle minecraft:witch ~ ~ ~ 0 0 0 0 1 normal

execute if score !Count_particle Informations matches 0..10 positioned ^ ^ ^.2 rotated ~ ~4 run function main:lobby/informations/door/particle
execute if score !Count_particle Informations matches 11..20 positioned ^ ^ ^.4 run function main:lobby/informations/door/particle
execute if score !Count_particle Informations matches 21.. run scoreboard players set !Count_particle Informations -1