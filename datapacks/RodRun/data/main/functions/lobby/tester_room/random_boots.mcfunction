# Summon aec for random
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Tags:["random_boots","random_boots_1"]}
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Tags:["random_boots","random_boots_2"]}
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Tags:["random_boots","random_boots_3"]}

# Select random
tag @e[type=area_effect_cloud,limit=1,sort=random,tag=random_boots] add random_boots_selected

# Update boots
execute if entity @e[type=area_effect_cloud,tag=random_boots_1,nbt={Tags:["random_boots_selected"]}] run replaceitem entity @s armor.feet minecraft:leather_boots{display:{color:3708879}}
execute if entity @e[type=area_effect_cloud,tag=random_boots_2,nbt={Tags:["random_boots_selected"]}] run replaceitem entity @s armor.feet minecraft:leather_boots{display:{color:16777215}}
execute if entity @e[type=area_effect_cloud,tag=random_boots_3,nbt={Tags:["random_boots_selected"]}] run replaceitem entity @s armor.feet minecraft:leather_boots{display:{color:16711680}}

# Kill aec
kill @e[type=area_effect_cloud,tag=random_boots]
