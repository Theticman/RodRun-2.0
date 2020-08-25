# Summon base armor_stand
execute at @s run summon armor_stand ~ ~ ~ {Marker:1b,NoBasePlate:1b,Small:1b,Invisible:1b,NoGravity:1b,CustomName:"{\"text\":\"kill_effect_head_flying\"}"}

# Summon Head holder
execute at @s run summon armor_stand ~ ~ ~ {Tags:["need_head"],Marker:1b,Invisible:1b,CustomName:"{\"text\":\"game_kill_effect_head_flying_holder\"}",NoGravity:1b,Small:1b,DisabledSlots:4144959}

# Place head
loot replace entity @e[type=minecraft:armor_stand,tag=need_head] armor.head loot main:uuidtest
tag @e[type=minecraft:armor_stand,tag=need_head] remove need_head
