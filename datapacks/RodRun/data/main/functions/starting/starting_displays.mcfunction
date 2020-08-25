# ========== TELLRAW ========== #
# Starting
execute if score !Timer Starting matches 2 run tellraw @a[tag=In_lobby] [{"text":"[","color":"dark_gray"},{"text":"RodRun","color":"gold","bold":true},{"text":"] ","color":"dark_gray"},{"text":"A game has started without you.","color":"yellow"},{"text":" (","color":"dark_gray","italic":true},{"text":"Switch to","color":"gray","italic":true},{"text":" ready ","color":"white","italic":true},{"text":"by equipping your helmet to be in the next one","color":"gray","italic":true},{"text":")","color":"dark_gray","italic":true}]
execute if score !Timer Starting matches 2 run tellraw @a[tag=Starting] [{"text":""},{"text":"                       ","color":"yellow","strikethrough":true},{"text":" Game Starting ","color":"gold","bold":true},{"text":"                       ","color":"yellow","strikethrough":true}]

# Teleport 
execute if score !Timer Starting matches 20 run tellraw @a[tag=Starting] [{"text":""},{"text":">","color":"gold","bold":true},{"text":" Teleporting","color":"yellow","bold":true},{"text":".\n","color":"yellow"}]

# Select options
execute if score !Timer Starting matches 30 run tellraw @a[tag=Starting] [{"text":""},{"text":">","color":"gold","bold":true},{"text":" Selected options","color":"yellow","bold":true},{"text":":","color":"yellow"}]

# Maps
execute if score !Timer Starting matches 32 if score !Map OptionsInGame matches 2 run tellraw @a[tag=Starting] [{"text":"    "},{"text":"➡","color":"gold","bold":true},{"text":" Map: ","color":"yellow"},{"text":"Warehouse","color":"gray"}]
execute if score !Timer Starting matches 32 if score !Map OptionsInGame matches 3 run tellraw @a[tag=Starting] [{"text":"    "},{"text":"➡","color":"gold","bold":true},{"text":" Map: ","color":"yellow"},{"text":"Whitehouse","color":"white"}]
execute if score !Timer Starting matches 32 if score !Map OptionsInGame matches 4 run tellraw @a[tag=Starting] [{"text":"    "},{"text":"➡","color":"gold","bold":true},{"text":" Map: ","color":"yellow"},{"text":"Egypt","color":"gold"}]
execute if score !Timer Starting matches 32 if score !Map OptionsInGame matches 5 run tellraw @a[tag=Starting] [{"text":"    "},{"text":"➡","color":"gold","bold":true},{"text":" Map: ","color":"yellow"},{"text":"Hostel","color":"blue"}]
execute if score !Timer Starting matches 32 if score !Map OptionsInGame matches 6 run tellraw @a[tag=Starting] [{"text":"    "},{"text":"➡","color":"gold","bold":true},{"text":" Map: ","color":"yellow"},{"text":"Cy","color":"dark_purple"},{"text":"ber","color":"gold"}]
execute if score !Timer Starting matches 32 if score !Map OptionsInGame matches 7 run tellraw @a[tag=Starting] [{"text":"    "},{"text":"➡","color":"gold","bold":true},{"text":" Map: ","color":"yellow"},{"text":"Tr","color":"blue"},{"text":"on","color":"gold"}]
execute if score !Timer Starting matches 32 if score !Map OptionsInGame matches 8 run tellraw @a[tag=Starting] [{"text":"    "},{"text":"➡","color":"gold","bold":true},{"text":" Map: ","color":"yellow"},{"text":"Island","color":"green"}]
execute if score !Timer Starting matches 32 if score !Map OptionsInGame matches 9 run tellraw @a[tag=Starting] [{"text":"    "},{"text":"➡","color":"gold","bold":true},{"text":" Map: ","color":"yellow"},{"text":"Metro","color":"dark_aqua"}]
execute if score !Timer Starting matches 32 if score !Map OptionsInGame matches 10 run tellraw @a[tag=Starting] [{"text":"    "},{"text":"➡","color":"gold","bold":true},{"text":" Map: ","color":"yellow"},{"text":"Aquarium","color":"aqua"}]
execute if score !Timer Starting matches 32 if score !Map OptionsInGame matches 11 run tellraw @a[tag=Starting] [{"text":"    "},{"text":"➡","color":"gold","bold":true},{"text":" Map: ","color":"yellow"},{"text":"Parking","color":"white"}]
execute if score !Timer Starting matches 32 if score !Map OptionsInGame matches 12 run tellraw @a[tag=Starting] [{"text":"    "},{"text":"➡","color":"gold","bold":true},{"text":" Map: ","color":"yellow"},{"text":"Cabaret","color":"red"}]
execute if score !Timer Starting matches 32 if score !Map OptionsInGame matches 13 run tellraw @a[tag=Starting] [{"text":"    "},{"text":"➡","color":"gold","bold":true},{"text":" Map: ","color":"yellow"},{"text":"Mall","color":"dark_green"}]
execute if score !Timer Starting matches 32 if score !Map OptionsInGame matches 14 run tellraw @a[tag=Starting] [{"text":"    "},{"text":"➡","color":"gold","bold":true},{"text":" Map: ","color":"yellow"},{"text":"Pa","color":"blue"},{"text":"r","color":"white"},{"text":"is","color":"red"}]

