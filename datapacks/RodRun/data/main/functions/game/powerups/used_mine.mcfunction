# Playsound
execute at @s run playsound minecraft:entity.tnt.primed master @a[tag=In_game] ~ ~ ~ 1 2

# Add one glowing
scoreboard players remove @s Powerup_mine 1

# Clear item
clear @s minecraft:lantern{Tags:["mine_tnt"]}

# Glow
execute as @s run function main:game/powerups/mine/set_mine

# Update stats
function main:lobby/stats/update_mine

# Remove tag
tag @s remove Used_powerup_mine