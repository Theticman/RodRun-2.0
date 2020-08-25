# Jump boost
function main:game/custom_maps/island/jump_boost

# Carrots
execute as @a[gamemode=adventure] at @s if block ~ ~-2 ~ minecraft:orange_wool if block ~ ~-1 ~ dirt run function main:game/custom_maps/island/place_carrot

# Wheat
execute as @a[gamemode=adventure] at @s if block ~ ~-2 ~ minecraft:yellow_wool if block ~ ~-1 ~ dirt run function main:game/custom_maps/island/place_wheat

# Eggs
execute as @a[gamemode=adventure] at @s if block ~ ~-2 ~ minecraft:lime_wool run function main:game/custom_maps/island/place_eggs

# Tyrolean 1
function main:game/custom_maps/island/main_tyrolean_1

# Prevent water
function main:game/custom_maps/island/main_prevent_water

# Border
function main:game/custom_maps/island/main_border