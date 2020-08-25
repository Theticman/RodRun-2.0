# Merge
data merge entity @e[type=minecraft:armor_stand,tag=options_information_1,limit=1] {CustomName:'{"text":"§6§nTime§e: Select the in game time."}',CustomNameVisible:1b,Tags:["options_information_1","options_information","information"]}
data merge entity @e[type=minecraft:armor_stand,tag=options_information_2,limit=1] {CustomNameVisible:0b,Tags:["options_information_2","options_information","information"]}
data merge entity @e[type=minecraft:armor_stand,tag=options_information_3,limit=1] {CustomName:'{"text":"§6§nSettings§e: §5Random§e, §6Day§e, §6Noon§e"}',CustomNameVisible:1b,Tags:["options_information_3","options_information","information"]}
data merge entity @e[type=minecraft:armor_stand,tag=options_information_4,limit=1] {CustomName:'{"text":"§dNight§e and §5Midnight"}',CustomNameVisible:1b,Tags:["options_information_4","options_information","information"]}
data merge entity @e[type=minecraft:armor_stand,tag=options_information_5,limit=1] {CustomNameVisible:0b,Tags:["options_information_5","options_information"]}
data merge entity @e[type=minecraft:armor_stand,tag=options_information_page,limit=1] {CustomName:'{"text":"§e(§68§e/9)"}'}

# Next page start cooldown
function main:lobby/informations/options/page_start_cooldown
