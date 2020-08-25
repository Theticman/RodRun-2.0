# Add page
scoreboard players add !Options_page Informations 1
execute if score !Options_page Informations matches 10.. run scoreboard players set !Options_page Informations 1

# Run function
execute if score !Options_page Informations matches 1 run function main:lobby/informations/options/page_1
execute if score !Options_page Informations matches 2 run function main:lobby/informations/options/page_2
execute if score !Options_page Informations matches 3 run function main:lobby/informations/options/page_3
execute if score !Options_page Informations matches 4 run function main:lobby/informations/options/page_4
execute if score !Options_page Informations matches 5 run function main:lobby/informations/options/page_5
execute if score !Options_page Informations matches 6 run function main:lobby/informations/options/page_6
execute if score !Options_page Informations matches 7 run function main:lobby/informations/options/page_7
execute if score !Options_page Informations matches 8 run function main:lobby/informations/options/page_8
execute if score !Options_page Informations matches 9 run function main:lobby/informations/options/page_9

# Playsound
execute at @s run playsound minecraft:ui.button.click master @s