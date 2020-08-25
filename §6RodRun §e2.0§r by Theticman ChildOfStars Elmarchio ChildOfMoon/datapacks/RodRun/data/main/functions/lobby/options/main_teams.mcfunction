# Join teams
execute at @e[type=minecraft:armor_stand,name=Blue] as @a[tag=!Blue,distance=..1,tag=In_lobby] run function main:lobby/options/teams/join_blue
execute at @e[type=minecraft:armor_stand,name=White] as @a[tag=!White,distance=..1,tag=In_lobby] run function main:lobby/options/teams/join_white
execute at @e[type=minecraft:armor_stand,name=Red] as @a[tag=!Red,distance=..1,tag=In_lobby] run function main:lobby/options/teams/join_red

# Boots
execute as @a[tag=Blue,gamemode=adventure] run function main:lobby/options/teams/blue_boots
execute as @a[tag=White,gamemode=adventure] run function main:lobby/options/teams/white_boots
execute as @a[tag=Red,gamemode=adventure] run function main:lobby/options/teams/red_boots

# Teleport villager
execute as @e[type=minecraft:armor_stand,name=Blue] at @s run teleport @e[type=villager,name=Blue_villager] @s
execute as @e[type=minecraft:armor_stand,name=White] at @s run teleport @e[type=villager,name=White_villager] @s
execute as @e[type=minecraft:armor_stand,name=Red] at @s run teleport @e[type=villager,name=Red_villager] @s