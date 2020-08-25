# Add page
scoreboard players add !Map_1_page Informations 1
execute if score !Map_1_page Informations matches 9.. run scoreboard players set !Map_1_page Informations 1

# Run function
execute if score !Map_1_page Informations matches 1 run function main:lobby/informations/map_1/page_1
execute if score !Map_1_page Informations matches 2 run function main:lobby/informations/map_1/page_2
execute if score !Map_1_page Informations matches 3 run function main:lobby/informations/map_1/page_3
execute if score !Map_1_page Informations matches 4 run function main:lobby/informations/map_1/page_4
execute if score !Map_1_page Informations matches 5 run function main:lobby/informations/map_1/page_5
execute if score !Map_1_page Informations matches 6 run function main:lobby/informations/map_1/page_6
execute if score !Map_1_page Informations matches 7 run function main:lobby/informations/map_1/page_7
execute if score !Map_1_page Informations matches 8 run function main:lobby/informations/map_1/page_8

# Playsound
execute at @s run playsound minecraft:ui.button.click master @s