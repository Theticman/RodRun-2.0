# Tags add
tag @s add Mine_teleport
execute at @s run tag @e[type=minecraft:armor_stand,name=game_mine_button,distance=..3] add Mine_button_teleport
execute at @s run tag @e[type=minecraft:armor_stand,name=game_mine_tnt,distance=..3] add Mine_tnt_teleport

# Select mine parts to be teleported
execute as @e[tag=Mine_button_teleport] unless score @s Mine_id = @e[tag=Mine_teleport,limit=1] Mine_id run tag @s remove Mine_button_teleport
execute as @e[tag=Mine_tnt_teleport] unless score @s Mine_id = @e[tag=Mine_teleport,limit=1] Mine_id run tag @s remove Mine_tnt_teleport
tag @s remove Mine_teleport

# Teleport mine parts
execute at @s run teleport @e[tag=Mine_button_teleport] ~ ~-.88 ~
execute at @s run teleport @e[tag=Mine_tnt_teleport] ~ ~-1.075 ~

# Remove tag
tag @e[tag=Mine_button_teleport] remove Mine_button_teleport
tag @e[tag=Mine_tnt_teleport] remove Mine_tnt_teleport
