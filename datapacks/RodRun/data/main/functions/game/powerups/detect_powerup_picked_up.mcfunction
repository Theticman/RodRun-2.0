# Tags add
tag @s[nbt={Inventory:[{id:"minecraft:totem_of_undying",tag:{Tags:["powerup_live"]}}]}] add Give_powerup_live
tag @s[nbt={Inventory:[{id:"minecraft:lantern",tag:{Tags:["powerup_glowing"]}}]}] add Give_powerup_glowing
tag @s[nbt={Inventory:[{id:"minecraft:chainmail_chestplate",tag:{Tags:["powerup_shield"]}}]}] add Give_powerup_shield
tag @s[nbt={Inventory:[{id:"minecraft:tnt",tag:{Tags:["powerup_mine"]}}]}] add Give_powerup_mine
tag @s[nbt={Inventory:[{id:"minecraft:sugar",tag:{Tags:["powerup_speed"]}}]}] add Give_powerup_speed

# Give powerups
execute as @s[tag=Give_powerup_live] run function main:game/powerups/give_live
execute as @s[tag=Give_powerup_glowing] run function main:game/powerups/give_glowing
execute as @s[tag=Give_powerup_shield] run function main:game/powerups/give_shield
execute as @s[tag=Give_powerup_mine] run function main:game/powerups/give_mine
execute as @s[tag=Give_powerup_speed] run function main:game/powerups/give_speed