# Score decrease
scoreboard players remove @s Informations 1

# Change back
data merge entity @s[scores={Informations=0}] {CustomName:'[{"text":"§e➤","bold":"true"}]'}

# Reset
scoreboard players reset @s[scores={Informations=0}] Informations