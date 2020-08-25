# Test if still has item
execute as @a[tag=In_lobby] unless entity @s[scores={Informations=0..}] run tag @s[tag=!In_lobby_kill_effect_animation,tag=!In_boat_race,tag=!In_lobby_space_game,tag=!In_lobby_informations,tag=!In_lobby_jump] add Test_informations_item
tag @a[tag=Test_informations_item,nbt={Inventory:[{Slot:4b,id:"minecraft:book"}]}] remove Test_informations_item

# Clear item
clear @a[tag=Test_informations_item] book{Tags:["Informations_book"]}

# Detect drop
execute as @e[type=item,nbt={Item:{id:"minecraft:book",tag:{Tags:["Informations_book"]}}}] at @s positioned ~ ~-1.5 ~ as @a[distance=..1,tag=Test_informations_item] run function main:lobby/informations/teleport/teleport_in

# Give item back
replaceitem entity @a[tag=Test_informations_item] container.4 minecraft:book{display:{Name:'[{"text":"Information","color":"yellow"},{"text":" (","color":"dark_gray"},{"text":"press ","color":"gray"},{"keybind":"key.drop","color":"white"},{"text":" to teleport","color":"gray"},{"text":")","color":"dark_gray"}]'},Tags:["Informations_book"]} 1

# Remove tags
tag @a[tag=Test_informations_item] remove Test_informations_item

# Kill book
kill @e[type=item,nbt={Item:{id:"minecraft:book",tag:{Tags:["Informations_book"]}}}]
