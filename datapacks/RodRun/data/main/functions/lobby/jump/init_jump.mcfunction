# Replace plate
setblock 26 42 -10 minecraft:light_weighted_pressure_plate destroy

# Clear
clear @s

# Playsound
execute at @s run playsound minecraft:block.note_block.pling master @s

# Title
title @s times 0 10 5
title @s title {"text":"Jump started!","color":"yellow"}

# Tags
tag @s remove Ready
tag @s add In_lobby_jump