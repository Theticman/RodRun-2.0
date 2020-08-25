# Timer add
scoreboard players add !Timer Lobby_bar 1

# Set init position
execute if score !Timer Lobby_bar matches 0 run scoreboard players set !R_arm_x Lobby_bar -2000
execute if score !Timer Lobby_bar matches 0 run scoreboard players set !R_arm_y Lobby_bar 0
execute if score !Timer Lobby_bar matches 0 run scoreboard players set !R_arm_z Lobby_bar 1000

execute if score !Timer Lobby_bar matches 0 run scoreboard players set !L_arm_x Lobby_bar -2000
execute if score !Timer Lobby_bar matches 0 run scoreboard players set !L_arm_y Lobby_bar 0
execute if score !Timer Lobby_bar matches 0 run scoreboard players set !L_arm_z Lobby_bar -1000

execute if score !Timer Lobby_bar matches 0 run scoreboard players set !Head_rot_x Lobby_bar 0
execute if score !Timer Lobby_bar matches 0 run scoreboard players set !Head_rot_z Lobby_bar 0

# Add rotation to arms
# First
execute if score !Timer Lobby_bar matches 0..19 run scoreboard players remove !R_arm_x Lobby_bar 275
execute if score !Timer Lobby_bar matches 0..19 run scoreboard players add !R_arm_y Lobby_bar 125
execute if score !Timer Lobby_bar matches 0..19 run scoreboard players remove !R_arm_z Lobby_bar 50

execute if score !Timer Lobby_bar matches 0..19 run scoreboard players remove !L_arm_x Lobby_bar 275
execute if score !Timer Lobby_bar matches 0..19 run scoreboard players add !L_arm_y Lobby_bar 250
execute if score !Timer Lobby_bar matches 0..19 run scoreboard players add !L_arm_z Lobby_bar 50

execute if score !Timer Lobby_bar matches 0..19 run scoreboard players add !Head_rot_x Lobby_bar 50
execute if score !Timer Lobby_bar matches 0..19 run scoreboard players add !Head_rot_z Lobby_bar 187

# Second
execute if score !Timer Lobby_bar matches 20..49 run scoreboard players remove !R_arm_y Lobby_bar 250
execute if score !Timer Lobby_bar matches 20..49 run scoreboard players remove !L_arm_y Lobby_bar 250
execute if score !Timer Lobby_bar matches 20..49 run scoreboard players remove !Head_rot_z Lobby_bar 250

# Third
execute if score !Timer Lobby_bar matches 50..69 run scoreboard players add !R_arm_x Lobby_bar 275
execute if score !Timer Lobby_bar matches 50..69 run scoreboard players add !R_arm_y Lobby_bar 250
execute if score !Timer Lobby_bar matches 50..69 run scoreboard players add !R_arm_z Lobby_bar 50

execute if score !Timer Lobby_bar matches 50..69 run scoreboard players add !L_arm_x Lobby_bar 275
execute if score !Timer Lobby_bar matches 50..69 run scoreboard players add !L_arm_y Lobby_bar 125
execute if score !Timer Lobby_bar matches 50..69 run scoreboard players remove !L_arm_z Lobby_bar 50

execute if score !Timer Lobby_bar matches 50..69 run scoreboard players remove !Head_rot_x Lobby_bar 51
execute if score !Timer Lobby_bar matches 50..69 run scoreboard players add !Head_rot_z Lobby_bar 187

# Move arm
execute if score !Timer Lobby_bar matches 0..70 store result entity @e[type=minecraft:armor_stand,tag=lobby_bar_barman,limit=1] Pose.RightArm[0] float .01 run scoreboard players get !R_arm_x Lobby_bar
execute if score !Timer Lobby_bar matches 0..70 store result entity @e[type=minecraft:armor_stand,tag=lobby_bar_barman,limit=1] Pose.RightArm[1] float .01 run scoreboard players get !R_arm_y Lobby_bar
execute if score !Timer Lobby_bar matches 0..70 store result entity @e[type=minecraft:armor_stand,tag=lobby_bar_barman,limit=1] Pose.RightArm[2] float .01 run scoreboard players get !R_arm_z Lobby_bar

