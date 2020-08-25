# Scores
scoreboard players add @s Portal_cooldown 1
scoreboard players set @s Portal_cooldowns 120
scoreboard players operation @s Portal_cooldowns -= @s Portal_cooldown
scoreboard players operation @s Portal_cooldowns /= !20 Portal_cooldowns

# Actionbar if game playing
title @s[scores={Portal_cooldowns=1..}] times 0 10 0
execute if score !State Gamestate matches 2 run title @s[scores={Portal_cooldowns=2..}] actionbar [{"text":""},{"text":"> ","color":"gold","bold":true},{"text":"Portal cooldown","color":"yellow","bold":true},{"text":": ","color":"yellow"},{"text":"Wait: ","color":"yellow"},{"score":{"name":"@s","objective":"Portal_cooldowns"},"color":"red"},{"text":" seconds!","color":"yellow"}]
execute if score !State Gamestate matches 2 run title @s[scores={Portal_cooldowns=..1}] actionbar [{"text":""},{"text":"> ","color":"gold","bold":true},{"text":"Portal cooldown","color":"yellow","bold":true},{"text":": ","color":"yellow"},{"text":"Wait: ","color":"yellow"},{"score":{"name":"@s","objective":"Portal_cooldowns"},"color":"red"},{"text":" second! ","color":"yellow"}]

# Remove tags / reset score
title @s[scores={Portal_cooldown=100..}] actionbar {"text":" "}
tag @s[tag=In_game_portal_cooldown,scores={Portal_cooldown=100..}] remove In_game_portal_cooldown
scoreboard players reset @s[scores={Portal_cooldown=100..}] Portal_cooldowns
scoreboard players reset @s[scores={Portal_cooldown=100..}] Portal_cooldown
