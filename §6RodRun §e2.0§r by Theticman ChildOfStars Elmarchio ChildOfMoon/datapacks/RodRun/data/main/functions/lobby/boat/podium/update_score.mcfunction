# Update score
scoreboard players operation @s Lobby_boat_best = @s Lobby_boat_timer

# Title
title @s times 5 50 10
title @s title {"text":"New record!","color":"yellow"}

# Podium
tag @s add on_podium
# First
execute if score @s[tag=on_podium] Lobby_boat_best < !First Lobby_boat_best if score @e[type=minecraft:armor_stand,tag=boat_race_podium_second,limit=1] Lobby_boat_best = @s Players_id run function main:lobby/boat/podium/place_first_2
execute if score @s[tag=on_podium] Lobby_boat_best < !First Lobby_boat_best if score @e[type=minecraft:armor_stand,tag=boat_race_podium_first,limit=1] Lobby_boat_best = @s Players_id run function main:lobby/boat/podium/place_first_3
execute if score @s[tag=on_podium] Lobby_boat_best < !First Lobby_boat_best run function main:lobby/boat/podium/place_first

# Second ?
execute if score @s[tag=on_podium] Lobby_boat_best < !Second Lobby_boat_best if score @e[type=minecraft:armor_stand,tag=boat_race_podium_second,limit=1] Lobby_boat_best = @s Players_id run function main:lobby/boat/podium/place_second_2
execute if score @s[tag=on_podium] Lobby_boat_best < !Second Lobby_boat_best run function main:lobby/boat/podium/place_second

# Third ?
execute if score @s[tag=on_podium] Lobby_boat_best < !Third Lobby_boat_best run function main:lobby/boat/podium/place_third

tag @s remove on_podium
