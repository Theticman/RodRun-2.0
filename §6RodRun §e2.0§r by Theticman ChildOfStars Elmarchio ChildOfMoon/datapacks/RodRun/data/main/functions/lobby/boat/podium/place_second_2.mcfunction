# Update score
scoreboard players operation !Second Lobby_boat_best = @s Lobby_boat_best

# Update sign
function main:lobby/boat/podium/update_sign_second

# Subtitle
title @s subtitle [{"text":"You made it to the ","color":"yellow"},{"text":"second","color":"gold"},{"text":" place!","color":"yellow"}]

# Remove tag
tag @s remove on_podium
