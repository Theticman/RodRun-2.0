# Summon random
summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_deathmatch_1\"}",Tags:["random_deathmatch"],Duration:1}
summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_deathmatch_2\"}",Tags:["random_deathmatch"],Duration:1}
summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_deathmatch_3\"}",Tags:["random_deathmatch"],Duration:1}
summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_deathmatch_4\"}",Tags:["random_deathmatch"],Duration:1}
summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_deathmatch_5\"}",Tags:["random_deathmatch"],Duration:1}


# Select random
tag @e[type=minecraft:area_effect_cloud,sort=random,limit=1,tag=random_deathmatch] add random_deathmatch_selected

# Attribute random
execute if entity @e[name=random_deathmatch_1,type=minecraft:area_effect_cloud,tag=random_deathmatch_selected,limit=1] run scoreboard players set !Deathmatch OptionsInGame 2
execute if entity @e[name=random_deathmatch_2,type=minecraft:area_effect_cloud,tag=random_deathmatch_selected,limit=1] run scoreboard players set !Deathmatch OptionsInGame 3
execute if entity @e[name=random_deathmatch_3,type=minecraft:area_effect_cloud,tag=random_deathmatch_selected,limit=1] run scoreboard players set !Deathmatch OptionsInGame 4
execute if entity @e[name=random_deathmatch_4,type=minecraft:area_effect_cloud,tag=random_deathmatch_selected,limit=1] run scoreboard players set !Deathmatch OptionsInGame 5
execute if entity @e[name=random_deathmatch_5,type=minecraft:area_effect_cloud,tag=random_deathmatch_selected,limit=1] run scoreboard players set !Deathmatch OptionsInGame 6

# Kill aec left
kill @e[type=minecraft:area_effect_cloud,tag=random_deathmatch]