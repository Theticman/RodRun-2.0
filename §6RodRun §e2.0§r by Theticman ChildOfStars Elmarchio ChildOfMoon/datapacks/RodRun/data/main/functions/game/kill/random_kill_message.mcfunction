# Summon random entities
summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_kill_message_1\"}",Tags:["random_kill_message"],Duration:1}
summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_kill_message_2\"}",Tags:["random_kill_message"],Duration:1}
summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_kill_message_3\"}",Tags:["random_kill_message"],Duration:1}
summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_kill_message_4\"}",Tags:["random_kill_message"],Duration:1}
summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_kill_message_5\"}",Tags:["random_kill_message"],Duration:1}
summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_kill_message_6\"}",Tags:["random_kill_message"],Duration:1}
summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_kill_message_7\"}",Tags:["random_kill_message"],Duration:1}
summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_kill_message_8\"}",Tags:["random_kill_message"],Duration:1}
summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_kill_message_9\"}",Tags:["random_kill_message"],Duration:1}
summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_kill_message_10\"}",Tags:["random_kill_message"],Duration:1}
summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_kill_message_11\"}",Tags:["random_kill_message"],Duration:1}
summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_kill_message_12\"}",Tags:["random_kill_message"],Duration:1}
summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_kill_message_13\"}",Tags:["random_kill_message"],Duration:1}
summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_kill_message_14\"}",Tags:["random_kill_message"],Duration:1}
summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_kill_message_15\"}",Tags:["random_kill_message"],Duration:1}
summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_kill_message_16\"}",Tags:["random_kill_message"],Duration:1}
summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_kill_message_17\"}",Tags:["random_kill_message"],Duration:1}
summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_kill_message_18\"}",Tags:["random_kill_message"],Duration:1}
summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_kill_message_19\"}",Tags:["random_kill_message"],Duration:1}

# Select random
tag @e[type=minecraft:area_effect_cloud,sort=random,limit=1,tag=random_kill_message] add random_kill_message_selected

# Leave teams Killer and Victim
team leave @a[tag=Victim]
team leave @a[tag=Killer]

