# Summon random
summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_afk_glowing_1\"}",Tags:["random_afk_glowing"],Duration:1}
summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_afk_glowing_2\"}",Tags:["random_afk_glowing"],Duration:1}

# Select random
tag @e[type=minecraft:area_effect_cloud,sort=random,limit=1,tag=random_afk_glowing] add random_afk_glowing_selected

# Attribute random
execute if entity @e[name=random_afk_glowing_1,type=minecraft:area_effect_cloud,tag=random_afk_glowing_selected,limit=1] run scoreboard players set !AFK_glowing OptionsInGame 2
execute if entity @e[name=random_afk_glowing_2,type=minecraft:area_effect_cloud,tag=random_afk_glowing_selected,limit=1] run scoreboard players set !AFK_glowing OptionsInGame 3

# Kill aec left
kill @e[type=minecraft:area_effect_cloud,tag=random_afk_glowing]