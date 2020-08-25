# Summon random entities
execute if entity @s[scores={Kill_effect=1..}] run summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_kill_effect_1\"}",Tags:["random_kill_effect"],Duration:1}
execute if entity @s[scores={Kill_effect=2..}] run summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_kill_effect_2\"}",Tags:["random_kill_effect"],Duration:1}
execute if entity @s[scores={Kill_effect=3..}] run summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_kill_effect_3\"}",Tags:["random_kill_effect"],Duration:1}
execute if entity @s[scores={Kill_effect=4..}] run summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_kill_effect_4\"}",Tags:["random_kill_effect"],Duration:1}
execute if entity @s[scores={Kill_effect=5..}] run summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_kill_effect_5\"}",Tags:["random_kill_effect"],Duration:1}
execute if entity @s[scores={Kill_effect=6..}] run summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_kill_effect_6\"}",Tags:["random_kill_effect"],Duration:1}
execute if entity @s[scores={Kill_effect=7..}] run summon minecraft:area_effect_cloud 0 200 0 {CustomName:"{\"text\":\"random_kill_effect_7\"}",Tags:["random_kill_effect"],Duration:1}

# Select random
tag @e[type=minecraft:area_effect_cloud,sort=random,limit=1,tag=random_kill_effect] add random_kill_effect_selected

# Attribute random
execute if entity @e[name=random_kill_effect_1,type=minecraft:area_effect_cloud,tag=random_kill_effect_selected,limit=1] as @a[tag=Victim] at @s run function main:game/kill_effect/init_cloud 
execute if entity @e[name=random_kill_effect_2,type=minecraft:area_effect_cloud,tag=random_kill_effect_selected,limit=1] as @a[tag=Victim] at @s run function main:game/kill_effect/init_blood
execute if entity @e[name=random_kill_effect_3,type=minecraft:area_effect_cloud,tag=random_kill_effect_selected,limit=1] as @a[tag=Victim] at @s run function main:game/kill_effect/init_totem
execute if entity @e[name=random_kill_effect_4,type=minecraft:area_effect_cloud,tag=random_kill_effect_selected,limit=1] as @a[tag=Victim] at @s run function main:game/kill_effect/init_xp
execute if entity @e[name=random_kill_effect_5,type=minecraft:area_effect_cloud,tag=random_kill_effect_selected,limit=1] as @a[tag=Victim] at @s run function main:game/kill_effect/init_note 
execute if entity @e[name=random_kill_effect_6,type=minecraft:area_effect_cloud,tag=random_kill_effect_selected,limit=1] as @a[tag=Victim] at @s run function main:game/kill_effect/init_head_flying
execute if entity @e[name=random_kill_effect_7,type=minecraft:area_effect_cloud,tag=random_kill_effect_selected,limit=1] as @a[tag=Victim] at @s run function main:game/kill_effect/init_dab

# Kill aec left
kill @e[type=minecraft:area_effect_cloud,tag=random_kill_effect]