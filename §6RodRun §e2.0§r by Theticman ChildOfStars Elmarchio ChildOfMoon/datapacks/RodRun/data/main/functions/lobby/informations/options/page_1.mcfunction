# Merge
data merge entity @e[type=minecraft:armor_stand,tag=options_information_1,limit=1] {CustomName:'{"text":"§eThe options room is §6located §eat the back of"}',CustomNameVisible:1b,Tags:["options_information_1","options_information","information"]}
data merge entity @e[type=minecraft:armor_stand,tag=options_information_2,limit=1] {CustomName:'{"text":"§ethe lobby near the §6MapMaker §elounge."}',CustomNameVisible:1b,Tags:["options_information_2","options_information","information"]}
data merge entity @e[type=minecraft:armor_stand,tag=options_information_3,limit=1] {CustomName:'{"text":"§6Interact §ewith the villager to modify"}',CustomNameVisible:1b,Tags:["options_information_3","options_information","information"]}
data merge entity @e[type=minecraft:armor_stand,tag=options_information_4,limit=1] {CustomName:'{"text":"§ethe game settings. Select §5Random"}',CustomNameVisible:1b,Tags:["options_information_4","options_information","information"]}
data merge entity @e[type=minecraft:armor_stand,tag=options_information_5,limit=1] {CustomName:'{"text":"§eand these settings will be selected §6randomly§e."}',CustomNameVisible:1b,Tags:["options_information_5","options_information","information"]}
data merge entity @e[type=minecraft:armor_stand,tag=options_information_page,limit=1] {CustomName:'{"text":"§e(§61§e/9)"}'}

# Next page start cooldown
function main:lobby/informations/options/page_start_cooldown
