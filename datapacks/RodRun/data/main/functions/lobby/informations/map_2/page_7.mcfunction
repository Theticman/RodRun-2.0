# Merge
data merge entity @e[type=minecraft:armor_stand,tag=map_2_information_1,limit=1] {CustomNameVisible:0b,Tags:["map_2_information_1","map_2_information"]}
data merge entity @e[type=minecraft:armor_stand,tag=map_2_information_2,limit=1] {CustomName:'{"text":"§6§nMap§e: §9Pa§fr§cis"}',CustomNameVisible:1b,Tags:["map_2_information_2","map_2_information","information"]}
data merge entity @e[type=minecraft:armor_stand,tag=map_2_information_3,limit=1] {CustomName:'{"text":"§6§nSize§e: §cBig"}',CustomNameVisible:1b,Tags:["map_2_information_3","map_2_information","information"]}
data merge entity @e[type=minecraft:armor_stand,tag=map_2_information_4,limit=1] {CustomName:'{"text":"§6§nFeature§e: Portals, usable §6every §cfive §6seconds§e."}',CustomNameVisible:1b,Tags:["map_2_information_4","map_2_information","information"]}
data merge entity @e[type=minecraft:armor_stand,tag=map_2_information_5,limit=1] {CustomName:'{"text":"§9Swimming §ein the §ffountains §eis §cprohibited§e!"}',CustomNameVisible:1b,Tags:["map_2_information_5","map_2_information"]}
data merge entity @e[type=minecraft:armor_stand,tag=map_2_information_page,limit=1] {CustomName:'{"text":"§e(§67§e/7)"}'}

# Next page start cooldown
function main:lobby/informations/map_2/page_start_cooldown
