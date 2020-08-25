# Reset basic scores
scoreboard players reset @s Game_kill_streak
execute unless score @s Game_id = !Game_id Game_id run scoreboard players reset @s Game_kills
execute unless score @s Game_id = !Game_id Game_id run scoreboard players reset @s Game_best_streak

# Clear effects
effect clear @s

# Solo mode (can't rejoin gamemode)
execute if score !Mode OptionsInGame matches 0 run function main:game/spectate/init_spectate

# Team mode (rejoin if same game_id and team still have lives)
# Not same game id
execute if score !Mode OptionsInGame matches 1 unless score @s Game_id = !Game_id Game_id run function main:game/spectate/init_spectate

# No lives left
execute if score !Mode OptionsInGame matches 1 if score @s Game_id = !Game_id Game_id if entity @s[tag=Blue] if score !Blue Lives_left matches 0 run function main:game/spectate/init_spectate
execute if score !Mode OptionsInGame matches 1 if score @s Game_id = !Game_id Game_id if entity @s[tag=White] if score !White Lives_left matches 0 run function main:game/spectate/init_spectate
execute if score !Mode OptionsInGame matches 1 if score @s Game_id = !Game_id Game_id if entity @s[tag=Red] if score !Red Lives_left matches 0 run function main:game/spectate/init_spectate

# Respawn
execute if score !Mode OptionsInGame matches 1 if score @s Game_id = !Game_id Game_id if entity @s[tag=Blue] if score !Blue Lives_left matches 1.. run function main:disconnect/rejoin_game
execute if score !Mode OptionsInGame matches 1 if score @s Game_id = !Game_id Game_id if entity @s[tag=White] if score !White Lives_left matches 1.. run function main:disconnect/rejoin_game
execute if score !Mode OptionsInGame matches 1 if score @s Game_id = !Game_id Game_id if entity @s[tag=Red] if score !Red Lives_left matches 1.. run function main:disconnect/rejoin_game
