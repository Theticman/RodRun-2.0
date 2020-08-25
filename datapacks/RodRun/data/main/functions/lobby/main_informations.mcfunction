# Door
function main:lobby/informations/main_door

# Teleport
function main:lobby/informations/main_teleport

# Display
execute as @a[tag=In_lobby_informations] run function main:lobby/informations/display

# Show 
function main:lobby/informations/show

# Page hover
execute as @e[type=minecraft:armor_stand,tag=next_page] run data merge entity @s {CustomName:'[{"text":"§e➤","bold":"true"}]'}
execute as @e[type=minecraft:armor_stand,tag=next_page] at @s as @a[distance=..3.5] run function main:lobby/informations/page_hover/page_hover

# Cooldown
scoreboard players remove @e[type=villager,tag=information,scores={Informations=0..}] Informations 1
scoreboard players reset @e[type=villager,tag=information,scores={Informations=0}] Informations