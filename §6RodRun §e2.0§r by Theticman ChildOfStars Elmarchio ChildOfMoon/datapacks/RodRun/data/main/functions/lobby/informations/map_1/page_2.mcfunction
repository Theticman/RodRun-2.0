# Merge
data merge entity @e[type=minecraft:armor_stand,tag=map_1_information_1,limit=1] {CustomNameVisible:0b,Tags:["map_1_information_1","map_1_information"]}
data merge entity @e[type=minecraft:armor_stand,tag=map_1_information_2,limit=1] {CustomName:'{"text":"§6§nMap§e: §7Warehouse"}',CustomNameVisible:1b,Tags:["map_1_information_2","map_1_information","information"]}
data merge entity @e[type=minecraft:armor_stand,tag=map_1_information_3,limit=1] {CustomName:'{"text":"§6§nSize§e: §eMedium"}',CustomNameVisible:1b,Tags:["map_1_information_3","map_1_information","information"]}
data merge entity @e[type=minecraft:armor_stand,tag=map_1_information_4,limit=1] {CustomName:'{"text":"§6§nFeature§e: Portals, usable §6every §cfive §6seconds§e."}',CustomNameVisible:1b,Tags:["map_1_information_4","map_1_information","information"]}
data merge entity @e[type=minecraft:armor_stand,tag=map_1_information_5,limit=1] {CustomName:'{"text":"§eStanding on §alime carpets §egive you §aJump Boost§e."}',CustomNameVisible:1b,Tags:["map_1_information_5","map_1_information","information"]}
data merge entity @e[type=minecraft:armor_stand,tag=map_1_information_page,limit=1] {CustomName:'{"text":"§e(§62§e/8)"}'}

# Next page start cooldown
function main:lobby/informations/map_1/page_start_cooldown
