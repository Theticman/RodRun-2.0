# Tag
tag @s remove In_lobby_jump
tag @s add Ready

# Teleport
teleport @s 22 42 -10 -90 0

# Playsound
execute at @s run playsound minecraft:entity.player.hurt master @s

# Timer reset
scoreboard players reset @s Jump_timer
scoreboard players reset @s Jump_timer_m
scoreboard players reset @s Jump_timer_s
scoreboard players reset @s Jump_timer_cs