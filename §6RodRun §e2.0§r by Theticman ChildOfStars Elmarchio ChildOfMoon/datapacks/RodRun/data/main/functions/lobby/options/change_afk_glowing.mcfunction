# AFK_glowing options
# Update score
scoreboard players add !AFK_glowing Options 1
execute if entity @a[tag=Scan_villager,scores={Sneaking=1..}] run scoreboard players remove !AFK_glowing Options 2

execute if score !AFK_glowing Options matches 4.. run scoreboard players set !AFK_glowing Options 1
execute if score !AFK_glowing Options matches 0 run scoreboard players set !AFK_glowing Options 3

scoreboard players set !Change_option Options 30

# Playsounds
execute as @a[tag=Scan_villager] at @s run playsound minecraft:block.stone_button.click_on master @s

# Titles
title @a[tag=Scan_villager] times 0 20 10
title @a[tag=Scan_villager] title {"text":""}

execute if score !AFK_glowing Options matches 1 run title @a[tag=Scan_villager] subtitle ["",{"text":"AFK glowing will be selected ","color":"yellow"},{"text":"randomly","color":"gold"},{"text":"!","color":"yellow"}]
execute if score !AFK_glowing Options matches 2 run title @a[tag=Scan_villager] subtitle ["",{"text":"AFK glowing is now ","color":"yellow"},{"text":"on","color":"green"},{"text":"!","color":"yellow"}]
execute if score !AFK_glowing Options matches 3 run title @a[tag=Scan_villager] subtitle ["",{"text":"AFK glowing is now ","color":"yellow"},{"text":"off","color":"red"},{"text":"!","color":"yellow"}]

# Villager update
execute if score !AFK_glowing Options matches 1 run data merge entity @e[type=minecraft:area_effect_cloud,tag=option_afk_glowing,limit=1] {CustomName:'[{"text":"["},{"text":" Random ","color":"dark_purple","bold":"true"},{"text":"]"}]'}
execute if score !AFK_glowing Options matches 2 run data merge entity @e[type=minecraft:area_effect_cloud,tag=option_afk_glowing,limit=1] {CustomName:'[{"text":"["},{"text":" On ","color":"green","bold":"true"},{"text":"]"}]'}
execute if score !AFK_glowing Options matches 3 run data merge entity @e[type=minecraft:area_effect_cloud,tag=option_afk_glowing,limit=1] {CustomName:'[{"text":"["},{"text":" Off ","color":"red","bold":"true"},{"text":"]"}]'}
