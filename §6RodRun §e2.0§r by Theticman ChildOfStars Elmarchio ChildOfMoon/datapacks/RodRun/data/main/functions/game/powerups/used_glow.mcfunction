# Playsound
execute at @s run playsound minecraft:block.glass.break master @a[tag=In_game] ~ ~ ~ 1 1.5

# Remove one glowing
scoreboard players remove @s Powerup_glow 1

# Clear item
clear @s minecraft:lantern{Tags:["glow_lantern"]}

# Glow
effect give @a[tag=In_game_playing] minecraft:glowing 3 0 true
execute if score !Mode OptionsInGame matches 0 run effect clear @s minecraft:glowing
execute if score !Mode OptionsInGame matches 1 if entity @s[tag=Blue] run effect clear @a[tag=Blue] minecraft:glowing
execute if score !Mode OptionsInGame matches 1 if entity @s[tag=White] run effect clear @a[tag=White] minecraft:glowing
execute if score !Mode OptionsInGame matches 1 if entity @s[tag=Red] run effect clear @a[tag=Red] minecraft:glowing

# Update stats
function main:lobby/stats/update_glow

# Remove tag
tag @s remove Used_powerup_glowing