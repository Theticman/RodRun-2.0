# Reset all stats
scoreboard players reset * stats_deaths
scoreboard players reset * stats_glow
scoreboard players reset * stats_kills
scoreboard players reset * stats_live
scoreboard players reset * stats_mine
scoreboard players reset * stats_nb_game
scoreboard players reset * stats_powerups
scoreboard players reset * stats_rod_use
scoreboard players reset * stats_shield
scoreboard players reset * stats_speed
scoreboard players reset * stats_streak
scoreboard players reset * stats_wins
scoreboard players reset * stats_lose

# Set to 0
scoreboard players set @a stats_deaths 0
scoreboard players set @a stats_glow 0
scoreboard players set @a stats_kills 0
scoreboard players set @a stats_live 0
scoreboard players set @a stats_mine 0
scoreboard players set @a stats_nb_game 0
scoreboard players set @a stats_powerups 0
scoreboard players set @a stats_rod_use 0
scoreboard players set @a stats_shield 0
scoreboard players set @a stats_speed 0
scoreboard players set @a stats_streak 0
scoreboard players set @a stats_wins 0
scoreboard players set @a stats_lose 0

scoreboard players set !Total stats_speed 0
scoreboard players set !Total stats_glow 0
scoreboard players set !Total stats_shield 0
scoreboard players set !Total stats_mine 0
scoreboard players set !Total stats_live 0
scoreboard players set !Total stats_powerups 0
scoreboard players set !Total stats_rod_use 0
scoreboard players set !Total stats_nb_game 0

# Resummon
function main:lobby/stats/summon