# Merge
data merge entity @e[type=minecraft:armor_stand,tag=powerups_information_1,limit=1] {CustomNameVisible:0b,Tags:["powerups_information_1","powerups_information"]}
data merge entity @e[type=minecraft:armor_stand,tag=powerups_information_2,limit=1] {CustomName:'{"text":"§eThere are §65 §edifferent types of §6powerups§e:"}',CustomNameVisible:1b,Tags:["powerups_information_2","powerups_information","information"]}
data merge entity @e[type=minecraft:armor_stand,tag=powerups_information_3,limit=1] {CustomName:'{"text":"§euse them strategically to get an §6advantage"}',CustomNameVisible:1b,Tags:["powerups_information_3","powerups_information","information"]}
data merge entity @e[type=minecraft:armor_stand,tag=powerups_information_4,limit=1] {CustomName:'{"text":"§eor to mess with your opponents."}',CustomNameVisible:1b,Tags:["powerups_information_4","powerups_information","information"]}
data merge entity @e[type=minecraft:armor_stand,tag=powerups_information_5,limit=1] {CustomNameVisible:0b,Tags:["powerups_information_5","powerups_information"]}
data merge entity @e[type=minecraft:armor_stand,tag=powerups_information_page,limit=1] {CustomName:'{"text":"§e(§61§e/6)"}'}

# Item
kill @e[type=item,tag=info_powerups_item]

# Next page start cooldown
function main:lobby/informations/powerups/page_start_cooldown