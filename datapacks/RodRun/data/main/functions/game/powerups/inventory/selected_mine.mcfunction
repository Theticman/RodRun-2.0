# Clear if too many
execute as @s[nbt={Inventory:[{Slot:0b,id:"minecraft:carrot_on_a_stick"}]}] run clear @s minecraft:carrot_on_a_stick
execute as @s[nbt={Inventory:[{Slot:1b,id:"minecraft:carrot_on_a_stick"}]}] run clear @s minecraft:carrot_on_a_stick
execute as @s[nbt={Inventory:[{Slot:2b,id:"minecraft:carrot_on_a_stick"}]}] run clear @s minecraft:carrot_on_a_stick
execute as @s[nbt={Inventory:[{Slot:3b,id:"minecraft:carrot_on_a_stick"}]}] run clear @s minecraft:carrot_on_a_stick
execute as @s[nbt={Inventory:[{Slot:4b,id:"minecraft:carrot_on_a_stick"}]}] run clear @s minecraft:carrot_on_a_stick

# Set carrot on a stick
tag @s add Test_mine_carrot_on_a_stick
tag @s[tag=Test_mine_carrot_on_a_stick,nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{Tags:["mine_carrot_on_a_stick"]}}]}] remove Test_mine_carrot_on_a_stick
clear @s[tag=Test_mine_carrot_on_a_stick] carrot_on_a_stick{Tags:["mine_carrot_on_a_stick"]}
replaceitem entity @s[tag=Test_mine_carrot_on_a_stick] weapon.offhand minecraft:carrot_on_a_stick{Tags:["mine_carrot_on_a_stick"],display:{Name:'[{"text":""}]'}}
tag @s remove Test_mine_carrot_on_a_stick

# Set barrier
tag @s[scores={Powerup_mine=0}] add Test_mine_barrier
tag @s[tag=Test_mine_barrier,nbt={Inventory:[{Slot:8b,id:"minecraft:barrier",tag:{Tags:["mine_barrier"]}}]}] remove Test_mine_barrier
clear @s[tag=Test_mine_barrier] barrier{Tags:["mine_barrier"]}
replaceitem entity @s[tag=Test_mine_barrier] weapon.mainhand minecraft:barrier{Tags:["mine_barrier"],display:{Name:'[{"text":""}]'}}
tag @s remove Test_mine_barrier

# Set tnt
tag @s[scores={Powerup_mine=1..}] add Test_mine_tnt
tag @s[tag=Test_mine_tnt,nbt={Inventory:[{Slot:8b,id:"minecraft:tnt",tag:{Tags:["mine_tnt"]}}]}] remove Test_mine_tnt
clear @s[tag=Test_mine_tnt] tnt{Tags:["mine_tnt"]}
replaceitem entity @s[tag=Test_mine_tnt] weapon.mainhand minecraft:tnt{Tags:["mine_tnt"],display:{Name:'[{"text":""}]'}}
tag @s remove Test_mine_tnt

# Subtitle
title @s times 0 5 0
title @s title {"text":""}
title @s[scores={Powerup_mine=0}] subtitle {"text":"You don't have that powerup!","color":"red"}
title @s[tag=No_powerups] subtitle {"text":"You don't have that powerup!","color":"dark_red"}
tag @s[tag=No_powerups] remove No_powerups
title @s[scores={Powerup_mine=1..}] subtitle [{"text":""},{"text":"Mine","color":"gold","bold":true},{"text":" powerup","color":"yellow"},{"text":" x","color":"gold"},{"score":{"name":"@s","objective":"Powerup_mine"},"color":"red"}]
