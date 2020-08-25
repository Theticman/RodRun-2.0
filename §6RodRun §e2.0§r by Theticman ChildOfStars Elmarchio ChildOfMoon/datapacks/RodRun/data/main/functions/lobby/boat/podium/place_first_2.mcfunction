# Move second to First
teleport @e[type=armor_stand,tag=boat_race_podium_second] -14 14.8 -41.5

# Move first to second
teleport @e[type=armor_stand,tag=boat_race_podium_first] -14 14.5 -40.5

# Rename
data merge entity @e[type=armor_stand,tag=boat_race_podium_second,limit=1] {Tags:["boat_race_podium_first"]}
data merge entity @e[type=armor_stand,tag=boat_race_podium_first,limit=1] {Tags:["boat_race_podium_second"]}

# Update score
scoreboard players operation !Second Lobby_boat_best = !First Lobby_boat_best
scoreboard players operation !First Lobby_boat_best = @s Lobby_boat_best

# Update sign
function main:lobby/boat/podium/update_sign_first

# Subtitle
title @s subtitle [{"text":"You made it to the ","color":"yellow"},{"text":"first","color":"gold"},{"text":" place!","color":"yellow"}]

# Remove tag
tag @s remove on_podium
