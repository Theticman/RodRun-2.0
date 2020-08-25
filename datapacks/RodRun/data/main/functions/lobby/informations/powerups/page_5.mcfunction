# Merge
data merge entity @e[type=minecraft:armor_stand,tag=powerups_information_1,limit=1] {CustomName:'{"text":"§6§nShield§e: This powerup will give you"}',CustomNameVisible:1b,Tags:["powerups_information_1","powerups_information","information"]}
data merge entity @e[type=minecraft:armor_stand,tag=powerups_information_2,limit=1] {CustomName:'{"text":"§einvincibility for five seconds."}',CustomNameVisible:1b,Tags:["powerups_information_2","powerups_information","information"]}
data merge entity @e[type=minecraft:armor_stand,tag=powerups_information_3,limit=1] {CustomNameVisible:0b,Tags:["powerups_information_3","powerups_information"]}
data merge entity @e[type=minecraft:armor_stand,tag=powerups_information_4,limit=1] {CustomName:'{"text":"§6§nSpawning ratio§e: §e15%"}',CustomNameVisible:1b,Tags:["powerups_information_4","powerups_information","information"]}
data merge entity @e[type=minecraft:armor_stand,tag=powerups_information_5,limit=1] {CustomNameVisible:0b,Tags:["powerups_information_5","powerups_information"]}
data merge entity @e[type=minecraft:armor_stand,tag=powerups_information_page,limit=1] {CustomName:'{"text":"§e(§65§e/6)"}'}

# Item
kill @e[type=item,tag=info_powerups_item]
summon minecraft:item 90 28.2 -110 {NoGravity:1b,PickupDelay:32767,Tags:["info_powerups_item"],Item:{id:"minecraft:chainmail_chestplate",Count:1b},Age:-32768}

# Next page start cooldown
function main:lobby/informations/powerups/page_start_cooldown
