# Summon random entities
summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_kill_message_1\"}",Tags:["random_kill_message"],Duration:1}
execute if entity @a[tag=Killer] run summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_kill_message_2\"}",Tags:["random_kill_message"],Duration:1}
execute if entity @a[tag=Killer] run summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_kill_message_3\"}",Tags:["random_kill_message"],Duration:1}
execute if entity @a[tag=Killer] run summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_kill_message_4\"}",Tags:["random_kill_message"],Duration:1}
execute if entity @a[tag=Killer] run summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_kill_message_5\"}",Tags:["random_kill_message"],Duration:1}
execute if entity @a[tag=Killer] run summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_kill_message_6\"}",Tags:["random_kill_message"],Duration:1}
summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_kill_message_7\"}",Tags:["random_kill_message"],Duration:1}
execute if entity @a[tag=Killer] run summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_kill_message_8\"}",Tags:["random_kill_message"],Duration:1}
execute if entity @a[tag=Killer] run summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_kill_message_9\"}",Tags:["random_kill_message"],Duration:1}
summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_kill_message_10\"}",Tags:["random_kill_message"],Duration:1}

# Select random
tag @e[type=minecraft:area_effect_cloud,sort=random,limit=1,tag=random_kill_message] add random_kill_message_selected

# Leave teams Killer and Victim
team leave @a[tag=Victim]
team leave @a[tag=Killer]

# Attribute random
execute if entity @e[name=random_kill_message_1,type=minecraft:area_effect_cloud,tag=random_kill_message_selected,limit=1] run tellraw @a[tag=In_game] [{"selector":"@a[tag=Victim]","color":"red"},{"text":" blew up","color":"yellow"},{"text":"!","color":"yellow"}]
execute if entity @e[name=random_kill_message_2,type=minecraft:area_effect_cloud,tag=random_kill_message_selected,limit=1] run tellraw @a[tag=In_game] [{"selector":"@a[tag=Victim]","color":"red"},{"text":" walked over ","color":"yellow"},{"selector":"@a[tag=Killer]","color":"gold"},{"text":"'s mine","color":"yellow"},{"text":"!","color":"yellow"}] 
execute if entity @e[name=random_kill_message_3,type=minecraft:area_effect_cloud,tag=random_kill_message_selected,limit=1] run tellraw @a[tag=In_game] [{"selector":"@a[tag=Killer]","color":"gold"},{"text":" trapped ","color":"yellow"},{"selector":"@a[tag=Victim]","color":"red"},{"text":" with their mine","color":"yellow"},{"text":"!","color":"yellow"}]
execute if entity @e[name=random_kill_message_4,type=minecraft:area_effect_cloud,tag=random_kill_message_selected,limit=1] run tellraw @a[tag=In_game] [{"selector":"@a[tag=Killer]","color":"gold"},{"text":" detonated ","color":"yellow"},{"selector":"@a[tag=Victim]","color":"red"},{"text":"!","color":"yellow"}]
execute if entity @e[name=random_kill_message_5,type=minecraft:area_effect_cloud,tag=random_kill_message_selected,limit=1] run tellraw @a[tag=In_game] [{"selector":"@a[tag=Killer]","color":"gold"},{"text":" can make a puzzle out of ","color":"yellow"},{"selector":"@a[tag=Victim]","color":"red"},{"text":"'s body parts","color":"yellow"},{"text":"!","color":"yellow"}]
execute if entity @e[name=random_kill_message_6,type=minecraft:area_effect_cloud,tag=random_kill_message_selected,limit=1] run tellraw @a[tag=In_game] [{"selector":"@a[tag=Victim]","color":"red"},{"text":" was dismembered by ","color":"yellow"},{"selector":"@a[tag=Killer]","color":"gold"},{"text":"!","color":"yellow"}]
execute if entity @e[name=random_kill_message_7,type=minecraft:area_effect_cloud,tag=random_kill_message_selected,limit=1] run tellraw @a[tag=In_game] [{"selector":"@a[tag=Victim]","color":"red"},{"text":" is in pieces","color":"yellow"},{"text":"!","color":"yellow"}] 
execute if entity @e[name=random_kill_message_8,type=minecraft:area_effect_cloud,tag=random_kill_message_selected,limit=1] run tellraw @a[tag=In_game] [{"selector":"@a[tag=Victim]","color":"red"},{"text":" tried to hug ","color":"yellow"},{"selector":"@a[tag=Killer]","color":"gold"},{"text":"'s mine","color":"yellow"},{"text":"!","color":"yellow"}]
execute if entity @e[name=random_kill_message_9,type=minecraft:area_effect_cloud,tag=random_kill_message_selected,limit=1] run tellraw @a[tag=In_game] [{"selector":"@a[tag=Victim]","color":"red"},{"text":" stepped on ","color":"yellow"},{"selector":"@a[tag=Killer]","color":"gold"},{"text":"'s mine","color":"yellow"},{"text":"!","color":"yellow"}]
execute if entity @e[name=random_kill_message_10,type=minecraft:area_effect_cloud,tag=random_kill_message_selected,limit=1] run tellraw @a[tag=In_game] [{"selector":"@a[tag=Victim]","color":"red"},{"text":" disappeared in an explosion","color":"yellow"},{"text":"!","color":"yellow"}]

# Give team back
execute as @a[tag=Victim] run function main:game/others/set_team
execute as @a[tag=Killer] run function main:game/others/set_team

# Kill aec left
kill @e[type=minecraft:area_effect_cloud,tag=random_kill_message]