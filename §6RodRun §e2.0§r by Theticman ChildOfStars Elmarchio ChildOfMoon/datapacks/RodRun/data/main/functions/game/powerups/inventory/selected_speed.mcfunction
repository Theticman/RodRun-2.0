# Clear if too many
execute as @s[nbt={Inventory:[{Slot:0b,id:"minecraft:carrot_on_a_stick"}]}] run clear @s minecraft:carrot_on_a_stick
execute as @s[nbt={Inventory:[{Slot:1b,id:"minecraft:carrot_on_a_stick"}]}] run clear @s minecraft:carrot_on_a_stick
execute as @s[nbt={Inventory:[{Slot:2b,id:"minecraft:carrot_on_a_stick"}]}] run clear @s minecraft:carrot_on_a_stick
execute as @s[nbt={Inventory:[{Slot:3b,id:"minecraft:carrot_on_a_stick"}]}] run clear @s minecraft:carrot_on_a_stick
execute as @s[nbt={Inventory:[{Slot:4b,id:"minecraft:carrot_on_a_stick"}]}] run clear @s minecraft:carrot_on_a_stick

# Set carrot on a stick
tag @s add Test_speed_carrot_on_a_stick
tag @s[tag=Test_speed_carrot_on_a_stick,nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{Tags:["speed_carrot_on_a_stick"]}}]}] remove Test_speed_carrot_on_a_stick
clear @s[tag=Test_speed_carrot_on_a_stick] carrot_on_a_stick{Tags:["speed_carrot_on_a_stick"]}
replaceitem entity @s[tag=Test_speed_carrot_on_a_stick] weapon.offhand minecraft:carrot_on_a_stick{Tags:["speed_carrot_on_a_stick"],display:{Name:'[{"text":""}]'}}
tag @s remove Test_speed_carrot_on_a_stick

# Set barrier
tag @s[scores={Powerup_speed=0}] add Test_speed_barrier
tag @s[tag=Test_speed_barrier,nbt={Inventory:[{Slot:5b,id:"minecraft:barrier",tag:{Tags:["speed_barrier"]}}]}] remove Test_speed_barrier
clear @s[tag=Test_speed_barrier] barrier{Tags:["speed_barrier"]}
replaceitem entity @s[tag=Test_speed_barrier] weapon.mainhand minecraft:barrier{Tags:["speed_barrier"],display:{Name:'[{"text":""}]'}}
tag @s remove Test_speed_barrier

# Set sugar
tag @s[scores={Powerup_speed=1..}] add Test_speed_sugar
tag @s[tag=Test_speed_sugar,nbt={Inventory:[{Slot:5b,id:"minecraft:sugar",tag:{Tags:["speed_sugar"]}}]}] remove Test_speed_sugar
clear @s[tag=Test_speed_sugar] sugar{Tags:["speed_sugar"]}
replaceitem entity @s[tag=Test_speed_sugar] weapon.mainhand minecraft:sugar{Tags:["speed_sugar"],display:{Name:'[{"text":""}]'}}
tag @s remove Test_speed_sugar

# Subtitle
title @s times 0 5 0
title @s title {"text":""}
title @s[scores={Powerup_speed=0}] subtitle {"text":"You don't have that powerup!","color":"red"}
title @s[tag=No_powerups] subtitle {"text":"You don't have that powerup!","color":"dark_red"}
tag @s[tag=No_powerups] remove No_powerups
title @s[scores={Powerup_speed=1..}] subtitle [{"text":""},{"text":"Speed","color":"gold","bold":true},{"text":" powerup","color":"yellow"},{"text":" x","color":"gold"},{"score":{"name":"@s","objective":"Powerup_speed"},"color":"red"}]
