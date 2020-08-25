# Remove barrier
fill -11 14 -44 -9 15 -44 air

# Place sign
setblock -11 14 -45 minecraft:oak_wall_sign[facing=south]{Text1:'{"text":"-==oOo==-","clickEvent":{"action":"run_command","value":"function main:lobby/boat/boat_race_init"},"color":"dark_gray"}',Text2:'{"text":"Start race","color":"yellow"}',Text3:'["",{"text":"(","color":"gray"},{"text":"Click","color":"white"},{"text":")","color":"gray"}]',Text4:'{"text":"-==oOo==-","color":"dark_gray"}'}
setblock -9 14 -45 minecraft:oak_wall_sign[facing=south]{Text1:'{"text":"-==oOo==-","clickEvent":{"action":"run_command","value":"function main:lobby/boat/boat_race_init"},"color":"dark_gray"}',Text2:'{"text":"Start race","color":"yellow"}',Text3:'["",{"text":"(","color":"gray"},{"text":"Click","color":"white"},{"text":")","color":"gray"}]',Text4:'{"text":"-==oOo==-","color":"dark_gray"}'}