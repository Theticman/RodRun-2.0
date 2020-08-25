# Hide
data merge entity @e[type=armor_stand,tag=boat_race_podium_first,limit=1] {CustomNameVisible:0b}
data merge entity @e[type=armor_stand,tag=boat_race_podium_second,limit=1] {CustomNameVisible:0b}
data merge entity @e[type=armor_stand,tag=boat_race_podium_third,limit=1] {CustomNameVisible:0b}

# Display
execute if entity @a[x=-11,y=14,z=-42,distance=..5] run data merge entity @e[type=armor_stand,tag=boat_race_podium_first,limit=1] {CustomNameVisible:1b}
execute if entity @a[x=-11,y=14,z=-42,distance=..5] run data merge entity @e[type=armor_stand,tag=boat_race_podium_second,limit=1] {CustomNameVisible:1b}
execute if entity @a[x=-11,y=14,z=-42,distance=..5] run data merge entity @e[type=armor_stand,tag=boat_race_podium_third,limit=1] {CustomNameVisible:1b}