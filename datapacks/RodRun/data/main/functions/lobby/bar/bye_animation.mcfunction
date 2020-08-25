# Timer add
scoreboard players add !Timer Lobby_bar 1

# Set base rotation
execute if score !Timer Lobby_bar matches -1000 run data merge entity @e[type=minecraft:armor_stand,tag=lobby_bar_barman,limit=1] {Pose:{RightArm:[-10f,0f,150f]}}
execute if score !Timer Lobby_bar matches -1000 run scoreboard players set !R_arm_z Lobby_bar 14000

# Move
execute if score !Timer Lobby_bar matches -1000..-991 run scoreboard players remove !R_arm_z Lobby_bar 100
execute if score !Timer Lobby_bar matches -990..-981 run scoreboard players add !R_arm_z Lobby_bar 100
execute if score !Timer Lobby_bar matches -980..-971 run scoreboard players remove !R_arm_z Lobby_bar 100
execute if score !Timer Lobby_bar matches -970..-961 run scoreboard players add !R_arm_z Lobby_bar 100
execute if score !Timer Lobby_bar matches -960..-951 run scoreboard players remove !R_arm_z Lobby_bar 100
execute if score !Timer Lobby_bar matches -950..-941 run scoreboard players add !R_arm_z Lobby_bar 100

# Store
execute if score !Timer Lobby_bar matches -1000..-941 store result entity @e[type=minecraft:armor_stand,tag=lobby_bar_barman,limit=1] Pose.RightArm[2] float .01 run scoreboard players get !R_arm_z Lobby_bar

# Reset position
execute if score !Timer Lobby_bar matches -940 run data merge entity @e[type=minecraft:armor_stand,tag=lobby_bar_barman,limit=1] {Pose:{Head:[0.1f],RightArm:[-20f,0f,10f],LeftArm:[-20f,0f,-10f]}}

# Reset scores
execute if score !Timer Lobby_bar matches -940.. run scoreboard players set !State Lobby_bar 0
execute if score !Timer Lobby_bar matches -940.. run scoreboard players set !Timer Lobby_bar -1