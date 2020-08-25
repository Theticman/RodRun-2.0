# Add tag
tag @s add Ready

# Clear leather_helmet
replaceitem entity @s armor.head air
clear @s minecraft:leather_helmet

# Action bar
title @s times 5 40 5
title @s actionbar [{"text":"You're now ","color":"yellow"},{"text":"ready","color":"green","bold":"true"},{"text":" to play!","color":"yellow"}]

# Playsound
execute at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2

# Give item to put yourself unready
replaceitem entity @s container.8 minecraft:leather_helmet{display:{Name:'[{"text":"Switch to ","color":"yellow"},{"text":"unready ","color":"gold"},{"text":"(","color":"dark_gray"},{"keybind":"key.use","color":"gray"},{"text":")","color":"dark_gray"}]',color:65280},HideFlags:63,Unbreakable:1b}
