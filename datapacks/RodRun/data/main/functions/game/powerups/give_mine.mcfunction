# Tellraw
title @s times 0 20 5
title @s title {"text":""}
title @s subtitle [{"text":""},{"text":"Mine","color":"gold","bold":true},{"text":" powerup","color":"yellow"},{"text":" +","color":"gold"},{"text":"3","color":"yellow"}]

# Playsound
execute at @s run playsound minecraft:entity.item.pickup master @s

# Add one mine
scoreboard players add @s Powerup_mine 1

# Clear item
clear @s minecraft:tnt{Tags:["powerup_mine"]} 1

# Remove tag
tag @s remove Give_powerup_mine