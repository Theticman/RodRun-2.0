# Summon aec for random
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Tags:["random_pose","random_pose_1"]}
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Tags:["random_pose","random_pose_2"]}
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Tags:["random_pose","random_pose_3"]}
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Tags:["random_pose","random_pose_4"]}
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Tags:["random_pose","random_pose_5"]}
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Tags:["random_pose","random_pose_6"]}
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Tags:["random_pose","random_pose_7"]}
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Tags:["random_pose","random_pose_8"]}

# Select random
tag @e[type=area_effect_cloud,limit=1,sort=random,tag=random_pose] add random_pose_selected

# Update pose
execute if entity @e[type=area_effect_cloud,tag=random_pose_1,nbt={Tags:["random_pose_selected"]}] run data merge entity @s {Pose:{Body:[3f,0f,0f],LeftLeg:[290f,11f,328f],RightLeg:[299f,13f,15f],LeftArm:[334f,276f,0f],RightArm:[280f,27f,25f]}}
execute if entity @e[type=area_effect_cloud,tag=random_pose_2,nbt={Tags:["random_pose_selected"]}] run data merge entity @s {Pose:{Body:[3f,0f,0f],LeftLeg:[290f,11f,328f],RightLeg:[299f,13f,15f],LeftArm:[334f,249f,0f],RightArm:[332f,0f,133f]}}
execute if entity @e[type=area_effect_cloud,tag=random_pose_3,nbt={Tags:["random_pose_selected"]}] run data merge entity @s {Pose:{Body:[350f,0f,0f],Head:[342f,0f,0f],LeftLeg:[290f,11f,328f],RightLeg:[299f,13f,15f],LeftArm:[328f,360f,0f],RightArm:[332f,34f,0f]}}
execute if entity @e[type=area_effect_cloud,tag=random_pose_4,nbt={Tags:["random_pose_selected"]}] run data merge entity @s {Pose:{Body:[7f,0f,0f],Head:[7f,25f,11f],LeftLeg:[286f,11f,0f],RightLeg:[290f,13f,0f],LeftArm:[348f,0f,0f],RightArm:[11f,0f,0f]}}
execute if entity @e[type=area_effect_cloud,tag=random_pose_5,nbt={Tags:["random_pose_selected"]}] run data merge entity @s {Pose:{Head:[9f,0f,0f],LeftLeg:[280f,348f,0f],RightLeg:[278f,9f,0f],LeftArm:[197f,0f,32f],RightArm:[17f,0f,15f]}}
execute if entity @e[type=area_effect_cloud,tag=random_pose_6,nbt={Tags:["random_pose_selected"]}] run data merge entity @s {Pose:{Head:[15f,0f,0f],LeftLeg:[280f,359f,0f],RightLeg:[278f,23f,1f],LeftArm:[197f,0f,32f],RightArm:[17f,0f,139f]}}
execute if entity @e[type=area_effect_cloud,tag=random_pose_7,nbt={Tags:["random_pose_selected"]}] run data merge entity @s {Pose:{Body:[352f,0f,0f],Head:[342f,0f,0f],LeftLeg:[280f,359f,0f],RightLeg:[278f,23f,1f],LeftArm:[9f,0f,0f],RightArm:[7f,0f,0f]}}
execute if entity @e[type=area_effect_cloud,tag=random_pose_8,nbt={Tags:["random_pose_selected"]}] run data merge entity @s {Pose:{Head:[15f,1f,0f],LeftLeg:[286f,0f,0f],RightLeg:[290f,0f,0f],LeftArm:[315f,27f,0f],RightArm:[309f,46f,297f]}}

# Kill aec
kill @e[type=area_effect_cloud,tag=random_pose]
