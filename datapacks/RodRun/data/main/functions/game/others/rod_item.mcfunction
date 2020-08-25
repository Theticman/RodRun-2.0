# Tag add everybody
tag @a[tag=!In_game_tyrolean,tag=In_game_playing] add Test_item_rod

# Still has item ?
tag @a[tag=Test_item_rod,nbt={Inventory:[{Slot:0b,id:"minecraft:fishing_rod"}]}] remove Test_item_rod

# Manage if it doesn't
clear @a[tag=Test_item_rod] fishing_rod{Tags:["rod"]}
clear @a[tag=Test_item_rod] carrot_on_a_stick{Tags:["glow_carrot_on_a_stick"]}

# Give back
replaceitem entity @a[tag=Test_item_rod] container.0 minecraft:fishing_rod{Tags:["rod"],display:{Name:'[{"text":"Rod ","color":"yellow"},{"text":"(","color":"dark_gray"},{"keybind":"key.use","color":"white"},{"text":")","color":"dark_gray"}]'},Unbreakable:1b,HideFlags:4}

# Tags remove
tag @a remove Test_item_rod

# Kill rod
kill @e[type=item,nbt={Item:{id:"minecraft:fishing_rod"}}]
