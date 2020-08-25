# Summon
summon area_effect_cloud 40 16 -52 {Tags:["random_tester"],Duration:1,Rotation:[180f]}
summon area_effect_cloud 40 16 -52 {Tags:["random_tester"],Duration:1,Rotation:[180f]}

summon area_effect_cloud 38 16 -53 {Tags:["random_tester"],Duration:1,Rotation:[-90f]}
summon area_effect_cloud 38 16 -55 {Tags:["random_tester"],Duration:1,Rotation:[-90f]}

summon area_effect_cloud 42 16 -54 {Tags:["random_tester"],Duration:1,Rotation:[90f]}

# Select random
execute as @e[type=area_effect_cloud,tag=random_tester] at @s if entity @e[type=minecraft:armor_stand,distance=..1] run kill @s
tag @e[type=area_effect_cloud,tag=random_tester,sort=random,limit=1] add random_tester_selected
kill @e[type=area_effect_cloud,tag=!random_tester_selected,nbt={Tags:["random_tester"]}]

# Summon new one
execute as @e[type=area_effect_cloud,tag=random_tester] run function main:lobby/tester_room/summon_new

# Kill last aec
kill @e[type=area_effect_cloud,tag=random_tester]
