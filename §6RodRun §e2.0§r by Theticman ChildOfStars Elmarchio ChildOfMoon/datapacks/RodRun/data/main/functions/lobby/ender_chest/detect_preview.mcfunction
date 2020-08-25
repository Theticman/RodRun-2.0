# CLick + shift
execute as @s[nbt={Inventory:[{id:"minecraft:feather"}]}] run tag @s add In_lobby_kill_effect_animation_init
execute as @s[nbt={Inventory:[{id:"minecraft:redstone"}]}] run tag @s add In_lobby_kill_effect_animation_init
execute as @s[nbt={Inventory:[{id:"minecraft:experience_bottle"}]}] run tag @s add In_lobby_kill_effect_animation_init
execute as @s[nbt={Inventory:[{id:"minecraft:totem_of_undying"}]}] run tag @s add In_lobby_kill_effect_animation_init
execute as @s[nbt={Inventory:[{id:"minecraft:jukebox"}]}] run tag @s add In_lobby_kill_effect_animation_init
execute as @s[nbt={Inventory:[{id:"minecraft:elytra"}]}] run tag @s add In_lobby_kill_effect_animation_init
execute as @s[nbt={Inventory:[{id:"minecraft:armor_stand"}]}] run tag @s add In_lobby_kill_effect_animation_init

tag @s[tag=In_lobby_kill_effect_animation_init] add Prevent_detect_function

# Can start animation ?
execute as @s[tag=In_lobby_kill_effect_animation_init] run function main:lobby/ender_chest/animation_init

# Replace ender to prevent detect function
execute as @s[tag=Prevent_detect_function] run function main:lobby/ender_chest/place_items
tag @s remove Prevent_detect_function