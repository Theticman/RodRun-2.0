# Timer add
scoreboard players add @s AFK_timer 1

# Test if %200
scoreboard players operation !Test AFK_timer = @s AFK_timer
scoreboard players operation !Test AFK_timer %= !100 AFK_timer

# Test if afk
execute if score !Test AFK_timer matches 0 run function main:lobby/afk/test