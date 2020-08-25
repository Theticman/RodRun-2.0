# Merge
data merge entity @e[type=minecraft:armor_stand,tag=powerups_information_1,limit=1] {CustomName:'{"text":"§6§nMine§e: This powerup will set a mine at your position."}',CustomNameVisible:1b,Tags:["powerups_information_1","powerups_information","information"]}
data merge entity @e[type=minecraft:armor_stand,tag=powerups_information_2,limit=1] {CustomName:'{"text":"§eMines have a killing radius of one block"}',CustomNameVisible:1b,Tags:["powerups_information_2","powerups_information","information"]}
data merge entity @e[type=minecraft:armor_stand,tag=powerups_information_3,limit=1] {CustomName:'{"text":"§eand last for two minutes!"}',CustomNameVisible:1b,Tags:["powerups_information_3","powerups_information","information"]}
data merge entity @e[type=minecraft:armor_stand,tag=powerups_information_4,limit=1] {CustomName:'{"text":"§6§nSpawning ratio§e: §e23%"}',CustomNameVisible:1b,Tags:["powerups_information_4","powerups_information","information"]}
data merge entity @e[type=minecraft:armor_stand,tag=powerups_information_5,limit=1] {CustomNameVisible:0b,Tags:["powerups_information_5","powerups_information"]}
data merge entity @e[type=minecraft:armor_stand,tag=powerups_information_page,limit=1] {CustomName:'{"text":"§e(§66§e/6)"}'}

# Item
kill @e[type=item,tag=info_powerups_item]
summon minecraft:item 90 28.2 -110 {NoGravity:1b,PickupDelay:32767,Tags:["info_powerups_item"],Item:{id:"minecraft:tnt",Count:1b},Age:-32768}

# Next page start cooldown
function main:lobby/informations/powerups/page_start_cooldown
