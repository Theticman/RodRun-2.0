# Clear if too many
clear @s[nbt={Inventory:[{id:"minecraft:barrier",Count:2b,tag:{Tags:["mine_barrier"]}}]}] barrier{Tags:["mine_barrier"]}
clear @s[nbt={Inventory:[{id:"minecraft:barrier",Count:3b,tag:{Tags:["mine_barrier"]}}]}] barrier{Tags:["mine_barrier"]}
clear @s[nbt={Inventory:[{id:"minecraft:barrier",Count:4b,tag:{Tags:["mine_barrier"]}}]}] barrier{Tags:["mine_barrier"]}
clear @s[nbt={Inventory:[{id:"minecraft:barrier",Count:5b,tag:{Tags:["mine_barrier"]}}]}] barrier{Tags:["mine_barrier"]}

clear @s[nbt={Inventory:[{id:"minecraft:tnt",Count:2b,tag:{Tags:["mine_tnt"]}}]}] tnt{Tags:["mine_tnt"]}
clear @s[nbt={Inventory:[{id:"minecraft:tnt",Count:3b,tag:{Tags:["mine_tnt"]}}]}] tnt{Tags:["mine_tnt"]}
clear @s[nbt={Inventory:[{id:"minecraft:tnt",Count:4b,tag:{Tags:["mine_tnt"]}}]}] tnt{Tags:["mine_tnt"]}
clear @s[nbt={Inventory:[{id:"minecraft:tnt",Count:5b,tag:{Tags:["mine_tnt"]}}]}] tnt{Tags:["mine_tnt"]}

# Set barrier
tag @s[scores={Powerup_mine=0}] add Test_mine_barrier
tag @s[tag=Test_mine_barrier,nbt={Inventory:[{Slot:8b,id:"minecraft:barrier",tag:{Tags:["mine_barrier"]}}]}] remove Test_mine_barrier
clear @s[tag=Test_mine_barrier] barrier{Tags:["mine_barrier"]}
replaceitem entity @s[tag=Test_mine_barrier] container.8 minecraft:barrier{Tags:["mine_barrier"],display:{Name:'[{"text":""}]'}}
tag @s remove Test_mine_barrier

# Set tnt
tag @s[scores={Powerup_mine=1..}] add Test_mine_tnt
tag @s[tag=Test_mine_tnt,nbt={Inventory:[{Slot:8b,id:"minecraft:tnt",tag:{Tags:["mine_tnt"]}}]}] remove Test_mine_tnt
clear @s[tag=Test_mine_tnt] tnt{Tags:["mine_tnt"]}
replaceitem entity @s[tag=Test_mine_tnt] container.8 minecraft:tnt{Tags:["mine_tnt"],display:{Name:'[{"text":""}]'}}
tag @s remove Test_mine_tnt
