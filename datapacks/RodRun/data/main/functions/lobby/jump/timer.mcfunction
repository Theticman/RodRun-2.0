# Timer add
scoreboard players add @s Jump_timer 1

# Minutes
scoreboard players operation @s Jump_timer_m = @s Jump_timer
scoreboard players operation @s Jump_timer_m /= !1200 Jump_timer_m

# Seconds
scoreboard players operation @s Jump_timer_s = @s Jump_timer
scoreboard players operation @s Jump_timer_s /= !20 Jump_timer_s
scoreboard players operation @s Jump_timer_s %= !60 Jump_timer_s

# C Senconds
scoreboard players operation @s Jump_timer_cs = @s Jump_timer
scoreboard players operation @s Jump_timer_cs %= !20 Jump_timer_cs
scoreboard players operation @s Jump_timer_cs *= !5 Jump_timer_cs

# Display timer
function main:lobby/jump/display_timer
