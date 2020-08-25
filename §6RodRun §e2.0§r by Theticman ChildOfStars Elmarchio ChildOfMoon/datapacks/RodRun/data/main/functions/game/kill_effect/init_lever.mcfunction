# Summon base armor_stand
execute at @s run summon armor_stand ~ ~ ~ {Marker:1b,NoBasePlate:1b,Small:1b,Invisible:1b,NoGravity:1b,CustomName:"{\"text\":\"kill_effect_lever\"}",Tags:["need_place"]}

# Summon victim head holder
execute as @s at @s run summon armor_stand ~ ~ ~ {Pose:{LeftArm:[190f,20f,40f],RightArm:[170f,10f,-40f]},Tags:["need_head"],Marker:1b,ShowArms:1b,NoBasePlate:1b,CustomName:"{\"text\":\"game_kill_effect_lever_victim_holder\"}",NoGravity:1b,Small:1b,ArmorItems:[{},{},{},{id:"minecraft:jukebox",Count:1b}],DisabledSlots:4144959}

# Place head
execute as @e[name=game_kill_effect_lever_victim_holder,type=minecraft:armor_stand,tag=need_head] at @s run teleport @s ~ ~ ~ facing entity @a[tag=Killer,limit=1]
loot replace entity @e[name=game_kill_effect_lever_victim_holder,type=minecraft:armor_stand,tag=need_head] armor.head loot main:uuidtest
tag @e[type=minecraft:armor_stand,tag=need_head] remove need_head

# Summon killer head holder
execute as @a[tag=Killer] at @s run summon armor_stand ~-0.15 ~ ~ {Pose:{LeftArm:[-80f,-50f,0f],RightArm:[-80f,-50f,0f]},Rotation:[-90f],Tags:["need_head"],Marker:1b,ShowArms:1b,NoBasePlate:1b,CustomName:"{\"text\":\"game_kill_effect_lever_killer_holder\"}",NoGravity:1b,Small:1b,ArmorItems:[{},{},{},{id:"minecraft:jukebox",Count:1b}],DisabledSlots:4144959}

# Place head
execute as @a[tag=Killer] run loot replace entity @e[type=minecraft:armor_stand,tag=need_head] armor.head loot main:uuidtest
tag @e[type=minecraft:armor_stand,tag=need_head] remove need_head

# Place Lever
execute as @a[tag=Killer] at @s run summon minecraft:falling_block ~0.1 ~ ~ {CustomName:"{\"text\":\"kill_effect_lever_lever\"}",BlockState:{Name:"minecraft:lever",Properties:{facing:"south",face:"floor"}},NoGravity:1b,Time:1,DropItem:0b}