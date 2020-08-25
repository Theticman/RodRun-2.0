# Tags add
tag @s[scores={Powerup_speed=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{Tags:["speed_carrot_on_a_stick"]}}]}] add Used_powerup_speed
tag @s[scores={Powerup_glow=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{Tags:["glow_carrot_on_a_stick"]}}]}] add Used_powerup_glowing
tag @s[scores={Powerup_shield=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{Tags:["shield_carrot_on_a_stick"]}}]}] add Used_powerup_shield
tag @s[scores={Powerup_mine=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{Tags:["mine_carrot_on_a_stick"]}}]}] add Used_powerup_mine
scoreboard players reset @s Use_powerup

# No powerups to be used
execute unless entity @s[tag=Used_powerup_speed] unless entity @s[tag=Used_powerup_glowing] unless entity @s[tag=Used_powerup_shield] unless entity @s[tag=Used_powerup_mine] run tag @s add No_powerups
execute at @s[tag=No_powerups] run playsound minecraft:block.anvil.land master @s ~ ~ ~ 1 2

# Used powerups
execute as @s[tag=Used_powerup_speed] run function main:game/powerups/used_speed
execute as @s[tag=Used_powerup_glowing] run function main:game/powerups/used_glow
execute as @s[tag=Used_powerup_shield] run function main:game/powerups/used_shield
execute as @s[tag=Used_powerup_mine] run function main:game/powerups/used_mine