# Tellraw
title @s times 0 20 5
title @s title {"text":""}
title @s subtitle [{"text":""},{"text":"Glow","color":"gold","bold":true},{"text":" powerup","color":"yellow"},{"text":" +","color":"gold"},{"text":"1","color":"yellow"}]

# Playsound
execute at @s run playsound minecraft:entity.item.pickup master @s

# Add one glowing
scoreboard players add @s Powerup_glow 1

# Clear item
clear @s minecraft:lantern{Tags:["powerup_glowing"]} 1

# Remove tag
tag @s remove Give_powerup_glowing