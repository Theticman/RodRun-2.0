# Score add
scoreboard players add !Timer Kill_effect_anim 1

# Kill effect main
execute unless score !State Gamestate matches 2 run function main:game/main_killeffect

# Summon
execute if score !Timer Kill_effect_anim matches 1 run summon minecraft:armor_stand 24 7.5 -45 {Rotation:[-90f],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,CustomName:'{"text":"kill_effect_animation_travelling"}',DisabledSlots:4144959}
execute if score !Timer Kill_effect_anim matches 1 run summon minecraft:armor_stand 29 9 -42 {Rotation:[90f],ShowArms:1b,NoBasePlate:1b,CustomName:'{"text":"kill_effect_animation_stand"}',ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16777215},Unbreakable:1b}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:16777215},Unbreakable:1b}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16777215},Unbreakable:1b}},{}],DisabledSlots:4144959}

# Place head
execute if score !Timer Kill_effect_anim matches 1 run execute as @a[tag=In_lobby_kill_effect_animation] run loot replace entity @e[type=minecraft:armor_stand,name=kill_effect_animation_stand] armor.head loot main:uuidtest

# Player spectate
execute if score !Timer Kill_effect_anim matches 1 run gamemode spectator @a[tag=In_lobby_kill_effect_animation]
execute as @a[tag=In_lobby_kill_effect_animation] run spectate @e[type=minecraft:armor_stand,name=kill_effect_animation_travelling,limit=1]

# Move player
execute if score !Kill_effect Kill_effect_anim matches 2..4 as @e[type=minecraft:armor_stand,name=kill_effect_animation_travelling,limit=1] at @s run teleport @s ~ ~ ~0.12
execute if score !Kill_effect Kill_effect_anim matches 5..8 as @e[type=minecraft:armor_stand,name=kill_effect_animation_travelling,limit=1] at @s run teleport @s ~ ~ ~0.08

# Perform kill effect
execute if score !Timer Kill_effect_anim matches 20 if score !Kill_effect Kill_effect_anim matches 2 as @e[type=minecraft:armor_stand,name=kill_effect_animation_stand] at @s run function main:game/kill_effect/init_cloud
execute if score !Timer Kill_effect_anim matches 20 if score !Kill_effect Kill_effect_anim matches 3 as @e[type=minecraft:armor_stand,name=kill_effect_animation_stand] at @s run function main:game/kill_effect/init_blood
execute if score !Timer Kill_effect_anim matches 20 if score !Kill_effect Kill_effect_anim matches 4 as @e[type=minecraft:armor_stand,name=kill_effect_animation_stand] at @s run function main:game/kill_effect/init_totem
execute if score !Timer Kill_effect_anim matches 20 if score !Kill_effect Kill_effect_anim matches 5 as @e[type=minecraft:armor_stand,name=kill_effect_animation_stand] at @s run function main:game/kill_effect/init_xp
execute if score !Timer Kill_effect_anim matches 20 if score !Kill_effect Kill_effect_anim matches 6 as @e[type=minecraft:armor_stand,name=kill_effect_animation_stand] at @s run function main:game/kill_effect/init_note
execute if score !Timer Kill_effect_anim matches 20 if score !Kill_effect Kill_effect_anim matches 7 as @e[type=minecraft:armor_stand,name=kill_effect_animation_stand] at @s run function main:game/kill_effect/init_head_flying
execute if score !Timer Kill_effect_anim matches 20 if score !Kill_effect Kill_effect_anim matches 8 as @e[type=minecraft:armor_stand,name=kill_effect_animation_stand] at @s run function main:game/kill_effect/init_dab

# Replace head head flying
execute if score !Timer Kill_effect_anim matches 20 if score !Kill_effect Kill_effect_anim matches 7 as @a[tag=In_lobby_kill_effect_animation] run loot replace entity @e[type=minecraft:armor_stand,name=game_kill_effect_head_flying_holder] armor.head loot main:uuidtest

# Replace head dab
execute if score !Timer Kill_effect_anim matches 20 if score !Kill_effect Kill_effect_anim matches 8 as @a[tag=In_lobby_kill_effect_animation] run loot replace entity @e[type=minecraft:armor_stand,name=game_kill_effect_dab_armor] armor.head loot main:uuidtest


# Kill stand
execute if score !Timer Kill_effect_anim matches 20 run kill @e[type=minecraft:armor_stand,name=kill_effect_animation_stand]

# Animation end
execute if score !Kill_effect Kill_effect_anim matches 2..4 if score !Timer Kill_effect_anim matches 45.. run function main:lobby/ender_chest/animation_end
execute if score !Kill_effect Kill_effect_anim matches 5..8 if score !Timer Kill_effect_anim matches 65.. run function main:lobby/ender_chest/animation_end
