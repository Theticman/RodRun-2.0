# Computatiopn
scoreboard players operation !Interpret Kill_effect_sign = @s Kill_effect_sign
scoreboard players add !Interpret Kill_effect_sign 100
scoreboard players operation !Interpret Kill_effect_sign %= !200 Kill_effect_sign

# Interpetration
# 1 st time
execute if score !Interpret Kill_effect_sign matches 100.. run title @s times 5 40 10
execute if score !Interpret Kill_effect_sign matches 100.. run title @s title [{"text":"New kill effect!","color":"yellow"}]
execute if score !Interpret Kill_effect_sign matches 100.. at @s run playsound minecraft:entity.player.levelup master @s
execute if score !Interpret Kill_effect_sign matches 100.. at @s run scoreboard players add @s Kill_effect_sign 100
execute if score !Interpret Kill_effect_sign matches 100.. at @s run scoreboard players add @s Kill_effect 1

# Already have
execute if score !Interpret Kill_effect_sign matches ..99 run title @s times 0 15 10
execute if score !Interpret Kill_effect_sign matches ..99 run title @s title [{"text":""}]
execute if score !Interpret Kill_effect_sign matches ..99 run title @s subtitle [{"text":"Already found!","color":"red"}]
execute if score !Interpret Kill_effect_sign matches ..99 at @s run playsound minecraft:entity.villager.no master @s