# Lives
execute if score !Timer Starting matches 34 run tellraw @a[tag=Starting] [{"text":"    "},{"text":"➡","color":"gold","bold":true},{"text":" Lives at the begining: ","color":"yellow"},{"score":{"name":"!Live","objective":"OptionsInGame"},"color":"gold"},{"text":" ❤","color":"dark_red","bold":"true"}]

# Powerups
execute if score !Timer Starting matches 36 if score !Powerups OptionsInGame matches 2 run tellraw @a[tag=Starting] [{"text":"    "},{"text":"➡","color":"gold","bold":true},{"text":" Powerups will spawn every: ","color":"yellow"},{"text":"10 seconds","color":"dark_green"}]
execute if score !Timer Starting matches 36 if score !Powerups OptionsInGame matches 3 run tellraw @a[tag=Starting] [{"text":"    "},{"text":"➡","color":"gold","bold":true},{"text":" Powerups will spawn every: ","color":"yellow"},{"text":"30 seconds","color":"green"}]
execute if score !Timer Starting matches 36 if score !Powerups OptionsInGame matches 4 run tellraw @a[tag=Starting] [{"text":"    "},{"text":"➡","color":"gold","bold":true},{"text":" Powerups will spawn every: ","color":"yellow"},{"text":"1 minute","color":"yellow"}]
execute if score !Timer Starting matches 36 if score !Powerups OptionsInGame matches 5 run tellraw @a[tag=Starting] [{"text":"    "},{"text":"➡","color":"gold","bold":true},{"text":" Powerups will spawn every: ","color":"yellow"},{"text":"2 minutes","color":"gold"}]
execute if score !Timer Starting matches 36 if score !Powerups OptionsInGame matches 6 run tellraw @a[tag=Starting] [{"text":"    "},{"text":"➡","color":"gold","bold":true},{"text":" Powerups: ","color":"yellow"},{"text":"Disabled","color":"red"}]

# Nametag
execute if score !Timer Starting matches 38 if score !Player_name OptionsInGame matches 2 run tellraw @a[tag=Starting] [{"text":"    "},{"text":"➡","color":"gold","bold":true},{"text":" Nametag will be: ","color":"yellow"},{"text":"Hidden","color":"red"}]
execute if score !Timer Starting matches 38 if score !Player_name OptionsInGame matches 3 run tellraw @a[tag=Starting] [{"text":"    "},{"text":"➡","color":"gold","bold":true},{"text":" Nametag will be: ","color":"yellow"},{"text":"Displayed","color":"green"}]

# Deathmatch
execute if score !Timer Starting matches 40 if score !Deathmatch OptionsInGame matches 2 run tellraw @a[tag=Starting] [{"text":"    "},{"text":"➡","color":"gold","bold":true},{"text":" Sudden death will start after: ","color":"yellow"},{"text":"3 minutes","color":"red"}]
execute if score !Timer Starting matches 40 if score !Deathmatch OptionsInGame matches 3 run tellraw @a[tag=Starting] [{"text":"    "},{"text":"➡","color":"gold","bold":true},{"text":" Sudden death will start after: ","color":"yellow"},{"text":"5 minutes","color":"gold"}]
execute if score !Timer Starting matches 40 if score !Deathmatch OptionsInGame matches 4 run tellraw @a[tag=Starting] [{"text":"    "},{"text":"➡","color":"gold","bold":true},{"text":" Sudden death will start after: ","color":"yellow"},{"text":"10 minutes","color":"yellow"}]
execute if score !Timer Starting matches 40 if score !Deathmatch OptionsInGame matches 5 run tellraw @a[tag=Starting] [{"text":"    "},{"text":"➡","color":"gold","bold":true},{"text":" Sudden death will start after: ","color":"yellow"},{"text":"20 minutes","color":"green"}]
execute if score !Timer Starting matches 40 if score !Deathmatch OptionsInGame matches 6 run tellraw @a[tag=Starting] [{"text":"    "},{"text":"➡","color":"gold","bold":true},{"text":" Sudden death will start after: ","color":"yellow"},{"text":"30 minutes","color":"dark_green"}]
execute if score !Timer Starting matches 40 if score !Deathmatch OptionsInGame matches 7 run tellraw @a[tag=Starting] [{"text":"    "},{"text":"➡","color":"gold","bold":true},{"text":" Sudden death: ","color":"yellow"},{"text":"Disabled","color":"red"}]

