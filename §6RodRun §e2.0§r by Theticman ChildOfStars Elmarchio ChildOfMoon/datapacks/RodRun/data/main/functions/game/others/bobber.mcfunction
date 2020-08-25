# Rod particles
execute as @e[type=minecraft:fishing_bobber] at @s run particle minecraft:smoke ~ ~ ~ 0 0 0 0 1 force @a

# Kill if stuck
execute as @a[tag=In_game_playing] at @s positioned ~ ~1.4399999 ~ as @e[type=minecraft:fishing_bobber,distance=..0.000001] run kill @s