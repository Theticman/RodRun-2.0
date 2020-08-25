scoreboard players add @e[name=kill_effect_lever,type=armor_stand] Kill_effect 1
scoreboard players add @e[name=game_kill_effect_lever_killer_holder,type=armor_stand] Kill_effect 1
scoreboard players add @e[name=game_kill_effect_lever_victim_holder,type=armor_stand] Kill_effect 1
scoreboard players add @e[name=kill_effect_lever_lever,type=falling_block] Kill_effect 1

# Victim no
execute as @e[name=game_kill_effect_lever_victim_holder,type=armor_stand,scores={Kill_effect=1}] run data merge entity @s {Pose:{Head:[0f,20f,0f]}}
execute as @e[name=game_kill_effect_lever_victim_holder,type=armor_stand,scores={Kill_effect=4}] run data merge entity @s {Pose:{Head:[0f,0f,0f]}}
execute as @e[name=game_kill_effect_lever_victim_holder,type=armor_stand,scores={Kill_effect=7}] run data merge entity @s {Pose:{Head:[0f,-20f,0f]}}
execute as @e[name=game_kill_effect_lever_victim_holder,type=armor_stand,scores={Kill_effect=10}] run data merge entity @s {Pose:{Head:[0f,0f,0f]}}
execute as @e[name=game_kill_effect_lever_victim_holder,type=armor_stand,scores={Kill_effect=13}] run data merge entity @s {Pose:{Head:[0f,20f,0f]}}
execute as @e[name=game_kill_effect_lever_victim_holder,type=armor_stand,scores={Kill_effect=16}] run data merge entity @s {Pose:{Head:[0f,0f,0f]}}
execute as @e[name=game_kill_effect_lever_victim_holder,type=armor_stand,scores={Kill_effect=19}] run data merge entity @s {Pose:{Head:[0f,-20f,0f]}}
execute as @e[name=game_kill_effect_lever_victim_holder,type=armor_stand,scores={Kill_effect=22}] run data merge entity @s {Pose:{Head:[0f,0f,0f]}}
execute as @e[name=game_kill_effect_lever_victim_holder,type=armor_stand,scores={Kill_effect=25}] run data merge entity @s {Pose:{Head:[0f,20f,0f]}}
execute as @e[name=game_kill_effect_lever_victim_holder,type=armor_stand,scores={Kill_effect=28}] run data merge entity @s {Pose:{Head:[0f,0f,0f]}}
execute as @e[name=game_kill_effect_lever_victim_holder,type=armor_stand,scores={Kill_effect=31}] run data merge entity @s {Pose:{Head:[0f,-20f,0f]}}
execute as @e[name=game_kill_effect_lever_victim_holder,type=armor_stand,scores={Kill_effect=34}] run data merge entity @s {Pose:{Head:[0f,0f,0f]}}
execute as @e[name=game_kill_effect_lever_victim_holder,type=armor_stand,scores={Kill_effect=37}] run data merge entity @s {Pose:{Head:[0f,20f,0f]}}
execute as @e[name=game_kill_effect_lever_victim_holder,type=armor_stand,scores={Kill_effect=40}] run data merge entity @s {Pose:{Head:[0f,0f,0f]}}
execute as @e[name=game_kill_effect_lever_victim_holder,type=armor_stand,scores={Kill_effect=43}] run data merge entity @s {Pose:{Head:[0f,-20f,0f]}}
execute as @e[name=game_kill_effect_lever_victim_holder,type=armor_stand,scores={Kill_effect=46}] run data merge entity @s {Pose:{Head:[0f,0f,0f]}}
execute as @e[name=game_kill_effect_lever_victim_holder,type=armor_stand,scores={Kill_effect=49}] run data merge entity @s {Pose:{Head:[0f,20f,0f]}}
execute as @e[name=game_kill_effect_lever_victim_holder,type=armor_stand,scores={Kill_effect=51}] run data merge entity @s {Pose:{Head:[0f,0f,0f]}}
execute as @e[name=game_kill_effect_lever_victim_holder,type=armor_stand,scores={Kill_effect=54}] run data merge entity @s {Pose:{Head:[0f,-20f,0f]}}
execute as @e[name=game_kill_effect_lever_victim_holder,type=armor_stand,scores={Kill_effect=57}] run data merge entity @s {Pose:{Head:[0f,0f,0f]}}

