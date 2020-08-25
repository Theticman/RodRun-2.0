# Score general add
scoreboard players add !Total stats_rod_use 1

# Score self add
scoreboard players add @s stats_IG_rod_use 1
scoreboard players add @s stats_rod_use 1

# Update lobby
data merge block -1 20 -40 {Text1:'["",{"text":"Hook thrown: ","color":"yellow"},{"score":{"name":"!Total","objective":"stats_rod_use"},"color":"gold"}]'}
data merge entity @e[tag=stats_line_1,type=minecraft:armor_stand,limit=1] {CustomName:'{"text":""}'}
data modify entity @e[tag=stats_line_1,type=minecraft:armor_stand,limit=1] CustomName set from block -1 20 -40 Text1