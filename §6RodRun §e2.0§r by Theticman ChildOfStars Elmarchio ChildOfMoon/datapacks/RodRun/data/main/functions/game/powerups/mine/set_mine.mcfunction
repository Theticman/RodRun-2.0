# Summon armor stands main
execute at @s run summon minecraft:armor_stand ~ ~ ~ {Small:1b,Invisible:1b,NoBasePlate:1b,Tags:["Need_mine_id"],DisabledSlots:4144959,CustomName:'{"text":"game_mine"}'}

# Summon display
execute at @e[name=game_mine,type=minecraft:armor_stand,tag=Need_mine_id] run summon minecraft:armor_stand ~ ~-.88 ~ {Marker:1b,NoGravity:1b,Small:1b,Invisible:1b,NoBasePlate:1b,Tags:["Need_mine_id"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b}],CustomName:'{"text":"game_mine_button"}'}
execute at @e[name=game_mine,type=minecraft:armor_stand,tag=Need_mine_id] run summon minecraft:armor_stand ~ ~-1.075 ~ {Marker:1b,NoGravity:1b,Small:1b,Invisible:1b,NoBasePlate:1b,Tags:["Need_mine_id"],DisabledSlots:4144959,Rotation:[45f],ArmorItems:[{},{},{},{id:"minecraft:tnt",Count:1b}],CustomName:'{"text":"game_mine_tnt"}'}

# Set mine id
function main:game/powerups/mine/mine_id