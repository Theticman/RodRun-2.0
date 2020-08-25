# Score general add
scoreboard players add !Total stats_mine 1
scoreboard players add !Total stats_powerups 1

# Score self add
scoreboard players add @s stats_IG_mine 1
scoreboard players add @s stats_mine 1
scoreboard players add @s stats_powerups 1

# Update lobby
data merge block -1 20 -40 {Text3:'["",{"text":"Powerups used: ","color":"yellow"},{"score":{"name":"!Total","objective":"stats_powerups"},"color":"gold"}]'}
data merge entity @e[tag=stats_line_3,type=minecraft:armor_stand,limit=1] {CustomName:'{"text":""}'}
data modify entity @e[tag=stats_line_3,type=minecraft:armor_stand,limit=1] CustomName set from block -1 20 -40 Text3