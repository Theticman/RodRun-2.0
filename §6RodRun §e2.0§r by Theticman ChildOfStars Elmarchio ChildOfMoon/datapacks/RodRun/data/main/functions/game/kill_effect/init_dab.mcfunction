# Summon base armor_stand
execute at @s run summon armor_stand ~ ~ ~ {Marker:1b,NoBasePlate:1b,Small:1b,Invisible:1b,NoGravity:1b,CustomName:"{\"text\":\"kill_effect_dab\"}"}

# Summon Head holder
execute at @s run summon armor_stand ~ ~ ~ {Rotation:[90f],NoBasePlate:1b,Tags:["need_head"],Marker:1b,ShowArms:1b,CustomName:"{\"text\":\"game_kill_effect_dab_armor\"}",NoGravity:1b,Small:1b,Pose:{RightArm:[-10f,0f,10f],LeftArm:[-10f,0f,-10f]},DisabledSlots:4144959}
execute as @e[type=minecraft:armor_stand,tag=need_head] at @s run teleport @s ~ ~ ~ facing entity @a[tag=Killer,limit=1]

# Place head
loot replace entity @e[type=minecraft:armor_stand,tag=need_head] armor.head loot main:uuidtest
tag @e[type=minecraft:armor_stand,tag=need_head] remove need_head
