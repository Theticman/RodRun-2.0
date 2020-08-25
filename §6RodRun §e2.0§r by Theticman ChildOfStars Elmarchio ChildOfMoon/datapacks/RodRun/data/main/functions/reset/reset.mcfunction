# Score add
scoreboard players add !Timer Reset 1

# Gamestate
execute if score !Timer Reset matches 1 run scoreboard players set !State Gamestate 3
execute if score !Timer Reset matches 90 run scoreboard players set !State Gamestate 0

# Select winner
execute if score !Timer Reset matches 1 run tag @a[tag=In_game_playing] add Winner
execute if score !Timer Reset matches 1 run tag @a[tag=In_game_respawning] add Winner
execute if score !Timer Reset matches 1 if score !Mode OptionsInGame matches 1 if entity @a[nbt={Tags:["Winner","Blue"]}] as @a[nbt={Tags:["In_game","Blue"]}] if score @s Game_id = !Game_id Game_id run tag @s add Winner
execute if score !Timer Reset matches 1 if score !Mode OptionsInGame matches 1 if entity @a[nbt={Tags:["Winner","White"]}] as @a[nbt={Tags:["In_game","White"]}] if score @s Game_id = !Game_id Game_id run tag @s add Winner
execute if score !Timer Reset matches 1 if score !Mode OptionsInGame matches 1 if entity @a[nbt={Tags:["Winner","Red"]}] as @a[nbt={Tags:["In_game","Red"]}] if score @s Game_id = !Game_id Game_id run tag @s add Winner

# Hide scoreboard
execute if score !Timer Reset matches 1 run scoreboard objectives setdisplay sidebar

# Tags managment
execute if score !Timer Reset matches 1 run tag @a[tag=In_game] add Ending
execute if score !Timer Reset matches 1 run tag @a[tag=Ending] remove In_game
execute if score !Timer Reset matches 1 run tag @a[tag=Ending] remove In_game_playing
execute if score !Timer Reset matches 1 run tag @a[tag=Ending] remove In_game_respawning
execute if score !Timer Reset matches 1 run tag @a[tag=Ending] remove In_game_spectating
execute if score !Timer Reset matches 1 run tag @a[tag=Ending] remove In_game_eliminated
execute if score !Timer Reset matches 90 run tag @a[tag=Ending] remove In_game_invinsible
execute if score !Timer Reset matches 90 run tag @a[tag=Ending] remove In_game_tyrolean
execute if score !Timer Reset matches 90 run tag @a[tag=Ending] remove In_game_portal_cooldown
execute if score !Timer Reset matches 21 run tag @a[tag=Ending] remove Winner
execute if score !Timer Reset matches 21 run tag @a[tag=Ending] remove Winner_tie

execute if score !Timer Reset matches 90 if score !Mode Options matches 0 run tag @a[tag=Ending] remove Blue
execute if score !Timer Reset matches 90 if score !Mode Options matches 0 run tag @a[tag=Ending] remove White
execute if score !Timer Reset matches 90 if score !Mode Options matches 0 run tag @a[tag=Ending] remove Red

# Uppdate wins/lose stats
execute if score !Timer Reset matches 1 as @a[nbt={Tags:["Winner","Ending"]}] run function main:lobby/stats/update_wins
execute if score !Timer Reset matches 1 as @a[tag=!Winner,nbt={Tags:["Ending"]}] if score @s Game_id <= !Game_id Game_id run function main:lobby/stats/update_lose

# Scores reset
execute if score !Timer Reset matches 1 run scoreboard players reset !Deathmatch Reset
execute if score !Timer Reset matches 1 run scoreboard players set !Deathmatch_bossbar Reset 3600
execute if score !Timer Reset matches 1 run bossbar set minecraft:deathmatch visible false

execute if score !Timer Reset matches 90 run scoreboard players set !Timer Game_time 0

execute if score !Timer Reset matches 1 run scoreboard players set !Timer Powerups -1
execute if score !Timer Reset matches 1 run scoreboard players reset @a Powerup_glow
execute if score !Timer Reset matches 1 run scoreboard players reset @a Powerup_mine
execute if score !Timer Reset matches 1 run scoreboard players reset @a Powerup_shield
execute if score !Timer Reset matches 1 run scoreboard players reset @a Powerup_speed