# AFK glowing
execute if score !Timer Starting matches 42 if score !AFK_glowing OptionsInGame matches 2 run tellraw @a[tag=Starting] [{"text":"    "},{"text":"➡","color":"gold","bold":true},{"text":" AFK glowing: ","color":"yellow"},{"text":"On\n","color":"green"}]
execute if score !Timer Starting matches 42 if score !AFK_glowing OptionsInGame matches 3 run tellraw @a[tag=Starting] [{"text":"    "},{"text":"➡","color":"gold","bold":true},{"text":" AFK glowing: ","color":"yellow"},{"text":"Off\n","color":"red"}]

# Starting in
execute if score !Timer Starting matches 50 run tellraw @a[tag=Starting] [{"text":""},{"text":">","color":"gold","bold":true},{"text":" Starting in","color":"yellow","bold":true},{"text":":","color":"yellow"}]
execute if score !Timer Starting matches 50 run tellraw @a[tag=Starting] [{"text":"    "},{"text":"➡","color":"gold","bold":true},{"text":" 10","color":"gold"},{"text":" seconds!","color":"yellow"}]
execute if score !Timer Starting matches 150 run tellraw @a[tag=Starting] [{"text":"    "},{"text":"➡","color":"gold","bold":true},{"text":" 5","color":"gold"},{"text":" seconds!","color":"yellow"}]
execute if score !Timer Starting matches 190 run tellraw @a[tag=Starting] [{"text":"    "},{"text":"➡","color":"gold","bold":true},{"text":" 3","color":"gold"},{"text":" seconds!","color":"yellow"}]
execute if score !Timer Starting matches 210 run tellraw @a[tag=Starting] [{"text":"    "},{"text":"➡","color":"gold","bold":true},{"text":" 2","color":"gold"},{"text":" seconds!","color":"yellow"}]
execute if score !Timer Starting matches 230 run tellraw @a[tag=Starting] [{"text":"    "},{"text":"➡","color":"gold","bold":true},{"text":" 1","color":"gold"},{"text":" second!","color":"yellow"}]

execute if score !Timer Starting matches 250 run tellraw @a[tag=Starting] [{"text":""},{"text":"                       ","color":"yellow","strikethrough":true},{"text":" Game Started ","color":"gold","bold":true},{"text":"                       ","color":"yellow","strikethrough":true}]
# ============================== #

# Playsounds
execute if score !Timer Starting matches 2 as @a[tag=Starting] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ .5 2
execute if score !Timer Starting matches 50 as @a[tag=Starting] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 1
execute if score !Timer Starting matches 150 as @a[tag=Starting] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 1.5
execute if score !Timer Starting matches 190 as @a[tag=Starting] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 1.5
execute if score !Timer Starting matches 210 as @a[tag=Starting] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 1.5
execute if score !Timer Starting matches 230 as @a[tag=Starting] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 1.5
execute if score !Timer Starting matches 250 as @a[tag=Starting] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 2
execute if score !Timer Starting matches 269 as @a[tag=Starting] at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~

# Titles
execute if score !Timer Starting matches 20 run title @a[tag=Starting] times 0 15 5
execute if score !Timer Starting matches 20..35 run title @a[tag=Starting] title {"text":""}
execute if score !Timer Starting matches 20 run title @a[tag=Starting] subtitle {"text":"Loading map","color":"yellow"}
execute if score !Timer Starting matches 25 run title @a[tag=Starting] subtitle {"text":"Loading map.","color":"yellow"}
execute if score !Timer Starting matches 30 run title @a[tag=Starting] subtitle {"text":"Loading map..","color":"yellow"}
execute if score !Timer Starting matches 35 run title @a[tag=Starting] subtitle {"text":"Loading map...","color":"yellow"}
execute if score !Timer Starting matches 50 run title @a[tag=Starting] subtitle {"text":"","color":"yellow"}

