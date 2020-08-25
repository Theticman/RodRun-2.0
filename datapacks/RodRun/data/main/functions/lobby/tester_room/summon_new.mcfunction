# Kill one previous
kill @e[type=armor_stand,limit=1,sort=random,tag=tester_armor]

# Summon new armor stand
execute at @s run summon minecraft:armor_stand ~ ~ ~ {NoBasePlate:1b,NoGravity:1b,ShowArms:1b,DisabledSlots:4144959,Tags:["new_tester","tester_armor"]}
execute at @s run teleport @e[type=armor_stand,tag=new_tester] @s
execute as @e[type=armor_stand,tag=new_tester] at @s run teleport @s ~ ~-.05 ~
execute as @e[type=armor_stand,tag=new_tester] at @s run particle minecraft:cloud ~ ~1 ~ 0 0 0 .1 10 normal

# Select Tester
execute as @e[type=armor_stand,tag=new_tester] run function main:lobby/tester_room/random_tester

# Select pose
execute as @e[type=armor_stand,tag=new_tester] run function main:lobby/tester_room/random_pose

# Select chestplate
execute as @e[type=armor_stand,tag=new_tester] run function main:lobby/tester_room/random_chestplate

# Select leggings
execute as @e[type=armor_stand,tag=new_tester] run function main:lobby/tester_room/random_leggings

# Select boots
execute as @e[type=armor_stand,tag=new_tester] run function main:lobby/tester_room/random_boots


# End
tag @e[type=armor_stand,tag=new_tester] remove new_tester
