# Test if still has item
tag @s add Test_boots
tag @s[nbt={Inventory:[{Slot:100b,id:"minecraft:leather_boots"}]}] remove Test_boots
tag @s[tag=Test_boots,nbt={Tags:["In_game_tyrolean"]}] remove Test_boots

# Clear item
clear @s[tag=Test_boots] leather_boots

# Give item back
replaceitem entity @s[tag=Test_boots] armor.feet minecraft:leather_boots{display:{color:16711680,Name:'[{"text":"Red","color":"red"},{"text":" boots","color":"yellow"}]'},HideFlags:63,Unbreakable:1b}

# Remove tags
tag @s remove Test_boots

# Kill emerald
kill @e[type=item,nbt={Item:{id:"minecraft:leather_boots"}}]