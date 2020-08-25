# Animation already playing ?
execute if score !Timer Kill_effect_anim matches 0.. run tag @s remove In_lobby_kill_effect_animation_init

# Error message
tellraw @s[tag=!In_lobby_kill_effect_animation_init] [{"text":"[","color":"dark_gray"},{"text":"RodRun","color":"gold","bold":true},{"text":"] ","color":"dark_gray"},{"text":"An animation is already playing wait a little, then try again.","color":"yellow"}]
execute at @s[tag=!In_lobby_kill_effect_animation_init] run playsound minecraft:entity.villager.no master @s

# Interpret animation
execute as @s[tag=In_lobby_kill_effect_animation_init,nbt={Inventory:[{id:"minecraft:feather"}]}] run scoreboard players set !Kill_effect Kill_effect_anim 2
execute as @s[tag=In_lobby_kill_effect_animation_init,nbt={Inventory:[{id:"minecraft:redstone"}]}] run scoreboard players set !Kill_effect Kill_effect_anim 3
execute as @s[tag=In_lobby_kill_effect_animation_init,nbt={Inventory:[{id:"minecraft:totem_of_undying"}]}] run scoreboard players set !Kill_effect Kill_effect_anim 4
execute as @s[tag=In_lobby_kill_effect_animation_init,nbt={Inventory:[{id:"minecraft:experience_bottle"}]}] run scoreboard players set !Kill_effect Kill_effect_anim 5
execute as @s[tag=In_lobby_kill_effect_animation_init,nbt={Inventory:[{id:"minecraft:jukebox"}]}] run scoreboard players set !Kill_effect Kill_effect_anim 6
execute as @s[tag=In_lobby_kill_effect_animation_init,nbt={Inventory:[{id:"minecraft:elytra"}]}] run scoreboard players set !Kill_effect Kill_effect_anim 7
execute as @s[tag=In_lobby_kill_effect_animation_init,nbt={Inventory:[{id:"minecraft:armor_stand"}]}] run scoreboard players set !Kill_effect Kill_effect_anim 8

# Start animation
execute as @s[tag=In_lobby_kill_effect_animation_init] run scoreboard players set !Timer Kill_effect_anim 0
tag @s[tag=In_lobby_kill_effect_animation_init] add In_lobby_kill_effect_animation
tag @s[tag=In_lobby_kill_effect_animation_init] remove Ready
clear @s[tag=In_lobby_kill_effect_animation_init]
tag @s[tag=In_lobby_kill_effect_animation_init] remove In_lobby_kill_effect_animation_init
