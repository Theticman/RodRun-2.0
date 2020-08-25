# Test if still has item
execute as @a[tag=In_lobby] unless entity @s[scores={Informations=0..}] run tag @s[tag=!In_lobby_kill_effect_animation,tag=!In_boat_race,tag=!In_lobby_space_game,tag=In_lobby_informations] add Test_spawn_item
tag @a[tag=Test_spawn_item,nbt={Inventory:[{Slot:4b,id:"minecraft:dark_oak_door"}]}] remove Test_spawn_item

# Clear item
clear @a[tag=Test_spawn_item] dark_oak_door{Tags:["Informations_dark_oak_door"]}

# Detect drop
execute as @e[type=item,nbt={Item:{id:"minecraft:dark_oak_door",tag:{Tags:["Informations_dark_oak_door"]}}}] at @s positioned ~ ~-1.5 ~ as @a[distance=..1,tag=Test_spawn_item] run function main:lobby/informations/teleport/teleport_out

# Give item back
replaceitem entity @a[tag=Test_spawn_item] container.4 minecraft:dark_oak_door{display:{Name:'[{"text":"Go back to ","color":"yellow"},{"text":"lobby","color":"gold"},{"text":" (","color":"dark_gray"},{"text":"press ","color":"gray"},{"keybind":"key.drop","color":"white"},{"text":" to teleport","color":"gray"},{"text":")","color":"dark_gray"}]'},Tags:["Informations_dark_oak_door"]} 1

# Remove tags
tag @a[tag=Test_spawn_item] remove Test_spawn_item

# Kill dark_oak_door
kill @e[type=item,nbt={Item:{id:"minecraft:dark_oak_door",tag:{Tags:["Informations_dark_oak_door"]}}}]
