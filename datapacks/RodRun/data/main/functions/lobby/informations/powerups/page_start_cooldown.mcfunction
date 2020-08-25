# Set score
scoreboard players set @e[type=minecraft:villager,tag=powerups_information] Informations 20
data merge entity @e[type=minecraft:armor_stand,nbt={Tags:["powerups_information","next_page"]},limit=1] {CustomNameVisible:0b}

# Schedule start
schedule function main:lobby/informations/powerups/set_visible 1s