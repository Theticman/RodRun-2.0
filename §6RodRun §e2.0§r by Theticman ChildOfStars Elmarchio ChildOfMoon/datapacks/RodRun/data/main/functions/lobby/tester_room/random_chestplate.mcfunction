# Summon aec for random
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Tags:["random_chestplate","random_chestplate_1"]}
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Tags:["random_chestplate","random_chestplate_2"]}
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Tags:["random_chestplate","random_chestplate_3"]}

# Select random
tag @e[type=area_effect_cloud,limit=1,sort=random,tag=random_chestplate] add random_chestplate_selected

# Update chestplate
execute if entity @e[type=area_effect_cloud,tag=random_chestplate_1,nbt={Tags:["random_chestplate_selected"]}] run replaceitem entity @s armor.chest minecraft:leather_chestplate{display:{color:3708879}}
execute if entity @e[type=area_effect_cloud,tag=random_chestplate_2,nbt={Tags:["random_chestplate_selected"]}] run replaceitem entity @s armor.chest minecraft:leather_chestplate{display:{color:16777215}}
execute if entity @e[type=area_effect_cloud,tag=random_chestplate_3,nbt={Tags:["random_chestplate_selected"]}] run replaceitem entity @s armor.chest minecraft:leather_chestplate{display:{color:16711680}}

# Kill aec
kill @e[type=area_effect_cloud,tag=random_chestplate]
