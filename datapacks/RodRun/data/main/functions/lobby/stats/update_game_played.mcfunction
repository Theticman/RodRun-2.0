# Score general add
scoreboard players add !Total stats_nb_game 1

# Score self add
scoreboard players add @a[tag=Starting] stats_nb_game 1

# Update lobby
data merge block -1 20 -40 {Text2:'["",{"text":"Game played: ","color":"yellow"},{"score":{"name":"!Total","objective":"stats_nb_game"},"color":"gold"}]'}
data merge entity @e[tag=stats_line_2,type=minecraft:armor_stand,limit=1] {CustomName:'{"text":""}'}
data modify entity @e[tag=stats_line_2,type=minecraft:armor_stand,limit=1] CustomName set from block -1 20 -40 Text2