# Hide
execute as @e[type=minecraft:armor_stand,tag=tester_armor] run data merge entity @s {CustomNameVisible:0b}

# Show
execute if entity @a[x=40,y=16,z=-54,distance=..10] as @e[type=minecraft:armor_stand,tag=tester_armor] run data merge entity @s {CustomNameVisible:1b}