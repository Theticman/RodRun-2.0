# Clear if too many
execute as @s[nbt={Inventory:[{Slot:0b,id:"minecraft:carrot_on_a_stick"}]}] run clear @s minecraft:carrot_on_a_stick
execute as @s[nbt={Inventory:[{Slot:1b,id:"minecraft:carrot_on_a_stick"}]}] run clear @s minecraft:carrot_on_a_stick
execute as @s[nbt={Inventory:[{Slot:2b,id:"minecraft:carrot_on_a_stick"}]}] run clear @s minecraft:carrot_on_a_stick
execute as @s[nbt={Inventory:[{Slot:3b,id:"minecraft:carrot_on_a_stick"}]}] run clear @s minecraft:carrot_on_a_stick
execute as @s[nbt={Inventory:[{Slot:4b,id:"minecraft:carrot_on_a_stick"}]}] run clear @s minecraft:carrot_on_a_stick

# Set carrot on a stick
tag @s add Test_shield_carrot_on_a_stick
tag @s[tag=Test_shield_carrot_on_a_stick,nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{Tags:["shield_carrot_on_a_stick"]}}]}] remove Test_shield_carrot_on_a_stick
clear @s[tag=Test_shield_carrot_on_a_stick] carrot_on_a_stick{Tags:["shield_carrot_on_a_stick"]}
replaceitem entity @s[tag=Test_shield_carrot_on_a_stick] weapon.offhand minecraft:carrot_on_a_stick{Tags:["shield_carrot_on_a_stick"],display:{Name:'[{"text":""}]'}}
tag @s remove Test_shield_carrot_on_a_stick

# Set barrier
tag @s[scores={Powerup_shield=0}] add Test_shield_barrier
tag @s[tag=Test_shield_barrier,nbt={Inventory:[{Slot:7b,id:"minecraft:barrier",tag:{Tags:["shield_barrier"]}}]}] remove Test_shield_barrier
clear @s[tag=Test_shield_barrier] barrier{Tags:["shield_barrier"]}
replaceitem entity @s[tag=Test_shield_barrier] weapon.mainhand minecraft:barrier{Tags:["shield_barrier"],display:{Name:'[{"text":""}]'}}
tag @s remove Test_shield_barrier

# Set chainmail_chestplate
tag @s[scores={Powerup_shield=1..}] add Test_shield_chainmail_chestplate
tag @s[tag=Test_shield_chainmail_chestplate,nbt={Inventory:[{Slot:7b,id:"minecraft:chainmail_chestplate",tag:{Tags:["shield_chainmail_chestplate"]}}]}] remove Test_shield_chainmail_chestplate
clear @s[tag=Test_shield_chainmail_chestplate] chainmail_chestplate{Tags:["shield_chainmail_chestplate"]}
replaceitem entity @s[tag=Test_shield_chainmail_chestplate] weapon.mainhand minecraft:chainmail_chestplate{Tags:["shield_chainmail_chestplate"],display:{Name:'[{"text":""}]'}}
tag @s remove Test_shield_chainmail_chestplate

# Subtitle
title @s times 0 5 0
title @s title {"text":""}
title @s[scores={Powerup_shield=0}] subtitle {"text":"You don't have that powerup!","color":"red"}
title @s[tag=No_powerups] subtitle {"text":"You don't have that powerup!","color":"dark_red"}
tag @s[tag=No_powerups] remove No_powerups
title @s[scores={Powerup_shield=1..}] subtitle [{"text":""},{"text":"Shield","color":"gold","bold":true},{"text":" powerup","color":"yellow"},{"text":" x","color":"gold"},{"score":{"name":"@s","objective":"Powerup_shield"},"color":"red"}]
