# Update time
scoreboard players add !Timer Starting 1
execute if score !Timer Starting matches 271.. run scoreboard players set !Timer Starting -1

# Update GameState
execute if score !Timer Starting matches 2 run scoreboard players set !State Gamestate 1
execute if score !Timer Starting matches 270 run scoreboard players set !State Gamestate 2

# Manage player
execute if score !Timer Starting matches 2 if score !Mode Options matches 0 run execute as @a[tag=In_lobby] run tag @s[tag=Ready] add Starting
execute if score !Timer Starting matches 2 if score !Mode Options matches 1 run execute as @a[nbt={Tags:["In_lobby","Blue"]}] run tag @s[tag=Ready] add Starting
execute if score !Timer Starting matches 2 if score !Mode Options matches 1 run execute as @a[nbt={Tags:["In_lobby","White"]}] run tag @s[tag=Ready] add Starting
execute if score !Timer Starting matches 2 if score !Mode Options matches 1 run execute as @a[nbt={Tags:["In_lobby","Red"]}] run tag @s[tag=Ready] add Starting
execute if score !Timer Starting matches 2 run tag @a[tag=Starting] remove In_lobby
execute if score !Timer Starting matches 2 run tag @a[tag=Starting] remove Ready
execute if score !Timer Starting matches 2 run clear @a[tag=Starting]
execute if score !Timer Starting matches 2 run gamemode adventure @a[tag=Starting]

# Hide scoreboard
execute if score !Timer Starting matches 2 run scoreboard objectives setdisplay sidebar

# Boots
execute if score !Timer Starting matches 270 if score !Mode OptionsInGame matches 0 as @a[tag=Starting] run function main:game/boots/solo
execute if score !Timer Starting matches 270 if score !Mode OptionsInGame matches 1 as @a[tag=Starting] run function main:game/boots/teams

# Tags
execute if score !Timer Starting matches 270 run tag @a[tag=Starting] add In_game
execute if score !Timer Starting matches 270 run tag @a[tag=Starting] add In_game_playing

# Save options
execute if score !Timer Starting matches 2 run execute if score !Map Options matches 2.. run scoreboard players operation !Map OptionsInGame = !Map Options
execute if score !Timer Starting matches 2 run execute if score !Live Options matches 0.. run scoreboard players operation !Live OptionsInGame = !Live Options
execute if score !Timer Starting matches 2 run execute if score !Powerups Options matches 2.. run scoreboard players operation !Powerups OptionsInGame = !Powerups Options
execute if score !Timer Starting matches 2 run execute if score !Player_name Options matches 2.. run scoreboard players operation !Player_name OptionsInGame = !Player_name Options
execute if score !Timer Starting matches 2 run execute if score !Deathmatch Options matches 2.. run scoreboard players operation !Deathmatch OptionsInGame = !Deathmatch Options
execute if score !Timer Starting matches 2 run execute if score !AFK_glowing Options matches 2.. run scoreboard players operation !AFK_glowing OptionsInGame = !AFK_glowing Options
execute if score !Timer Starting matches 2 run execute if score !Time Options matches 2.. run scoreboard players operation !Time OptionsInGame = !Time Options
execute if score !Timer Starting matches 2 run scoreboard players operation !Mode OptionsInGame = !Mode Options

execute if score !Timer Starting matches 2 run execute if score !Map Options matches 1 run function main:starting/random/map
execute if score !Timer Starting matches 2 run execute if score !Live Options matches -1 run function main:starting/random/live
execute if score !Timer Starting matches 2 run execute if score !Powerups Options matches 1 run function main:starting/random/powerups
execute if score !Timer Starting matches 2 run execute if score !Player_name Options matches 1 run function main:starting/random/player_name
execute if score !Timer Starting matches 2 run execute if score !Deathmatch Options matches 1 run function main:starting/random/deathmatch
execute if score !Timer Starting matches 2 run execute if score !AFK_glowing Options matches 1 run function main:starting/random/afk_glowing
execute if score !Timer Starting matches 2 run execute if score !Time Options matches 1 run function main:starting/random/time

# Change teams
execute if score !Timer Starting matches 2 as @a[tag=Starting] run function main:game/others/set_team

# Stats nb game
execute if score !Timer Starting matches 270 run function main:lobby/stats/update_game_played

# Set Players ID
execute if score !Timer Starting matches 2 run function main:starting/init_players_kill_id
execute if score !Timer Starting matches 270 run scoreboard players add !Game_id Game_id 1
execute if score !Timer Starting matches 270 run execute as @a[tag=Starting] run scoreboard players operation @s Game_id = !Game_id Game_id

