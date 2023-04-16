#计分板
scoreboard objectives add PC-KillCount playerKillCount §eKill count
scoreboard objectives setdisplay sidebar PC-KillCount
scoreboard objectives add PC-KillJ playerKillCount
scoreboard objectives add PC-DeathJ stat.deaths

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
scoreboard players set @e[tag=VMW] PC-TR 2800
scoreboard players set @e[tag=VMW] PC-Games 0
scoreboard players set @e[tag=VMW] PC-N 4
scoreboard players set @e[tag=VMW] PC-WaitT 0
scoreboard players set @e[tag=VMW] PC-1rdK 0
scoreboard players set @e[tag=VMW] PC-2rdK 0
scoreboard players set @e[tag=VMW] CT-STime 1
scoreboard players set @a[tag=InGame] money 29
scoreboard players set @a[tag=InGame] PC-KillCount 0
scoreboard players set @a[tag=InGame] PC-KillJ 0
scoreboard players set @a[tag=InGame] PC-Score 0
scoreboard players set @a[tag=InGame] MainW 0
scoreboard players set @a[tag=InGame] SecondaryW 0

title @a[tag=InGame] subtitle [{"text":"§e§lSurvive to the end to achieve victory"}]

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


clear @a[tag=!PVE-InGame]
replaceitem entity @a[tag=InGame] slot.armor.chest minecraft:elytra 1 0 {ench:[{lvl:1s,id:10s}],Unbreakable:1b,HideFlags:5,display:{Name:""},AttributeModifiers:[{UUIDMost:3618156733941892737L,UUIDLeast:-7584274578594019785L,Amount:13.0d,Slot:"chest",AttributeName:"generic.armor",Operation:0,Name:"generic.armor"}]}
xp -10000L @a 
stopsound @a record
gamemode 3 @a[team=Watch]
tellraw @a[tag=InGame] [{"text":"§bTip: Please right click §eweapon shop§b in §ehotbar§b to purchase props!"}]
tellraw @a[team=Watch] [{"text":"§7You are watching the whole game!"}]
tellraw @a[team=Watch] [{"text":"§f§l§nClick to join halfway","clickEvent":{"action":"run_command","value":"/trigger PC-Join set 1"}}]

scoreboard players tag @a[tag=JoinHalfway] remove JoinHalfway
scoreboard players tag @a[tag=InGame] add shop
scoreboard players tag @a[tag=InGame] add Melee
scoreboard players tag @a[tag=InGame] add Camo
scoreboard teams join CTT @a[tag=InGame]

execute @e[tag=VMW] ~ ~ ~ function vmwp:games/survival/startAGame

scoreboard players tag @e[tag=VMW] add GlobalGame
scoreboard players tag @e[tag=VMW] add start5
scoreboard players tag @e[tag=VMW] remove RS1
scoreboard players tag @e[tag=VMW] remove RS2
