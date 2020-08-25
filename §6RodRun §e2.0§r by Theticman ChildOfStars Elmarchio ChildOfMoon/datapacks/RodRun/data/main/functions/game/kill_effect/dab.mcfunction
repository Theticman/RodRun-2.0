scoreboard players add @e[name=kill_effect_dab,type=armor_stand] Kill_effect 1
scoreboard players add @e[name=game_kill_effect_dab_armor,type=armor_stand] Kill_effect 1

execute as @e[type=minecraft:armor_stand,name=game_kill_effect_dab_armor,scores={Kill_effect=0}] run data merge entity @s {Pose:{RightArm:[-10f,0f,10f],LeftArm:[-10f,0f,-10f],Head:[0f,0f,0f]}}
execute as @e[type=minecraft:armor_stand,name=game_kill_effect_dab_armor,scores={Kill_effect=1}] run data merge entity @s {Pose:{RightArm:[-10f,0f,16.0f],LeftArm:[-14.0f,0f,-2.666666666666667f],Head:[2.0f,0f,0f]}}
execute as @e[type=minecraft:armor_stand,name=game_kill_effect_dab_armor,scores={Kill_effect=2}] run data merge entity @s {Pose:{RightArm:[-10f,0f,22.0f],LeftArm:[-18.0f,0f,4.666666666666666f],Head:[4.0f,0f,0f]}}
execute as @e[type=minecraft:armor_stand,name=game_kill_effect_dab_armor,scores={Kill_effect=3}] run data merge entity @s {Pose:{RightArm:[-10f,0f,28.0f],LeftArm:[-22.0f,0f,12.0f],Head:[6.0f,0f,0f]}}
execute as @e[type=minecraft:armor_stand,name=game_kill_effect_dab_armor,scores={Kill_effect=4}] run data merge entity @s {Pose:{RightArm:[-10f,0f,34.0f],LeftArm:[-26.0f,0f,19.333333333333332f],Head:[8.0f,0f,0f]}}
execute as @e[type=minecraft:armor_stand,name=game_kill_effect_dab_armor,scores={Kill_effect=5}] run data merge entity @s {Pose:{RightArm:[-10f,0f,40.0f],LeftArm:[-30.0f,0f,26.666666666666664f],Head:[10.0f,0f,0f]}}
execute as @e[type=minecraft:armor_stand,name=game_kill_effect_dab_armor,scores={Kill_effect=6}] run data merge entity @s {Pose:{RightArm:[-10f,0f,46.0f],LeftArm:[-34.0f,0f,34.0f],Head:[12.0f,0f,0f]}}
execute as @e[type=minecraft:armor_stand,name=game_kill_effect_dab_armor,scores={Kill_effect=7}] run data merge entity @s {Pose:{RightArm:[-10f,0f,52.0f],LeftArm:[-38.0f,0f,41.333333333333336f],Head:[14.0f,0f,0f]}}
execute as @e[type=minecraft:armor_stand,name=game_kill_effect_dab_armor,scores={Kill_effect=8}] run data merge entity @s {Pose:{RightArm:[-10f,0f,58.0f],LeftArm:[-42.0f,0f,48.66666666666667f],Head:[16.0f,0f,0f]}}
execute as @e[type=minecraft:armor_stand,name=game_kill_effect_dab_armor,scores={Kill_effect=9}] run data merge entity @s {Pose:{RightArm:[-10f,0f,64.0f],LeftArm:[-46.0f,0f,56.00000000000001f],Head:[18.0f,0f,0f]}}
execute as @e[type=minecraft:armor_stand,name=game_kill_effect_dab_armor,scores={Kill_effect=10}] run data merge entity @s {Pose:{RightArm:[-10f,0f,70.0f],LeftArm:[-50.0f,0f,63.33333333333334f],Head:[20.0f,0f,0f]}}
execute as @e[type=minecraft:armor_stand,name=game_kill_effect_dab_armor,scores={Kill_effect=11}] run data merge entity @s {Pose:{RightArm:[-10f,0f,76.0f],LeftArm:[-54.0f,0f,70.66666666666667f],Head:[22.0f,0f,0f]}}
execute as @e[type=minecraft:armor_stand,name=game_kill_effect_dab_armor,scores={Kill_effect=12}] run data merge entity @s {Pose:{RightArm:[-10f,0f,82.0f],LeftArm:[-58.0f,0f,78.0f],Head:[24.0f,0f,0f]}}
execute as @e[type=minecraft:armor_stand,name=game_kill_effect_dab_armor,scores={Kill_effect=13}] run data merge entity @s {Pose:{RightArm:[-10f,0f,88.0f],LeftArm:[-62.0f,0f,85.33333333333333f],Head:[26.0f,0f,0f]}}
execute as @e[type=minecraft:armor_stand,name=game_kill_effect_dab_armor,scores={Kill_effect=14}] run data merge entity @s {Pose:{RightArm:[-10f,0f,94.0f],LeftArm:[-66.0f,0f,92.66666666666666f],Head:[28.0f,0f,0f]}}
execute as @e[type=minecraft:armor_stand,name=game_kill_effect_dab_armor,scores={Kill_effect=15}] run data merge entity @s {Pose:{RightArm:[-10f,0f,100.0f],LeftArm:[-70.0f,0f,99.99999999999999f],Head:[30.0f,0f,0f]}}

