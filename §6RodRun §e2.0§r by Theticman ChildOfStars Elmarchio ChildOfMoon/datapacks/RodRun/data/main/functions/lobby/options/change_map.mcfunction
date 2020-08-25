# Map options
# Update score
scoreboard players add !Map Options 1
execute if entity @a[tag=Scan_villager,scores={Sneaking=1..}] run scoreboard players remove !Map Options 2

execute if score !Map Options matches 15.. run scoreboard players set !Map Options 1
execute if score !Map Options matches 0 run scoreboard players set !Map Options 14

scoreboard players set !Change_option Options 30

# Playsounds
execute as @a[tag=Scan_villager] at @s run playsound minecraft:block.stone_button.click_on master @s

# Titles
title @a[tag=Scan_villager] times 0 20 10
title @a[tag=Scan_villager] title {"text":""}

execute if score !Map Options matches 1 run title @a[tag=Scan_villager] subtitle ["",{"text":"Map will be selected ","color":"yellow"},{"text":"randomly","color":"gold"},{"text":"!","color":"yellow"}]
execute if score !Map Options matches 2 run title @a[tag=Scan_villager] subtitle ["",{"text":"Selected map: ","color":"yellow"},{"text":"Warehouse","color":"gray"},{"text":"!","color":"yellow"}]
execute if score !Map Options matches 3 run title @a[tag=Scan_villager] subtitle ["",{"text":"Selected map: ","color":"yellow"},{"text":"Whitehouse","color":"white"},{"text":"!","color":"yellow"}]
execute if score !Map Options matches 4 run title @a[tag=Scan_villager] subtitle ["",{"text":"Selected map: ","color":"yellow"},{"text":"Egypt","color":"gold"},{"text":"!","color":"yellow"}]
execute if score !Map Options matches 5 run title @a[tag=Scan_villager] subtitle ["",{"text":"Selected map: ","color":"yellow"},{"text":"Hostel","color":"blue"},{"text":"!","color":"yellow"}]
execute if score !Map Options matches 6 run title @a[tag=Scan_villager] subtitle ["",{"text":"Selected map: ","color":"yellow"},{"text":"Cy","color":"dark_purple"},{"text":"ber","color":"gold"},{"text":"!","color":"yellow"}]
execute if score !Map Options matches 7 run title @a[tag=Scan_villager] subtitle ["",{"text":"Selected map: ","color":"yellow"},{"text":"Tr","color":"blue"},{"text":"on","color":"gold"},{"text":"!","color":"yellow"}]
execute if score !Map Options matches 8 run title @a[tag=Scan_villager] subtitle ["",{"text":"Selected map: ","color":"yellow"},{"text":"Island","color":"green"},{"text":"!","color":"yellow"}]
execute if score !Map Options matches 9 run title @a[tag=Scan_villager] subtitle ["",{"text":"Selected map: ","color":"yellow"},{"text":"Metro","color":"dark_aqua"},{"text":"!","color":"yellow"}]
execute if score !Map Options matches 10 run title @a[tag=Scan_villager] subtitle ["",{"text":"Selected map: ","color":"yellow"},{"text":"Aquarium","color":"aqua"},{"text":"!","color":"yellow"}]
execute if score !Map Options matches 11 run title @a[tag=Scan_villager] subtitle ["",{"text":"Selected map: ","color":"yellow"},{"text":"Parking","color":"white"},{"text":"!","color":"yellow"}]
execute if score !Map Options matches 12 run title @a[tag=Scan_villager] subtitle ["",{"text":"Selected map: ","color":"yellow"},{"text":"Cabaret","color":"red"},{"text":"!","color":"yellow"}]
execute if score !Map Options matches 13 run title @a[tag=Scan_villager] subtitle ["",{"text":"Selected map: ","color":"yellow"},{"text":"Mall","color":"dark_green"},{"text":"!","color":"yellow"}]
execute if score !Map Options matches 14 run title @a[tag=Scan_villager] subtitle ["",{"text":"Selected map: ","color":"yellow"},{"text":"Pa","color":"blue"},{"text":"r","color":"white"},{"text":"is","color":"red"},{"text":"!","color":"yellow"}]

