# Add tag
tag @s remove Ready

# Clear leather_helmet
replaceitem entity @s armor.head air
clear @s minecraft:leather_helmet

# Action bar
title @s times 5 40 5
title @s actionbar [{"text":"You're now ","color":"yellow"},{"text":"unready","color":"red","bold":"true"},{"text":", you won't play!","color":"yellow"}]

# Playsound
execute at @s run playsound minecraft:entity.villager.no master @s

# Give item to put yourself unready
replaceitem entity @s container.8 minecraft:leather_helmet{display:{Name:'[{"text":"Switch to ","color":"yellow"},{"text":"ready ","color":"gold"},{"text":"(","color":"dark_gray"},{"keybind":"key.use","color":"gray"},{"text":")","color":"dark_gray"}]',color:16711680},HideFlags:63,Unbreakable:1b}
