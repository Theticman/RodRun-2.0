# Title eliminated
title @s times 10 60 10
title @s title [{"text":""}]
title @s subtitle [{"text":"You've been ","color":"yellow"},{"text":"eliminated","color":"gold"},{"text":"!","color":"yellow"}]

# Tags mangment
tag @s add In_game_spectating
tag @s remove In_game_invinsible
tag @s remove In_game_respawning
tag @s remove In_game_portal_cooldown

# Team leave
team leave @s

# Tellraw eliminated
tellraw @a[tag=In_game] [{"text":"➠ ","color":"dark_red"},{"selector":"@s","color":"red"},{"text":" has been ","color":"yellow"},{"text":"eliminated","color":"dark_red"},{"text":"!","color":"yellow"}]

# Tellraw now spectating
tellraw @s ["",{"text":"\n[","color":"dark_gray"},{"text":"Game","bold":true,"color":"gold"},{"text":"] ","color":"dark_gray"},{"text":"Currently spectating the game!","color":"yellow"},{"text":"\n"},{"text":"\u27a0","color":"gold","clickEvent":{"action":"run_command","value":"/trigger Spectate set 2020"},"hoverEvent":{"action":"show_text","value":"§6Click §eto teleport to §6lobby§e!"}},{"text":" ","clickEvent":{"action":"run_command","value":"/trigger Spectate set 2020"},"hoverEvent":{"action":"show_text","value":"§6Click §eto teleport to §6lobby§e!"}},{"text":"Teleport to lobby","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger Spectate set 2020"},"hoverEvent":{"action":"show_text","value":"§6Click §eto teleport to §6lobby§e!"}},{"text":"\n "}]

# Give team back
function main:game/others/set_team

# Scores reset
scoreboard players reset @s Invinsible
scoreboard players reset @s Respawning
scoreboard players reset @s AFK_detection
scoreboard players reset @s Portal_cooldown
scoreboard players reset @s Game_kill_streak
execute if score !Mode OptionsInGame matches 0 run scoreboard players reset @s Lives_left
execute if score !Mode OptionsInGame matches 1 run function main:reset/test_conditions
execute if score !Mode OptionsInGame matches 1 if entity @s[tag=Blue] if score !Blue_alive Reset matches 0 run scoreboard players reset !Blue Lives_left
execute if score !Mode OptionsInGame matches 1 if entity @s[tag=White] if score !White_alive Reset matches 0 run scoreboard players reset !White Lives_left
execute if score !Mode OptionsInGame matches 1 if entity @s[tag=Red] if score !Red_alive Reset matches 0 run scoreboard players reset !Red Lives_left

# Reset last tag
tag @s remove In_game_eliminated
