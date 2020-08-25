# Summon aec for random
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Tags:["random_leggings","random_leggings_1"]}
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Tags:["random_leggings","random_leggings_2"]}
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Tags:["random_leggings","random_leggings_3"]}

# Select random
tag @e[type=area_effect_cloud,limit=1,sort=random,tag=random_leggings] add random_leggings_selected

# Update leggings
execute if entity @e[type=area_effect_cloud,tag=random_leggings_1,nbt={Tags:["random_leggings_selected"]}] run replaceitem entity @s armor.legs minecraft:leather_leggings{display:{color:3708879}}
execute if entity @e[type=area_effect_cloud,tag=random_leggings_2,nbt={Tags:["random_leggings_selected"]}] run replaceitem entity @s armor.legs minecraft:leather_leggings{display:{color:16777215}}
execute if entity @e[type=area_effect_cloud,tag=random_leggings_3,nbt={Tags:["random_leggings_selected"]}] run replaceitem entity @s armor.legs minecraft:leather_leggings{display:{color:16711680}}

# Kill aec
kill @e[type=area_effect_cloud,tag=random_leggings]
