# Tellraw
tellraw @s[tag=Starting,scores={Disconnect=1..}] [{"text":"[","color":"dark_gray"},{"text":"RodRun","color":"gold","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Disconnected while game starting, so you were put back in lobby.","color":"yellow"}]
tellraw @s[tag=In_game,scores={Disconnect=1..}] [{"text":"[","color":"dark_gray"},{"text":"RodRun","color":"gold","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Disconnected during game, so you were put back in lobby.","color":"yellow"}]
tellraw @s[tag=Ending,scores={Disconnect=1..}] [{"text":"[","color":"dark_gray"},{"text":"RodRun","color":"gold","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Disconnected while game ending, so you were put back in lobby.","color":"yellow"}]

# Manage player
effect clear @s
clear @s
gamemode adventure @s
function main:lobby/others/teleport_lobby

# Update lose stats
execute if score @s Game_id <= !Game_id Game_id run function main:lobby/stats/update_lose

# Tags managment
tag @s remove Starting
tag @s remove In_game
tag @s remove In_game_playing
tag @s remove In_game_respawning
tag @s remove In_game_invinsible
tag @s remove In_game_spectating
tag @s remove In_game_eliminated
tag @s remove In_game_tyrolean
tag @s remove In_game_portal_cooldown
tag @s remove In_lobby_kill_effect_animation
tag @s remove Ending
tag @s remove Winner
tag @s remove Winner_tie
execute if score !Mode Options matches 0 run tag @s remove Blue
execute if score !Mode Options matches 0 run tag @s remove White
execute if score !Mode Options matches 0 run tag @s remove Red

tag @s add In_lobby
tag @s add Ready

# Teams managmenet
function main:lobby/others/set_team

# Scores reset
scoreboard players reset @s Invinsible
scoreboard players reset @s Game_id
scoreboard players reset @s Respawning
scoreboard players reset @s AFK_detection
scoreboard players reset @s Portal_cooldown
scoreboard players reset @s Game_kills
scoreboard players reset @s Game_kill_streak
scoreboard players reset @s Kill_effect_anim
scoreboard players reset @s Powerup_glow
scoreboard players reset @s Powerup_mine
scoreboard players reset @s Powerup_shield
scoreboard players reset @s Lives_left
scoreboard players reset @s stats_IG_rod_use

execute as @s run trigger Spectate set 1
scoreboard players reset @s Spectate
scoreboard players reset @s Spectate_timer
scoreboard players reset @s Player_x
scoreboard players reset @s Player_y
scoreboard players reset @s Player_z