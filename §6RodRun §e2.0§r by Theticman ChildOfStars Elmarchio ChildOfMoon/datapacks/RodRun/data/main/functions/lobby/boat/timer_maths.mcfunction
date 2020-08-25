# Minutes
scoreboard players operation @s Lobby_boat_m = @s Lobby_boat_timer
scoreboard players operation @s Lobby_boat_m /= !1200 Lobby_boat_m

# Seconds
scoreboard players operation @s Lobby_boat_s = @s Lobby_boat_timer
scoreboard players operation @s Lobby_boat_s /= !20 Lobby_boat_s
scoreboard players operation @s Lobby_boat_s %= !60 Lobby_boat_s

# Centi seconds
scoreboard players operation @s Lobby_boat_cs = @s Lobby_boat_timer
scoreboard players operation @s Lobby_boat_cs %= !20 Lobby_boat_cs
scoreboard players operation @s Lobby_boat_cs *= !5 Lobby_boat_cs