# Kill yes
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=1}] run data merge entity @s {Pose:{Head:[20f,0f,0f]}}
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=4}] run data merge entity @s {Pose:{Head:[0f,0f,0f]}}
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=7}] run data merge entity @s {Pose:{Head:[-20f,0f,0f]}}
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=10}] run data merge entity @s {Pose:{Head:[0f,0f,0f]}}
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=13}] run data merge entity @s {Pose:{Head:[20f,0f,0f]}}
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=16}] run data merge entity @s {Pose:{Head:[0f,0f,0f]}}
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=19}] run data merge entity @s {Pose:{Head:[-20f,0f,0f]}}
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=22}] run data merge entity @s {Pose:{Head:[0f,0f,0f]}}
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=25}] run data merge entity @s {Pose:{Head:[20f,0f,0f]}}
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=28}] run data merge entity @s {Pose:{Head:[0f,0f,0f]}}
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=31}] run data merge entity @s {Pose:{Head:[-20f,0f,0f]}}
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=34}] run data merge entity @s {Pose:{Head:[0f,0f,0f]}}
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=37}] run data merge entity @s {Pose:{Head:[20f,0f,0f]}}
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=40}] run data merge entity @s {Pose:{Head:[0f,0f,0f]}}
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=43}] run data merge entity @s {Pose:{Head:[-20f,0f,0f]}}
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=46}] run data merge entity @s {Pose:{Head:[0f,0f,0f]}}
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=49}] run data merge entity @s {Pose:{Head:[20f,0f,0f]}}
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=51}] run data merge entity @s {Pose:{Head:[0f,0f,0f]}}
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=54}] run data merge entity @s {Pose:{Head:[-20f,0f,0f]}}
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=57}] run data merge entity @s {Pose:{Head:[0f,0f,0f]}}

