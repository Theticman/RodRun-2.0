# Add Tags
tag @s add Scan_villager

# Start raycast
scoreboard players set !Count Villager_search 0
execute as @s at @s anchored eyes run function main:lobby/options/click_detection/search_villager

# Tag remove
tag @s remove Scan_villager
