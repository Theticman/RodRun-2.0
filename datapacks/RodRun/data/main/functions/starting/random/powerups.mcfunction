# Summon random
summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_powerups_1\"}",Tags:["random_powerups"],Duration:1}
summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_powerups_2\"}",Tags:["random_powerups"],Duration:1}
summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_powerups_3\"}",Tags:["random_powerups"],Duration:1}
summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_powerups_4\"}",Tags:["random_powerups"],Duration:1}
summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_powerups_5\"}",Tags:["random_powerups"],Duration:1}

# Select random
tag @e[type=minecraft:area_effect_cloud,sort=random,limit=1,tag=random_powerups] add random_powerups_selected

# Attribute random
execute if entity @e[name=random_powerups_1,type=minecraft:area_effect_cloud,tag=random_powerups_selected,limit=1] run scoreboard players set !Powerups OptionsInGame 2
execute if entity @e[name=random_powerups_2,type=minecraft:area_effect_cloud,tag=random_powerups_selected,limit=1] run scoreboard players set !Powerups OptionsInGame 3
execute if entity @e[name=random_powerups_3,type=minecraft:area_effect_cloud,tag=random_powerups_selected,limit=1] run scoreboard players set !Powerups OptionsInGame 4
execute if entity @e[name=random_powerups_4,type=minecraft:area_effect_cloud,tag=random_powerups_selected,limit=1] run scoreboard players set !Powerups OptionsInGame 5
execute if entity @e[name=random_powerups_5,type=minecraft:area_effect_cloud,tag=random_powerups_selected,limit=1] run scoreboard players set !Powerups OptionsInGame 6

# Kill aec left
kill @e[type=minecraft:area_effect_cloud,tag=random_powerups]