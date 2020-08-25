# Test if still has item
execute as @a[tag=In_lobby] unless entity @s[tag=In_lobby_space_game] unless entity @s[tag=In_boat_race] unless entity @s[tag=In_lobby_kill_effect_animation] run tag @s add Informations_item
tag @a[tag=Informations_item,nbt={Inventory:[{Slot:4b,id:"minecraft:player_head"}]}] remove Informations_item

# Clear item
clear @a[tag=Informations_item] player_head{Tags:["Informations_head"]}

# Detect drop
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{Tags:["Informations_head"]}}}] at @s positioned ~ ~-1.5 ~ as @a[distance=..1,tag=Informations_item] run function main:lobby/informations/teleport

# Give item back
execute as @a[tag=In_lobby] at @s[tag=!In_lobby_space_game,nbt={Tags:["Informations_item"]}] run replaceitem entity @s hotbar.4 minecraft:player_head{display:{Name:'[{"text":"Informations","color":"gold"},{"text":" item ","color":"yellow"},{"text":"(","color":"dark_gray"},{"text":"pess ","color":"gray"},{"keybind":"key.drop","color":"white"},{"text":" to Informations","color":"gray"},{"text":")","color":"dark_gray"}]'},Tags:["Informations_head"]} 1

# Remove tags
tag @a remove Informations_item

# Kill emerald
kill @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{Tags:["Informations_head"]}}}]