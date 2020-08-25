# ===== Summon random powerup ===== #
# Summon random entities
summon minecraft:area_effect_cloud 0 -1 0 {CustomName:"{\"text\":\"random_powerup_1\"}",Tags:["random_powerup"],Duration:1}

summon minecraft:area_effect_cloud 0 -1 0 {CustomName:"{\"text\":\"random_powerup_2\"}",Tags:["random_powerup"],Duration:1}
summon minecraft:area_effect_cloud 0 -1 0 {CustomName:"{\"text\":\"random_powerup_2\"}",Tags:["random_powerup"],Duration:1}
summon minecraft:area_effect_cloud 0 -1 0 {CustomName:"{\"text\":\"random_powerup_2\"}",Tags:["random_powerup"],Duration:1}

summon minecraft:area_effect_cloud 0 -1 0 {CustomName:"{\"text\":\"random_powerup_3\"}",Tags:["random_powerup"],Duration:1}
summon minecraft:area_effect_cloud 0 -1 0 {CustomName:"{\"text\":\"random_powerup_3\"}",Tags:["random_powerup"],Duration:1}

summon minecraft:area_effect_cloud 0 -1 0 {CustomName:"{\"text\":\"random_powerup_4\"}",Tags:["random_powerup"],Duration:1}
summon minecraft:area_effect_cloud 0 -1 0 {CustomName:"{\"text\":\"random_powerup_4\"}",Tags:["random_powerup"],Duration:1}
summon minecraft:area_effect_cloud 0 -1 0 {CustomName:"{\"text\":\"random_powerup_4\"}",Tags:["random_powerup"],Duration:1}

summon minecraft:area_effect_cloud 0 -1 0 {CustomName:"{\"text\":\"random_powerup_5\"}",Tags:["random_powerup"],Duration:1}
summon minecraft:area_effect_cloud 0 -1 0 {CustomName:"{\"text\":\"random_powerup_5\"}",Tags:["random_powerup"],Duration:1}
summon minecraft:area_effect_cloud 0 -1 0 {CustomName:"{\"text\":\"random_powerup_5\"}",Tags:["random_powerup"],Duration:1}
summon minecraft:area_effect_cloud 0 -1 0 {CustomName:"{\"text\":\"random_powerup_5\"}",Tags:["random_powerup"],Duration:1}

# Select random
tag @e[type=minecraft:area_effect_cloud,sort=random,limit=1,tag=random_powerup] add random_powerup_selected

# Attribute random
execute at @e[name=random_powerup_1,type=minecraft:area_effect_cloud,tag=random_powerup_selected,limit=1] run summon minecraft:item ~ ~ ~ {CustomNameVisible:1b,PickupDelay:1,Tags:["game_powerup_item","game_powerup_item_teleport"],CustomName:'{"text":"Powerup"}',Item:{id:"minecraft:totem_of_undying",Count:1b,tag:{Tags:["powerup_live"]}}}
execute at @e[name=random_powerup_2,type=minecraft:area_effect_cloud,tag=random_powerup_selected,limit=1] run summon minecraft:item ~ ~ ~ {CustomNameVisible:1b,PickupDelay:1,Tags:["game_powerup_item","game_powerup_item_teleport"],CustomName:'{"text":"Powerup"}',Item:{id:"minecraft:lantern",Count:1b,tag:{Tags:["powerup_glowing"]}}}
execute at @e[name=random_powerup_3,type=minecraft:area_effect_cloud,tag=random_powerup_selected,limit=1] run summon minecraft:item ~ ~ ~ {CustomNameVisible:1b,PickupDelay:1,Tags:["game_powerup_item","game_powerup_item_teleport"],CustomName:'{"text":"Powerup"}',Item:{id:"minecraft:chainmail_chestplate",Count:1b,tag:{Tags:["powerup_shield"]}}}
execute at @e[name=random_powerup_4,type=minecraft:area_effect_cloud,tag=random_powerup_selected,limit=1] run summon minecraft:item ~ ~ ~ {CustomNameVisible:1b,PickupDelay:1,Tags:["game_powerup_item","game_powerup_item_teleport"],CustomName:'{"text":"Powerup"}',Item:{id:"minecraft:tnt",Count:3b,tag:{Tags:["powerup_mine"]}}}
execute at @e[name=random_powerup_5,type=minecraft:area_effect_cloud,tag=random_powerup_selected,limit=1] run summon minecraft:item ~ ~ ~ {CustomNameVisible:1b,PickupDelay:1,Tags:["game_powerup_item","game_powerup_item_teleport"],CustomName:'{"text":"Powerup"}',Item:{id:"minecraft:sugar",Count:2b,tag:{Tags:["powerup_speed"]}}}

# Kill aec left
kill @e[type=minecraft:area_effect_cloud,tag=random_powerup]
# ================================= #

# Teleport to map
execute as @e[type=item,tag=game_powerup_item_teleport] at @s run function main:game/random_teleport/teleport_powerup

# Bossbar init
bossbar set minecraft:new_powerup visible true
bossbar set minecraft:new_powerup value 50
scoreboard players set !New_powerup Powerups 50