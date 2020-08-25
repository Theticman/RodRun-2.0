# Update score
scoreboard players operation !First Lobby_boat_best = @s Lobby_boat_best

# Update sign
function main:lobby/boat/podium/update_sign_first

# Subtitle
title @s subtitle [{"text":"You made it to the ","color":"yellow"},{"text":"first","color":"gold"},{"text":" place!","color":"yellow"}]

# Remove tag
tag @s remove on_podium
