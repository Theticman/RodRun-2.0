# Detect border
execute as @a[gamemode=adventure,x=-500,y=15,z=500,distance=..300] at @s run function main:game/custom_maps/island/border/detect_border

# Remove barrier
execute as @e[tag=entity_border,type=cow] at @s unless entity @a[gamemode=adventure,distance=..2] run function main:game/custom_maps/island/border/remove_entity_border