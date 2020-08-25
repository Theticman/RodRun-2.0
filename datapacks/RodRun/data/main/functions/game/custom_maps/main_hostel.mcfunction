# Kill bobber if in water
execute as @e[type=minecraft:fishing_bobber] at @s if block ~ ~ ~ #minecraft:water run kill @s