execute if score !Timer Starting matches 50..290 run title @a[tag=Starting] times 0 15 5
execute if score !Timer Starting matches 50..69 run title @a[tag=Starting] actionbar [{"text":""},{"text":"> ","color":"gold","bold":true},{"text":"Starting in","color":"yellow","bold":true},{"text":": ","color":"yellow"},{"text":"10","color":"gold"},{"text":" seconds","color":"yellow"}]
execute if score !Timer Starting matches 70..89 run title @a[tag=Starting] actionbar [{"text":""},{"text":"> ","color":"gold","bold":true},{"text":"Starting in","color":"yellow","bold":true},{"text":": ","color":"yellow"},{"text":"9","color":"gold"},{"text":" seconds","color":"yellow"}]
execute if score !Timer Starting matches 90..109 run title @a[tag=Starting] actionbar [{"text":""},{"text":"> ","color":"gold","bold":true},{"text":"Starting in","color":"yellow","bold":true},{"text":": ","color":"yellow"},{"text":"8","color":"gold"},{"text":" seconds","color":"yellow"}]
execute if score !Timer Starting matches 110..129 run title @a[tag=Starting] actionbar [{"text":""},{"text":"> ","color":"gold","bold":true},{"text":"Starting in","color":"yellow","bold":true},{"text":": ","color":"yellow"},{"text":"7","color":"gold"},{"text":" seconds","color":"yellow"}]
execute if score !Timer Starting matches 130..149 run title @a[tag=Starting] actionbar [{"text":""},{"text":"> ","color":"gold","bold":true},{"text":"Starting in","color":"yellow","bold":true},{"text":": ","color":"yellow"},{"text":"6","color":"gold"},{"text":" seconds","color":"yellow"}]
execute if score !Timer Starting matches 150..169 run title @a[tag=Starting] actionbar [{"text":""},{"text":"> ","color":"gold","bold":true},{"text":"Starting in","color":"yellow","bold":true},{"text":": ","color":"yellow"},{"text":"5","color":"gold"},{"text":" seconds","color":"yellow"}]
execute if score !Timer Starting matches 170..189 run title @a[tag=Starting] actionbar [{"text":""},{"text":"> ","color":"gold","bold":true},{"text":"Starting in","color":"yellow","bold":true},{"text":": ","color":"yellow"},{"text":"4","color":"gold"},{"text":" seconds","color":"yellow"}]
execute if score !Timer Starting matches 190..209 run title @a[tag=Starting] actionbar [{"text":""},{"text":"> ","color":"gold","bold":true},{"text":"Starting in","color":"yellow","bold":true},{"text":": ","color":"yellow"},{"text":"3","color":"gold"},{"text":" seconds","color":"yellow"}]
execute if score !Timer Starting matches 210..229 run title @a[tag=Starting] actionbar [{"text":""},{"text":"> ","color":"gold","bold":true},{"text":"Starting in","color":"yellow","bold":true},{"text":": ","color":"yellow"},{"text":"2","color":"gold"},{"text":" seconds","color":"yellow"}]
execute if score !Timer Starting matches 230..249 run title @a[tag=Starting] actionbar [{"text":""},{"text":"> ","color":"gold","bold":true},{"text":"Starting in","color":"yellow","bold":true},{"text":": ","color":"yellow"},{"text":"1","color":"gold"},{"text":" second","color":"yellow"}]

execute if score !Timer Starting matches 250 run title @a[tag=Starting] title {"text":"L","color":"yellow"}
execute if score !Timer Starting matches 251 run title @a[tag=Starting] title {"text":"Le","color":"yellow"}
execute if score !Timer Starting matches 252 run title @a[tag=Starting] title {"text":"Let","color":"yellow"}
execute if score !Timer Starting matches 253 run title @a[tag=Starting] title {"text":"Let'","color":"yellow"}
execute if score !Timer Starting matches 254 run title @a[tag=Starting] title {"text":"Let's","color":"yellow"}
execute if score !Timer Starting matches 255 run title @a[tag=Starting] title {"text":"Let's ","color":"yellow"}
execute if score !Timer Starting matches 256 run title @a[tag=Starting] title {"text":"Let's g","color":"yellow"}
execute if score !Timer Starting matches 257 run title @a[tag=Starting] title {"text":"Let's go","color":"yellow"}
execute if score !Timer Starting matches 258 run title @a[tag=Starting] title {"text":"Let's go!","color":"yellow"}

execute if score !Timer Starting matches 250 run title @a[tag=Starting] actionbar [{"text":""}]
