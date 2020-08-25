# Playsound
execute at @s run playsound minecraft:item.honey_bottle.drink master @s ~ ~ ~

# Give speed
effect give @s minecraft:speed 30 2 true

# Kill 
kill @e[type=item,nbt={Item:{tag:{Tags:["cup_of_coffee"]}}}]