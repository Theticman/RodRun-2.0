# Timer add
scoreboard players add !Timer Lobby_bar 1

# Unlock
execute if score !Timer Lobby_bar matches 71 as @e[type=minecraft:armor_stand,tag=bar_glass_stand] run data merge entity @s {DisabledSlots:3092271}

# Test if selection has been made
execute as @a[nbt={Inventory:[{id:"minecraft:player_head",tag:{choice:1}}]}] run function main:lobby/bar/selected_1
execute as @a[nbt={Inventory:[{id:"minecraft:player_head",tag:{choice:2}}]}] run function main:lobby/bar/selected_2
execute as @a[nbt={Inventory:[{id:"minecraft:player_head",tag:{choice:3}}]}] run function main:lobby/bar/selected_3
execute as @a[nbt={Inventory:[{id:"minecraft:player_head",tag:{choice:4}}]}] run function main:lobby/bar/selected_4

# Time end
execute if score !Timer Lobby_bar matches 270.. run function main:lobby/bar/no_selection