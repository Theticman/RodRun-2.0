#scoreboard objectives remove RodRunLobbySC
#scoreboard objectives add RodRunLobbySC dummy
#scoreboard objectives modify RodRunLobbySC displayname [{"text":""},{"text":"     ","strikethrough":"true","color":"yellow"},{"text":" RodRun ","color":"gold","bold":true},{"text":"     ","strikethrough":"true","color":"yellow"}]

# Sidebar
scoreboard objectives setdisplay sidebar RodRunLobbySC

#Blank spaces
scoreboard players set §1 RodRunLobbySC 10
scoreboard players set §1§e§lOptions§r§e: RodRunLobbySC 9
scoreboard players set §2 RodRunLobbySC 4
scoreboard players set §1§e§lReady§r§e: RodRunLobbySC 3

#Ready
scoreboard players reset §2§c0 RodRunLobbySC
scoreboard players reset §2§61 RodRunLobbySC
scoreboard players reset §2§a2 RodRunLobbySC
scoreboard players reset §2§a3 RodRunLobbySC
scoreboard players reset §2§a4 RodRunLobbySC
scoreboard players reset §2§a5 RodRunLobbySC
scoreboard players reset §2§a6 RodRunLobbySC
scoreboard players reset §2§a7 RodRunLobbySC
scoreboard players reset §2§a8 RodRunLobbySC
scoreboard players reset §2§a9 RodRunLobbySC
scoreboard players reset §2§a10 RodRunLobbySC
scoreboard players reset §2§a10+ RodRunLobbySC

scoreboard players reset §2§1§c0 RodRunLobbySC
scoreboard players reset §2§1§61 RodRunLobbySC
scoreboard players reset §2§1§a2 RodRunLobbySC
scoreboard players reset §2§1§a3 RodRunLobbySC
scoreboard players reset §2§1§a4 RodRunLobbySC
scoreboard players reset §2§1§a5 RodRunLobbySC
scoreboard players reset §2§1§a6 RodRunLobbySC
scoreboard players reset §2§1§a7 RodRunLobbySC
scoreboard players reset §2§1§a8 RodRunLobbySC
scoreboard players reset §2§1§a9 RodRunLobbySC
scoreboard players reset §2§1§a10 RodRunLobbySC
scoreboard players reset §2§1§a10+ RodRunLobbySC
scoreboard players reset §2§2§c0 RodRunLobbySC
scoreboard players reset §2§2§61 RodRunLobbySC
scoreboard players reset §2§2§a2 RodRunLobbySC
scoreboard players reset §2§2§a3 RodRunLobbySC
scoreboard players reset §2§2§a4 RodRunLobbySC
scoreboard players reset §2§2§a5 RodRunLobbySC
scoreboard players reset §2§2§a6 RodRunLobbySC
scoreboard players reset §2§2§a7 RodRunLobbySC
scoreboard players reset §2§2§a8 RodRunLobbySC
scoreboard players reset §2§2§a9 RodRunLobbySC
scoreboard players reset §2§2§a10 RodRunLobbySC
scoreboard players reset §2§2§a10+ RodRunLobbySC
scoreboard players reset §2§3§c0 RodRunLobbySC
scoreboard players reset §2§3§61 RodRunLobbySC
scoreboard players reset §2§3§a2 RodRunLobbySC
scoreboard players reset §2§3§a3 RodRunLobbySC
scoreboard players reset §2§3§a4 RodRunLobbySC
scoreboard players reset §2§3§a5 RodRunLobbySC
scoreboard players reset §2§3§a6 RodRunLobbySC
scoreboard players reset §2§3§a7 RodRunLobbySC
scoreboard players reset §2§3§a8 RodRunLobbySC
scoreboard players reset §2§3§a9 RodRunLobbySC
scoreboard players reset §2§3§a10 RodRunLobbySC
scoreboard players reset §2§3§a10+ RodRunLobbySC

