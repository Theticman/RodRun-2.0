# Give effect jump_boost
effect clear @a minecraft:jump_boost
execute as @a[gamemode=adventure] at @s if block ~ ~ ~ lime_carpet run effect give @s minecraft:jump_boost 1 13 true
