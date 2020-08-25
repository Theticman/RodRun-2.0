scoreboard players add @s Carrots 1

execute if score @s Carrots matches 1..41 run particle minecraft:splash ~ ~1 ~ 0.2 0.1 0.2 0 5 normal @a

execute if score @s Carrots matches 1 run setblock ~ ~-1 ~ minecraft:farmland destroy
execute if score @s Carrots matches 6 run setblock ~ ~ ~ carrots[age=0]
execute if score @s Carrots matches 11 run setblock ~ ~ ~ carrots[age=1]
execute if score @s Carrots matches 16 run setblock ~ ~ ~ carrots[age=2]
execute if score @s Carrots matches 21 run setblock ~ ~ ~ carrots[age=3]
execute if score @s Carrots matches 26 run setblock ~ ~ ~ carrots[age=4]
execute if score @s Carrots matches 31 run setblock ~ ~ ~ carrots[age=5]
execute if score @s Carrots matches 36 run setblock ~ ~ ~ carrots[age=6]
execute if score @s Carrots matches 41 run setblock ~ ~-1 ~ minecraft:farmland[moisture=7]
execute if score @s Carrots matches 41 run setblock ~ ~ ~ carrots[age=7]
