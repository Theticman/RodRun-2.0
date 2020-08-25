# Playsound
execute at @s run playsound minecraft:ui.button.click master @s

# Computation
scoreboard players operation @s Jump_timer = @s Jump_best
scoreboard players remove @s Jump_timer 1
function main:lobby/jump/timer

# Tellraw
tellraw @s[scores={Jump_timer=1..,Jump_timer_m=0}] [{"text":"Your best time is: ","color":"yellow"},{"score":{"name":"@s","objective":"Jump_timer_s"},"color":"gold"},{"text":"sec ","color":"yellow"},{"score":{"name":"@s","objective":"Jump_timer_cs"},"color":"gold"},{"text":"csec!","color":"yellow"}]
tellraw @s[scores={Jump_timer=1..,Jump_timer_m=1..}] [{"text":"Your best time is: ","color":"yellow"},{"score":{"name":"@s","objective":"Jump_timer_m"},"color":"gold"},{"text":"min ","color":"yellow"},{"score":{"name":"@s","objective":"Jump_timer_s"},"color":"gold"},{"text":"sec ","color":"yellow"},{"score":{"name":"@s","objective":"Jump_timer_cs"},"color":"gold"},{"text":"csec!","color":"yellow"}]

title @s[scores={Jump_best=0}] actionbar [{"text":"You haven't finished the jump yet!","color":"red"}]
execute at @s[scores={Jump_best=0}] run playsound minecraft:entity.villager.no master @s

# Reset
scoreboard players reset @s Jump_timer
scoreboard players reset @s Jump_timer_m
scoreboard players reset @s Jump_timer_s
scoreboard players reset @s Jump_timer_cs
execute if score @s Jump_best matches 0 run scoreboard players reset @s Jump_best