# Set score
scoreboard players set @e[type=minecraft:villager,tag=map_1_information] Informations 20
data merge entity @e[type=minecraft:armor_stand,nbt={Tags:["map_1_information","next_page"]},limit=1] {CustomNameVisible:0b}

# Schedule start
schedule function main:lobby/informations/map_1/set_visible 1s