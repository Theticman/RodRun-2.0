# Merge
data merge entity @e[type=minecraft:armor_stand,tag=options_information_1,limit=1] {CustomName:'{"text":"§6§nModes§e: Select the game mode"}',CustomNameVisible:1b,Tags:["options_information_1","options_information","information"]}
data merge entity @e[type=minecraft:armor_stand,tag=options_information_2,limit=1] {CustomName:'{"text":"§eyou want to play."}',CustomNameVisible:1b,Tags:["options_information_2","options_information","information"]}
data merge entity @e[type=minecraft:armor_stand,tag=options_information_3,limit=1] {CustomNameVisible:0b,Tags:["options_information_3","options_information"]}
data merge entity @e[type=minecraft:armor_stand,tag=options_information_4,limit=1] {CustomName:'{"text":"§6§nSettings§e: §6FFA§e and §6Teams"}',CustomNameVisible:1b,Tags:["options_information_4","options_information","information"]}
data merge entity @e[type=minecraft:armor_stand,tag=options_information_5,limit=1] {CustomNameVisible:0b,Tags:["options_information_5","options_information"]}
data merge entity @e[type=minecraft:armor_stand,tag=options_information_page,limit=1] {CustomName:'{"text":"§e(§69§e/9)"}'}

# Next page start cooldown
function main:lobby/informations/options/page_start_cooldown
