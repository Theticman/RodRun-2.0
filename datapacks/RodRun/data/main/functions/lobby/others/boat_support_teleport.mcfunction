# In
tag @a[x=-10,y=15,z=-39,distance=..0.9] add Teleport_in
teleport @a[tag=Teleport_in] -19 7 -16 -180 20
execute as @a[tag=Teleport_in] at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~
title @a[tag=Teleport_in] times 10 100 10
title @a[tag=Teleport_in] title {"text":""}
title @a[tag=Teleport_in] subtitle {"text":"Go through the painting again to come back!","color":"yellow"}
tag @a[tag=Teleport_in] remove Teleport_in

# Out
tag @a[x=-19,y=8,z=-14,distance=..0.9] add Teleport_out
teleport @a[tag=Teleport_out] -10 14 -41 -180 20
execute as @a[tag=Teleport_out] at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~
title @a[tag=Teleport_out] subtitle {"text":""}
tag @a[tag=Teleport_out] remove Teleport_out

