# Timer add
scoreboard players remove !Random Space_game 1
execute if score !Random Space_game matches ..-1 if score !Score Space_game matches 0..500 run scoreboard players set !Random Space_game 20
execute if score !Random Space_game matches ..-1 if score !Score Space_game matches 501..1000 run scoreboard players set !Random Space_game 10
execute if score !Random Space_game matches ..-1 if score !Score Space_game matches 1001..2000 run scoreboard players set !Random Space_game 5
execute if score !Random Space_game matches ..-1 if score !Score Space_game matches 2001..4000 run scoreboard players set !Random Space_game 4
execute if score !Random Space_game matches ..-1 if score !Score Space_game matches 4001..5000 run scoreboard players set !Random Space_game 2
execute if score !Random Space_game matches ..-1 if score !Score Space_game matches 5001.. run scoreboard players set !Random Space_game 1

# Summon random entities
execute if score !Random Space_game matches 0 run summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_space_game_1\"}",Tags:["random_space_game"],Duration:1}
execute if score !Random Space_game matches 0 run summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_space_game_2\"}",Tags:["random_space_game"],Duration:1}
execute if score !Random Space_game matches 0 run summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_space_game_3\"}",Tags:["random_space_game"],Duration:1}
execute if score !Random Space_game matches 0 run summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_space_game_4\"}",Tags:["random_space_game"],Duration:1}
execute if score !Random Space_game matches 0 run summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_space_game_5\"}",Tags:["random_space_game"],Duration:1}
execute if score !Random Space_game matches 0 run summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_space_game_6\"}",Tags:["random_space_game"],Duration:1}
execute if score !Random Space_game matches 0 run summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_space_game_7\"}",Tags:["random_space_game"],Duration:1}
execute if score !Random Space_game matches 0 run summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_space_game_8\"}",Tags:["random_space_game"],Duration:1}
execute if score !Random Space_game matches 0 run summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_space_game_9\"}",Tags:["random_space_game"],Duration:1}

# Select random
execute if score !Random Space_game matches 0 run tag @e[type=minecraft:area_effect_cloud,sort=random,limit=1,tag=random_space_game] add random_space_game_selected

# Attribute random
execute if score !Random Space_game matches 0 if entity @e[name=random_space_game_1,type=minecraft:area_effect_cloud,tag=random_space_game_selected,limit=1] run summon minecraft:armor_stand 29.9 19.0 -21.5 {Invisible:1b,Rotation:[90f],NoGravity:1b,NoBasePlate:1b,Small:1b,ShowArms:1b,CustomName:"{\"text\":\"space_game_asteroid\"}",DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:stone",Count:1b}]}
execute if score !Random Space_game matches 0 if entity @e[name=random_space_game_2,type=minecraft:area_effect_cloud,tag=random_space_game_selected,limit=1] run summon minecraft:armor_stand 29.9 19.0 -21.0 {Invisible:1b,Rotation:[90f],NoGravity:1b,NoBasePlate:1b,Small:1b,ShowArms:1b,CustomName:"{\"text\":\"space_game_asteroid\"}",DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:stone",Count:1b}]}
execute if score !Random Space_game matches 0 if entity @e[name=random_space_game_3,type=minecraft:area_effect_cloud,tag=random_space_game_selected,limit=1] run summon minecraft:armor_stand 29.9 19.0 -20.5 {Invisible:1b,Rotation:[90f],NoGravity:1b,NoBasePlate:1b,Small:1b,ShowArms:1b,CustomName:"{\"text\":\"space_game_asteroid\"}",DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:stone",Count:1b}]}
execute if score !Random Space_game matches 0 if entity @e[name=random_space_game_4,type=minecraft:area_effect_cloud,tag=random_space_game_selected,limit=1] run summon minecraft:armor_stand 29.9 19.0 -20.0 {Invisible:1b,Rotation:[90f],NoGravity:1b,NoBasePlate:1b,Small:1b,ShowArms:1b,CustomName:"{\"text\":\"space_game_asteroid\"}",DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:stone",Count:1b}]}
execute if score !Random Space_game matches 0 if entity @e[name=random_space_game_5,type=minecraft:area_effect_cloud,tag=random_space_game_selected,limit=1] run summon minecraft:armor_stand 29.9 19.0 -19.5 {Invisible:1b,Rotation:[90f],NoGravity:1b,NoBasePlate:1b,Small:1b,ShowArms:1b,CustomName:"{\"text\":\"space_game_asteroid\"}",DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:stone",Count:1b}]}
execute if score !Random Space_game matches 0 if entity @e[name=random_space_game_6,type=minecraft:area_effect_cloud,tag=random_space_game_selected,limit=1] run summon minecraft:armor_stand 29.9 19.0 -19.0 {Invisible:1b,Rotation:[90f],NoGravity:1b,NoBasePlate:1b,Small:1b,ShowArms:1b,CustomName:"{\"text\":\"space_game_asteroid\"}",DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:stone",Count:1b}]}
execute if score !Random Space_game matches 0 if entity @e[name=random_space_game_7,type=minecraft:area_effect_cloud,tag=random_space_game_selected,limit=1] run summon minecraft:armor_stand 29.9 19.0 -18.5 {Invisible:1b,Rotation:[90f],NoGravity:1b,NoBasePlate:1b,Small:1b,ShowArms:1b,CustomName:"{\"text\":\"space_game_asteroid\"}",DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:stone",Count:1b}]}
execute if score !Random Space_game matches 0 if entity @e[name=random_space_game_8,type=minecraft:area_effect_cloud,tag=random_space_game_selected,limit=1] run summon minecraft:armor_stand 29.9 19.0 -18.0 {Invisible:1b,Rotation:[90f],NoGravity:1b,NoBasePlate:1b,Small:1b,ShowArms:1b,CustomName:"{\"text\":\"space_game_asteroid\"}",DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:stone",Count:1b}]}
execute if score !Random Space_game matches 0 if entity @e[name=random_space_game_9,type=minecraft:area_effect_cloud,tag=random_space_game_selected,limit=1] run summon minecraft:armor_stand 29.9 19.0 -17.5 {Invisible:1b,Rotation:[90f],NoGravity:1b,NoBasePlate:1b,Small:1b,ShowArms:1b,CustomName:"{\"text\":\"space_game_asteroid\"}",DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:stone",Count:1b}]}

# Kill aec left
execute if score !Random Space_game matches 0 run kill @e[type=minecraft:area_effect_cloud,tag=random_space_game]