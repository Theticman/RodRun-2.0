# Manage player
clear @s
gamemode spectator @s
teleport @s @r[tag=In_game_playing,sort=random,limit=1]
execute unless entity @a[tag=In_game_playing] run teleport @s @r[tag=In_game_respawning,sort=random,limit=1]
effect clear @s

# Tags managment
tag @s add In_game_respawning
tag @s remove In_game_playing
tag @s remove In_game_invinsible
tag @s remove In_game_portal_cooldown
tag @s remove In_game_tyrolean

# Scores reset
scoreboard players reset @s Invinsible
scoreboard players reset @s Respawning
scoreboard players reset @s AFK_detection
scoreboard players reset @s Portal_cooldown
scoreboard players reset @s Game_kill_streak

# Remove a live
execute if entity @s[tag=Blue] run scoreboard players remove !Blue Lives_left 1
execute if entity @s[tag=White] run scoreboard players remove !White Lives_left 1
execute if entity @s[tag=Red] run scoreboard players remove !Red Lives_left 1

# Update Chestplate
execute if entity @s[tag=Blue] as @a[tag=Blue,nbt={Tags:["In_game_playing"]}] run function main:game/chestplate/replace
execute if entity @s[tag=White] as @a[tag=White,nbt={Tags:["In_game_playing"]}] run function main:game/chestplate/replace
execute if entity @s[tag=Red] as @a[tag=Red,nbt={Tags:["In_game_playing"]}] run function main:game/chestplate/replace

# Update scoreboard
function main:scoreboard/display