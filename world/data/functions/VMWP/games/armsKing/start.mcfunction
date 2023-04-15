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
scoreboard players set @e[tag=VMW] PC-TR 8000
scoreboard players set @e[tag=VMW] PC-1rdK 0
scoreboard players set @e[tag=VMW] PC-2rdK 0
scoreboard players set @a[tag=InGame] PC-KillCount 0
scoreboard players set @a[tag=InGame] PC-KillJ 0
scoreboard players set @a[tag=InGame] PC-Score 0
scoreboard players set @a[tag=InGame] PC-CrownT 0
scoreboard players set @a[tag=InGame,score_S-Shop=0] MainW 45
scoreboard players set @a[tag=InGame,score_S-Shop=1,score_S-Shop_min=1] MainW 49
scoreboard players set @a[tag=InGame,score_S-Shop=2,score_S-Shop_min=2] MainW 53

title @a[tag=InGame] subtitle [{"text":"§eRank in the top 2 points at time of settlement to win"}]
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
effect @a[tag=InGame] 15 10 10 true
effect @a[tag=InGame] 2 10 50 true
effect @a[tag=InGame] 8 11 130 true
effect @a[tag=InGame] 12 15 0 true
effect @a[tag=InGame] 14 10 0 true
effect @a[tag=InGame] 11 10 50 true
effect @a[tag=InGame] 6 1 4 true
effect @a[tag=InGame] 25 9 130 true

replaceitem entity @a[tag=InGame] slot.armor.chest minecraft:leather_chestplate 1 0 {ench:[{lvl:1s,id:10s}],Unbreakable:1b,HideFlags:5,display:{color:8388863,Name:""},AttributeModifiers:[{UUIDMost:3618156733941892737L,UUIDLeast:-7584274578594019785L,Amount:13.0d,Slot:"chest",AttributeName:"generic.armor",Operation:0,Name:"generic.armor"}]}
replaceitem entity @a[tag=InGame,score_S-Shop=0] slot.hotbar.0 mw:ump_45 1 0 {IUuidLeast:-9187283779450871651L,Ammo:25,IUuidMost:3144311718286675475L,Instance:[B;-32B,83B,21B,-112B,-126B,43B,-31B,45B,117B,49B,126B,79B,17B,126B,62B,-127B,0B,0B,0B,9B,43B,-94B,-42B,-39B,55B,-109B,78B,19B,-128B,-128B,54B,20B,51B,31B,96B,-99B,0B,0B,19B,-15B,0B,0B,0B,4B,0B,0B,0B,0B,0B,0B,0B,77B,75B,99B,82B,108B,-118B,-87B,-71B,14B,-97B,-92B,100B,-74B,-111B,106B,61B,-40B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,114B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,21B,0B,0B,0B,0B,0B,0B,18B,60B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,111B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-99B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,25B,0B,64B,0B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fUMP45"}}
replaceitem entity @a[tag=InGame,score_S-Shop=1,score_S-Shop_min=1] slot.hotbar.0 mw:pp91_kedr 1 0 {IUuidLeast:-8671917804440157577L,Ammo:20,IUuidMost:582540569407212035L,Instance:[B;-32B,83B,21B,-112B,-126B,43B,-31B,45B,117B,49B,126B,79B,17B,126B,62B,-127B,0B,0B,0B,9B,8B,21B,-103B,-113B,-70B,-59B,74B,3B,-121B,-89B,40B,-77B,-32B,-11B,-126B,119B,0B,0B,20B,89B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,-126B,75B,99B,82B,108B,-118B,-87B,-71B,14B,-97B,-92B,100B,-74B,-111B,106B,61B,-40B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,19B,-90B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,19B,18B,0B,0B,19B,-36B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-99B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,20B,0B,64B,0B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fPP-91"}}
replaceitem entity @a[tag=InGame,score_S-Shop=2,score_S-Shop_min=2] slot.hotbar.0 mw:uzi 1 0 {IUuidLeast:-8928750165873598474L,Ammo:32,IUuidMost:-1167410042056523076L,Instance:[B;-32B,83B,21B,-112B,-126B,43B,-31B,45B,117B,49B,126B,79B,17B,126B,62B,-127B,0B,0B,0B,9B,-17B,-52B,-122B,-64B,127B,-1B,66B,-68B,-124B,22B,-75B,7B,-38B,-28B,-33B,-10B,0B,0B,21B,91B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,58B,75B,99B,82B,108B,-118B,-87B,-71B,14B,-97B,-92B,100B,-74B,-111B,106B,61B,-40B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,21B,-19B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,19B,3B,0B,0B,18B,-28B,0B,0B,0B,0B,0B,0B,19B,-101B,0B,0B,0B,0B,0B,0B,16B,111B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-99B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,32B,0B,64B,0B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fUzi"}}

xp -10000L @a 
stopsound @a record
gamemode 3 @a[team=Watch]
tellraw @a[team=Watch] [{"text":"§7You are watching the whole game!"}]
tellraw @a[team=Watch] [{"text":"§f§l§nClick to join halfway","clickEvent":{"action":"run_command","value":"/trigger PC-Join set 1"}}]

scoreboard players tag @a[tag=JoinHalfway] remove JoinHalfway
scoreboard teams join CTT @a[tag=InGame]

scoreboard players set @a[tag=InGame] PC-DeathJ 1


scoreboard players tag @e[tag=VMW] add GlobalGame
scoreboard players tag @e[tag=VMW] add start3
scoreboard players tag @e[tag=VMW] remove RS1
