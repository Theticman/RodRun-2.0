# Summon random
summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_map_warehouse\"}",Tags:["random_map"],Duration:1}
summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_map_whitehouse\"}",Tags:["random_map"],Duration:1}
summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_map_egypt\"}",Tags:["random_map"],Duration:1}
summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_map_hostel\"}",Tags:["random_map"],Duration:1}
summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_map_cyber\"}",Tags:["random_map"],Duration:1}
summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_map_tron\"}",Tags:["random_map"],Duration:1}
summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_map_island\"}",Tags:["random_map"],Duration:1}
summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_map_metro\"}",Tags:["random_map"],Duration:1}
summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_map_aquarium\"}",Tags:["random_map"],Duration:1}
summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_map_parking\"}",Tags:["random_map"],Duration:1}
summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_map_cabaret\"}",Tags:["random_map"],Duration:1}
summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_map_mall\"}",Tags:["random_map"],Duration:1}
summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_map_paris\"}",Tags:["random_map"],Duration:1}

# Select random
tag @e[type=minecraft:area_effect_cloud,sort=random,limit=1,tag=random_map] add random_map_selected

# Attribute random
execute if entity @e[name=random_map_warehouse,type=minecraft:area_effect_cloud,tag=random_map_selected,limit=1] run scoreboard players set !Map OptionsInGame 2
execute if entity @e[name=random_map_whitehouse,type=minecraft:area_effect_cloud,tag=random_map_selected,limit=1] run scoreboard players set !Map OptionsInGame 3
execute if entity @e[name=random_map_egypt,type=minecraft:area_effect_cloud,tag=random_map_selected,limit=1] run scoreboard players set !Map OptionsInGame 4
execute if entity @e[name=random_map_hostel,type=minecraft:area_effect_cloud,tag=random_map_selected,limit=1] run scoreboard players set !Map OptionsInGame 5
execute if entity @e[name=random_map_cyber,type=minecraft:area_effect_cloud,tag=random_map_selected,limit=1] run scoreboard players set !Map OptionsInGame 6
execute if entity @e[name=random_map_tron,type=minecraft:area_effect_cloud,tag=random_map_selected,limit=1] run scoreboard players set !Map OptionsInGame 7
execute if entity @e[name=random_map_island,type=minecraft:area_effect_cloud,tag=random_map_selected,limit=1] run scoreboard players set !Map OptionsInGame 8
execute if entity @e[name=random_map_metro,type=minecraft:area_effect_cloud,tag=random_map_selected,limit=1] run scoreboard players set !Map OptionsInGame 9
execute if entity @e[name=random_map_aquarium,type=minecraft:area_effect_cloud,tag=random_map_selected,limit=1] run scoreboard players set !Map OptionsInGame 10
execute if entity @e[name=random_map_parking,type=minecraft:area_effect_cloud,tag=random_map_selected,limit=1] run scoreboard players set !Map OptionsInGame 11
execute if entity @e[name=random_map_cabaret,type=minecraft:area_effect_cloud,tag=random_map_selected,limit=1] run scoreboard players set !Map OptionsInGame 12
execute if entity @e[name=random_map_mall,type=minecraft:area_effect_cloud,tag=random_map_selected,limit=1] run scoreboard players set !Map OptionsInGame 13
execute if entity @e[name=random_map_paris,type=minecraft:area_effect_cloud,tag=random_map_selected,limit=1] run scoreboard players set !Map OptionsInGame 14

# Kill aec left
kill @e[type=minecraft:area_effect_cloud,tag=random_map]