# Teleport Victim down
execute as @e[name=game_kill_effect_lever_victim_holder,type=armor_stand,scores={Kill_effect=20}] at @s run teleport @s ~ ~-0.05 ~
execute as @e[name=game_kill_effect_lever_victim_holder,type=armor_stand,scores={Kill_effect=40}] at @s run teleport @s ~ ~-0.05 ~
execute as @e[name=game_kill_effect_lever_victim_holder,type=armor_stand,scores={Kill_effect=50}] at @s run teleport @s ~ ~-0.05 ~
execute as @e[name=game_kill_effect_lever_victim_holder,type=armor_stand,scores={Kill_effect=60}] at @s run teleport @s ~ ~-0.05 ~
execute as @e[name=game_kill_effect_lever_victim_holder,type=armor_stand,scores={Kill_effect=70}] at @s run teleport @s ~ ~-0.05 ~
execute as @e[name=game_kill_effect_lever_victim_holder,type=armor_stand,scores={Kill_effect=80}] at @s run teleport @s ~ ~-0.05 ~
execute as @e[name=game_kill_effect_lever_victim_holder,type=armor_stand,scores={Kill_effect=85}] at @s run teleport @s ~ ~-0.05 ~
execute as @e[name=game_kill_effect_lever_victim_holder,type=armor_stand,scores={Kill_effect=90}] at @s run teleport @s ~ ~-0.05 ~
execute as @e[name=game_kill_effect_lever_victim_holder,type=armor_stand,scores={Kill_effect=95}] at @s run teleport @s ~ ~-0.05 ~
execute as @e[name=game_kill_effect_lever_victim_holder,type=armor_stand,scores={Kill_effect=100}] at @s run teleport @s ~ ~-0.05 ~
execute as @e[name=game_kill_effect_lever_victim_holder,type=armor_stand,scores={Kill_effect=105}] at @s run teleport @s ~ ~-0.05 ~
execute as @e[name=game_kill_effect_lever_victim_holder,type=armor_stand,scores={Kill_effect=110}] at @s run teleport @s ~ ~-0.05 ~
execute as @e[name=game_kill_effect_lever_victim_holder,type=armor_stand,scores={Kill_effect=113}] at @s run teleport @s ~ ~-0.05 ~
execute as @e[name=game_kill_effect_lever_victim_holder,type=armor_stand,scores={Kill_effect=116}] at @s run teleport @s ~ ~-0.05 ~
execute as @e[name=game_kill_effect_lever_victim_holder,type=armor_stand,scores={Kill_effect=119}] at @s run teleport @s ~ ~-0.05 ~
execute as @e[name=game_kill_effect_lever_victim_holder,type=armor_stand,scores={Kill_effect=122}] at @s run teleport @s ~ ~-0.05 ~
execute as @e[name=game_kill_effect_lever_victim_holder,type=armor_stand,scores={Kill_effect=125}] at @s run teleport @s ~ ~-0.05 ~
execute as @e[name=game_kill_effect_lever_victim_holder,type=armor_stand,scores={Kill_effect=128}] at @s run teleport @s ~ ~-0.05 ~
execute as @e[name=game_kill_effect_lever_victim_holder,type=armor_stand,scores={Kill_effect=131}] at @s run teleport @s ~ ~-0.05 ~
execute as @e[name=game_kill_effect_lever_victim_holder,type=armor_stand,scores={Kill_effect=134}] at @s run teleport @s ~ ~-0.05 ~
execute as @e[name=game_kill_effect_lever_victim_holder,type=armor_stand,scores={Kill_effect=137}] at @s run teleport @s ~ ~-0.05 ~
execute as @e[name=game_kill_effect_lever_victim_holder,type=armor_stand,scores={Kill_effect=140}] at @s run teleport @s ~ ~-0.05 ~
execute as @e[name=game_kill_effect_lever_victim_holder,type=armor_stand,scores={Kill_effect=143}] at @s run teleport @s ~ ~-0.05 ~
execute as @e[name=game_kill_effect_lever_victim_holder,type=armor_stand,scores={Kill_effect=146}] at @s run teleport @s ~ ~-0.05 ~
execute as @e[name=game_kill_effect_lever_victim_holder,type=armor_stand,scores={Kill_effect=149}] at @s run teleport @s ~ ~-0.05 ~
execute as @e[name=game_kill_effect_lever_victim_holder,type=armor_stand,scores={Kill_effect=152}] at @s run teleport @s ~ ~-0.05 ~
execute as @e[name=game_kill_effect_lever_victim_holder,type=armor_stand,scores={Kill_effect=155}] at @s run teleport @s ~ ~-0.05 ~
execute as @e[name=game_kill_effect_lever_victim_holder,type=armor_stand,scores={Kill_effect=158}] at @s run teleport @s ~ ~-0.05 ~
execute as @e[name=game_kill_effect_lever_victim_holder,type=armor_stand,scores={Kill_effect=161}] at @s run teleport @s ~ ~-0.05 ~

# Lever playsounds
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=20}] at @s run playsound minecraft:block.lever.click master @a
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=40}] at @s run playsound minecraft:block.lever.click master @a
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=50}] at @s run playsound minecraft:block.lever.click master @a
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=60}] at @s run playsound minecraft:block.lever.click master @a
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=70}] at @s run playsound minecraft:block.lever.click master @a
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=80}] at @s run playsound minecraft:block.lever.click master @a
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=85}] at @s run playsound minecraft:block.lever.click master @a
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=90}] at @s run playsound minecraft:block.lever.click master @a
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=95}] at @s run playsound minecraft:block.lever.click master @a
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=100}] at @s run playsound minecraft:block.lever.click master @a
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=105}] at @s run playsound minecraft:block.lever.click master @a
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=110}] at @s run playsound minecraft:block.lever.click master @a
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=113}] at @s run playsound minecraft:block.lever.click master @a
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=116}] at @s run playsound minecraft:block.lever.click master @a
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=119}] at @s run playsound minecraft:block.lever.click master @a
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=122}] at @s run playsound minecraft:block.lever.click master @a
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=125}] at @s run playsound minecraft:block.lever.click master @a
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=128}] at @s run playsound minecraft:block.lever.click master @a
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=131}] at @s run playsound minecraft:block.lever.click master @a
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=134}] at @s run playsound minecraft:block.lever.click master @a
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=137}] at @s run playsound minecraft:block.lever.click master @a
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=140}] at @s run playsound minecraft:block.lever.click master @a
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=143}] at @s run playsound minecraft:block.lever.click master @a
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=146}] at @s run playsound minecraft:block.lever.click master @a
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=149}] at @s run playsound minecraft:block.lever.click master @a
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=152}] at @s run playsound minecraft:block.lever.click master @a
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=155}] at @s run playsound minecraft:block.lever.click master @a
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=158}] at @s run playsound minecraft:block.lever.click master @a
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=161}] at @s run playsound minecraft:block.lever.click master @a

