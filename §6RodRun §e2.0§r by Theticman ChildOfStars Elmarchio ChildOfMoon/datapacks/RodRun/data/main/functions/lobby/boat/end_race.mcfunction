# Give levitation effect
effect give @s minecraft:slow_falling 3 0 true

# Tags managment
tag @s remove In_boat_race
tag @s remove Boat_race
tag @s remove Boat_race_init
tag @s remove Boat_race_start_part
tag @s remove Not_in_boat
tag @s add Ready

# Tellraw
tellraw @s[scores={Lobby_boat_cs=0..9,Lobby_boat_s=0..9,Lobby_boat_m=0}] [{"text":"You've completed the race! ","color":"yellow"},{"text":"(","color":"dark_gray"},{"text":"0","color":"white"},{"score":{"name":"@s","objective":"Lobby_boat_s"},"color":"white"},{"text":":","color":"gray"},{"text":"0","color":"white"},{"score":{"name":"@s","objective":"Lobby_boat_cs"},"color":"white"},{"text":")","color":"dark_gray"}]
tellraw @s[scores={Lobby_boat_cs=10..,Lobby_boat_s=0..9,Lobby_boat_m=0}] [{"text":"You've completed the race! ","color":"yellow"},{"text":"(","color":"dark_gray"},{"text":"0","color":"white"},{"score":{"name":"@s","objective":"Lobby_boat_s"},"color":"white"},{"text":":","color":"gray"},{"score":{"name":"@s","objective":"Lobby_boat_cs"},"color":"white"},{"text":")","color":"dark_gray"}]
tellraw @s[scores={Lobby_boat_cs=0..9,Lobby_boat_s=10..,Lobby_boat_m=0}] [{"text":"You've completed the race! ","color":"yellow"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"Lobby_boat_s"},"color":"white"},{"text":":","color":"gray"},{"text":"0","color":"white"},{"score":{"name":"@s","objective":"Lobby_boat_cs"},"color":"white"},{"text":")","color":"dark_gray"}]
tellraw @s[scores={Lobby_boat_cs=10..,Lobby_boat_s=10..,Lobby_boat_m=0}] [{"text":"You've completed the race! ","color":"yellow"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"Lobby_boat_s"},"color":"white"},{"text":":","color":"gray"},{"score":{"name":"@s","objective":"Lobby_boat_cs"},"color":"white"},{"text":")","color":"dark_gray"}]
tellraw @s[scores={Lobby_boat_cs=0..9,Lobby_boat_s=0..9,Lobby_boat_m=1..}] [{"text":"You've completed the race! ","color":"yellow"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"Lobby_boat_m"},"color":"white"},{"text":":","color":"gray"},{"text":"0","color":"white"},{"score":{"name":"@s","objective":"Lobby_boat_s"},"color":"white"},{"text":":","color":"gray"},{"text":"0","color":"white"},{"score":{"name":"@s","objective":"Lobby_boat_cs"},"color":"white"},{"text":")","color":"dark_gray"}]
tellraw @s[scores={Lobby_boat_cs=10..,Lobby_boat_s=0..9,Lobby_boat_m=1..}] [{"text":"You've completed the race! ","color":"yellow"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"Lobby_boat_m"},"color":"white"},{"text":":","color":"gray"},{"text":"0","color":"white"},{"score":{"name":"@s","objective":"Lobby_boat_s"},"color":"white"},{"text":":","color":"gray"},{"score":{"name":"@s","objective":"Lobby_boat_cs"},"color":"white"},{"text":")","color":"dark_gray"}]
tellraw @s[scores={Lobby_boat_cs=0..9,Lobby_boat_s=10..,Lobby_boat_m=1..}] [{"text":"You've completed the race! ","color":"yellow"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"Lobby_boat_m"},"color":"white"},{"text":":","color":"gray"},{"score":{"name":"@s","objective":"Lobby_boat_s"},"color":"white"},{"text":":","color":"gray"},{"text":"0","color":"white"},{"score":{"name":"@s","objective":"Lobby_boat_cs"},"color":"white"},{"text":")","color":"dark_gray"}]
tellraw @s[scores={Lobby_boat_cs=10..,Lobby_boat_s=10..,Lobby_boat_m=1..}] [{"text":"You've completed the race! ","color":"yellow"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"Lobby_boat_m"},"color":"white"},{"text":":","color":"gray"},{"score":{"name":"@s","objective":"Lobby_boat_s"},"color":"white"},{"text":":","color":"gray"},{"score":{"name":"@s","objective":"Lobby_boat_cs"},"color":"white"},{"text":")","color":"dark_gray"}]

# Kill boat
tag @s add Kill_own_boat
execute as @e[type=boat,tag=boat_race] if score @s Lobby_boat_id = @a[tag=Kill_own_boat,limit=1] Players_id run kill @s
execute as @e[type=area_effect_cloud,tag=boat_race] if score @s Lobby_boat_id = @a[tag=Kill_own_boat,limit=1] Players_id run kill @s
tag @s remove Kill_own_boat

# Teleport player
teleport @s -5.0 33.0 -41.0 90 0

# Update score
execute unless score @s Lobby_boat_best matches -1.. run scoreboard players set @s Lobby_boat_best 9999999
execute if score @s Lobby_boat_timer < @s Lobby_boat_best run function main:lobby/boat/podium/update_score

# Score reset
scoreboard players reset @s Lobby_boat_timer
scoreboard players reset @s Lobby_boat_m
scoreboard players reset @s Lobby_boat_s
scoreboard players reset @s Lobby_boat_cs
title @s actionbar {"text":""}

# Fireworks
summon minecraft:firework_rocket -14.5 33.5 -41.00 {FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Flicker:1b,Trail:1b,Colors:[I;16775211],FadeColors:[I;16763190]}]}}}}