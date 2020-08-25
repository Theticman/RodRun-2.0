# Add score
scoreboard players remove @s Invinsible 1

# Particles
execute at @s run particle minecraft:crit ~ ~1 ~ 0.2 0.4 0.2 0 10 force @a

# Tag remove
tag @s[scores={Invinsible=..0}] remove In_game_invinsible
scoreboard players reset @s[scores={Invinsible=..0}] Invinsible