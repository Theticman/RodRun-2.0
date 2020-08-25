# Playsound
execute at @s run playsound minecraft:ui.button.click master @s

# Computation
scoreboard players operation @s Lobby_boat_timer = @s Lobby_boat_best
function main:lobby/boat/timer_maths

# Tellraw
tellraw @s[scores={Lobby_boat_best=1..,Lobby_boat_cs=0..9,Lobby_boat_s=0..9,Lobby_boat_m=0}] [{"text":"Your best time: ","color":"yellow"},{"text":"0","color":"gold"},{"score":{"name":"@s","objective":"Lobby_boat_s"},"color":"gold"},{"text":".","color":"yellow"},{"text":"0","color":"gold"},{"score":{"name":"@s","objective":"Lobby_boat_cs"},"color":"gold"},{"text":"s","color":"yellow"}]
tellraw @s[scores={Lobby_boat_best=1..,Lobby_boat_cs=10..,Lobby_boat_s=0..9,Lobby_boat_m=0}] [{"text":"Your best time: ","color":"yellow"},{"text":"0","color":"gold"},{"score":{"name":"@s","objective":"Lobby_boat_s"},"color":"gold"},{"text":".","color":"yellow"},{"score":{"name":"@s","objective":"Lobby_boat_cs"},"color":"gold"},{"text":"s","color":"yellow"}]
tellraw @s[scores={Lobby_boat_best=1..,Lobby_boat_cs=0..9,Lobby_boat_s=10..,Lobby_boat_m=0}] [{"text":"Your best time: ","color":"yellow"},{"score":{"name":"@s","objective":"Lobby_boat_s"},"color":"gold"},{"text":".","color":"yellow"},{"text":"0","color":"gold"},{"score":{"name":"@s","objective":"Lobby_boat_cs"},"color":"gold"},{"text":"s","color":"yellow"}]
tellraw @s[scores={Lobby_boat_best=1..,Lobby_boat_cs=10..,Lobby_boat_s=10..,Lobby_boat_m=0}] [{"text":"Your best time: ","color":"yellow"},{"score":{"name":"@s","objective":"Lobby_boat_s"},"color":"gold"},{"text":".","color":"yellow"},{"score":{"name":"@s","objective":"Lobby_boat_cs"},"color":"gold"},{"text":"s","color":"yellow"}]
tellraw @s[scores={Lobby_boat_best=1..,Lobby_boat_cs=0..9,Lobby_boat_s=0..9,Lobby_boat_m=1..}] [{"text":"Your best time: ","color":"yellow"},{"score":{"name":"@s","objective":"Lobby_boat_m"},"color":"gold"},{"text":"m ","color":"yellow"},{"text":"0","color":"gold"},{"score":{"name":"@s","objective":"Lobby_boat_s"},"color":"gold"},{"text":".","color":"yellow"},{"text":"0","color":"gold"},{"score":{"name":"@s","objective":"Lobby_boat_cs"},"color":"gold"},{"text":"s","color":"yellow"}]
tellraw @s[scores={Lobby_boat_best=1..,Lobby_boat_cs=10..,Lobby_boat_s=0..9,Lobby_boat_m=1..}] [{"text":"Your best time: ","color":"yellow"},{"score":{"name":"@s","objective":"Lobby_boat_m"},"color":"gold"},{"text":"m ","color":"yellow"},{"text":"0","color":"gold"},{"score":{"name":"@s","objective":"Lobby_boat_s"},"color":"gold"},{"text":".","color":"yellow"},{"score":{"name":"@s","objective":"Lobby_boat_cs"},"color":"gold"},{"text":"s","color":"yellow"}]
tellraw @s[scores={Lobby_boat_best=1..,Lobby_boat_cs=0..9,Lobby_boat_s=10..,Lobby_boat_m=1..}] [{"text":"Your best time: ","color":"yellow"},{"score":{"name":"@s","objective":"Lobby_boat_m"},"color":"gold"},{"text":"m ","color":"yellow"},{"score":{"name":"@s","objective":"Lobby_boat_s"},"color":"gold"},{"text":".","color":"yellow"},{"text":"0","color":"gold"},{"score":{"name":"@s","objective":"Lobby_boat_cs"},"color":"gold"},{"text":"s","color":"yellow"}]
tellraw @s[scores={Lobby_boat_best=1..,Lobby_boat_cs=10..,Lobby_boat_s=10..,Lobby_boat_m=1..}] [{"text":"Your best time: ","color":"yellow"},{"score":{"name":"@s","objective":"Lobby_boat_m"},"color":"gold"},{"text":"m ","color":"yellow"},{"score":{"name":"@s","objective":"Lobby_boat_s"},"color":"gold"},{"text":".","color":"yellow"},{"score":{"name":"@s","objective":"Lobby_boat_cs"},"color":"gold"},{"text":"s","color":"yellow"}]

title @s[scores={Lobby_boat_best=0}] actionbar [{"text":"You haven't finished the race yet!","color":"yellow"}]
execute at @s[scores={Lobby_boat_best=0}] run playsound minecraft:entity.villager.no master @s

# Reset
scoreboard players reset @s Lobby_boat_timer
scoreboard players reset @s Lobby_boat_m
scoreboard players reset @s Lobby_boat_s
scoreboard players reset @s Lobby_boat_cs