# Tellraw
title @s times 0 20 5
title @s title {"text":""}
title @s subtitle [{"text":""},{"text":"Speed","color":"gold","bold":true},{"text":" powerup","color":"yellow"},{"text":" +","color":"gold"},{"text":"2","color":"yellow"}]

# Playsound
execute at @s run playsound minecraft:entity.item.pickup master @s

# Add one shield
scoreboard players add @s Powerup_speed 1

# Clear item
clear @s minecraft:sugar{Tags:["powerup_speed"]} 1

# Remove tag
tag @s remove Give_powerup_speed