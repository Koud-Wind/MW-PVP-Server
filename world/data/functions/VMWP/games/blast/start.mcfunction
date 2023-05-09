#计分板
scoreboard objectives add CT-Sneak stat.sneakTime
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
scoreboard players set @e[tag=VMW] CT-TR 2600
scoreboard players set @e[tag=VMW] CT-CTScore 0
scoreboard players set @e[tag=VMW] CT-TScore 0
scoreboard players set @e[tag=VMW] CT-Games 0
scoreboard players set @a[tag=InGame] money 10
scoreboard players set @a[tag=InGame] CT-killC 0
scoreboard players set @a[tag=InGame] CT-KillJ 0
scoreboard players set @a[tag=InGame] MainW 0
scoreboard players set @a[tag=InGame] SecondaryW 0

title @a[team=CT] subtitle [{"text":"§eKill all opponents or dismantle bombs to win"}]
title @a[team=T] subtitle [{"text":"§eKill all opponents or detonate bombs to win"}]
title @a[tag=InGame] title [{"text":"§bGame start"}]

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

clear @a[tag=!PVE-IG]
effect @a[tag=InGame] 1 1000000 0 true
xp -10000L @a[tag=!PVE-IG] 
stopsound @a record
gamemode 3 @a[team=Watch]
tellraw @a[tag=InGame] [{"text":"§bTip: Please right click §eweapon shop§b in §ehotbar§b to purchase props!"}]
tellraw @a[team=Watch] [{"text":"§7You are watching the whole game!"}]
execute @e[tag=VMW,score_CT-Map=0] ~ ~ ~ tp @a[team=Watch] -265 68 1289 -90 0
execute @e[tag=VMW,score_CT-Map=1,score_CT-Map_min=1] ~ ~ ~ tp @a[team=Watch] -366 78 1233 -180 0
execute @e[tag=VMW,score_CT-Map=2,score_CT-Map_min=2] ~ ~ ~ tp @a[team=Watch] -375 76 1302 -90 0
execute @e[tag=VMW,score_CT-Map=3,score_CT-Map_min=3] ~ ~ ~ tp @a[team=Watch] -388 78 1213 90 0
execute @e[tag=VMW,score_CT-Map=4,score_CT-Map_min=4] ~ ~ ~ tp @a[team=Watch] -476 73 1581 -90 0
execute @e[tag=VMW,score_CT-Map=5,score_CT-Map_min=5] ~ ~ ~ tp @a[team=Watch] -171 73 1596 90 0

execute @e[tag=VMW] ~ ~ ~ function vmwp:games/blast/setMap
execute @e[tag=VMW] ~ ~ ~ function vmwp:games/blast/startAGame

scoreboard players tag @e[tag=VMW] add GlobalGame
scoreboard players tag @e[tag=VMW] add start2
scoreboard players tag @e[tag=VMW] remove CT-WaitF
scoreboard players tag @e[tag=VMW] remove RS1
scoreboard players tag @e[tag=VMW] remove RS2
