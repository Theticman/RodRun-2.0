# Tag add everybody
execute as @a[tag=In_lobby] unless entity @s[tag=In_lobby_space_game] unless entity @s[tag=In_boat_race] unless entity @s[tag=In_lobby_kill_effect_animation] unless entity @s[tag=In_lobby_informations] unless entity @s[tag=In_lobby_jump] run tag @s[tag=Ready] add Test_item_ready
execute as @a[tag=In_lobby] unless entity @s[tag=In_lobby_space_game] unless entity @s[tag=In_boat_race] unless entity @s[tag=In_lobby_kill_effect_animation] unless entity @s[tag=In_lobby_informations] unless entity @s[tag=In_lobby_jump] run tag @s[tag=!Ready] add Test_item_unready

# Still has item ?
tag @a[tag=Test_item_ready,nbt={Inventory:[{Slot:8b,id:"minecraft:leather_helmet",Count:1b,tag:{display:{color:65280}}}]}] remove Test_item_ready
tag @a[tag=Test_item_unready,nbt={Inventory:[{Slot:8b,id:"minecraft:leather_helmet",Count:1b,tag:{display:{color:16711680}}}]}] remove Test_item_unready

# Manage if it doesn't
clear @a[tag=Test_item_ready] leather_helmet
clear @a[tag=Test_item_unready] leather_helmet

# Give back
replaceitem entity @a[tag=Test_item_ready] container.8 minecraft:leather_helmet{display:{Name:'[{"text":"Switch to ","color":"yellow"},{"text":"unready ","color":"red"},{"text":"(","color":"dark_gray"},{"keybind":"key.use","color":"gray"},{"text":")","color":"dark_gray"}]',color:65280},HideFlags:63,Unbreakable:1b}
replaceitem entity @a[tag=Test_item_unready] container.8 minecraft:leather_helmet{display:{Name:'[{"text":"Switch to ","color":"yellow"},{"text":"ready ","color":"green"},{"text":"(","color":"dark_gray"},{"keybind":"key.use","color":"gray"},{"text":")","color":"dark_gray"}]',color:16711680},HideFlags:63,Unbreakable:1b}

# Tags remove
tag @a remove Test_item_ready
tag @a remove Test_item_unready
