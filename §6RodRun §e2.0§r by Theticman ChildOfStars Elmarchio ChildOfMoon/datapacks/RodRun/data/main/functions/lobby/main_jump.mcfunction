# Init jump
execute unless block 26 42 -10 minecraft:light_weighted_pressure_plate[power=0] as @a[tag=!In_lobby_jump,x=26,y=42,z=-10,dx=0,dy=0,dz=0] run function main:lobby/jump/init_jump

# Timer
execute as @a[tag=In_lobby_jump] run function main:lobby/jump/timer

# Detect fail
execute as @a[tag=In_lobby_jump] at @s run function main:lobby/jump/detect_fail

# End jump
execute as @a[tag=In_lobby_jump,x=49,y=84,z=-14,dx=0,dy=0,dz=0] run function main:lobby/jump/end_jump
execute as @a[tag=In_lobby_jump,x=49,y=84,z=-15,dx=0,dy=0,dz=0] run function main:lobby/jump/end_jump

# Teleport if not in jump
execute as @a[x=25,y=37,z=-17,dx=10,dy=4,dz=20,nbt={OnGround:1b},tag=!In_lobby_jump] run teleport @s 22 42 -10 -90 0
execute as @a[x=27,y=42,z=-12,distance=..2,nbt={OnGround:1b},tag=!In_lobby_jump] run teleport @s 22 42 -10 -90 0
execute as @a[x=31,y=42,z=-10,distance=..2,nbt={OnGround:1b},tag=!In_lobby_jump] run teleport @s 22 42 -10 -90 0

# Teleport if out of dirigeable
execute as @a[x=46,y=83,z=-14,distance=17..25,tag=!In_lobby_jump] run teleport @s 22 42 -10 -90 0

# Display
execute as @e[type=minecraft:armor_stand,tag=jump_lobby_best] at @s if entity @a[distance=..15] run data merge entity @s {CustomNameVisible:1b}
execute as @e[type=minecraft:armor_stand,tag=jump_lobby_best] at @s unless entity @a[distance=..15] run data merge entity @s {CustomNameVisible:0b}