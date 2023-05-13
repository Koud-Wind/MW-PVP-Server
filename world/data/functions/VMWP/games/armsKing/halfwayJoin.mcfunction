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
replaceitem entity @s[score_S-Shop=0] slot.hotbar.0 mwc:ump_45 1 0 {IUuidLeast:-8716880898063688977L,Ammo:25,IUuidMost:8322212988169833231L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,115B,126B,112B,-98B,-87B,1B,75B,15B,-121B,7B,107B,1B,-39B,-122B,-102B,-17B,0B,0B,19B,71B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,11B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,19B,18B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,-108B,0B,0B,0B,0B,0B,0B,16B,-110B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,18B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,123B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,0B,0B,0B,0B,25B,0B,64B,0B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fUMP45"}}
replaceitem entity @s[score_S-Shop=1,score_S-Shop_min=1] slot.hotbar.0 mwc:pp91_kedr 1 0 {IUuidLeast:-4720302943062026154L,Ammo:20,IUuidMost:-6529360097055584277L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-91B,99B,13B,-107B,-12B,100B,79B,-21B,-66B,126B,29B,123B,-122B,-114B,-104B,86B,0B,0B,19B,64B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,14B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-8B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,9B,0B,0B,18B,8B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,20B,0B,64B,0B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,1B,0B,0B,0B,0B,1B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fPP-91"}}
replaceitem entity @s[score_S-Shop=2,score_S-Shop_min=2] slot.hotbar.0 mwc:uzi 1 0 {IUuidLeast:-9039682457717428042L,Ammo:32,IUuidMost:166886706606919252L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,2B,80B,-26B,-109B,81B,10B,78B,84B,-126B,-116B,-104B,-78B,-15B,108B,48B,-74B,0B,0B,19B,-126B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,15B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,19B,35B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,79B,0B,0B,18B,80B,0B,0B,0B,0B,0B,0B,18B,81B,0B,0B,0B,0B,0B,0B,18B,123B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,32B,0B,64B,0B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fUzi"}}

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