# Attribute random
execute if entity @e[name=random_kill_message_1,type=minecraft:area_effect_cloud,tag=random_kill_message_selected,limit=1] run tellraw @a[tag=In_game] [{"text":""},{"selector":"@a[tag=Victim]","color":"red"},{"text":" got fished by ","color":"yellow"},{"selector":"@a[tag=Killer]","color":"gold"},{"text":"!","color":"yellow"}]
execute if entity @e[name=random_kill_message_2,type=minecraft:area_effect_cloud,tag=random_kill_message_selected,limit=1] run tellraw @a[tag=In_game] [{"text":""},{"selector":"@a[tag=Victim]","color":"red"},{"text":" got killed by ","color":"yellow"},{"selector":"@a[tag=Killer]","color":"gold"},{"text":"!","color":"yellow"}] 
execute if entity @e[name=random_kill_message_3,type=minecraft:area_effect_cloud,tag=random_kill_message_selected,limit=1] run tellraw @a[tag=In_game] [{"text":""},{"selector":"@a[tag=Victim]","color":"red"},{"text":" got squashed by ","color":"yellow"},{"selector":"@a[tag=Killer]","color":"gold"},{"text":"!","color":"yellow"}]
execute if entity @e[name=random_kill_message_4,type=minecraft:area_effect_cloud,tag=random_kill_message_selected,limit=1] run tellraw @a[tag=In_game] [{"text":""},{"selector":"@a[tag=Killer]","color":"gold"},{"text":" killed ","color":"yellow"},{"selector":"@a[tag=Victim]","color":"red"},{"text":"!","color":"yellow"}]
execute if entity @e[name=random_kill_message_5,type=minecraft:area_effect_cloud,tag=random_kill_message_selected,limit=1] run tellraw @a[tag=In_game] [{"text":""},{"selector":"@a[tag=Victim]","color":"red"},{"text":" got knocked down by ","color":"yellow"},{"selector":"@a[tag=Killer]","color":"gold"},{"text":"!","color":"yellow"}]
execute if entity @e[name=random_kill_message_6,type=minecraft:area_effect_cloud,tag=random_kill_message_selected,limit=1] run tellraw @a[tag=In_game] [{"text":""},{"selector":"@a[tag=Victim]","color":"red"},{"text":" thought they could beat ","color":"yellow"},{"selector":"@a[tag=Killer]","color":"gold"},{"text":", but they were wrong!","color":"yellow"}]
execute if entity @e[name=random_kill_message_7,type=minecraft:area_effect_cloud,tag=random_kill_message_selected,limit=1] run tellraw @a[tag=In_game] [{"text":""},{"selector":"@a[tag=Victim]","color":"red"},{"text":" got destroyed by ","color":"yellow"},{"selector":"@a[tag=Killer]","color":"gold"},{"text":"!","color":"yellow"}] 
execute if entity @e[name=random_kill_message_8,type=minecraft:area_effect_cloud,tag=random_kill_message_selected,limit=1] run tellraw @a[tag=In_game] [{"text":""},{"selector":"@a[tag=Victim]","color":"red"},{"text":" died yet again!","color":"yellow"}]
execute if entity @e[name=random_kill_message_9,type=minecraft:area_effect_cloud,tag=random_kill_message_selected,limit=1] run tellraw @a[tag=In_game] [{"text":""},{"selector":"@a[tag=Victim]","color":"red"},{"text":" got erased by ","color":"yellow"},{"selector":"@a[tag=Killer]","color":"gold"},{"text":"!","color":"yellow"}]
execute if entity @e[name=random_kill_message_10,type=minecraft:area_effect_cloud,tag=random_kill_message_selected,limit=1] run tellraw @a[tag=In_game] [{"text":""},{"selector":"@a[tag=Victim]","color":"red"},{"text":" got promoted to spectator","color":"yellow"},{"text":"!","color":"yellow"}]
execute if entity @e[name=random_kill_message_11,type=minecraft:area_effect_cloud,tag=random_kill_message_selected,limit=1] run tellraw @a[tag=In_game] [{"text":""},{"selector":"@a[tag=Victim]","color":"red"},{"text":" is now respawning","color":"yellow"},{"text":"!","color":"yellow"}]
execute if entity @e[name=random_kill_message_12,type=minecraft:area_effect_cloud,tag=random_kill_message_selected,limit=1] run tellraw @a[tag=In_game] [{"text":""},{"selector":"@a[tag=Victim]","color":"red"},{"text":" received ","color":"yellow"},{"selector":"@a[tag=Killer]","color":"gold"},{"text":"'s hook in their face","color":"yellow"},{"text":"!","color":"yellow"}]
execute if entity @e[name=random_kill_message_13,type=minecraft:area_effect_cloud,tag=random_kill_message_selected,limit=1] run tellraw @a[tag=In_game] [{"text":""},{"selector":"@a[tag=Killer]","color":"gold"},{"text":" thought ","color":"yellow"},{"selector":"@a[tag=Victim]","color":"red"},{"text":" was a fish","color":"yellow"},{"text":"!","color":"yellow"}]
execute if entity @e[name=random_kill_message_14,type=minecraft:area_effect_cloud,tag=random_kill_message_selected,limit=1] run tellraw @a[tag=In_game] [{"text":""},{"selector":"@a[tag=Victim]","color":"red"},{"text":" can't hide anymore","color":"yellow"},{"text":"!","color":"yellow"}]
execute if entity @e[name=random_kill_message_15,type=minecraft:area_effect_cloud,tag=random_kill_message_selected,limit=1] run tellraw @a[tag=In_game] [{"text":""},{"selector":"@a[tag=Killer]","color":"gold"},{"text":" is better at fishing than ","color":"yellow"},{"selector":"@a[tag=Victim]","color":"red"},{"text":"!","color":"yellow"}]
execute if entity @e[name=random_kill_message_16,type=minecraft:area_effect_cloud,tag=random_kill_message_selected,limit=1] run tellraw @a[tag=In_game] [{"text":""},{"selector":"@a[tag=Victim]","color":"red"},{"text":" took the L from ","color":"yellow"},{"selector":"@a[tag=Killer]","color":"gold"},{"text":"!","color":"yellow"}]
execute if entity @e[name=random_kill_message_17,type=minecraft:area_effect_cloud,tag=random_kill_message_selected,limit=1] run tellraw @a[tag=In_game] [{"text":""},{"selector":"@a[tag=Killer]","color":"gold"},{"text":" touched ","color":"yellow"},{"selector":"@a[tag=Victim]","color":"red"},{"text":"!","color":"yellow"}]
execute if entity @e[name=random_kill_message_18,type=minecraft:area_effect_cloud,tag=random_kill_message_selected,limit=1] run tellraw @a[tag=In_game] [{"text":""},{"selector":"@a[tag=Killer]","color":"gold"},{"text":" grabbed ","color":"yellow"},{"selector":"@a[tag=Victim]","color":"red"},{"text":"!","color":"yellow"}]
execute if entity @e[name=random_kill_message_19,type=minecraft:area_effect_cloud,tag=random_kill_message_selected,limit=1] run tellraw @a[tag=In_game] [{"text":""},{"selector":"@a[tag=Victim]","color":"red"},{"text":" went to sleep.","color":"yellow"}]

# Give team back
execute as @a[tag=Victim] run function main:game/others/set_team
execute as @a[tag=Killer] run function main:game/others/set_team

# Kill aec left
kill @e[type=minecraft:area_effect_cloud,tag=random_kill_message]