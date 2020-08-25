# Replace
execute as @a[tag=In_game_playing] run function main:game/chestplate/init_replace

# Kill chestplate
kill @e[type=item,nbt={Item:{id:"minecraft:leather_chestplate"}}]