# Timer remove one
scoreboard players remove @s Tips_timer 1

# Reset score
scoreboard players operation !Reset Tips_timer = @s Tips_timer
scoreboard players operation !Reset Tips_timer %= !Modulo Tips_timer
execute if score !Reset Tips_timer matches 0 run scoreboard players reset @s Tips_timer

# Give tips
title @s[scores={Tips_timer=0..49}] actionbar [{"text":""},{"text":"> ","color":"gold","bold":true},{"text":"Tips","color":"yellow","bold":true},{"text":": ","color":"yellow"},{"text":"You become invincible for 1 second after using a portal.","color":"yellow"}]
title @s[scores={Tips_timer=50..99}] actionbar [{"text":""},{"text":"> ","color":"gold","bold":true},{"text":"Tips","color":"yellow","bold":true},{"text":": ","color":"yellow"},{"text":"You can’t kill yourself with your hook.","color":"yellow"}]
title @s[scores={Tips_timer=100..149}] actionbar [{"text":""},{"text":"> ","color":"gold","bold":true},{"text":"Tips","color":"yellow","bold":true},{"text":": ","color":"yellow"},{"text":"You can disable the propellers of Cyber by activating the two levers.","color":"yellow"}]
title @s[scores={Tips_timer=150..199}] actionbar [{"text":""},{"text":"> ","color":"gold","bold":true},{"text":"Tips","color":"yellow","bold":true},{"text":": ","color":"yellow"},{"text":"In Team mode, lives are shared between the whole team. Be careful!","color":"yellow"}]
title @s[scores={Tips_timer=200..249}] actionbar [{"text":""},{"text":"> ","color":"gold","bold":true},{"text":"Tips","color":"yellow","bold":true},{"text":": ","color":"yellow"},{"text":"There is a hidden game in the lobby!","color":"yellow"}]
title @s[scores={Tips_timer=250..299}] actionbar [{"text":""},{"text":"> ","color":"gold","bold":true},{"text":"Tips","color":"yellow","bold":true},{"text":": ","color":"yellow"},{"text":"Change the game options in the lobby!","color":"yellow"}]
title @s[scores={Tips_timer=300..349}] actionbar [{"text":""},{"text":"> ","color":"gold","bold":true},{"text":"Tips","color":"yellow","bold":true},{"text":": ","color":"yellow"},{"text":"If you find a lever don’t you dare touch it!","color":"yellow"}]
title @s[scores={Tips_timer=350..399}] actionbar [{"text":""},{"text":"> ","color":"gold","bold":true},{"text":"Tips","color":"yellow","bold":true},{"text":": ","color":"yellow"},{"text":"In the lobby access the ender chest to select your Kill Effect.","color":"yellow"}]
title @s[scores={Tips_timer=400..449}] actionbar [{"text":""},{"text":"> ","color":"gold","bold":true},{"text":"Tips","color":"yellow","bold":true},{"text":": ","color":"yellow"},{"text":"You can have a preview of Kills Effects by pressing shift+click on the Kill Effect in your ender chest.","color":"yellow"}]
title @s[scores={Tips_timer=450..499}] actionbar [{"text":""},{"text":"> ","color":"gold","bold":true},{"text":"Tips","color":"yellow","bold":true},{"text":": ","color":"yellow"},{"text":"All the seats in the lobby are usable.","color":"yellow"}]
title @s[scores={Tips_timer=500..549}] actionbar [{"text":""},{"text":"> ","color":"gold","bold":true},{"text":"Tips","color":"yellow","bold":true},{"text":": ","color":"yellow"},{"text":"The painting I see is a secret passage, and I'm the key.","color":"yellow"}]

title @s[scores={Tips_timer=550..599}] actionbar [{"text":""},{"text":"> ","color":"gold","bold":true},{"text":"Tips","color":"yellow","bold":true},{"text":": ","color":"yellow"},{"text":"In island, use the zipline to run away.","color":"yellow"}]
title @s[scores={Tips_timer=600..649}] actionbar [{"text":""},{"text":"> ","color":"gold","bold":true},{"text":"Tips","color":"yellow","bold":true},{"text":": ","color":"yellow"},{"text":"Use shield and speed at the same time to be unbeatable.","color":"yellow"}]
title @s[scores={Tips_timer=650..699}] actionbar [{"text":""},{"text":"> ","color":"gold","bold":true},{"text":"Tips","color":"yellow","bold":true},{"text":": ","color":"yellow"},{"text":"Every button in the lobby might do something...","color":"yellow"}]
title @s[scores={Tips_timer=700..749}] actionbar [{"text":""},{"text":"> ","color":"gold","bold":true},{"text":"Tips","color":"yellow","bold":true},{"text":": ","color":"yellow"},{"text":"Grab mines with your hook to move them around.","color":"yellow"}]
title @s[scores={Tips_timer=750..799}] actionbar [{"text":""},{"text":"> ","color":"gold","bold":true},{"text":"Tips","color":"yellow","bold":true},{"text":": ","color":"yellow"},{"text":"Talk to the barman to get a coffee, drop it to get speed.","color":"yellow"}]
title @s[scores={Tips_timer=800..849}] actionbar [{"text":""},{"text":"> ","color":"gold","bold":true},{"text":"Tips","color":"yellow","bold":true},{"text":": ","color":"yellow"},{"text":"Search the carrot field, you might find something interesting.","color":"yellow"}]
title @s[scores={Tips_timer=850..899}] actionbar [{"text":""},{"text":"> ","color":"gold","bold":true},{"text":"Tips","color":"yellow","bold":true},{"text":": ","color":"yellow"},{"text":"See the big buildings up there? I'm sure you can find a ladder to climb to get there.","color":"yellow"}]
title @s[scores={Tips_timer=900..949}] actionbar [{"text":""},{"text":"> ","color":"gold","bold":true},{"text":"Tips","color":"yellow","bold":true},{"text":": ","color":"yellow"},{"text":"If you make a video on RodRun please credit us!","color":"yellow"}]