execute as @e[type=minecraft:armor_stand,name=game_kill_effect_dab_armor,scores={Kill_effect=17}] at @s positioned ^-.7 ^.8 ^.2 run particle minecraft:flame ~ ~ ~ 0 0 0 0 1
execute as @e[type=minecraft:armor_stand,name=game_kill_effect_dab_armor,scores={Kill_effect=17}] at @s positioned ^-.8 ^.8 ^.2 run particle minecraft:flame ~ ~ ~ 0 0 0 0 1
execute as @e[type=minecraft:armor_stand,name=game_kill_effect_dab_armor,scores={Kill_effect=17}] at @s positioned ^-.9 ^.8 ^.2 run particle minecraft:flame ~ ~ ~ 0 0 0 0 1
execute as @e[type=minecraft:armor_stand,name=game_kill_effect_dab_armor,scores={Kill_effect=17}] at @s positioned ^-1 ^.8 ^.2 run particle minecraft:flame ~ ~ ~ 0 0 0 0 1
execute as @e[type=minecraft:armor_stand,name=game_kill_effect_dab_armor,scores={Kill_effect=17}] at @s positioned ^-1 ^.9 ^.2 run particle minecraft:flame ~ ~ ~ 0 0 0 0 1
execute as @e[type=minecraft:armor_stand,name=game_kill_effect_dab_armor,scores={Kill_effect=17}] at @s positioned ^-1 ^1 ^.2 run particle minecraft:flame ~ ~ ~ 0 0 0 0 1
execute as @e[type=minecraft:armor_stand,name=game_kill_effect_dab_armor,scores={Kill_effect=17}] at @s positioned ^-1 ^1.1 ^.2 run particle minecraft:flame ~ ~ ~ 0 0 0 0 1
execute as @e[type=minecraft:armor_stand,name=game_kill_effect_dab_armor,scores={Kill_effect=17}] at @s positioned ^-1 ^1.2 ^.2 run particle minecraft:flame ~ ~ ~ 0 0 0 0 1
execute as @e[type=minecraft:armor_stand,name=game_kill_effect_dab_armor,scores={Kill_effect=17}] at @s positioned ^-1 ^1.3 ^.2 run particle minecraft:flame ~ ~ ~ 0 0 0 0 1

execute as @e[type=minecraft:armor_stand,name=game_kill_effect_dab_armor,scores={Kill_effect=40..}] run kill @s
execute as @e[type=minecraft:armor_stand,name=kill_effect_dab,scores={Kill_effect=40..}] run kill @s