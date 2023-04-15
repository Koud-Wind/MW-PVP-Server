#JoinHalfway
scoreboard players tag @s add InGame
scoreboard players set @s PC-KillCount 0
scoreboard players set @s PC-KillJ 0
scoreboard players set @s PC-Score 0
scoreboard players set @s[score_S-Shop=0] MainW 45
scoreboard players set @s[score_S-Shop=1,score_S-Shop_min=1] MainW 49
scoreboard players set @s[score_S-Shop=2,score_S-Shop_min=2] MainW 53
title @s subtitle [{"text":"§eYou will not get note if you do not enter the top 2"}]
title @s title [{"text":"§b§lJoin Halfway"}]
replaceitem entity @s slot.enderchest.0 minecraft:air
replaceitem entity @s slot.enderchest.1 minecraft:air
replaceitem entity @s slot.enderchest.2 minecraft:air
replaceitem entity @s slot.enderchest.3 minecraft:air
replaceitem entity @s slot.enderchest.4 minecraft:air
replaceitem entity @s slot.enderchest.5 minecraft:air
replaceitem entity @s slot.enderchest.6 minecraft:air
replaceitem entity @s slot.enderchest.7 minecraft:air
replaceitem entity @s slot.enderchest.8 minecraft:air
replaceitem entity @s slot.enderchest.9 minecraft:air
replaceitem entity @s slot.enderchest.10 minecraft:air
replaceitem entity @s slot.enderchest.11 minecraft:air
replaceitem entity @s slot.enderchest.12 minecraft:air
replaceitem entity @s slot.enderchest.13 minecraft:air
replaceitem entity @s slot.enderchest.14 minecraft:air
replaceitem entity @s slot.enderchest.15 minecraft:air
replaceitem entity @s slot.enderchest.16 minecraft:air
replaceitem entity @s slot.enderchest.17 minecraft:air
replaceitem entity @s slot.enderchest.18 minecraft:air
replaceitem entity @s slot.enderchest.19 minecraft:air
replaceitem entity @s slot.enderchest.20 minecraft:air
replaceitem entity @s slot.enderchest.21 minecraft:air
replaceitem entity @s slot.enderchest.22 minecraft:air
replaceitem entity @s slot.enderchest.23 minecraft:air
replaceitem entity @s slot.enderchest.24 minecraft:air
replaceitem entity @s slot.enderchest.25 minecraft:air
replaceitem entity @s slot.enderchest.26 minecraft:air
clear @s
effect @s 15 5 10 true
effect @s 12 10 0 true
effect @s 14 5 0 true
effect @s 11 5 50 true
effect @s 6 1 4 true

replaceitem entity @s slot.armor.chest minecraft:leather_chestplate 1 0 {ench:[{lvl:1s,id:10s}],Unbreakable:1b,HideFlags:5,display:{color:8388863,Name:""},AttributeModifiers:[{UUIDMost:3618156733941892737L,UUIDLeast:-7584274578594019785L,Amount:13.0d,Slot:"chest",AttributeName:"generic.armor",Operation:0,Name:"generic.armor"}]}
replaceitem entity @s[score_S-Shop=0] slot.hotbar.0 mw:ump_45 1 0 {IUuidLeast:-9187283779450871651L,Ammo:25,IUuidMost:3144311718286675475L,Instance:[B;-32B,83B,21B,-112B,-126B,43B,-31B,45B,117B,49B,126B,79B,17B,126B,62B,-127B,0B,0B,0B,9B,43B,-94B,-42B,-39B,55B,-109B,78B,19B,-128B,-128B,54B,20B,51B,31B,96B,-99B,0B,0B,19B,-15B,0B,0B,0B,4B,0B,0B,0B,0B,0B,0B,0B,77B,75B,99B,82B,108B,-118B,-87B,-71B,14B,-97B,-92B,100B,-74B,-111B,106B,61B,-40B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,114B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,21B,0B,0B,0B,0B,0B,0B,18B,60B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,111B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-99B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,25B,0B,64B,0B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fUMP45"}}
replaceitem entity @s[score_S-Shop=1,score_S-Shop_min=1] slot.hotbar.0 mw:pp91_kedr 1 0 {IUuidLeast:-8671917804440157577L,Ammo:20,IUuidMost:582540569407212035L,Instance:[B;-32B,83B,21B,-112B,-126B,43B,-31B,45B,117B,49B,126B,79B,17B,126B,62B,-127B,0B,0B,0B,9B,8B,21B,-103B,-113B,-70B,-59B,74B,3B,-121B,-89B,40B,-77B,-32B,-11B,-126B,119B,0B,0B,20B,89B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,-126B,75B,99B,82B,108B,-118B,-87B,-71B,14B,-97B,-92B,100B,-74B,-111B,106B,61B,-40B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,19B,-90B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,19B,18B,0B,0B,19B,-36B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-99B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,20B,0B,64B,0B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fPP-91"}}
replaceitem entity @s[score_S-Shop=2,score_S-Shop_min=2] slot.hotbar.0 mw:uzi 1 0 {IUuidLeast:-8928750165873598474L,Ammo:32,IUuidMost:-1167410042056523076L,Instance:[B;-32B,83B,21B,-112B,-126B,43B,-31B,45B,117B,49B,126B,79B,17B,126B,62B,-127B,0B,0B,0B,9B,-17B,-52B,-122B,-64B,127B,-1B,66B,-68B,-124B,22B,-75B,7B,-38B,-28B,-33B,-10B,0B,0B,21B,91B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,58B,75B,99B,82B,108B,-118B,-87B,-71B,14B,-97B,-92B,100B,-74B,-111B,106B,61B,-40B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,21B,-19B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,19B,3B,0B,0B,18B,-28B,0B,0B,0B,0B,0B,0B,19B,-101B,0B,0B,0B,0B,0B,0B,16B,111B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-99B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,32B,0B,64B,0B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fUzi"}}

xp -10000L @s
gamemode 2 @s
scoreboard players tag @s add JoinHalfway
scoreboard players set @s PC-DeathJ 1
execute @e[tag=VMW] ~ ~ ~ execute @s[score_PC-Map=0] ~ ~ ~ spawnpoint @a[tag=InGame] -265 68 1289
execute @e[tag=VMW] ~ ~ ~ execute @s[score_PC-Map=1,score_PC-Map_min=1] ~ ~ ~ spawnpoint @a[tag=InGame] -366 78 1233
execute @e[tag=VMW] ~ ~ ~ execute @s[score_PC-Map=2,score_PC-Map_min=2] ~ ~ ~ spawnpoint @a[tag=InGame] -375 76 1302
execute @e[tag=VMW] ~ ~ ~ execute @s[score_PC-Map=3,score_PC-Map_min=3] ~ ~ ~ spawnpoint @a[tag=InGame] -388 78 1213
execute @e[tag=VMW] ~ ~ ~ execute @s[score_PC-Map=4,score_PC-Map_min=4] ~ ~ ~ spawnpoint @a[tag=InGame] -476 73 1581
execute @e[tag=VMW] ~ ~ ~ execute @s[score_PC-Map=5,score_PC-Map_min=5] ~ ~ ~ spawnpoint @a[tag=InGame] -171 73 1596
scoreboard teams join CTT @s
