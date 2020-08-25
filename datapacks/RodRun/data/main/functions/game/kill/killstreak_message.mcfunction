# Leave teams Killer
team leave @s

# Attribute random
execute if entity @s[scores={Game_kill_streak=3}] run tellraw @a[tag=In_game] [{"text":"\n✶ ","color":"green"},{"selector":"@s","color":"gold"},{"text":" is on a serie! ","color":"yellow"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"Game_kill_streak"},"color":"red","bold":"true"},{"text":" killstreak","color":"gray"},{"text":")","color":"dark_gray"}]
execute if entity @s[scores={Game_kill_streak=5}] run tellraw @a[tag=In_game] [{"text":"\n✷ ","color":"green"},{"selector":"@s","color":"gold"},{"text":" is on fire! ","color":"yellow"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"Game_kill_streak"},"color":"red","bold":"true"},{"text":" killstreak","color":"gray"},{"text":")","color":"dark_gray"}]
execute if entity @s[scores={Game_kill_streak=10}] run tellraw @a[tag=In_game] [{"text":"\n✸ ","color":"green"},{"selector":"@s","color":"gold"},{"text":" is unstopapble! ","color":"yellow"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"Game_kill_streak"},"color":"red","bold":"true"},{"text":" killstreak","color":"gray"},{"text":")","color":"dark_gray"}]
execute if entity @s[scores={Game_kill_streak=15}] run tellraw @a[tag=In_game] [{"text":"\n✹ ","color":"green"},{"selector":"@s","color":"gold"},{"text":" is unbeatable! ","color":"yellow"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"Game_kill_streak"},"color":"red","bold":"true"},{"text":" killstreak","color":"gray"},{"text":")","color":"dark_gray"}]
execute if entity @s[scores={Game_kill_streak=20}] run tellraw @a[tag=In_game] [{"text":"\n✺ ","color":"green"},{"selector":"@s","color":"gold"},{"text":" need to be stopped! ","color":"yellow"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"Game_kill_streak"},"color":"red","bold":"true"},{"text":" killstreak","color":"gray"},{"text":")","color":"dark_gray"}]
execute if entity @s[scores={Game_kill_streak=30}] run tellraw @a[tag=In_game] [{"text":"\n✫ ","color":"green"},{"selector":"@s","color":"gold"},{"text":" is the god of the rod! ","color":"yellow"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"Game_kill_streak"},"color":"red","bold":"true"},{"text":" killstreak","color":"gray"},{"text":")","color":"dark_gray"}]
execute if entity @s[scores={Game_kill_streak=50}] run tellraw @a[tag=In_game] [{"text":"\n✪ ","color":"green"},{"selector":"@s","color":"gold"},{"text":" is just better than you! ","color":"yellow"},{"text":"(","color":"dark_gray"},{"score":{"name":"@s","objective":"Game_kill_streak"},"color":"red","bold":"true"},{"text":" killstreak","color":"gray"},{"text":")","color":"dark_gray"}]

# Give team back
function main:game/others/set_team
