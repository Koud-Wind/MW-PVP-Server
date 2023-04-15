#计分板
scoreboard objectives add CT-killC playerKillCount
scoreboard objectives add CT-KillJ playerKillCount
scoreboard objectives add CT-DeathJ stat.deaths

#shop
scoreboard objectives remove moduleP
scoreboard objectives remove grenadeP
scoreboard objectives remove assaultRP
scoreboard objectives remove S&DMRP
scoreboard objectives remove SMGP
scoreboard objectives remove shotGunP
scoreboard objectives remove heavyP
scoreboard objectives remove pistolP
scoreboard objectives remove ultimateWP

scoreboard objectives add moduleP trigger
scoreboard objectives add grenadeP trigger
scoreboard objectives add assaultRP trigger
scoreboard objectives add S&DMRP trigger
scoreboard objectives add SMGP trigger
scoreboard objectives add shotGunP trigger
scoreboard objectives add heavyP trigger
scoreboard objectives add pistolP trigger
scoreboard objectives add ultimateWP trigger

#
scoreboard players tag @a[tag=Preparing] add InGame
scoreboard players tag @a[tag=Preparing] remove Preparing
scoreboard players tag @a[tag=S-Map] remove S-Map

scoreboard players set @a music 0
scoreboard players set @e[tag=VMW] CT-TR 9800
scoreboard players set @e[tag=VMW] CT-CTScore 0
scoreboard players set @e[tag=VMW] CT-TScore 0

scoreboard players set @a[tag=InGame] money 19
scoreboard players set @a[tag=InGame] CT-killC 0
scoreboard players set @a[tag=InGame] CT-KillJ 0
scoreboard players set @a[tag=InGame] MainW 0
scoreboard players set @a[tag=InGame] SecondaryW 0

scoreboard players tag @a[tag=InGame] add Camo
scoreboard players tag @a[tag=InGame] add Melee
scoreboard players tag @a[tag=InGame] add shop

title @a[team=CT] subtitle [{"text":"§eWin with a total of 65 kills"}]
title @a[team=T] subtitle [{"text":"§eWin with a total of 65 kills"}]
title @a[tag=InGame] title [{"text":"§bGame Start"}]

replaceitem entity @a slot.enderchest.0 minecraft:air
replaceitem entity @a slot.enderchest.1 minecraft:air
replaceitem entity @a slot.enderchest.2 minecraft:air
replaceitem entity @a slot.enderchest.3 minecraft:air
replaceitem entity @a slot.enderchest.4 minecraft:air
replaceitem entity @a slot.enderchest.5 minecraft:air
replaceitem entity @a slot.enderchest.6 minecraft:air
replaceitem entity @a slot.enderchest.7 minecraft:air
replaceitem entity @a slot.enderchest.8 minecraft:air
replaceitem entity @a slot.enderchest.9 minecraft:air
replaceitem entity @a slot.enderchest.10 minecraft:air
replaceitem entity @a slot.enderchest.11 minecraft:air
replaceitem entity @a slot.enderchest.12 minecraft:air
replaceitem entity @a slot.enderchest.13 minecraft:air
replaceitem entity @a slot.enderchest.14 minecraft:air
replaceitem entity @a slot.enderchest.15 minecraft:air
replaceitem entity @a slot.enderchest.16 minecraft:air
replaceitem entity @a slot.enderchest.17 minecraft:air
replaceitem entity @a slot.enderchest.18 minecraft:air
replaceitem entity @a slot.enderchest.19 minecraft:air
replaceitem entity @a slot.enderchest.20 minecraft:air
replaceitem entity @a slot.enderchest.21 minecraft:air
replaceitem entity @a slot.enderchest.22 minecraft:air
replaceitem entity @a slot.enderchest.23 minecraft:air
replaceitem entity @a slot.enderchest.24 minecraft:air
replaceitem entity @a slot.enderchest.25 minecraft:air
replaceitem entity @a slot.enderchest.26 minecraft:air

effect @a[tag=InGame] 2 10 50 true
effect @a[tag=InGame] 8 11 130 true
effect @a[tag=InGame] 12 15 0 true
effect @a[tag=InGame] 14 10 0 true
effect @a[tag=InGame] 15 10 0 true
effect @a[tag=InGame] 11 10 50 true
effect @a[tag=InGame] 6 1 4 true
effect @a[tag=InGame] 25 9 130 true

clear @a[tag=!PVE-InGame]
effect @a[tag=InGame] 1 1000000 0 true
xp -10000L @a[tag=!PVE-InGame] 
stopsound @a record
gamemode 3 @a[team=Watch]
tellraw @a[tag=InGame] [{"text":"§bTip: Please right click §eweapon shop§b in §ehotbar§b to purchase props!"}]
tellraw @a[team=Watch] [{"text":"§7You are watching the whole game!"}]

scoreboard players tag @e[tag=VMW] add GlobalGame
scoreboard players tag @e[tag=VMW] add start6
scoreboard players tag @e[tag=VMW] remove RS2
