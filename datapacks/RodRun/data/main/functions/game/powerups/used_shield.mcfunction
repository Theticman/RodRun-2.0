# Playsound
stopsound @s master minecraft:block.anvil.use
execute at @s run playsound minecraft:block.anvil.use master @a[tag=In_game] ~ ~ ~ 1 .8

# Add one glowing
scoreboard players remove @s Powerup_shield 1

# Clear item
replaceitem entity @s armor.chest air
clear @s minecraft:chainmail_chestplate{Tags:["shield_chainmail_chestplate"]}

# Invinsible
scoreboard players set @s Invinsible 100
tag @s add In_game_invinsible

# Update stats
function main:lobby/stats/update_shield

# Remove tag
tag @s remove Used_powerup_shield