execute if score !Mode Options matches 0 if score !Players Count_ready matches 0 run scoreboard players set §2§c0 RodRunLobbySC 2
execute if score !Mode Options matches 0 if score !Players Count_ready matches 1 run scoreboard players set §2§61 RodRunLobbySC 2
execute if score !Mode Options matches 0 if score !Players Count_ready matches 2 run scoreboard players set §2§a2 RodRunLobbySC 2
execute if score !Mode Options matches 0 if score !Players Count_ready matches 3 run scoreboard players set §2§a3 RodRunLobbySC 2
execute if score !Mode Options matches 0 if score !Players Count_ready matches 4 run scoreboard players set §2§a4 RodRunLobbySC 2
execute if score !Mode Options matches 0 if score !Players Count_ready matches 5 run scoreboard players set §2§a5 RodRunLobbySC 2
execute if score !Mode Options matches 0 if score !Players Count_ready matches 6 run scoreboard players set §2§a6 RodRunLobbySC 2
execute if score !Mode Options matches 0 if score !Players Count_ready matches 7 run scoreboard players set §2§a7 RodRunLobbySC 2
execute if score !Mode Options matches 0 if score !Players Count_ready matches 8 run scoreboard players set §2§a8 RodRunLobbySC 2
execute if score !Mode Options matches 0 if score !Players Count_ready matches 9 run scoreboard players set §2§a9 RodRunLobbySC 2
execute if score !Mode Options matches 0 if score !Players Count_ready matches 10 run scoreboard players set §2§a10 RodRunLobbySC 2
execute if score !Mode Options matches 0 if score !Players Count_ready matches 11.. run scoreboard players set §2§a10+ RodRunLobbySC 2