execute if score !Timer Reset matches 1 run scoreboard players reset * Mine_id
execute if score !Timer Reset matches 1 run scoreboard players set !Count Mine_id 0

execute if score !Timer Reset matches 90 run scoreboard players reset @a Game_id
execute if score !Timer Reset matches 1 run scoreboard players reset @a Invinsible
execute if score !Timer Reset matches 1 run scoreboard players reset @a Respawning
execute if score !Timer Reset matches 1 run scoreboard players reset @a AFK_detection
execute if score !Timer Reset matches 90 run scoreboard players reset * Game_kills
execute if score !Timer Reset matches 90 run scoreboard players reset @a Game_kill_streak
execute if score !Timer Reset matches 90 run scoreboard players reset * Game_best_streak
execute if score !Timer Reset matches 90 run scoreboard players reset @a Portal_cooldown
execute if score !Timer Reset matches 1 run scoreboard players reset * Lives_left
execute if score !Timer Reset matches 90 run scoreboard players reset * stats_IG_rod_use
execute if score !Timer Reset matches 90 run scoreboard players reset * stats_IG_rod_use
execute if score !Timer Reset matches 90 run scoreboard players reset * stats_IG_speed
execute if score !Timer Reset matches 90 run scoreboard players reset * stats_IG_glow
execute if score !Timer Reset matches 90 run scoreboard players reset * stats_IG_shield
execute if score !Timer Reset matches 90 run scoreboard players reset * stats_IG_mine
execute if score !Timer Reset matches 90 run scoreboard players reset * stats_IG_live

execute if score !Timer Reset matches 1 as @a run trigger Spectate set 1
execute if score !Timer Reset matches 1 run scoreboard players reset @a Spectate
execute if score !Timer Reset matches 1 run scoreboard players reset @a Spectate_timer
execute if score !Timer Reset matches 90 run scoreboard players reset * Player_x
execute if score !Timer Reset matches 90 run scoreboard players reset * Player_y
execute if score !Timer Reset matches 90 run scoreboard players reset * Player_z

execute if score !Timer Reset matches 1 run scoreboard players set !Timer Update_game_sb -1
execute if score !Timer Reset matches 1 run scoreboard players set !Timer_update Update_game_sb -1

# Kill entities
execute if score !Timer Reset matches 1 run function main:reset/reset_entities
execute if score !Timer Reset matches 90 run function main:reset/reset_entities

# Reset blackout
execute if score !Timer Reset matches 1 run function main:game/custom_maps/cyber/reset_blackout
execute if score !Timer Reset matches 1 run bossbar set minecraft:blackout visible false

# Reset new poerup bossbar
execute if score !Timer Reset matches 1 run bossbar set minecraft:new_powerup visible false

# Manage player
execute if score !Timer Reset matches 1 run clear @a[tag=Ending]
execute if score !Timer Reset matches 1 run clear @a[tag=In_lobby] emerald{Tags:["spectate_emerald"]}
execute if score !Timer Reset matches 1 run gamemode spectator @a[tag=!Winner,nbt={Tags:["Ending"]}]
execute if score !Timer Reset matches 1 run teleport @a[tag=!Winner,nbt={Tags:["Ending"]}] @r[tag=Winner,limit=1]

execute if score !Timer Reset matches 90 run effect clear @a[tag=Ending]

execute if score !Timer Reset matches 90 as @a[tag=Ending] run function main:lobby/others/set_team

execute if score !Timer Reset matches 90 run gamemode adventure @a[tag=Ending]
execute if score !Timer Reset matches 90 run tag @a[tag=Ending] add In_lobby
execute if score !Timer Reset matches 90 run tag @a[tag=Ending] add Ready
execute if score !Timer Reset matches 90 as @a[tag=Ending] run function main:lobby/others/teleport_lobby
execute if score !Timer Reset matches 90 run tag @a[tag=Ending] remove Ending

# Reset displays
execute if score !Timer Reset matches 1.. run function main:reset/reset_displays
execute if score !Timer Reset matches 20.. as @a[tag=Ending] run function main:reset/display_stats

# Reset timer
execute if score !Timer Reset matches 90 run scoreboard players set !Timer Reset -1
