# Tags managment
tag @s remove In_lobby
tag @s remove Ready
tag @s remove In_game_playing
tag @s remove In_game_respawning
tag @s remove In_game_invinsible
tag @s remove In_game_eliminated
tag @s remove In_game_tyrolean
tag @s add In_game
tag @s add In_game_spectating

# Manage team
function main:game/others/set_team

# Scores reset
scoreboard players reset @s Invinsible
scoreboard players reset @s Respawning
scoreboard players reset @s AFK_detection
scoreboard players reset @s Powerup_glow
scoreboard players reset @s Powerup_mine
scoreboard players reset @s Powerup_shield
scoreboard players reset @s Lives_left

# Tellraw
tellraw @s ["",{"text":"\n[","color":"dark_gray"},{"text":"Game","bold":true,"color":"gold"},{"text":"] ","color":"dark_gray"},{"text":"Currently spectating the game!","color":"yellow"},{"text":"\n"},{"text":"\u27a0","color":"gold","clickEvent":{"action":"run_command","value":"/trigger Spectate set 2020"},"hoverEvent":{"action":"show_text","value":"§6Click §eto teleport to §6lobby§e!"}},{"text":" ","clickEvent":{"action":"run_command","value":"/trigger Spectate set 2020"},"hoverEvent":{"action":"show_text","value":"§6Click §eto teleport to §6lobby§e!"}},{"text":"Teleport to lobby","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger Spectate set 2020"},"hoverEvent":{"action":"show_text","value":"§6Click §eto teleport to §6lobby§e!"}},{"text":"\n "}]

# Actionbar reset
title @s actionbar [{"text":""}]

# Manage player
clear @s
gamemode spectator @s
function main:game/spectate/teleport