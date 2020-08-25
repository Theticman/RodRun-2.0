# Summon random
summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_time_1\"}",Tags:["random_time"],Duration:1}
summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_time_2\"}",Tags:["random_time"],Duration:1}
summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_time_1\"}",Tags:["random_time"],Duration:1}
summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_time_2\"}",Tags:["random_time"],Duration:1}

# Select random
tag @e[type=minecraft:area_effect_cloud,sort=random,limit=1,tag=random_time] add random_time_selected

# Attribute random
execute if entity @e[name=random_time_1,type=minecraft:area_effect_cloud,tag=random_time_selected,limit=1] run scoreboard players set !Time OptionsInGame 2
execute if entity @e[name=random_time_2,type=minecraft:area_effect_cloud,tag=random_time_selected,limit=1] run scoreboard players set !Time OptionsInGame 3
execute if entity @e[name=random_time_1,type=minecraft:area_effect_cloud,tag=random_time_selected,limit=1] run scoreboard players set !Time OptionsInGame 4
execute if entity @e[name=random_time_2,type=minecraft:area_effect_cloud,tag=random_time_selected,limit=1] run scoreboard players set !Time OptionsInGame 5

# Kill aec left
kill @e[type=minecraft:area_effect_cloud,tag=random_time]