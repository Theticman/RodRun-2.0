# Clear if too many
execute as @s[nbt={Inventory:[{Slot:0b,id:"minecraft:carrot_on_a_stick"}]}] run clear @s minecraft:carrot_on_a_stick
execute as @s[nbt={Inventory:[{Slot:1b,id:"minecraft:carrot_on_a_stick"}]}] run clear @s minecraft:carrot_on_a_stick
execute as @s[nbt={Inventory:[{Slot:2b,id:"minecraft:carrot_on_a_stick"}]}] run clear @s minecraft:carrot_on_a_stick
execute as @s[nbt={Inventory:[{Slot:3b,id:"minecraft:carrot_on_a_stick"}]}] run clear @s minecraft:carrot_on_a_stick
execute as @s[nbt={Inventory:[{Slot:4b,id:"minecraft:carrot_on_a_stick"}]}] run clear @s minecraft:carrot_on_a_stick

# Set carrot on a stick
tag @s add Test_glow_carrot_on_a_stick
tag @s[tag=Test_glow_carrot_on_a_stick,nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{Tags:["glow_carrot_on_a_stick"]}}]}] remove Test_glow_carrot_on_a_stick
clear @s[tag=Test_glow_carrot_on_a_stick] carrot_on_a_stick{Tags:["glow_carrot_on_a_stick"]}
replaceitem entity @s[tag=Test_glow_carrot_on_a_stick] weapon.offhand minecraft:carrot_on_a_stick{Tags:["glow_carrot_on_a_stick"],display:{Name:'[{"text":""}]'}}
tag @s remove Test_glow_carrot_on_a_stick

# Set barrier
tag @s[scores={Powerup_glow=0}] add Test_glow_barrier
tag @s[tag=Test_glow_barrier,nbt={Inventory:[{Slot:6b,id:"minecraft:barrier",tag:{Tags:["glow_barrier"]}}]}] remove Test_glow_barrier
clear @s[tag=Test_glow_barrier] barrier{Tags:["glow_barrier"]}
replaceitem entity @s[tag=Test_glow_barrier] weapon.mainhand minecraft:barrier{Tags:["glow_barrier"],display:{Name:'[{"text":""}]'}}
tag @s remove Test_glow_barrier

# Set lantern
tag @s[scores={Powerup_glow=1..}] add Test_glow_lantern
tag @s[tag=Test_glow_lantern,nbt={Inventory:[{Slot:6b,id:"minecraft:lantern",tag:{Tags:["glow_lantern"]}}]}] remove Test_glow_lantern
clear @s[tag=Test_glow_lantern] lantern{Tags:["glow_lantern"]}
replaceitem entity @s[tag=Test_glow_lantern] weapon.mainhand minecraft:lantern{Tags:["glow_lantern"],display:{Name:'[{"text":""}]'}}
tag @s remove Test_glow_lantern

# Subtitle
title @s times 0 5 0
title @s title {"text":""}
title @s[scores={Powerup_glow=0}] subtitle {"text":"You don't have that powerup!","color":"red"}
title @s[tag=No_powerups] subtitle {"text":"You don't have that powerup!","color":"dark_red"}
tag @s[tag=No_powerups] remove No_powerups
title @s[scores={Powerup_glow=1..}] subtitle [{"text":""},{"text":"Glow","color":"gold","bold":true},{"text":" powerup","color":"yellow"},{"text":" x","color":"gold"},{"score":{"name":"@s","objective":"Powerup_glow"},"color":"red"}]