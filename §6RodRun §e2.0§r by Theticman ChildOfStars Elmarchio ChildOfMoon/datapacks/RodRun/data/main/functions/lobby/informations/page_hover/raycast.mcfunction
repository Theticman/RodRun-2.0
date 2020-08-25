# Recursive
scoreboard players add !Count_hover Informations 1
execute positioned ~ ~-.9 ~ as @e[type=minecraft:armor_stand,tag=next_page,distance=...5] run function main:lobby/informations/page_hover/hover
execute if score !Count_hover Informations matches 0..6 positioned ^ ^ ^.5 run function main:lobby/informations/page_hover/raycast
execute if score !Count_hover Informations matches 7 run scoreboard players set !Count_hover Informations -1