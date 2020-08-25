# Clear if too many
execute as @s[nbt={Inventory:[{Slot:0b,id:"minecraft:chainmail_chestplate"}]}] run clear @s minecraft:chainmail_chestplate
execute as @s[nbt={Inventory:[{Slot:1b,id:"minecraft:chainmail_chestplate"}]}] run clear @s minecraft:chainmail_chestplate
execute as @s[nbt={Inventory:[{Slot:2b,id:"minecraft:chainmail_chestplate"}]}] run clear @s minecraft:chainmail_chestplate
execute as @s[nbt={Inventory:[{Slot:3b,id:"minecraft:chainmail_chestplate"}]}] run clear @s minecraft:chainmail_chestplate
execute as @s[nbt={Inventory:[{Slot:4b,id:"minecraft:chainmail_chestplate"}]}] run clear @s minecraft:chainmail_chestplate
execute as @s[nbt={Inventory:[{Slot:5b,id:"minecraft:chainmail_chestplate"}]}] run clear @s minecraft:chainmail_chestplate

execute as @s[nbt={Inventory:[{Slot:102b,id:"minecraft:chainmail_chestplate",Count:1b,tag:{Tags:["shield_chainmail_chestplate"]}}]}] run replaceitem entity @s armor.chest air
clear @s[nbt={Inventory:[{Slot:102b,id:"minecraft:chainmail_chestplate",Count:1b,tag:{Tags:["shield_chainmail_chestplate"]}}]}] chainmail_chestplate{Tags:["shield_chainmail_chestplate"]}

# Set barrier
tag @s[scores={Powerup_shield=0}] add Test_shield_barrier
tag @s[tag=Test_shield_barrier,nbt={Inventory:[{Slot:7b,id:"minecraft:barrier",tag:{Tags:["shield_barrier"]}}]}] remove Test_shield_barrier
clear @s[tag=Test_shield_barrier] barrier{Tags:["shield_barrier"]}
replaceitem entity @s[tag=Test_shield_barrier] container.7 minecraft:barrier{Tags:["shield_barrier"],display:{Name:'[{"text":""}]'}}
tag @s remove Test_shield_barrier

# Set chainmail_chestplate
tag @s[scores={Powerup_shield=1..}] add Test_shield_chainmail_chestplate
tag @s[tag=Test_shield_chainmail_chestplate,nbt={Inventory:[{Slot:7b,id:"minecraft:chainmail_chestplate",tag:{Tags:["shield_chainmail_chestplate"]}}]}] remove Test_shield_chainmail_chestplate
clear @s[tag=Test_shield_chainmail_chestplate] chainmail_chestplate{Tags:["shield_chainmail_chestplate"]}
replaceitem entity @s[tag=Test_shield_chainmail_chestplate] container.7 minecraft:chainmail_chestplate{Tags:["shield_chainmail_chestplate"],display:{Name:'[{"text":""}]'}}
tag @s remove Test_shield_chainmail_chestplate