execute if score !Mode Options matches 1 if score !Blue Count_ready matches 0 run scoreboard players set §2§1§c0 RodRunLobbySC 2
execute if score !Mode Options matches 1 if score !Blue Count_ready matches 1 run scoreboard players set §2§1§61 RodRunLobbySC 2
execute if score !Mode Options matches 1 if score !Blue Count_ready matches 2 run scoreboard players set §2§1§a2 RodRunLobbySC 2
execute if score !Mode Options matches 1 if score !Blue Count_ready matches 3 run scoreboard players set §2§1§a3 RodRunLobbySC 2
execute if score !Mode Options matches 1 if score !Blue Count_ready matches 4 run scoreboard players set §2§1§a4 RodRunLobbySC 2
execute if score !Mode Options matches 1 if score !Blue Count_ready matches 5 run scoreboard players set §2§1§a5 RodRunLobbySC 2
execute if score !Mode Options matches 1 if score !Blue Count_ready matches 6 run scoreboard players set §2§1§a6 RodRunLobbySC 2
execute if score !Mode Options matches 1 if score !Blue Count_ready matches 7 run scoreboard players set §2§1§a7 RodRunLobbySC 2
execute if score !Mode Options matches 1 if score !Blue Count_ready matches 8 run scoreboard players set §2§1§a8 RodRunLobbySC 2
execute if score !Mode Options matches 1 if score !Blue Count_ready matches 9 run scoreboard players set §2§1§a9 RodRunLobbySC 2
execute if score !Mode Options matches 1 if score !Blue Count_ready matches 10 run scoreboard players set §2§1§a10 RodRunLobbySC 2
execute if score !Mode Options matches 1 if score !Blue Count_ready matches 11.. run scoreboard players set §2§1§a10+ RodRunLobbySC 2
execute if score !Mode Options matches 1 if score !White Count_ready matches 0 run scoreboard players set §2§2§c0 RodRunLobbySC 1
execute if score !Mode Options matches 1 if score !White Count_ready matches 1 run scoreboard players set §2§2§61 RodRunLobbySC 1
execute if score !Mode Options matches 1 if score !White Count_ready matches 2 run scoreboard players set §2§2§a2 RodRunLobbySC 1
execute if score !Mode Options matches 1 if score !White Count_ready matches 3 run scoreboard players set §2§2§a3 RodRunLobbySC 1
execute if score !Mode Options matches 1 if score !White Count_ready matches 4 run scoreboard players set §2§2§a4 RodRunLobbySC 1
execute if score !Mode Options matches 1 if score !White Count_ready matches 5 run scoreboard players set §2§2§a5 RodRunLobbySC 1
execute if score !Mode Options matches 1 if score !White Count_ready matches 6 run scoreboard players set §2§2§a6 RodRunLobbySC 1
execute if score !Mode Options matches 1 if score !White Count_ready matches 7 run scoreboard players set §2§2§a7 RodRunLobbySC 1
execute if score !Mode Options matches 1 if score !White Count_ready matches 8 run scoreboard players set §2§2§a8 RodRunLobbySC 1
execute if score !Mode Options matches 1 if score !White Count_ready matches 9 run scoreboard players set §2§2§a9 RodRunLobbySC 1
execute if score !Mode Options matches 1 if score !White Count_ready matches 10 run scoreboard players set §2§2§a10 RodRunLobbySC 1
execute if score !Mode Options matches 1 if score !White Count_ready matches 11.. run scoreboard players set §2§2§a10+ RodRunLobbySC 1
execute if score !Mode Options matches 1 if score !Red Count_ready matches 0 run scoreboard players set §2§3§c0 RodRunLobbySC 0
execute if score !Mode Options matches 1 if score !Red Count_ready matches 1 run scoreboard players set §2§3§61 RodRunLobbySC 0
execute if score !Mode Options matches 1 if score !Red Count_ready matches 2 run scoreboard players set §2§3§a2 RodRunLobbySC 0
execute if score !Mode Options matches 1 if score !Red Count_ready matches 3 run scoreboard players set §2§3§a3 RodRunLobbySC 0
execute if score !Mode Options matches 1 if score !Red Count_ready matches 4 run scoreboard players set §2§3§a4 RodRunLobbySC 0
execute if score !Mode Options matches 1 if score !Red Count_ready matches 5 run scoreboard players set §2§3§a5 RodRunLobbySC 0
execute if score !Mode Options matches 1 if score !Red Count_ready matches 6 run scoreboard players set §2§3§a6 RodRunLobbySC 0
execute if score !Mode Options matches 1 if score !Red Count_ready matches 7 run scoreboard players set §2§3§a7 RodRunLobbySC 0
execute if score !Mode Options matches 1 if score !Red Count_ready matches 8 run scoreboard players set §2§3§a8 RodRunLobbySC 0
execute if score !Mode Options matches 1 if score !Red Count_ready matches 9 run scoreboard players set §2§3§a9 RodRunLobbySC 0
execute if score !Mode Options matches 1 if score !Red Count_ready matches 10 run scoreboard players set §2§3§a10 RodRunLobbySC 0
execute if score !Mode Options matches 1 if score !Red Count_ready matches 11.. run scoreboard players set §2§3§a10+ RodRunLobbySC 0

#Map
scoreboard players reset §7§5Random RodRunLobbySC
scoreboard players reset §7§7Warehouse RodRunLobbySC
scoreboard players reset §7§fWhiteHouse RodRunLobbySC
scoreboard players reset §7§6Egypt RodRunLobbySC
scoreboard players reset §1§9Hostel RodRunLobbySC
scoreboard players reset §7§5Cy§6ber RodRunLobbySC
scoreboard players reset §7§9Tr§6on RodRunLobbySC
scoreboard players reset §7§aIsland RodRunLobbySC
scoreboard players reset §7§3Metro RodRunLobbySC
scoreboard players reset §7§8§bAquarium RodRunLobbySC
scoreboard players reset §7§8§fParking RodRunLobbySC
scoreboard players reset §7§cCabaret RodRunLobbySC
scoreboard players reset §7§2Mall RodRunLobbySC
scoreboard players reset §7§9Pa§fr§cis RodRunLobbySC

