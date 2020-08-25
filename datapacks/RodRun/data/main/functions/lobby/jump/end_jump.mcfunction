# Tag
tag @s remove In_lobby_jump
tag @s add Ready

# Playsound
execute at @s run playsound minecraft:ui.toast.challenge_complete master @s

# Particle
execute at @s run particle minecraft:firework ~ ~ ~ 2 2 2 .2 100 normal

# Print score
tellraw @s[scores={Jump_timer_m=0}] [{"text":"You've completed the jump in: ","color":"yellow"},{"score":{"name":"@s","objective":"Jump_timer_s"},"color":"gold"},{"text":"sec ","color":"yellow"},{"score":{"name":"@s","objective":"Jump_timer_cs"},"color":"gold"},{"text":"csec!","color":"yellow"}]
tellraw @s[scores={Jump_timer_m=1..}] [{"text":"You've completed the jump in: ","color":"yellow"},{"score":{"name":"@s","objective":"Jump_timer_m"},"color":"gold"},{"text":"min ","color":"yellow"},{"score":{"name":"@s","objective":"Jump_timer_s"},"color":"gold"},{"text":"sec ","color":"yellow"},{"score":{"name":"@s","objective":"Jump_timer_cs"},"color":"gold"},{"text":"csec!","color":"yellow"}]

# Best score update
execute unless score @s Jump_best matches 0.. run scoreboard players set @s Jump_best 1000000000
execute if score @s Jump_timer < @s Jump_best run scoreboard players operation @s Jump_best = @s Jump_timer
execute if score @s Jump_best < !Best Jump_best run function main:lobby/jump/set_best

# Timer reset
scoreboard players reset @s Jump_timer
scoreboard players reset @s Jump_timer_m
scoreboard players reset @s Jump_timer_s
scoreboard players reset @s Jump_timer_cs