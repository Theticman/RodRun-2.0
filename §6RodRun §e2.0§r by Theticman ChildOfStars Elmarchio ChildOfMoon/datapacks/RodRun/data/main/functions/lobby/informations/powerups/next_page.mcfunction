# Add page
scoreboard players add !Powerups_page Informations 1
execute if score !Powerups_page Informations matches 7.. run scoreboard players set !Powerups_page Informations 1

# Run function
execute if score !Powerups_page Informations matches 1 run function main:lobby/informations/powerups/page_1
execute if score !Powerups_page Informations matches 2 run function main:lobby/informations/powerups/page_2
execute if score !Powerups_page Informations matches 3 run function main:lobby/informations/powerups/page_3
execute if score !Powerups_page Informations matches 4 run function main:lobby/informations/powerups/page_4
execute if score !Powerups_page Informations matches 5 run function main:lobby/informations/powerups/page_5
execute if score !Powerups_page Informations matches 6 run function main:lobby/informations/powerups/page_6

# Playsound
execute at @s run playsound minecraft:ui.button.click master @s