# Activate lever
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=20}] as @e[name=kill_effect_lever_lever,type=falling_block,scores={Kill_effect=20}] at @s run summon minecraft:falling_block ~ ~ ~ {CustomName:"{\"text\":\"kill_effect_lever_lever\"}",BlockState:{Name:"minecraft:lever",Properties:{facing:"north",face:"floor"}},NoGravity:1b,Time:1,DropItem:0b}
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=20}] as @e[name=kill_effect_lever_lever,type=falling_block,scores={Kill_effect=20}] run kill @s
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=40}] as @e[name=kill_effect_lever_lever,type=falling_block,scores={Kill_effect=20}] at @s run summon minecraft:falling_block ~ ~ ~ {CustomName:"{\"text\":\"kill_effect_lever_lever\"}",BlockState:{Name:"minecraft:lever",Properties:{facing:"south",face:"floor"}},NoGravity:1b,Time:1,DropItem:0b}
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=40}] as @e[name=kill_effect_lever_lever,type=falling_block,scores={Kill_effect=20}] run kill @s
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=50}] as @e[name=kill_effect_lever_lever,type=falling_block,scores={Kill_effect=10}] at @s run summon minecraft:falling_block ~ ~ ~ {CustomName:"{\"text\":\"kill_effect_lever_lever\"}",BlockState:{Name:"minecraft:lever",Properties:{facing:"north",face:"floor"}},NoGravity:1b,Time:1,DropItem:0b}
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=50}] as @e[name=kill_effect_lever_lever,type=falling_block,scores={Kill_effect=10}] run kill @s
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=60}] as @e[name=kill_effect_lever_lever,type=falling_block,scores={Kill_effect=10}] at @s run summon minecraft:falling_block ~ ~ ~ {CustomName:"{\"text\":\"kill_effect_lever_lever\"}",BlockState:{Name:"minecraft:lever",Properties:{facing:"south",face:"floor"}},NoGravity:1b,Time:1,DropItem:0b}
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=60}] as @e[name=kill_effect_lever_lever,type=falling_block,scores={Kill_effect=10}] run kill @s
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=70}] as @e[name=kill_effect_lever_lever,type=falling_block,scores={Kill_effect=10}] at @s run summon minecraft:falling_block ~ ~ ~ {CustomName:"{\"text\":\"kill_effect_lever_lever\"}",BlockState:{Name:"minecraft:lever",Properties:{facing:"north",face:"floor"}},NoGravity:1b,Time:1,DropItem:0b}
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=70}] as @e[name=kill_effect_lever_lever,type=falling_block,scores={Kill_effect=10}] run kill @s
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=80}] as @e[name=kill_effect_lever_lever,type=falling_block,scores={Kill_effect=10}] at @s run summon minecraft:falling_block ~ ~ ~ {CustomName:"{\"text\":\"kill_effect_lever_lever\"}",BlockState:{Name:"minecraft:lever",Properties:{facing:"south",face:"floor"}},NoGravity:1b,Time:1,DropItem:0b}
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=80}] as @e[name=kill_effect_lever_lever,type=falling_block,scores={Kill_effect=10}] run kill @s
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=85}] as @e[name=kill_effect_lever_lever,type=falling_block,scores={Kill_effect=5}] at @s run summon minecraft:falling_block ~ ~ ~ {CustomName:"{\"text\":\"kill_effect_lever_lever\"}",BlockState:{Name:"minecraft:lever",Properties:{facing:"north",face:"floor"}},NoGravity:1b,Time:1,DropItem:0b}
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=85}] as @e[name=kill_effect_lever_lever,type=falling_block,scores={Kill_effect=5}] run kill @s
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=90}] as @e[name=kill_effect_lever_lever,type=falling_block,scores={Kill_effect=5}] at @s run summon minecraft:falling_block ~ ~ ~ {CustomName:"{\"text\":\"kill_effect_lever_lever\"}",BlockState:{Name:"minecraft:lever",Properties:{facing:"south",face:"floor"}},NoGravity:1b,Time:1,DropItem:0b}
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=90}] as @e[name=kill_effect_lever_lever,type=falling_block,scores={Kill_effect=5}] run kill @s
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=95}] as @e[name=kill_effect_lever_lever,type=falling_block,scores={Kill_effect=5}] at @s run summon minecraft:falling_block ~ ~ ~ {CustomName:"{\"text\":\"kill_effect_lever_lever\"}",BlockState:{Name:"minecraft:lever",Properties:{facing:"north",face:"floor"}},NoGravity:1b,Time:1,DropItem:0b}
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=95}] as @e[name=kill_effect_lever_lever,type=falling_block,scores={Kill_effect=5}] run kill @s
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=100}] as @e[name=kill_effect_lever_lever,type=falling_block,scores={Kill_effect=5}] at @s run summon minecraft:falling_block ~ ~ ~ {CustomName:"{\"text\":\"kill_effect_lever_lever\"}",BlockState:{Name:"minecraft:lever",Properties:{facing:"south",face:"floor"}},NoGravity:1b,Time:1,DropItem:0b}
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=100}] as @e[name=kill_effect_lever_lever,type=falling_block,scores={Kill_effect=5}] run kill @s
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=105}] as @e[name=kill_effect_lever_lever,type=falling_block,scores={Kill_effect=5}] at @s run summon minecraft:falling_block ~ ~ ~ {CustomName:"{\"text\":\"kill_effect_lever_lever\"}",BlockState:{Name:"minecraft:lever",Properties:{facing:"north",face:"floor"}},NoGravity:1b,Time:1,DropItem:0b}
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=105}] as @e[name=kill_effect_lever_lever,type=falling_block,scores={Kill_effect=5}] run kill @s
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=110}] as @e[name=kill_effect_lever_lever,type=falling_block,scores={Kill_effect=5}] at @s run summon minecraft:falling_block ~ ~ ~ {CustomName:"{\"text\":\"kill_effect_lever_lever\"}",BlockState:{Name:"minecraft:lever",Properties:{facing:"south",face:"floor"}},NoGravity:1b,Time:1,DropItem:0b}
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=110}] as @e[name=kill_effect_lever_lever,type=falling_block,scores={Kill_effect=5}] run kill @s
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=113}] as @e[name=kill_effect_lever_lever,type=falling_block,scores={Kill_effect=3}] at @s run summon minecraft:falling_block ~ ~ ~ {CustomName:"{\"text\":\"kill_effect_lever_lever\"}",BlockState:{Name:"minecraft:lever",Properties:{facing:"north",face:"floor"}},NoGravity:1b,Time:1,DropItem:0b}
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=113}] as @e[name=kill_effect_lever_lever,type=falling_block,scores={Kill_effect=3}] run kill @s
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=116}] as @e[name=kill_effect_lever_lever,type=falling_block,scores={Kill_effect=3}] at @s run summon minecraft:falling_block ~ ~ ~ {CustomName:"{\"text\":\"kill_effect_lever_lever\"}",BlockState:{Name:"minecraft:lever",Properties:{facing:"south",face:"floor"}},NoGravity:1b,Time:1,DropItem:0b}
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=116}] as @e[name=kill_effect_lever_lever,type=falling_block,scores={Kill_effect=3}] run kill @s
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=119}] as @e[name=kill_effect_lever_lever,type=falling_block,scores={Kill_effect=3}] at @s run summon minecraft:falling_block ~ ~ ~ {CustomName:"{\"text\":\"kill_effect_lever_lever\"}",BlockState:{Name:"minecraft:lever",Properties:{facing:"north",face:"floor"}},NoGravity:1b,Time:1,DropItem:0b}
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=119}] as @e[name=kill_effect_lever_lever,type=falling_block,scores={Kill_effect=3}] run kill @s
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=122}] as @e[name=kill_effect_lever_lever,type=falling_block,scores={Kill_effect=3}] at @s run summon minecraft:falling_block ~ ~ ~ {CustomName:"{\"text\":\"kill_effect_lever_lever\"}",BlockState:{Name:"minecraft:lever",Properties:{facing:"south",face:"floor"}},NoGravity:1b,Time:1,DropItem:0b}
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=122}] as @e[name=kill_effect_lever_lever,type=falling_block,scores={Kill_effect=3}] run kill @s
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=125}] as @e[name=kill_effect_lever_lever,type=falling_block,scores={Kill_effect=3}] at @s run summon minecraft:falling_block ~ ~ ~ {CustomName:"{\"text\":\"kill_effect_lever_lever\"}",BlockState:{Name:"minecraft:lever",Properties:{facing:"north",face:"floor"}},NoGravity:1b,Time:1,DropItem:0b}
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=125}] as @e[name=kill_effect_lever_lever,type=falling_block,scores={Kill_effect=3}] run kill @s
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=128}] as @e[name=kill_effect_lever_lever,type=falling_block,scores={Kill_effect=3}] at @s run summon minecraft:falling_block ~ ~ ~ {CustomName:"{\"text\":\"kill_effect_lever_lever\"}",BlockState:{Name:"minecraft:lever",Properties:{facing:"south",face:"floor"}},NoGravity:1b,Time:1,DropItem:0b}
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=128}] as @e[name=kill_effect_lever_lever,type=falling_block,scores={Kill_effect=3}] run kill @s
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=131}] as @e[name=kill_effect_lever_lever,type=falling_block,scores={Kill_effect=3}] at @s run summon minecraft:falling_block ~ ~ ~ {CustomName:"{\"text\":\"kill_effect_lever_lever\"}",BlockState:{Name:"minecraft:lever",Properties:{facing:"north",face:"floor"}},NoGravity:1b,Time:1,DropItem:0b}
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=131}] as @e[name=kill_effect_lever_lever,type=falling_block,scores={Kill_effect=3}] run kill @s
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=134}] as @e[name=kill_effect_lever_lever,type=falling_block,scores={Kill_effect=3}] at @s run summon minecraft:falling_block ~ ~ ~ {CustomName:"{\"text\":\"kill_effect_lever_lever\"}",BlockState:{Name:"minecraft:lever",Properties:{facing:"south",face:"floor"}},NoGravity:1b,Time:1,DropItem:0b}
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=134}] as @e[name=kill_effect_lever_lever,type=falling_block,scores={Kill_effect=3}] run kill @s
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=137}] as @e[name=kill_effect_lever_lever,type=falling_block,scores={Kill_effect=3}] at @s run summon minecraft:falling_block ~ ~ ~ {CustomName:"{\"text\":\"kill_effect_lever_lever\"}",BlockState:{Name:"minecraft:lever",Properties:{facing:"north",face:"floor"}},NoGravity:1b,Time:1,DropItem:0b}
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=137}] as @e[name=kill_effect_lever_lever,type=falling_block,scores={Kill_effect=3}] run kill @s
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=140}] as @e[name=kill_effect_lever_lever,type=falling_block,scores={Kill_effect=3}] at @s run summon minecraft:falling_block ~ ~ ~ {CustomName:"{\"text\":\"kill_effect_lever_lever\"}",BlockState:{Name:"minecraft:lever",Properties:{facing:"south",face:"floor"}},NoGravity:1b,Time:1,DropItem:0b}
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=140}] as @e[name=kill_effect_lever_lever,type=falling_block,scores={Kill_effect=3}] run kill @s
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=143}] as @e[name=kill_effect_lever_lever,type=falling_block,scores={Kill_effect=3}] at @s run summon minecraft:falling_block ~ ~ ~ {CustomName:"{\"text\":\"kill_effect_lever_lever\"}",BlockState:{Name:"minecraft:lever",Properties:{facing:"north",face:"floor"}},NoGravity:1b,Time:1,DropItem:0b}
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=143}] as @e[name=kill_effect_lever_lever,type=falling_block,scores={Kill_effect=3}] run kill @s
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=146}] as @e[name=kill_effect_lever_lever,type=falling_block,scores={Kill_effect=3}] at @s run summon minecraft:falling_block ~ ~ ~ {CustomName:"{\"text\":\"kill_effect_lever_lever\"}",BlockState:{Name:"minecraft:lever",Properties:{facing:"south",face:"floor"}},NoGravity:1b,Time:1,DropItem:0b}
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=146}] as @e[name=kill_effect_lever_lever,type=falling_block,scores={Kill_effect=3}] run kill @s
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=149}] as @e[name=kill_effect_lever_lever,type=falling_block,scores={Kill_effect=3}] at @s run summon minecraft:falling_block ~ ~ ~ {CustomName:"{\"text\":\"kill_effect_lever_lever\"}",BlockState:{Name:"minecraft:lever",Properties:{facing:"north",face:"floor"}},NoGravity:1b,Time:1,DropItem:0b}
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=149}] as @e[name=kill_effect_lever_lever,type=falling_block,scores={Kill_effect=3}] run kill @s
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=152}] as @e[name=kill_effect_lever_lever,type=falling_block,scores={Kill_effect=3}] at @s run summon minecraft:falling_block ~ ~ ~ {CustomName:"{\"text\":\"kill_effect_lever_lever\"}",BlockState:{Name:"minecraft:lever",Properties:{facing:"south",face:"floor"}},NoGravity:1b,Time:1,DropItem:0b}
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=152}] as @e[name=kill_effect_lever_lever,type=falling_block,scores={Kill_effect=3}] run kill @s
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=155}] as @e[name=kill_effect_lever_lever,type=falling_block,scores={Kill_effect=3}] at @s run summon minecraft:falling_block ~ ~ ~ {CustomName:"{\"text\":\"kill_effect_lever_lever\"}",BlockState:{Name:"minecraft:lever",Properties:{facing:"north",face:"floor"}},NoGravity:1b,Time:1,DropItem:0b}
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=155}] as @e[name=kill_effect_lever_lever,type=falling_block,scores={Kill_effect=3}] run kill @s
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=158}] as @e[name=kill_effect_lever_lever,type=falling_block,scores={Kill_effect=3}] at @s run summon minecraft:falling_block ~ ~ ~ {Tags:["kill_me"],CustomName:"{\"text\":\"kill_effect_lever_lever\"}",BlockState:{Name:"minecraft:lever",Properties:{facing:"south",face:"floor"}},NoGravity:1b,Time:1,DropItem:0b}
execute as @e[name=game_kill_effect_lever_killer_holder,type=armor_stand,scores={Kill_effect=158}] as @e[name=kill_effect_lever_lever,type=falling_block,scores={Kill_effect=3}] run kill @s

# Kill entities
execute as @e[type=minecraft:armor_stand,name=game_kill_effect_lever_killer_holder,scores={Kill_effect=160..}] run kill @s
execute as @e[type=minecraft:armor_stand,name=game_kill_effect_lever_victim_holder,scores={Kill_effect=160..}] run kill @s
execute as @e[type=minecraft:falling_block,name=kill_effect_lever_lever,scores={Kill_effect=2..},tag=kill_me] run kill @s
execute as @e[type=minecraft:armor_stand,name=kill_effect_lever,scores={Kill_effect=160..}] run kill @s