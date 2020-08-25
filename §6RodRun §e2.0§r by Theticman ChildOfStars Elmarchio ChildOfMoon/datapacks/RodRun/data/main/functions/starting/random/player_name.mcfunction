# Summon random
summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_player_name_1\"}",Tags:["random_player_name"],Duration:1}
summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_player_name_2\"}",Tags:["random_player_name"],Duration:1}

# Select random
tag @e[type=minecraft:area_effect_cloud,sort=random,limit=1,tag=random_player_name] add random_player_name_selected

# Attribute random
execute if entity @e[name=random_player_name_1,type=minecraft:area_effect_cloud,tag=random_player_name_selected,limit=1] run scoreboard players set !Player_name OptionsInGame 2
execute if entity @e[name=random_player_name_2,type=minecraft:area_effect_cloud,tag=random_player_name_selected,limit=1] run scoreboard players set !Player_name OptionsInGame 3

# Kill aec left
kill @e[type=minecraft:area_effect_cloud,tag=random_player_name]