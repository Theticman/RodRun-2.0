# Powerups options
# Update score
scoreboard players add !Powerups Options 1
execute if entity @a[tag=Scan_villager,scores={Sneaking=1..}] run scoreboard players remove !Powerups Options 2

execute if score !Powerups Options matches 7.. run scoreboard players set !Powerups Options 1
execute if score !Powerups Options matches 0 run scoreboard players set !Powerups Options 6


scoreboard players set !Change_option Options 30

# Playsounds
execute as @a[tag=Scan_villager] at @s run playsound minecraft:block.stone_button.click_on master @s

# Titles
title @a[tag=Scan_villager] times 0 20 10
title @a[tag=Scan_villager] title {"text":""}

execute if score !Powerups Options matches 1 run title @a[tag=Scan_villager] subtitle ["",{"text":"Powerups will be selected ","color":"yellow"},{"text":"randomly","color":"gold"},{"text":"!","color":"yellow"}]
execute if score !Powerups Options matches 2 run title @a[tag=Scan_villager] subtitle ["",{"text":"Powerups will spawn every ","color":"yellow"},{"text":"10 seconds","color":"dark_green"},{"text":"!","color":"yellow"}]
execute if score !Powerups Options matches 3 run title @a[tag=Scan_villager] subtitle ["",{"text":"Powerups will spawn every ","color":"yellow"},{"text":"30 seconds","color":"green"},{"text":"!","color":"yellow"}]
execute if score !Powerups Options matches 4 run title @a[tag=Scan_villager] subtitle ["",{"text":"Powerups will spawn every ","color":"yellow"},{"text":"1 minute","color":"yellow"},{"text":"!","color":"yellow"}]
execute if score !Powerups Options matches 5 run title @a[tag=Scan_villager] subtitle ["",{"text":"Powerups will spawn every ","color":"yellow"},{"text":"2 minutes","color":"gold"},{"text":"!","color":"yellow"}]
execute if score !Powerups Options matches 6 run title @a[tag=Scan_villager] subtitle ["",{"text":"Powerups are now ","color":"yellow"},{"text":"disabled","color":"red"},{"text":"!","color":"yellow"}]

# Villager update
execute if score !Powerups Options matches 1 run data merge entity @e[type=minecraft:area_effect_cloud,tag=option_powerups,limit=1] {CustomName:'[{"text":"["},{"text":" Random ","color":"dark_purple","bold":"true"},{"text":"]"}]'}
execute if score !Powerups Options matches 2 run data merge entity @e[type=minecraft:area_effect_cloud,tag=option_powerups,limit=1] {CustomName:'[{"text":"["},{"text":" 10 seconds ","color":"dark_green","bold":"true"},{"text":"]"}]'}
execute if score !Powerups Options matches 3 run data merge entity @e[type=minecraft:area_effect_cloud,tag=option_powerups,limit=1] {CustomName:'[{"text":"["},{"text":" 30 seconds ","color":"green","bold":"true"},{"text":"]"}]'}
execute if score !Powerups Options matches 4 run data merge entity @e[type=minecraft:area_effect_cloud,tag=option_powerups,limit=1] {CustomName:'[{"text":"["},{"text":" 1 minute ","color":"yellow","bold":"true"},{"text":"]"}]'}
execute if score !Powerups Options matches 5 run data merge entity @e[type=minecraft:area_effect_cloud,tag=option_powerups,limit=1] {CustomName:'[{"text":"["},{"text":" 2 minutes ","color":"gold","bold":"true"},{"text":"]"}]'}
execute if score !Powerups Options matches 6 run data merge entity @e[type=minecraft:area_effect_cloud,tag=option_powerups,limit=1] {CustomName:'[{"text":"["},{"text":" Disabled ","color":"red","bold":"true"},{"text":"]"}]'}

# Update scoreboard
function main:scoreboard/display
