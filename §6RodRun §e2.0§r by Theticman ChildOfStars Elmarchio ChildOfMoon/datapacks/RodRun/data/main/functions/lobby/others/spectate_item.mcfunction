# Test if still has item
execute as @a[tag=In_lobby] unless entity @s[tag=In_lobby_space_game] unless entity @s[tag=In_boat_race] unless entity @s[tag=In_lobby_kill_effect_animation] unless entity @s[tag=In_lobby_informations] unless entity @s[tag=In_lobby_jump] run tag @s add Spectate_item
tag @a[tag=Spectate_item,nbt={Inventory:[{Slot:0b,id:"minecraft:emerald"}]}] remove Spectate_item

# Clear item
clear @a[tag=Spectate_item] emerald{Tags:["spectate_emerald"]}

# Detect drop
execute as @e[type=item,nbt={Item:{id:"minecraft:emerald",tag:{Tags:["spectate_emerald"]}}}] at @s positioned ~ ~-1.5 ~ as @a[distance=..1,tag=Spectate_item] run function main:game/spectate/init_spectate

# Give item back
execute as @a[tag=In_lobby] at @s[tag=!In_lobby_space_game,nbt={Tags:["Spectate_item"]}] run replaceitem entity @s hotbar.0 minecraft:emerald{display:{Name:'[{"text":"Spectate","color":"gold"},{"text":" item ","color":"yellow"},{"text":"(","color":"dark_gray"},{"text":"pess ","color":"gray"},{"keybind":"key.drop","color":"white"},{"text":" to spectate","color":"gray"},{"text":")","color":"dark_gray"}]'},Tags:["spectate_emerald"]} 1

# Remove tags
tag @a remove Spectate_item

# Kill emerald
kill @e[type=item,nbt={Item:{id:"minecraft:emerald",tag:{Tags:["spectate_emerald"]}}}]