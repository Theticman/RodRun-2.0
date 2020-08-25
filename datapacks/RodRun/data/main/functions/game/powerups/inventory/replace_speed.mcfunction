# Clear if too many
clear @s[nbt={Inventory:[{id:"minecraft:barrier",Count:2b,tag:{Tags:["speed_barrier"]}}]}] barrier{Tags:["speed_barrier"]}
clear @s[nbt={Inventory:[{id:"minecraft:barrier",Count:3b,tag:{Tags:["speed_barrier"]}}]}] barrier{Tags:["speed_barrier"]}
clear @s[nbt={Inventory:[{id:"minecraft:barrier",Count:4b,tag:{Tags:["speed_barrier"]}}]}] barrier{Tags:["speed_barrier"]}
clear @s[nbt={Inventory:[{id:"minecraft:barrier",Count:5b,tag:{Tags:["speed_barrier"]}}]}] barrier{Tags:["speed_barrier"]}

clear @s[nbt={Inventory:[{id:"minecraft:sugar",Count:2b,tag:{Tags:["speed_sugar"]}}]}] sugar{Tags:["speed_sugar"]}
clear @s[nbt={Inventory:[{id:"minecraft:sugar",Count:3b,tag:{Tags:["speed_sugar"]}}]}] sugar{Tags:["speed_sugar"]}
clear @s[nbt={Inventory:[{id:"minecraft:sugar",Count:4b,tag:{Tags:["speed_sugar"]}}]}] sugar{Tags:["speed_sugar"]}
clear @s[nbt={Inventory:[{id:"minecraft:sugar",Count:5b,tag:{Tags:["speed_sugar"]}}]}] sugar{Tags:["speed_sugar"]}

# Set barrier
tag @s[scores={Powerup_speed=0}] add Test_speed_barrier
tag @s[tag=Test_speed_barrier,nbt={Inventory:[{Slot:5b,id:"minecraft:barrier",tag:{Tags:["speed_barrier"]}}]}] remove Test_speed_barrier
clear @s[tag=Test_speed_barrier] barrier{Tags:["speed_barrier"]}
replaceitem entity @s[tag=Test_speed_barrier] container.5 minecraft:barrier{Tags:["speed_barrier"],display:{Name:'[{"text":""}]'}}
tag @s remove Test_speed_barrier

# Set sugar
tag @s[scores={Powerup_speed=1..}] add Test_speed_sugar
tag @s[tag=Test_speed_sugar,nbt={Inventory:[{Slot:5b,id:"minecraft:sugar",tag:{Tags:["speed_sugar"]}}]}] remove Test_speed_sugar
clear @s[tag=Test_speed_sugar] sugar{Tags:["speed_sugar"]}
replaceitem entity @s[tag=Test_speed_sugar] container.5 minecraft:sugar{Tags:["speed_sugar"],display:{Name:'[{"text":""}]'}}
tag @s remove Test_speed_sugar
