# Test if replacement is needed
tag @s add Test_chestplate
tag @s[tag=Test_chestplate,nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate"}]}] remove Test_chestplate
tag @s[tag=Test_chestplate,nbt={Tags:["In_game_tyrolean"]}] remove Test_chestplate

# Replace chestplate
clear @s[tag=Test_chestplate] minecraft:leather_chestplate
execute as @s[tag=Test_chestplate] run function main:game/chestplate/replace

# Tag remove
tag @s remove Test_chestplate