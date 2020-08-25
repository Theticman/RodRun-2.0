# Time options
# Update score
scoreboard players add !Time Options 1
execute if entity @a[tag=Scan_villager,scores={Sneaking=1..}] run scoreboard players remove !Time Options 2

execute if score !Time Options matches 6.. run scoreboard players set !Time Options 1
execute if score !Time Options matches 0 run scoreboard players set !Time Options 5

scoreboard players set !Change_option Options 30

# Playsounds
execute as @a[tag=Scan_villager] at @s run playsound minecraft:block.stone_button.click_on master @s

# Titles
title @a[tag=Scan_villager] times 0 20 10
title @a[tag=Scan_villager] title {"text":""}

execute if score !Time Options matches 1 run title @a[tag=Scan_villager] subtitle ["",{"text":"Time will be selected ","color":"yellow"},{"text":"randomly","color":"gold"},{"text":"!","color":"yellow"}]
execute if score !Time Options matches 2 run title @a[tag=Scan_villager] subtitle ["",{"text":"Time set to ","color":"yellow"},{"text":"Day","color":"gold"},{"text":"!","color":"yellow"}]
execute if score !Time Options matches 3 run title @a[tag=Scan_villager] subtitle ["",{"text":"Time set to ","color":"yellow"},{"text":"Noon","color":"gold"},{"text":"!","color":"yellow"}]
execute if score !Time Options matches 4 run title @a[tag=Scan_villager] subtitle ["",{"text":"Time set to ","color":"yellow"},{"text":"Night","color":"light_purple"},{"text":"!","color":"yellow"}]
execute if score !Time Options matches 5 run title @a[tag=Scan_villager] subtitle ["",{"text":"Time set to ","color":"yellow"},{"text":"Midnight","color":"dark_purple"},{"text":"!","color":"yellow"}]

# Villager update
execute if score !Time Options matches 1 run data merge entity @e[type=minecraft:area_effect_cloud,tag=option_time,limit=1] {CustomName:'[{"text":"["},{"text":" Random ","color":"dark_purple","bold":"true"},{"text":"]"}]'}
execute if score !Time Options matches 2 run data merge entity @e[type=minecraft:area_effect_cloud,tag=option_time,limit=1] {CustomName:'[{"text":"["},{"text":" Day ","color":"gold","bold":"true"},{"text":"]"}]'}
execute if score !Time Options matches 3 run data merge entity @e[type=minecraft:area_effect_cloud,tag=option_time,limit=1] {CustomName:'[{"text":"["},{"text":" Noon ","color":"gold","bold":"true"},{"text":"]"}]'}
execute if score !Time Options matches 4 run data merge entity @e[type=minecraft:area_effect_cloud,tag=option_time,limit=1] {CustomName:'[{"text":"["},{"text":" Night ","color":"light_purple","bold":"true"},{"text":"]"}]'}
execute if score !Time Options matches 5 run data merge entity @e[type=minecraft:area_effect_cloud,tag=option_time,limit=1] {CustomName:'[{"text":"["},{"text":" Midnight ","color":"dark_purple","bold":"true"},{"text":"]"}]'}

# Change time
execute if score !Time Options matches 2 run time set day
execute if score !Time Options matches 3 run time set noon
execute if score !Time Options matches 4 run time set night
execute if score !Time Options matches 5 run time set midnight


# Update scoreboard
function main:lobby/scoreboard
