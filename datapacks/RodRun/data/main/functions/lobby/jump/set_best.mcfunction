# Set score
scoreboard players operation !Best Jump_best = @s Jump_timer

# Set player head
loot replace entity @e[type=minecraft:armor_stand,tag=jump_lobby_best_player,limit=1] armor.head loot main:uuidtest

# Set name
tag @s add Best_time
data merge block 32 41 -11 {Text1:'{"selector":"@a[tag=Best_time]","color":"yellow"}'}
data merge entity @e[type=minecraft:armor_stand,tag=jump_lobby_best_time,limit=1] {CustomName:'{"text":""}'}
data modify entity @e[type=minecraft:armor_stand,tag=jump_lobby_best_time,limit=1] CustomName set from block 32 41 -11 Text1

# Set score
execute if entity @s[scores={Jump_timer_m=0}] run data merge block 32 41 -11 {Text2:'[{"score":{"name":"@a[tag=Best_time]","objective":"Jump_timer_s"},"color":"gold"},{"text":"sec ","color":"yellow"},{"score":{"name":"@a[tag=Best_time]","objective":"Jump_timer_cs"},"color":"gold"},{"text":"csec","color":"yellow"}]'}
execute if entity @s[scores={Jump_timer_m=1..}] run data merge block 32 41 -11 {Text2:'[{"score":{"name":"@a[tag=Best_time]","objective":"Jump_timer_m"},"color":"gold"},{"text":"min ","color":"yellow"},{"score":{"name":"@a[tag=Best_time]","objective":"Jump_timer_s"},"color":"gold"},{"text":"sec ","color":"yellow"},{"score":{"name":"@a[tag=Best_time]","objective":"Jump_timer_cs"},"color":"gold"},{"text":"csec","color":"yellow"}]'}
data merge entity @e[type=minecraft:armor_stand,tag=jump_lobby_best_player,limit=1] {CustomName:'{"text":""}'}
data modify entity @e[type=minecraft:armor_stand,tag=jump_lobby_best_player,limit=1] CustomName set from block 32 41 -11 Text2
tag @s remove Best_time
