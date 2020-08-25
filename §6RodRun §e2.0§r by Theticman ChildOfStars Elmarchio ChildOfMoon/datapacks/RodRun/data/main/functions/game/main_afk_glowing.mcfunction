# Add score to everybody
scoreboard players add @a[tag=In_game_playing] AFK_detection 1

# Set_up AEC
execute as @a[tag=In_game_playing,scores={AFK_detection=1}] run function main:game/afk_glowing/summon_aec

# Player has moved ?
execute as @a[tag=In_game_playing,scores={AFK_detection=1..200}] run function main:game/afk_glowing/has_moved

# AFK glowing
execute as @a[tag=In_game_playing,scores={AFK_detection=201..}] run function main:game/afk_glowing/afk_glowing

# AFK display
function main:game/afk_glowing/display