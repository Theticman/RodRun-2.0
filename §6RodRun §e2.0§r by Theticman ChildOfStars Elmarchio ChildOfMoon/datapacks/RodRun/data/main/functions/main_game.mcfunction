# Kill functions
function main:game/main_kill

# Kill effect
function main:game/main_killeffect

# Portals
function main:game/main_portals

# Powerups
execute if score !State Gamestate matches 2 if score !Powerups OptionsInGame matches 2..5 run function main:game/main_powerups

# Spectate 
execute if score !State Gamestate matches 2 run function main:game/main_spectate

# AFK glowing
execute if score !AFK_glowing OptionsInGame matches 2 unless score !Deathmatch Reset matches ..0 run function main:game/main_afk_glowing

# Deathmatch
execute if score !State Gamestate matches 2 if score !Deathmatch OptionsInGame matches 2..6 run function main:game/main_deathmatch

# Custom in maps
function main:game/main_custom_maps

# Chestplate
function main:game/main_chestplate

# Others
function main:game/main_others

# Game time
execute if score !State Gamestate matches 2 run scoreboard players add !Timer Game_time 1

# Clear experience
experience set @a 0 points
experience set @a 0 levels