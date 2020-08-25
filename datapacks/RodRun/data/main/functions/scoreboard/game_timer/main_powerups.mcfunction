# 0:00 to 0:59
execute if score !Timer Powerups matches 0..1199 run function main:scoreboard/game_timer/powerups/minute_0

# 1:00 to 1:59
execute if score !Timer Powerups matches 1200..2399 run function main:scoreboard/game_timer/powerups/minute_1

# 2:00
execute if score !Timer Powerups matches 2400 run function main:scoreboard/game_timer/powerups/minute_2