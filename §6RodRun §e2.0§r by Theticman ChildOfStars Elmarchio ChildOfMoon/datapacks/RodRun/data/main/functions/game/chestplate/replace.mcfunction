# Clear previous 
execute if entity @s[tag=MapMaker] run function main:game/chestplate/set_mapmaker
execute if entity @s[tag=Friend] run function main:game/chestplate/set_friend
execute if entity @s[tag=Mojang] run function main:game/chestplate/set_mojang
execute if entity @s[tag=Tester] run function main:game/chestplate/set_tester
execute if entity @s[tag=Player] run function main:game/chestplate/set_player
effect give @s minecraft:regeneration 5 255 true