# Live options
# Update score
scoreboard players add !Live Options 1
execute if entity @a[tag=Scan_villager,scores={Sneaking=1..}] run scoreboard players remove !Live Options 2

execute if score !Live Options matches 51.. run scoreboard players set !Live Options -1
execute if score !Live Options matches ..-2 run scoreboard players set !Live Options 50

scoreboard players set !Change_option Options 30

# Playsounds
execute as @a[tag=Scan_villager] at @s run playsound minecraft:block.stone_button.click_on master @s

# Titles
title @a[tag=Scan_villager] times 0 20 10
title @a[tag=Scan_villager] title {"text":""}

execute if score !Live Options matches -1 run title @a[tag=Scan_villager] subtitle ["",{"text":"Lives will be selected ","color":"yellow"},{"text":"randomly","color":"gold"},{"text":"!","color":"yellow"}]
execute if score !Live Options matches 0.. run title @a[tag=Scan_villager] subtitle ["",{"text":"Lives are now set to ","color":"yellow"},{"score":{"name":"!Live","objective":"Options"},"color":"gold"},{"text":" ❤","color":"dark_red","bold":"true"},{"text":"!","color":"yellow"}]


# Villager update
execute if score !Live Options matches -1 run data merge entity @e[type=minecraft:area_effect_cloud,tag=option_live,limit=1] {CustomName:'[{"text":"["},{"text":" Random ","color":"dark_purple","bold":"true"},{"text":"]"}]'}
execute if score !Live Options matches 0 run data merge entity @e[type=minecraft:area_effect_cloud,tag=option_live,limit=1] {CustomName:'[{"text":"["},{"text":" 0","color":"gold"},{"text":" ❤ ","color":"dark_red","bold":"true"},{"text":"]"}]'}
execute if score !Live Options matches 1 run data merge entity @e[type=minecraft:area_effect_cloud,tag=option_live,limit=1] {CustomName:'[{"text":"["},{"text":" 1","color":"gold"},{"text":" ❤ ","color":"dark_red","bold":"true"},{"text":"]"}]'}
execute if score !Live Options matches 2 run data merge entity @e[type=minecraft:area_effect_cloud,tag=option_live,limit=1] {CustomName:'[{"text":"["},{"text":" 2","color":"gold"},{"text":" ❤ ","color":"dark_red","bold":"true"},{"text":"]"}]'}
execute if score !Live Options matches 3 run data merge entity @e[type=minecraft:area_effect_cloud,tag=option_live,limit=1] {CustomName:'[{"text":"["},{"text":" 3","color":"gold"},{"text":" ❤ ","color":"dark_red","bold":"true"},{"text":"]"}]'}
execute if score !Live Options matches 4 run data merge entity @e[type=minecraft:area_effect_cloud,tag=option_live,limit=1] {CustomName:'[{"text":"["},{"text":" 4","color":"gold"},{"text":" ❤ ","color":"dark_red","bold":"true"},{"text":"]"}]'}
execute if score !Live Options matches 5 run data merge entity @e[type=minecraft:area_effect_cloud,tag=option_live,limit=1] {CustomName:'[{"text":"["},{"text":" 5","color":"gold"},{"text":" ❤ ","color":"dark_red","bold":"true"},{"text":"]"}]'}
execute if score !Live Options matches 6 run data merge entity @e[type=minecraft:area_effect_cloud,tag=option_live,limit=1] {CustomName:'[{"text":"["},{"text":" 6","color":"gold"},{"text":" ❤ ","color":"dark_red","bold":"true"},{"text":"]"}]'}
execute if score !Live Options matches 7 run data merge entity @e[type=minecraft:area_effect_cloud,tag=option_live,limit=1] {CustomName:'[{"text":"["},{"text":" 7","color":"gold"},{"text":" ❤ ","color":"dark_red","bold":"true"},{"text":"]"}]'}
execute if score !Live Options matches 8 run data merge entity @e[type=minecraft:area_effect_cloud,tag=option_live,limit=1] {CustomName:'[{"text":"["},{"text":" 8","color":"gold"},{"text":" ❤ ","color":"dark_red","bold":"true"},{"text":"]"}]'}
execute if score !Live Options matches 9 run data merge entity @e[type=minecraft:area_effect_cloud,tag=option_live,limit=1] {CustomName:'[{"text":"["},{"text":" 9","color":"gold"},{"text":" ❤ ","color":"dark_red","bold":"true"},{"text":"]"}]'}
execute if score !Live Options matches 10 run data merge entity @e[type=minecraft:area_effect_cloud,tag=option_live,limit=1] {CustomName:'[{"text":"["},{"text":" 10","color":"gold"},{"text":" ❤ ","color":"dark_red","bold":"true"},{"text":"]"}]'}
execute if score !Live Options matches 11 run data merge entity @e[type=minecraft:area_effect_cloud,tag=option_live,limit=1] {CustomName:'[{"text":"["},{"text":" 11","color":"gold"},{"text":" ❤ ","color":"dark_red","bold":"true"},{"text":"]"}]'}
execute if score !Live Options matches 12 run data merge entity @e[type=minecraft:area_effect_cloud,tag=option_live,limit=1] {CustomName:'[{"text":"["},{"text":" 12","color":"gold"},{"text":" ❤ ","color":"dark_red","bold":"true"},{"text":"]"}]'}
execute if score !Live Options matches 13 run data merge entity @e[type=minecraft:area_effect_cloud,tag=option_live,limit=1] {CustomName:'[{"text":"["},{"text":" 13","color":"gold"},{"text":" ❤ ","color":"dark_red","bold":"true"},{"text":"]"}]'}
execute if score !Live Options matches 14 run data merge entity @e[type=minecraft:area_effect_cloud,tag=option_live,limit=1] {CustomName:'[{"text":"["},{"text":" 14","color":"gold"},{"text":" ❤ ","color":"dark_red","bold":"true"},{"text":"]"}]'}
execute if score !Live Options matches 15 run data merge entity @e[type=minecraft:area_effect_cloud,tag=option_live,limit=1] {CustomName:'[{"text":"["},{"text":" 15","color":"gold"},{"text":" ❤ ","color":"dark_red","bold":"true"},{"text":"]"}]'}
execute if score !Live Options matches 16 run data merge entity @e[type=minecraft:area_effect_cloud,tag=option_live,limit=1] {CustomName:'[{"text":"["},{"text":" 16","color":"gold"},{"text":" ❤ ","color":"dark_red","bold":"true"},{"text":"]"}]'}
execute if score !Live Options matches 17 run data merge entity @e[type=minecraft:area_effect_cloud,tag=option_live,limit=1] {CustomName:'[{"text":"["},{"text":" 17","color":"gold"},{"text":" ❤ ","color":"dark_red","bold":"true"},{"text":"]"}]'}
execute if score !Live Options matches 18 run data merge entity @e[type=minecraft:area_effect_cloud,tag=option_live,limit=1] {CustomName:'[{"text":"["},{"text":" 18","color":"gold"},{"text":" ❤ ","color":"dark_red","bold":"true"},{"text":"]"}]'}
execute if score !Live Options matches 19 run data merge entity @e[type=minecraft:area_effect_cloud,tag=option_live,limit=1] {CustomName:'[{"text":"["},{"text":" 19","color":"gold"},{"text":" ❤ ","color":"dark_red","bold":"true"},{"text":"]"}]'}
execute if score !Live Options matches 20 run data merge entity @e[type=minecraft:area_effect_cloud,tag=option_live,limit=1] {CustomName:'[{"text":"["},{"text":" 20","color":"gold"},{"text":" ❤ ","color":"dark_red","bold":"true"},{"text":"]"}]'}
execute if score !Live Options matches 21 run data merge entity @e[type=minecraft:area_effect_cloud,tag=option_live,limit=1] {CustomName:'[{"text":"["},{"text":" 21","color":"gold"},{"text":" ❤ ","color":"dark_red","bold":"true"},{"text":"]"}]'}
execute if score !Live Options matches 22 run data merge entity @e[type=minecraft:area_effect_cloud,tag=option_live,limit=1] {CustomName:'[{"text":"["},{"text":" 22","color":"gold"},{"text":" ❤ ","color":"dark_red","bold":"true"},{"text":"]"}]'}
execute if score !Live Options matches 23 run data merge entity @e[type=minecraft:area_effect_cloud,tag=option_live,limit=1] {CustomName:'[{"text":"["},{"text":" 23","color":"gold"},{"text":" ❤ ","color":"dark_red","bold":"true"},{"text":"]"}]'}
execute if score !Live Options matches 24 run data merge entity @e[type=minecraft:area_effect_cloud,tag=option_live,limit=1] {CustomName:'[{"text":"["},{"text":" 24","color":"gold"},{"text":" ❤ ","color":"dark_red","bold":"true"},{"text":"]"}]'}
execute if score !Live Options matches 25 run data merge entity @e[type=minecraft:area_effect_cloud,tag=option_live,limit=1] {CustomName:'[{"text":"["},{"text":" 25","color":"gold"},{"text":" ❤ ","color":"dark_red","bold":"true"},{"text":"]"}]'}
execute if score !Live Options matches 26 run data merge entity @e[type=minecraft:area_effect_cloud,tag=option_live,limit=1] {CustomName:'[{"text":"["},{"text":" 26","color":"gold"},{"text":" ❤ ","color":"dark_red","bold":"true"},{"text":"]"}]'}
execute if score !Live Options matches 27 run data merge entity @e[type=minecraft:area_effect_cloud,tag=option_live,limit=1] {CustomName:'[{"text":"["},{"text":" 27","color":"gold"},{"text":" ❤ ","color":"dark_red","bold":"true"},{"text":"]"}]'}
execute if score !Live Options matches 28 run data merge entity @e[type=minecraft:area_effect_cloud,tag=option_live,limit=1] {CustomName:'[{"text":"["},{"text":" 28","color":"gold"},{"text":" ❤ ","color":"dark_red","bold":"true"},{"text":"]"}]'}
execute if score !Live Options matches 29 run data merge entity @e[type=minecraft:area_effect_cloud,tag=option_live,limit=1] {CustomName:'[{"text":"["},{"text":" 29","color":"gold"},{"text":" ❤ ","color":"dark_red","bold":"true"},{"text":"]"}]'}
execute if score !Live Options matches 30 run data merge entity @e[type=minecraft:area_effect_cloud,tag=option_live,limit=1] {CustomName:'[{"text":"["},{"text":" 30","color":"gold"},{"text":" ❤ ","color":"dark_red","bold":"true"},{"text":"]"}]'}
execute if score !Live Options matches 31 run data merge entity @e[type=minecraft:area_effect_cloud,tag=option_live,limit=1] {CustomName:'[{"text":"["},{"text":" 31","color":"gold"},{"text":" ❤ ","color":"dark_red","bold":"true"},{"text":"]"}]'}
execute if score !Live Options matches 32 run data merge entity @e[type=minecraft:area_effect_cloud,tag=option_live,limit=1] {CustomName:'[{"text":"["},{"text":" 32","color":"gold"},{"text":" ❤ ","color":"dark_red","bold":"true"},{"text":"]"}]'}
execute if score !Live Options matches 33 run data merge entity @e[type=minecraft:area_effect_cloud,tag=option_live,limit=1] {CustomName:'[{"text":"["},{"text":" 33","color":"gold"},{"text":" ❤ ","color":"dark_red","bold":"true"},{"text":"]"}]'}
execute if score !Live Options matches 34 run data merge entity @e[type=minecraft:area_effect_cloud,tag=option_live,limit=1] {CustomName:'[{"text":"["},{"text":" 34","color":"gold"},{"text":" ❤ ","color":"dark_red","bold":"true"},{"text":"]"}]'}
execute if score !Live Options matches 35 run data merge entity @e[type=minecraft:area_effect_cloud,tag=option_live,limit=1] {CustomName:'[{"text":"["},{"text":" 35","color":"gold"},{"text":" ❤ ","color":"dark_red","bold":"true"},{"text":"]"}]'}
execute if score !Live Options matches 36 run data merge entity @e[type=minecraft:area_effect_cloud,tag=option_live,limit=1] {CustomName:'[{"text":"["},{"text":" 36","color":"gold"},{"text":" ❤ ","color":"dark_red","bold":"true"},{"text":"]"}]'}
execute if score !Live Options matches 37 run data merge entity @e[type=minecraft:area_effect_cloud,tag=option_live,limit=1] {CustomName:'[{"text":"["},{"text":" 37","color":"gold"},{"text":" ❤ ","color":"dark_red","bold":"true"},{"text":"]"}]'}
execute if score !Live Options matches 38 run data merge entity @e[type=minecraft:area_effect_cloud,tag=option_live,limit=1] {CustomName:'[{"text":"["},{"text":" 38","color":"gold"},{"text":" ❤ ","color":"dark_red","bold":"true"},{"text":"]"}]'}
execute if score !Live Options matches 39 run data merge entity @e[type=minecraft:area_effect_cloud,tag=option_live,limit=1] {CustomName:'[{"text":"["},{"text":" 39","color":"gold"},{"text":" ❤ ","color":"dark_red","bold":"true"},{"text":"]"}]'}
execute if score !Live Options matches 40 run data merge entity @e[type=minecraft:area_effect_cloud,tag=option_live,limit=1] {CustomName:'[{"text":"["},{"text":" 40","color":"gold"},{"text":" ❤ ","color":"dark_red","bold":"true"},{"text":"]"}]'}
execute if score !Live Options matches 41 run data merge entity @e[type=minecraft:area_effect_cloud,tag=option_live,limit=1] {CustomName:'[{"text":"["},{"text":" 41","color":"gold"},{"text":" ❤ ","color":"dark_red","bold":"true"},{"text":"]"}]'}
execute if score !Live Options matches 42 run data merge entity @e[type=minecraft:area_effect_cloud,tag=option_live,limit=1] {CustomName:'[{"text":"["},{"text":" 42","color":"gold"},{"text":" ❤ ","color":"dark_red","bold":"true"},{"text":"]"}]'}
execute if score !Live Options matches 43 run data merge entity @e[type=minecraft:area_effect_cloud,tag=option_live,limit=1] {CustomName:'[{"text":"["},{"text":" 43","color":"gold"},{"text":" ❤ ","color":"dark_red","bold":"true"},{"text":"]"}]'}
execute if score !Live Options matches 44 run data merge entity @e[type=minecraft:area_effect_cloud,tag=option_live,limit=1] {CustomName:'[{"text":"["},{"text":" 44","color":"gold"},{"text":" ❤ ","color":"dark_red","bold":"true"},{"text":"]"}]'}
execute if score !Live Options matches 45 run data merge entity @e[type=minecraft:area_effect_cloud,tag=option_live,limit=1] {CustomName:'[{"text":"["},{"text":" 45","color":"gold"},{"text":" ❤ ","color":"dark_red","bold":"true"},{"text":"]"}]'}
execute if score !Live Options matches 46 run data merge entity @e[type=minecraft:area_effect_cloud,tag=option_live,limit=1] {CustomName:'[{"text":"["},{"text":" 45","color":"gold"},{"text":" ❤ ","color":"dark_red","bold":"true"},{"text":"]"}]'}
execute if score !Live Options matches 47 run data merge entity @e[type=minecraft:area_effect_cloud,tag=option_live,limit=1] {CustomName:'[{"text":"["},{"text":" 47","color":"gold"},{"text":" ❤ ","color":"dark_red","bold":"true"},{"text":"]"}]'}
execute if score !Live Options matches 48 run data merge entity @e[type=minecraft:area_effect_cloud,tag=option_live,limit=1] {CustomName:'[{"text":"["},{"text":" 48","color":"gold"},{"text":" ❤ ","color":"dark_red","bold":"true"},{"text":"]"}]'}
execute if score !Live Options matches 49 run data merge entity @e[type=minecraft:area_effect_cloud,tag=option_live,limit=1] {CustomName:'[{"text":"["},{"text":" 49","color":"gold"},{"text":" ❤ ","color":"dark_red","bold":"true"},{"text":"]"}]'}
execute if score !Live Options matches 50 run data merge entity @e[type=minecraft:area_effect_cloud,tag=option_live,limit=1] {CustomName:'[{"text":"["},{"text":" 50","color":"gold"},{"text":" ❤ ","color":"dark_red","bold":"true"},{"text":"]"}]'}

# Update scoreboard
function main:scoreboard/display