execute if score !Timer Lobby_bar matches 0..70 store result entity @e[type=minecraft:armor_stand,tag=lobby_bar_barman,limit=1] Pose.LeftArm[0] float .01 run scoreboard players get !L_arm_x Lobby_bar
execute if score !Timer Lobby_bar matches 0..70 store result entity @e[type=minecraft:armor_stand,tag=lobby_bar_barman,limit=1] Pose.LeftArm[1] float .01 run scoreboard players get !L_arm_y Lobby_bar
execute if score !Timer Lobby_bar matches 0..70 store result entity @e[type=minecraft:armor_stand,tag=lobby_bar_barman,limit=1] Pose.LeftArm[2] float .01 run scoreboard players get !L_arm_z Lobby_bar

execute if score !Timer Lobby_bar matches 0..70 store result entity @e[type=minecraft:armor_stand,tag=lobby_bar_barman,limit=1] Pose.Head[0] float .01 run scoreboard players get !Head_rot_x Lobby_bar
execute if score !Timer Lobby_bar matches 0..70 store result entity @e[type=minecraft:armor_stand,tag=lobby_bar_barman,limit=1] Pose.Head[1] float .01 run scoreboard players get !Head_rot_z Lobby_bar

# Slection appear
execute if score !Timer Lobby_bar matches 20 run summon minecraft:armor_stand 31.75 16.3 -30.5 {CustomName:'{"text":"choice_1"}',Rotation:[180f],Invisible:1b,NoGravity:1b,Small:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{choice:1,SkullOwner:{Id:"00684a88-5cc8-4713-9e91-7b1906e67580",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzFiYzJiY2ZiMmJkMzc1OWU2YjFlODZmYzdhNzk1ODVlMTEyN2RkMzU3ZmMyMDI4OTNmOWRlMjQxYmM5ZTUzMCJ9fX0="}]}}}}],Tags:["bar_glass_stand"],DisabledSlots:4144959}
execute if score !Timer Lobby_bar matches 28 run summon minecraft:armor_stand 31.25 16.3 -30.5 {CustomName:'{"text":"choice_2"}',Rotation:[180f],Invisible:1b,NoGravity:1b,Small:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{choice:2,SkullOwner:{Id:"f7218833-aceb-4d3e-a1bc-a334be09c375",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGNkOWVlZWU4ODM0Njg4ODFkODM4NDhhNDZiZjMwMTI0ODVjMjNmNzU3NTNiOGZiZTg0ODczNDE0MTk4NDcifX19"}]}}}}],Tags:["bar_glass_stand"],DisabledSlots:4144959}
execute if score !Timer Lobby_bar matches 37 run summon minecraft:armor_stand 30.75 16.3 -30.5 {CustomName:'{"text":"choice_3"}',Rotation:[180f],Invisible:1b,NoGravity:1b,Small:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{choice:3,SkullOwner:{Id:"870c6ce6-78b5-4e09-8745-bd96d616e516",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWQ0ZWFlMTM5MzM4NjBhNmRmNWU4ZTk1NTY5M2I5NWE4YzNiMTVjMzZiOGI1ODc1MzJhYzA5OTZiYzM3ZTUifX19"}]}}}}],Tags:["bar_glass_stand"],DisabledSlots:4144959}
execute if score !Timer Lobby_bar matches 49 run summon minecraft:armor_stand 30.25 16.3 -30.5 {CustomName:'{"text":"choice_4"}',Rotation:[180f],Invisible:1b,NoGravity:1b,Small:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{choice:4,SkullOwner:{Id:"d531b607-3d92-4760-b19f-b64d51da0fa5",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDJlNzhmYjIyNDI0MjMyZGMyN2I4MWZiY2I0N2ZkMjRjMWFjZjc2MDk4NzUzZjJkOWMyODU5ODI4N2RiNSJ9fX0="}]}}}}],Tags:["bar_glass_stand"],DisabledSlots:4144959}
# Update state
execute if score !Timer Lobby_bar matches 70 run scoreboard players set !State Lobby_bar 2


