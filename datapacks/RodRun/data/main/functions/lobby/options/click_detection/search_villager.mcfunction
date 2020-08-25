# Villager ?
scoreboard players add !Count Villager_search 1

execute as @e[type=villager,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run function main:lobby/options/click_detection/villager_found

execute if score !Count Villager_search matches 1..30 positioned ^ ^ ^.5 run function main:lobby/options/click_detection/search_villager