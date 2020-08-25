# Manual reset
function main:reset/manual_reset

# Stats
function main:lobby/stats/reset_stats
function main:lobby/boat/podium/reset
function main:lobby/space_game/reset_stats
function main:lobby/jump/reset_stats

# Objectives
scoreboard players reset * click
scoreboard players reset * Disconnect
scoreboard players reset * Kill_effect
scoreboard players reset * Kill_effect_id
scoreboard players reset * Players_id
scoreboard players reset * Game_id
scoreboard players reset * Tips_number
scoreboard players reset * Use_lever

# Teleport players
teleport @a 0 200 0