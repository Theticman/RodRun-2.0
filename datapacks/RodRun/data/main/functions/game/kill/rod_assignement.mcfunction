# Select player to be assigned
tag @r[tag=Need_rod_assignement,limit=1] add Rod_assign
tag @a[tag=Rod_assign] remove Need_rod_assignement

# Assign rod to closer owner
execute as @a[tag=Rod_assign,limit=1] at @s positioned ~ ~1.5 ~ run scoreboard players operation @e[type=minecraft:fishing_bobber,scores={Players_id=0},sort=nearest,limit=1] Players_id = @s Players_id
# Assign rod to closer owner kill id
execute as @a[tag=Rod_assign,limit=1] at @s positioned ~ ~1.5 ~ run scoreboard players operation @e[type=minecraft:fishing_bobber,scores={Players_kill_id=0},sort=nearest,limit=1] Players_kill_id = @s Players_kill_id
# Assign kill effect from closer owner
execute as @a[tag=Rod_assign,limit=1] at @s positioned ~ ~1.5 ~ run scoreboard players operation @e[type=minecraft:fishing_bobber,scores={Kill_effect_id=0},sort=nearest,limit=1] Kill_effect_id = @s Kill_effect_id

# Remove tag
tag @a[tag=Rod_assign] remove Rod_assign

# Recall if not fisnished
execute if entity @a[tag=Need_rod_assignement,limit=1] run function main:game/kill/rod_assignement