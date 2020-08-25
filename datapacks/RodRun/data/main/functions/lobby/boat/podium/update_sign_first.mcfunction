# Minutes
scoreboard players operation !First Lobby_boat_m = !First Lobby_boat_best
scoreboard players operation !First Lobby_boat_m /= !1200 Lobby_boat_m

# Seconds
scoreboard players operation !First Lobby_boat_s = !First Lobby_boat_best
scoreboard players operation !First Lobby_boat_s /= !20 Lobby_boat_s
scoreboard players operation !First Lobby_boat_s %= !60 Lobby_boat_s

# Centi seconds
scoreboard players operation !First Lobby_boat_cs = !First Lobby_boat_best
scoreboard players operation !First Lobby_boat_cs %= !20 Lobby_boat_cs
scoreboard players operation !First Lobby_boat_cs *= !5 Lobby_boat_cs

# Update sign
execute if score !First Lobby_boat_cs matches 0..9 if score !First Lobby_boat_s matches 0..9 if score !First Lobby_boat_m matches 0 run data merge block -13 16 -42 {Text1:'[{"text":""},{"text":"First","color":"yellow","bold":"true"},{"text":": ","color":"yellow"},{"text":"0","color":"gold"},{"score":{"name":"!First","objective":"Lobby_boat_s"},"color":"gold"},{"text":".","color":"yellow"},{"text":"0","color":"gold"},{"score":{"name":"!First","objective":"Lobby_boat_cs"},"color":"gold"},{"text":"s","color":"yellow"}]'}
execute if score !First Lobby_boat_cs matches 10.. if score !First Lobby_boat_s matches 0..9 if score !First Lobby_boat_m matches 0 run data merge block -13 16 -42 {Text1:'[{"text":""},{"text":"First","color":"yellow","bold":"true"},{"text":": ","color":"yellow"},{"text":"0","color":"gold"},{"score":{"name":"!First","objective":"Lobby_boat_s"},"color":"gold"},{"text":".","color":"yellow"},{"score":{"name":"!First","objective":"Lobby_boat_cs"},"color":"gold"},{"text":"s","color":"yellow"}]'}
execute if score !First Lobby_boat_cs matches 0..9 if score !First Lobby_boat_s matches 10.. if score !First Lobby_boat_m matches 0 run data merge block -13 16 -42 {Text1:'[{"text":""},{"text":"First","color":"yellow","bold":"true"},{"text":": ","color":"yellow"},{"score":{"name":"!First","objective":"Lobby_boat_s"},"color":"gold"},{"text":".","color":"yellow"},{"text":"0","color":"gold"},{"score":{"name":"!First","objective":"Lobby_boat_cs"},"color":"gold"},{"text":"s","color":"yellow"}]'}
execute if score !First Lobby_boat_cs matches 10.. if score !First Lobby_boat_s matches 10.. if score !First Lobby_boat_m matches 0 run data merge block -13 16 -42 {Text1:'[{"text":""},{"text":"First","color":"yellow","bold":"true"},{"text":": ","color":"yellow"},{"score":{"name":"!First","objective":"Lobby_boat_s"},"color":"gold"},{"text":".","color":"yellow"},{"score":{"name":"!First","objective":"Lobby_boat_cs"},"color":"gold"},{"text":"s","color":"yellow"}]'}
execute if score !First Lobby_boat_cs matches 0..9 if score !First Lobby_boat_s matches 0..9 if score !First Lobby_boat_m matches 1.. run data merge block -13 16 -42 {Text1:'[{"text":""},{"text":"First","color":"yellow","bold":"true"},{"text":": ","color":"yellow"},{"score":{"name":"!First","objective":"Lobby_boat_m"},"color":"gold"},{"text":"m ","color":"yellow"},{"text":"0","color":"gold"},{"score":{"name":"!First","objective":"Lobby_boat_s"},"color":"gold"},{"text":".","color":"yellow"},{"text":"0","color":"gold"},{"score":{"name":"!First","objective":"Lobby_boat_cs"},"color":"gold"},{"text":"s","color":"yellow"}]'}
execute if score !First Lobby_boat_cs matches 10.. if score !First Lobby_boat_s matches 0..9 if score !First Lobby_boat_m matches 1.. run data merge block -13 16 -42 {Text1:'[{"text":""},{"text":"First","color":"yellow","bold":"true"},{"text":": ","color":"yellow"},{"score":{"name":"!First","objective":"Lobby_boat_m"},"color":"gold"},{"text":"m ","color":"yellow"},{"text":"0","color":"gold"},{"score":{"name":"!First","objective":"Lobby_boat_s"},"color":"gold"},{"text":".","color":"yellow"},{"score":{"name":"!First","objective":"Lobby_boat_cs"},"color":"gold"},{"text":"s","color":"yellow"}]'}
execute if score !First Lobby_boat_cs matches 0..9 if score !First Lobby_boat_s matches 10.. if score !First Lobby_boat_m matches 1.. run data merge block -13 16 -42 {Text1:'[{"text":""},{"text":"First","color":"yellow","bold":"true"},{"text":": ","color":"yellow"},{"score":{"name":"!First","objective":"Lobby_boat_m"},"color":"gold"},{"text":"m ","color":"yellow"},{"score":{"name":"!First","objective":"Lobby_boat_s"},"color":"gold"},{"text":".","color":"yellow"},{"text":"0","color":"gold"},{"score":{"name":"!First","objective":"Lobby_boat_cs"},"color":"gold"},{"text":"s","color":"yellow"}]'}
execute if score !First Lobby_boat_cs matches 10.. if score !First Lobby_boat_s matches 10.. if score !First Lobby_boat_m matches 1.. run data merge block -13 16 -42 {Text1:'[{"text":""},{"text":"First","color":"yellow","bold":"true"},{"text":": ","color":"yellow"},{"score":{"name":"!First","objective":"Lobby_boat_m"},"color":"gold"},{"text":"m ","color":"yellow"},{"score":{"name":"!First","objective":"Lobby_boat_s"},"color":"gold"},{"text":".","color":"yellow"},{"score":{"name":"!First","objective":"Lobby_boat_cs"},"color":"gold"},{"text":"s","color":"yellow"}]'}

# Update second
execute unless score !Second Lobby_boat_best matches 999999999 run function main:lobby/boat/podium/update_sign_second