function main:starting/start_error

scoreboard players set !State Gamestate 0
scoreboard players set !Timer Powerups -1

tag @a add In_lobby
tag @a add Ready
tag @a remove In_game
tag @a remove In_game_playing
tag @a remove In_game_respawning
tag @a remove In_game_spectating
tag @a remove In_game_invinsible
tag @a remove In_game_eliminated
tag @a remove In_game_tyrolean
tag @a remove In_game_portal_cooldown
tag @a remove Winner
tag @a remove Winner_tie

execute if score !Mode Options matches 0 run tag @a remove Blue
execute if score !Mode Options matches 0 run tag @a remove White
execute if score !Mode Options matches 0 run tag @a remove Red

execute as @a run function main:lobby/others/set_team
function main:reset/reset_entities

function main:game/custom_maps/cyber/reset_blackout
bossbar set minecraft:blackout visible false

bossbar set minecraft:new_powerup visible false

scoreboard players reset !Deathmatch Reset
scoreboard players set !Deathmatch_bossbar Reset 3600
bossbar set minecraft:deathmatch visible false

scoreboard players set !Timer Game_time 0

scoreboard players set !Start Tyrolean_id 0

scoreboard players reset * Mine_id
scoreboard players set !Count Mine_id 0

scoreboard players reset @a Game_id
scoreboard players reset @a Invinsible
scoreboard players reset @a Respawning
scoreboard players reset @a AFK_detection
scoreboard players reset * Game_kills
scoreboard players reset @a Game_kill_streak
scoreboard players reset * Game_best_streak
scoreboard players reset @a Portal_cooldown
scoreboard players reset @a Powerup_glow
scoreboard players reset @a Powerup_mine
scoreboard players reset @a Powerup_shield
scoreboard players reset @a Powerup_speed
scoreboard players reset * Lives_left
scoreboard players reset * stats_IG_rod_use
scoreboard players reset * stats_IG_speed
scoreboard players reset * stats_IG_glow
scoreboard players reset * stats_IG_shield
scoreboard players reset * stats_IG_mine
scoreboard players reset * stats_IG_live

scoreboard players set !Timer Update_game_sb -1
scoreboard players set !Timer_update Update_game_sb -1

execute as @a run trigger Spectate set 1
scoreboard players reset @a Spectate
scoreboard players reset @a Spectate_timer
scoreboard players reset * Player_x
scoreboard players reset * Player_y
scoreboard players reset * Player_z

clear @a
effect clear @a
gamemode adventure @a
effect clear @a minecraft:speed
effect clear @a minecraft:glowing

execute as @a run function main:lobby/others/teleport_lobby