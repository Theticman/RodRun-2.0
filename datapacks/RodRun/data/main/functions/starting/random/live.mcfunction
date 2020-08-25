# Summon random
summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_lives_1\"}",Tags:["random_lives"],Duration:1}
summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_lives_2\"}",Tags:["random_lives"],Duration:1}
summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_lives_3\"}",Tags:["random_lives"],Duration:1}
summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_lives_4\"}",Tags:["random_lives"],Duration:1}
summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_lives_5\"}",Tags:["random_lives"],Duration:1}
summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_lives_6\"}",Tags:["random_lives"],Duration:1}
summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_lives_7\"}",Tags:["random_lives"],Duration:1}
summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_lives_8\"}",Tags:["random_lives"],Duration:1}
summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_lives_9\"}",Tags:["random_lives"],Duration:1}
summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_lives_10\"}",Tags:["random_lives"],Duration:1}
summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_lives_11\"}",Tags:["random_lives"],Duration:1}
summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_lives_12\"}",Tags:["random_lives"],Duration:1}
summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_lives_13\"}",Tags:["random_lives"],Duration:1}
summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_lives_14\"}",Tags:["random_lives"],Duration:1}
summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_lives_15\"}",Tags:["random_lives"],Duration:1}
summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_lives_16\"}",Tags:["random_lives"],Duration:1}
summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_lives_17\"}",Tags:["random_lives"],Duration:1}
summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_lives_18\"}",Tags:["random_lives"],Duration:1}
summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_lives_19\"}",Tags:["random_lives"],Duration:1}
summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_lives_20\"}",Tags:["random_lives"],Duration:1}

# Select random
tag @e[type=minecraft:area_effect_cloud,sort=random,limit=1,tag=random_lives] add random_lives_selected

# Attribute random
execute if entity @e[name=random_lives_1,type=minecraft:area_effect_cloud,tag=random_lives_selected,limit=1] run scoreboard players set !Live OptionsInGame 1
execute if entity @e[name=random_lives_2,type=minecraft:area_effect_cloud,tag=random_lives_selected,limit=1] run scoreboard players set !Live OptionsInGame 2
execute if entity @e[name=random_lives_3,type=minecraft:area_effect_cloud,tag=random_lives_selected,limit=1] run scoreboard players set !Live OptionsInGame 3
execute if entity @e[name=random_lives_4,type=minecraft:area_effect_cloud,tag=random_lives_selected,limit=1] run scoreboard players set !Live OptionsInGame 4
execute if entity @e[name=random_lives_5,type=minecraft:area_effect_cloud,tag=random_lives_selected,limit=1] run scoreboard players set !Live OptionsInGame 5
execute if entity @e[name=random_lives_6,type=minecraft:area_effect_cloud,tag=random_lives_selected,limit=1] run scoreboard players set !Live OptionsInGame 6
execute if entity @e[name=random_lives_7,type=minecraft:area_effect_cloud,tag=random_lives_selected,limit=1] run scoreboard players set !Live OptionsInGame 7
execute if entity @e[name=random_lives_8,type=minecraft:area_effect_cloud,tag=random_lives_selected,limit=1] run scoreboard players set !Live OptionsInGame 8
execute if entity @e[name=random_lives_9,type=minecraft:area_effect_cloud,tag=random_lives_selected,limit=1] run scoreboard players set !Live OptionsInGame 9
execute if entity @e[name=random_lives_10,type=minecraft:area_effect_cloud,tag=random_lives_selected,limit=1] run scoreboard players set !Live OptionsInGame 10
execute if entity @e[name=random_lives_11,type=minecraft:area_effect_cloud,tag=random_lives_selected,limit=1] run scoreboard players set !Live OptionsInGame 11
execute if entity @e[name=random_lives_12,type=minecraft:area_effect_cloud,tag=random_lives_selected,limit=1] run scoreboard players set !Live OptionsInGame 12
execute if entity @e[name=random_lives_13,type=minecraft:area_effect_cloud,tag=random_lives_selected,limit=1] run scoreboard players set !Live OptionsInGame 13
execute if entity @e[name=random_lives_14,type=minecraft:area_effect_cloud,tag=random_lives_selected,limit=1] run scoreboard players set !Live OptionsInGame 14
execute if entity @e[name=random_lives_15,type=minecraft:area_effect_cloud,tag=random_lives_selected,limit=1] run scoreboard players set !Live OptionsInGame 15
execute if entity @e[name=random_lives_16,type=minecraft:area_effect_cloud,tag=random_lives_selected,limit=1] run scoreboard players set !Live OptionsInGame 16
execute if entity @e[name=random_lives_17,type=minecraft:area_effect_cloud,tag=random_lives_selected,limit=1] run scoreboard players set !Live OptionsInGame 17
execute if entity @e[name=random_lives_18,type=minecraft:area_effect_cloud,tag=random_lives_selected,limit=1] run scoreboard players set !Live OptionsInGame 18
execute if entity @e[name=random_lives_19,type=minecraft:area_effect_cloud,tag=random_lives_selected,limit=1] run scoreboard players set !Live OptionsInGame 19
execute if entity @e[name=random_lives_20,type=minecraft:area_effect_cloud,tag=random_lives_selected,limit=1] run scoreboard players set !Live OptionsInGame 20

# Kill aec left
kill @e[type=minecraft:area_effect_cloud,tag=random_lives]