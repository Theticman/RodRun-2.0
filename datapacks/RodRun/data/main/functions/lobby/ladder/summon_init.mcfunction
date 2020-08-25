# Maths
scoreboard players operation !Summon_echelon Lobby_ladder = !Timer Lobby_ladder
scoreboard players operation !Summon_echelon Lobby_ladder %= !Diviser Lobby_ladder

# Summon
execute if score !Summon_echelon Lobby_ladder matches 0 run function main:lobby/ladder/summon_ladder_echelon