execute if score !Map Options matches 1 run scoreboard players set §7§5Random RodRunLobbySC 8
execute if score !Map Options matches 2 run scoreboard players set §7§7Warehouse RodRunLobbySC 8
execute if score !Map Options matches 3 run scoreboard players set §7§fWhiteHouse RodRunLobbySC 8
execute if score !Map Options matches 4 run scoreboard players set §7§6Egypt RodRunLobbySC 8
execute if score !Map Options matches 5 run scoreboard players set §1§9Hostel RodRunLobbySC 8
execute if score !Map Options matches 6 run scoreboard players set §7§5Cy§6ber RodRunLobbySC 8
execute if score !Map Options matches 7 run scoreboard players set §7§9Tr§6on RodRunLobbySC 8
execute if score !Map Options matches 8 run scoreboard players set §7§aIsland RodRunLobbySC 8
execute if score !Map Options matches 9 run scoreboard players set §7§3Metro RodRunLobbySC 8
execute if score !Map Options matches 10 run scoreboard players set §7§8§bAquarium RodRunLobbySC 8
execute if score !Map Options matches 11 run scoreboard players set §7§8§fParking RodRunLobbySC 8
execute if score !Map Options matches 12 run scoreboard players set §7§cCabaret RodRunLobbySC 8
execute if score !Map Options matches 13 run scoreboard players set §7§2Mall RodRunLobbySC 8
execute if score !Map Options matches 14 run scoreboard players set §7§9Pa§fr§cis RodRunLobbySC 8

#Lives
scoreboard players reset §6§5Random RodRunLobbySC
scoreboard players reset §7§60 RodRunLobbySC
scoreboard players reset §7§61 RodRunLobbySC
scoreboard players reset §7§62 RodRunLobbySC
scoreboard players reset §7§63 RodRunLobbySC
scoreboard players reset §7§64 RodRunLobbySC
scoreboard players reset §7§65 RodRunLobbySC
scoreboard players reset §7§66 RodRunLobbySC
scoreboard players reset §7§67 RodRunLobbySC
scoreboard players reset §7§68 RodRunLobbySC
scoreboard players reset §7§69 RodRunLobbySC
scoreboard players reset §7§610 RodRunLobbySC
scoreboard players reset §7§611 RodRunLobbySC
scoreboard players reset §7§612 RodRunLobbySC
scoreboard players reset §7§613 RodRunLobbySC
scoreboard players reset §7§614 RodRunLobbySC
scoreboard players reset §7§615 RodRunLobbySC
scoreboard players reset §7§616 RodRunLobbySC
scoreboard players reset §7§617 RodRunLobbySC
scoreboard players reset §7§618 RodRunLobbySC
scoreboard players reset §7§619 RodRunLobbySC
scoreboard players reset §7§620 RodRunLobbySC
scoreboard players reset §7§621 RodRunLobbySC
scoreboard players reset §7§622 RodRunLobbySC
scoreboard players reset §7§623 RodRunLobbySC
scoreboard players reset §7§624 RodRunLobbySC
scoreboard players reset §7§625 RodRunLobbySC
scoreboard players reset §7§626 RodRunLobbySC
scoreboard players reset §7§627 RodRunLobbySC
scoreboard players reset §7§628 RodRunLobbySC
scoreboard players reset §7§629 RodRunLobbySC
scoreboard players reset §7§630 RodRunLobbySC
scoreboard players reset §7§631 RodRunLobbySC
scoreboard players reset §7§632 RodRunLobbySC
scoreboard players reset §7§633 RodRunLobbySC
scoreboard players reset §7§634 RodRunLobbySC
scoreboard players reset §7§635 RodRunLobbySC
scoreboard players reset §7§636 RodRunLobbySC
scoreboard players reset §7§637 RodRunLobbySC
scoreboard players reset §7§638 RodRunLobbySC
scoreboard players reset §7§639 RodRunLobbySC
scoreboard players reset §7§640 RodRunLobbySC
scoreboard players reset §7§641 RodRunLobbySC
scoreboard players reset §7§642 RodRunLobbySC
scoreboard players reset §7§643 RodRunLobbySC
scoreboard players reset §7§644 RodRunLobbySC
scoreboard players reset §7§645 RodRunLobbySC
scoreboard players reset §7§646 RodRunLobbySC
scoreboard players reset §7§647 RodRunLobbySC
scoreboard players reset §7§648 RodRunLobbySC
scoreboard players reset §7§649 RodRunLobbySC
scoreboard players reset §7§650 RodRunLobbySC

