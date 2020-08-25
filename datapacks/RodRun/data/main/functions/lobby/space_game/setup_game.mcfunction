# Teleport player
teleport @s 27 16 -20 -90 -15

# Place wall
fill 26 18 -25 26 17 -16 minecraft:barrier replace air
fill 26 16 -25 26 16 -16 jungle_fence replace air

# Prevent jumping
fill 27 18 -19 27 18 -21 minecraft:barrier

# Remove starting sign
setblock 28 16 -20 air destroy

# Show instructions
data merge block 28 16 -20 {Text1:'{"text":"-==oOo==-","color":"dark_gray"}',Text2:'{"text":"Play game","color":"yellow"}',Text3:'["",{"text":"(","color":"gray"},{"text":"Click","color":"white"},{"text":")","color":"gray"}]',Text4:'{"text":"-==oOo==","color":"dark_gray"}'}

# Start sequence
scoreboard players set !State Space_game 1