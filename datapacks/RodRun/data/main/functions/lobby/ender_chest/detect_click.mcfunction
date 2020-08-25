# Detect
execute unless entity @s[nbt={EnderItems:[{Slot:9b,id:"minecraft:barrier",Count:1b}]}] run scoreboard players set @s Kill_effect_id 0
execute unless entity @s[nbt={EnderItems:[{Slot:17b,id:"minecraft:player_head",tag:{Tags:["EnderChest_question"]},Count:1b}]}] run scoreboard players set @s Kill_effect_id 1
execute unless entity @s[nbt={EnderItems:[{Slot:10b,id:"minecraft:feather",Count:1b}]}] run scoreboard players set @s Kill_effect_id 2
execute if entity @s[scores={Kill_effect=2..}] unless entity @s[nbt={EnderItems:[{Slot:11b,id:"minecraft:redstone",Count:1b}]}] run scoreboard players set @s Kill_effect_id 3
execute if entity @s[scores={Kill_effect=3..}] unless entity @s[nbt={EnderItems:[{Slot:12b,id:"minecraft:totem_of_undying",Count:1b}]}] run scoreboard players set @s Kill_effect_id 4
execute if entity @s[scores={Kill_effect=4..}] unless entity @s[nbt={EnderItems:[{Slot:13b,id:"minecraft:experience_bottle",Count:1b}]}] run scoreboard players set @s Kill_effect_id 5
execute if entity @s[scores={Kill_effect=5..}] unless entity @s[nbt={EnderItems:[{Slot:14b,id:"minecraft:jukebox",Count:1b}]}] run scoreboard players set @s Kill_effect_id 6
execute if entity @s[scores={Kill_effect=6..}] unless entity @s[nbt={EnderItems:[{Slot:15b,id:"minecraft:elytra",Count:1b}]}] run scoreboard players set @s Kill_effect_id 7
execute if entity @s[scores={Kill_effect=7..}] unless entity @s[nbt={EnderItems:[{Slot:16b,id:"minecraft:armor_stand",Count:1b}]}] run scoreboard players set @s Kill_effect_id 8

# Playsound
execute unless entity @s[nbt={EnderItems:[{Slot:9b,id:"minecraft:barrier",Count:1b}]}] run execute at @s run playsound minecraft:entity.enderman.teleport master @s
execute unless entity @s[nbt={EnderItems:[{Slot:17b,id:"minecraft:player_head",Count:1b}]}] run execute at @s run playsound minecraft:entity.enderman.teleport master @s
execute unless entity @s[nbt={EnderItems:[{Slot:10b,id:"minecraft:feather",Count:1b}]}] run execute at @s run playsound minecraft:block.stone_button.click_on master @s
execute if entity @s[scores={Kill_effect=2..}] unless entity @s[nbt={EnderItems:[{Slot:11b,id:"minecraft:redstone",Count:1b}]}] run execute at @s run playsound minecraft:block.stone_button.click_on master @s
execute if entity @s[scores={Kill_effect=3..}] unless entity @s[nbt={EnderItems:[{Slot:12b,id:"minecraft:totem_of_undying",Count:1b}]}] run execute at @s run playsound minecraft:block.stone_button.click_on master @s
execute if entity @s[scores={Kill_effect=4..}] unless entity @s[nbt={EnderItems:[{Slot:13b,id:"minecraft:experience_bottle",Count:1b}]}] run execute at @s run playsound minecraft:block.stone_button.click_on master @s
execute if entity @s[scores={Kill_effect=5..}] unless entity @s[nbt={EnderItems:[{Slot:14b,id:"minecraft:jukebox",Count:1b}]}] run execute at @s run playsound minecraft:block.stone_button.click_on master @s
execute if entity @s[scores={Kill_effect=6..}] unless entity @s[nbt={EnderItems:[{Slot:15b,id:"minecraft:elytra",Count:1b}]}] run execute at @s run playsound minecraft:block.stone_button.click_on master @s
execute if entity @s[scores={Kill_effect=7..}] unless entity @s[nbt={EnderItems:[{Slot:16b,id:"minecraft:armor_stand",Count:1b}]}] run execute at @s run playsound minecraft:block.stone_button.click_on master @s
