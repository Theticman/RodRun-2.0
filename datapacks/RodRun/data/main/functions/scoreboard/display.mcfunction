# Lobby
execute if score !State Gamestate matches 0 run function main:scoreboard/lobby

# Game
execute if score !State Gamestate matches 2 if score !Timer Update_game_sb matches 0..199 run function main:scoreboard/game_lives
execute if score !State Gamestate matches 2 if score !Timer Update_game_sb matches 200..299 if entity @a[tag=In_game,scores={Game_kills=1..}] run function main:scoreboard/game_kills
execute if score !State Gamestate matches 2 if score !Timer Update_game_sb matches 300.. run function main:scoreboard/game_timer