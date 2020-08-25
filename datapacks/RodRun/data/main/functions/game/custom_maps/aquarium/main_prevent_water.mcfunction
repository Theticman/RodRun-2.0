# Teleport back
execute as @a[gamemode=adventure,x=1000,y=26,z=0,distance=..300] at @s if block ~ ~ ~ #minecraft:water run function main:game/custom_maps/aquarium/prevent_water/teleport_back
execute as @a[gamemode=adventure,x=1000,y=26,z=0,distance=..300] at @s if block ~ ~ ~ minecraft:oak_trapdoor[waterlogged=true] run function main:game/custom_maps/aquarium/prevent_water/teleport_back

# Update last position
execute as @a[gamemode=adventure,x=1000,y=26,z=0,distance=..300,nbt={OnGround:1b}] at @s unless block ~ ~-5 ~ #minecraft:water unless block ~ ~-4 ~ #minecraft:water unless block ~ ~-3 ~ #minecraft:water unless block ~ ~-2 ~ #minecraft:water unless block ~ ~-1 ~ #minecraft:water unless block ~ ~ ~ #minecraft:water unless block ~ ~-1 ~ minecraft:oak_trapdoor[waterlogged=true] unless block ~ ~ ~ minecraft:oak_trapdoor[waterlogged=true] run function main:game/custom_maps/aquarium/prevent_water/update_last_position

# No bobber in water
execute as @e[type=minecraft:fishing_bobber] at @s if block ~ ~ ~ #minecraft:water run kill @s
execute as @e[type=minecraft:fishing_bobber] at @s if block ~ ~ ~ minecraft:oak_trapdoor[waterlogged=true] run kill @s