execute if score !Live Options matches 0.. run team modify Lives suffix {"text":" §4❤ ","color":"white","bold":"false"}
execute if score !Live Options matches -1 run team modify Lives suffix {"text":""}

execute if score !Live Options matches -1 run scoreboard players set §6§5Random RodRunLobbySC 7
execute if score !Live Options matches 0 run scoreboard players set §7§60 RodRunLobbySC 7
execute if score !Live Options matches 1 run scoreboard players set §7§61 RodRunLobbySC 7
execute if score !Live Options matches 2 run scoreboard players set §7§62 RodRunLobbySC 7
execute if score !Live Options matches 3 run scoreboard players set §7§63 RodRunLobbySC 7
execute if score !Live Options matches 4 run scoreboard players set §7§64 RodRunLobbySC 7
execute if score !Live Options matches 5 run scoreboard players set §7§65 RodRunLobbySC 7
execute if score !Live Options matches 6 run scoreboard players set §7§66 RodRunLobbySC 7
execute if score !Live Options matches 7 run scoreboard players set §7§67 RodRunLobbySC 7
execute if score !Live Options matches 8 run scoreboard players set §7§68 RodRunLobbySC 7
execute if score !Live Options matches 9 run scoreboard players set §7§69 RodRunLobbySC 7
execute if score !Live Options matches 10 run scoreboard players set §7§610 RodRunLobbySC 7
execute if score !Live Options matches 11 run scoreboard players set §7§611 RodRunLobbySC 7
execute if score !Live Options matches 12 run scoreboard players set §7§612 RodRunLobbySC 7
execute if score !Live Options matches 13 run scoreboard players set §7§613 RodRunLobbySC 7
execute if score !Live Options matches 14 run scoreboard players set §7§614 RodRunLobbySC 7
execute if score !Live Options matches 15 run scoreboard players set §7§615 RodRunLobbySC 7
execute if score !Live Options matches 16 run scoreboard players set §7§616 RodRunLobbySC 7
execute if score !Live Options matches 17 run scoreboard players set §7§617 RodRunLobbySC 7
execute if score !Live Options matches 18 run scoreboard players set §7§618 RodRunLobbySC 7
execute if score !Live Options matches 19 run scoreboard players set §7§619 RodRunLobbySC 7
execute if score !Live Options matches 20 run scoreboard players set §7§620 RodRunLobbySC 7
execute if score !Live Options matches 21 run scoreboard players set §7§621 RodRunLobbySC 7
execute if score !Live Options matches 22 run scoreboard players set §7§622 RodRunLobbySC 7
execute if score !Live Options matches 23 run scoreboard players set §7§623 RodRunLobbySC 7
execute if score !Live Options matches 24 run scoreboard players set §7§624 RodRunLobbySC 7
execute if score !Live Options matches 25 run scoreboard players set §7§625 RodRunLobbySC 7
execute if score !Live Options matches 26 run scoreboard players set §7§626 RodRunLobbySC 7
execute if score !Live Options matches 27 run scoreboard players set §7§627 RodRunLobbySC 7
execute if score !Live Options matches 28 run scoreboard players set §7§628 RodRunLobbySC 7
execute if score !Live Options matches 29 run scoreboard players set §7§629 RodRunLobbySC 7
execute if score !Live Options matches 30 run scoreboard players set §7§630 RodRunLobbySC 7
execute if score !Live Options matches 31 run scoreboard players set §7§631 RodRunLobbySC 7
execute if score !Live Options matches 32 run scoreboard players set §7§632 RodRunLobbySC 7
execute if score !Live Options matches 33 run scoreboard players set §7§633 RodRunLobbySC 7
execute if score !Live Options matches 34 run scoreboard players set §7§634 RodRunLobbySC 7
execute if score !Live Options matches 35 run scoreboard players set §7§635 RodRunLobbySC 7
execute if score !Live Options matches 36 run scoreboard players set §7§636 RodRunLobbySC 7
execute if score !Live Options matches 37 run scoreboard players set §7§637 RodRunLobbySC 7
execute if score !Live Options matches 38 run scoreboard players set §7§638 RodRunLobbySC 7
execute if score !Live Options matches 39 run scoreboard players set §7§639 RodRunLobbySC 7
execute if score !Live Options matches 40 run scoreboard players set §7§640 RodRunLobbySC 7
execute if score !Live Options matches 41 run scoreboard players set §7§641 RodRunLobbySC 7
execute if score !Live Options matches 42 run scoreboard players set §7§642 RodRunLobbySC 7
execute if score !Live Options matches 43 run scoreboard players set §7§643 RodRunLobbySC 7
execute if score !Live Options matches 44 run scoreboard players set §7§644 RodRunLobbySC 7
execute if score !Live Options matches 45 run scoreboard players set §7§645 RodRunLobbySC 7
execute if score !Live Options matches 46 run scoreboard players set §7§646 RodRunLobbySC 7
execute if score !Live Options matches 47 run scoreboard players set §7§647 RodRunLobbySC 7
execute if score !Live Options matches 48 run scoreboard players set §7§648 RodRunLobbySC 7
execute if score !Live Options matches 49 run scoreboard players set §7§649 RodRunLobbySC 7
execute if score !Live Options matches 50 run scoreboard players set §7§650 RodRunLobbySC 7

