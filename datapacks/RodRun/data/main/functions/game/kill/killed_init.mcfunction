# Manage player
tag @s remove In_game_playing
tag @s remove In_game_invinsible
tag @s remove In_game_respawning
tag @s remove In_game_portal_cooldown

scoreboard players reset @s AFK_detection
scoreboard players reset @s Invinsible
scoreboard players reset @s Portal_cooldown
scoreboard players reset @s Game_kill_streak

clear @s
gamemode spectator @s
spectate @a[tag=Killer,limit=1]
effect clear @s

# Update deaths
function main:lobby/stats/update_deaths

# Playsounds
execute at @s run playsound minecraft:entity.player.hurt master @s ~ ~ ~

# Kill booper if was thrown
execute as @e[type=minecraft:fishing_bobber] if score @s Players_id = @a[tag=Victim,limit=1] Players_id run kill @s

# Respawn or eliminated ?
execute if score !Mode OptionsInGame matches 0 if score @s Lives_left matches 1.. run tag @s add In_game_respawning
execute if score !Mode OptionsInGame matches 0 if score @s Lives_left matches 0 run tag @s add In_game_eliminated

execute if score !Mode OptionsInGame matches 1 if entity @s[tag=Blue] if score !Blue Lives_left matches 1.. run tag @s add In_game_respawning
execute if score !Mode OptionsInGame matches 1 if entity @s[tag=White] if score !White Lives_left matches 1.. run tag @s add In_game_respawning
execute if score !Mode OptionsInGame matches 1 if entity @s[tag=Red] if score !Red Lives_left matches 1.. run tag @s add In_game_respawning
execute if score !Mode OptionsInGame matches 1 if entity @s[tag=Blue] if score !Blue Lives_left matches 0 run tag @s add In_game_eliminated
execute if score !Mode OptionsInGame matches 1 if entity @s[tag=White] if score !White Lives_left matches 0 run tag @s add In_game_eliminated
execute if score !Mode OptionsInGame matches 1 if entity @s[tag=Red] if score !Red Lives_left matches 0 run tag @s add In_game_eliminated

# Title Respawn
team leave @a[tag=Killer]
title @s[tag=In_game_respawning] times 0 10 0
title @s[tag=In_game_respawning] title [{"text":""}]
title @s[tag=In_game_respawning] subtitle [{"text":"You've been ","color":"yellow"},{"text":"killed","color":"gold"},{"text":" by ","color":"yellow"},{"selector":"@a[tag=Killer]","color":"gold"},{"text":"!","color":"yellow"}]
execute as @a[tag=Killer] run function main:game/others/set_team

# Trigger eliminated
execute as @s[tag=In_game_eliminated] run function main:game/kill/eliminated

# Remove 1 live
execute if score !Mode OptionsInGame matches 0 if score @s Lives_left matches 1.. run scoreboard players remove @s Lives_left 1
execute if score !Mode OptionsInGame matches 1 if entity @s[tag=Blue] if score !Blue Lives_left matches 1.. run scoreboard players remove !Blue Lives_left 1
execute if score !Mode OptionsInGame matches 1 if entity @s[tag=White] if score !White Lives_left matches 1.. run scoreboard players remove !White Lives_left 1
execute if score !Mode OptionsInGame matches 1 if entity @s[tag=Red] if score !Red Lives_left matches 1.. run scoreboard players remove !Red Lives_left 1

# Replace chestplate
execute if score !Mode OptionsInGame matches 1 if entity @s[tag=Blue] as @a[tag=Blue,nbt={Tags:["In_game_playing"]}] run function main:game/chestplate/replace
execute if score !Mode OptionsInGame matches 1 if entity @s[tag=White] as @a[tag=White,nbt={Tags:["In_game_playing"]}] run function main:game/chestplate/replace
execute if score !Mode OptionsInGame matches 1 if entity @s[tag=Red] as @a[tag=Red,nbt={Tags:["In_game_playing"]}] run function main:game/chestplate/replace
