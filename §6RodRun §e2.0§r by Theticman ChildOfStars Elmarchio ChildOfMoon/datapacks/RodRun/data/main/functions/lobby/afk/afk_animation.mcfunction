# Timer add
execute if score @s AFK_animation matches 4000.. run scoreboard players set @s AFK_animation 0
scoreboard players add @s AFK_animation 1

# ==== FIRST ==== #
teleport @s[scores={AFK_animation=1}] -62 85 -7 90 -20
execute at @s[scores={AFK_animation=1}] run function main:lobby/afk/teleport_here
execute at @s[scores={AFK_animation=1..1199}] run teleport @s ~ ~ ~-.05

# ==== SECOND ==== #
teleport @s[scores={AFK_animation=1200}] 3 49 -44 90 0
execute at @s[scores={AFK_animation=1200}] run function main:lobby/afk/teleport_here
execute at @s[scores={AFK_animation=1200..1479}] run teleport @s ~-.003 ~-.003 ~.1

# ==== THIRD ==== #
teleport @s[scores={AFK_animation=1480}] 41 47 -31 180 10
execute at @s[scores={AFK_animation=1480}] run function main:lobby/afk/teleport_here
execute at @s[scores={AFK_animation=1480..2729}] run teleport @s ~-.07 ~.002 ~

# ==== FOURTH ==== #
teleport @s[scores={AFK_animation=2730}] 8 37 -23 135 15
execute at @s[scores={AFK_animation=2730}] run function main:lobby/afk/teleport_here
execute at @s[scores={AFK_animation=2730..3199}] run teleport @s ~ ~-.02 ~

# ==== FITH ==== #
teleport @s[scores={AFK_animation=3200}] -60.22 46.50 -10.12 -481.84 31.90
execute at @s[scores={AFK_animation=3200}] run function main:lobby/afk/teleport_here
execute at @s[scores={AFK_animation=3200..3999}] run teleport @s ^ ^.05 ^.02