# Villager update
execute if score !Map Options matches 1 run data merge entity @e[type=minecraft:area_effect_cloud,tag=option_map,limit=1] {CustomName:'[{"text":"["},{"text":" Random ","color":"dark_purple","bold":"true"},{"text":"]"}]'}
execute if score !Map Options matches 2 run data merge entity @e[type=minecraft:area_effect_cloud,tag=option_map,limit=1] {CustomName:'[{"text":"["},{"text":" Warehouse ","color":"gray","bold":"true"},{"text":"]"}]'}
execute if score !Map Options matches 3 run data merge entity @e[type=minecraft:area_effect_cloud,tag=option_map,limit=1] {CustomName:'[{"text":"["},{"text":" Whitehouse ","color":"white","bold":"true"},{"text":"]"}]'}
execute if score !Map Options matches 4 run data merge entity @e[type=minecraft:area_effect_cloud,tag=option_map,limit=1] {CustomName:'[{"text":"["},{"text":" Egypt ","color":"gold","bold":"true"},{"text":"]"}]'}
execute if score !Map Options matches 5 run data merge entity @e[type=minecraft:area_effect_cloud,tag=option_map,limit=1] {CustomName:'[{"text":"["},{"text":" Hostel ","color":"blue","bold":"true"},{"text":"]"}]'}
execute if score !Map Options matches 6 run data merge entity @e[type=minecraft:area_effect_cloud,tag=option_map,limit=1] {CustomName:'[{"text":"["},{"text":" Cy","color":"dark_purple","bold":"true"},{"text":"ber ","color":"gold","bold":"true"},{"text":"]"}]'}
execute if score !Map Options matches 7 run data merge entity @e[type=minecraft:area_effect_cloud,tag=option_map,limit=1] {CustomName:'[{"text":"["},{"text":" Tr","color":"blue","bold":"true"},{"text":"on ","color":"gold","bold":"true"},{"text":"]"}]'}
execute if score !Map Options matches 8 run data merge entity @e[type=minecraft:area_effect_cloud,tag=option_map,limit=1] {CustomName:'[{"text":"["},{"text":" Island ","color":"green","bold":true},{"text":"]"}]'}
execute if score !Map Options matches 9 run data merge entity @e[type=minecraft:area_effect_cloud,tag=option_map,limit=1] {CustomName:'[{"text":"["},{"text":" Metro ","color":"dark_aqua","bold":true},{"text":"]"}]'}
execute if score !Map Options matches 10 run data merge entity @e[type=minecraft:area_effect_cloud,tag=option_map,limit=1] {CustomName:'[{"text":"["},{"text":" Aquarium ","color":"aqua","bold":true},{"text":"]"}]'}
execute if score !Map Options matches 11 run data merge entity @e[type=minecraft:area_effect_cloud,tag=option_map,limit=1] {CustomName:'[{"text":"["},{"text":" Parking ","color":"purple","bold":true},{"text":"]"}]'}
execute if score !Map Options matches 12 run data merge entity @e[type=minecraft:area_effect_cloud,tag=option_map,limit=1] {CustomName:'[{"text":"["},{"text":" Cabaret ","color":"red","bold":true},{"text":"]"}]'}
execute if score !Map Options matches 13 run data merge entity @e[type=minecraft:area_effect_cloud,tag=option_map,limit=1] {CustomName:'[{"text":"["},{"text":" Mall ","color":"dark_green","bold":true},{"text":"]"}]'}
execute if score !Map Options matches 14 run data merge entity @e[type=minecraft:area_effect_cloud,tag=option_map,limit=1] {CustomName:'[{"text":"["},{"text":" Pa","color":"blue","bold":true},{"text":"r","color":"white","bold":true},{"text":"is ","color":"red","bold":true},{"text":"]"}]'}

# Update scoreboard
function main:scoreboard/display