#Powerups
scoreboard players reset §5§5Random RodRunLobbySC
scoreboard players reset §5§210sec RodRunLobbySC
scoreboard players reset §5§a30sec RodRunLobbySC
scoreboard players reset §5§e1min RodRunLobbySC
scoreboard players reset §5§62min RodRunLobbySC
scoreboard players reset §5§cDisabled RodRunLobbySC

execute if score !Powerups Options matches 1 run scoreboard players set §5§5Random RodRunLobbySC 6
execute if score !Powerups Options matches 2 run scoreboard players set §5§210sec RodRunLobbySC 6
execute if score !Powerups Options matches 3 run scoreboard players set §5§a30sec RodRunLobbySC 6
execute if score !Powerups Options matches 4 run scoreboard players set §5§e1min RodRunLobbySC 6
execute if score !Powerups Options matches 5 run scoreboard players set §5§62min RodRunLobbySC 6
execute if score !Powerups Options matches 6 run scoreboard players set §5§cDisabled RodRunLobbySC 6

#Deathmatch
scoreboard players reset §3§5Random RodRunLobbySC
scoreboard players reset §3§c3min RodRunLobbySC
scoreboard players reset §3§65min RodRunLobbySC
scoreboard players reset §3§e10min RodRunLobbySC
scoreboard players reset §3§a20min RodRunLobbySC
scoreboard players reset §3§230min RodRunLobbySC
scoreboard players reset §3§cDisabled RodRunLobbySC

execute if score !Deathmatch Options matches 1 run scoreboard players set §3§5Random RodRunLobbySC 5
execute if score !Deathmatch Options matches 2 run scoreboard players set §3§c3min RodRunLobbySC 5
execute if score !Deathmatch Options matches 3 run scoreboard players set §3§65min RodRunLobbySC 5
execute if score !Deathmatch Options matches 4 run scoreboard players set §3§e10min RodRunLobbySC 5
execute if score !Deathmatch Options matches 5 run scoreboard players set §3§a20min RodRunLobbySC 5
execute if score !Deathmatch Options matches 6 run scoreboard players set §3§230min RodRunLobbySC 5
execute if score !Deathmatch Options matches 7 run scoreboard players set §3§cDisabled RodRunLobbySC 5