# Start conditions still met ?
execute if score !Timer Starting matches 2..270 run function main:starting/test_conditions
execute if score !Timer Starting matches 270 run tag @a[tag=Starting] remove Starting

# Set lives score
execute if score !Timer Starting matches 2 if score !Mode OptionsInGame matches 0 as @a[tag=Starting] run scoreboard players operation @s Lives_left = !Live OptionsInGame
execute if score !Timer Starting matches 2 if score !Mode OptionsInGame matches 1 if entity @a[tag=Blue,nbt={Tags:["Starting"]}] run scoreboard players operation !Blue Lives_left = !Live OptionsInGame
execute if score !Timer Starting matches 2 if score !Mode OptionsInGame matches 1 if entity @a[tag=White,nbt={Tags:["Starting"]}] run scoreboard players operation !White Lives_left = !Live OptionsInGame
execute if score !Timer Starting matches 2 if score !Mode OptionsInGame matches 1 if entity @a[tag=Red,nbt={Tags:["Starting"]}] run scoreboard players operation !Red Lives_left = !Live OptionsInGame

# Powerups set scores
execute if score !Timer Starting matches 2 if score !Powerups OptionsInGame matches 2.. run scoreboard players set @a[tag=Starting] Powerup_speed 0
execute if score !Timer Starting matches 2 if score !Powerups OptionsInGame matches 2.. run scoreboard players set @a[tag=Starting] Powerup_glow 0
execute if score !Timer Starting matches 2 if score !Powerups OptionsInGame matches 2.. run scoreboard players set @a[tag=Starting] Powerup_mine 0
execute if score !Timer Starting matches 2 if score !Powerups OptionsInGame matches 2.. run scoreboard players set @a[tag=Starting] Powerup_shield 0

# Set player name visibility
execute if score !Timer Starting matches 2 run function main:starting/team_visibility

# Deathmatch set
execute if score !Timer Starting matches 2 if score !Deathmatch OptionsInGame matches 2 run scoreboard players set !Deathmatch Reset 3601
execute if score !Timer Starting matches 2 if score !Deathmatch OptionsInGame matches 3 run scoreboard players set !Deathmatch Reset 6001
execute if score !Timer Starting matches 2 if score !Deathmatch OptionsInGame matches 4 run scoreboard players set !Deathmatch Reset 12001
execute if score !Timer Starting matches 2 if score !Deathmatch OptionsInGame matches 5 run scoreboard players set !Deathmatch Reset 24001
execute if score !Timer Starting matches 2 if score !Deathmatch OptionsInGame matches 6 run scoreboard players set !Deathmatch Reset 36001

# Set time
execute if score !Timer Starting matches 2 if score !Time OptionsInGame matches 2 run time set day
execute if score !Timer Starting matches 3 if score !Time OptionsInGame matches 3 run time set noon
execute if score !Timer Starting matches 4 if score !Time OptionsInGame matches 4 run time set night
execute if score !Timer Starting matches 5 if score !Time OptionsInGame matches 5 run time set midnight

# Teleport players in lobby
execute if score !Timer Starting matches 2 as @a[tag=Starting] run function main:lobby/others/teleport_lobby

# Teleport players to maps
execute if score !Timer Starting matches 20 as @a[tag=Starting] run function main:game/random_teleport/initial_teleport
execute if score !Timer Starting matches 20 as @a[tag=Starting] run effect give @s minecraft:blindness 999999 0 true
execute if score !Timer Starting matches 20 as @a[tag=Starting] run effect give @s minecraft:invisibility 999999 0 true
execute if score !Timer Starting matches 50 as @a[tag=Starting] run function main:game/random_teleport/teleport_player
execute if score !Timer Starting matches 50 as @a[tag=Starting] run effect clear @s minecraft:blindness
execute if score !Timer Starting matches 50 as @a[tag=Starting] run effect clear @s minecraft:invisibility

# Summon whitehouse door
execute if score !Timer Starting matches 30 if score !Map OptionsInGame matches 3 run function main:game/custom_maps/whitehouse/door/summon_door
execute if score !Timer Starting matches 30 if score !Map OptionsInGame matches 3 run fill 490 20 -25 490 22 -23 minecraft:barrier replace air
execute if score !Timer Starting matches 2 if score !Map OptionsInGame matches 3 run scoreboard players set !State Whitehouse_door 0
execute if score !Timer Starting matches 2 if score !Map OptionsInGame matches 3 run scoreboard players set !Timer Whitehouse_door 0

# Summon cyber propellers
execute if score !Timer Starting matches 21 if score !Map OptionsInGame matches 6 run function main:game/custom_maps/cyber/summon_propellers

# Displays
execute if score !Timer Starting matches 2.. run function main:starting/starting_displays