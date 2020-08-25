# Set tag
tag @s add In_lobby_informations
tag @s remove Ready

# Set score
scoreboard players set @s Informations 20

# Clear
clear @s

# Title
title @s times 10 50 10
title @s title {"text":""}
title @s subtitle [{"text":"Welcome to the ","color":"yellow"},{"text":"information","color":"gold"},{"text":" room!","color":"yellow"}]
