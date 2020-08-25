# Clear if too many
clear @s[nbt={Inventory:[{id:"minecraft:barrier",Count:2b,tag:{Tags:["glow_barrier"]}}]}] barrier{Tags:["glow_barrier"]}
clear @s[nbt={Inventory:[{id:"minecraft:barrier",Count:3b,tag:{Tags:["glow_barrier"]}}]}] barrier{Tags:["glow_barrier"]}
clear @s[nbt={Inventory:[{id:"minecraft:barrier",Count:4b,tag:{Tags:["glow_barrier"]}}]}] barrier{Tags:["glow_barrier"]}
clear @s[nbt={Inventory:[{id:"minecraft:barrier",Count:5b,tag:{Tags:["glow_barrier"]}}]}] barrier{Tags:["glow_barrier"]}

clear @s[nbt={Inventory:[{id:"minecraft:lantern",Count:2b,tag:{Tags:["glow_lantern"]}}]}] lantern{Tags:["glow_lantern"]}
clear @s[nbt={Inventory:[{id:"minecraft:lantern",Count:3b,tag:{Tags:["glow_lantern"]}}]}] lantern{Tags:["glow_lantern"]}
clear @s[nbt={Inventory:[{id:"minecraft:lantern",Count:4b,tag:{Tags:["glow_lantern"]}}]}] lantern{Tags:["glow_lantern"]}
clear @s[nbt={Inventory:[{id:"minecraft:lantern",Count:5b,tag:{Tags:["glow_lantern"]}}]}] lantern{Tags:["glow_lantern"]}

# Set barrier
tag @s[scores={Powerup_glow=0}] add Test_glow_barrier
tag @s[tag=Test_glow_barrier,nbt={Inventory:[{Slot:6b,id:"minecraft:barrier",tag:{Tags:["glow_barrier"]}}]}] remove Test_glow_barrier
clear @s[tag=Test_glow_barrier] barrier{Tags:["glow_barrier"]}
replaceitem entity @s[tag=Test_glow_barrier] container.6 minecraft:barrier{Tags:["glow_barrier"],display:{Name:'[{"text":""}]'}}
tag @s remove Test_glow_barrier

# Set lantern
tag @s[scores={Powerup_glow=1..}] add Test_glow_lantern
tag @s[tag=Test_glow_lantern,nbt={Inventory:[{Slot:6b,id:"minecraft:lantern",tag:{Tags:["glow_lantern"]}}]}] remove Test_glow_lantern
clear @s[tag=Test_glow_lantern] lantern{Tags:["glow_lantern"]}
replaceitem entity @s[tag=Test_glow_lantern] container.6 minecraft:lantern{Tags:["glow_lantern"],display:{Name:'[{"text":""}]'}}
tag @s remove Test_glow_lantern
