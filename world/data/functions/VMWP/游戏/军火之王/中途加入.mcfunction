#中途加入
scoreboard players tag @s add 游戏中
scoreboard players set @s 个人-击杀数 0
scoreboard players set @s 个人-击杀判定 0
scoreboard players set @s 个人-分数 0
scoreboard players set @s[score_选择的商店=0] 爆破-选择的主武器 45
scoreboard players set @s[score_选择的商店=1,score_选择的商店_min=1] 爆破-选择的主武器 49
scoreboard players set @s[score_选择的商店=2,score_选择的商店_min=2] 爆破-选择的主武器 53
title @s subtitle [{"text":"§e§l未进入前二名将不结算钞票"}]
title @s title [{"text":"§b§l中途加入"}]
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

execute @e[tag=VMW] ~ ~ ~ execute @s[tag=!半血模式] ~ ~ ~ replaceitem entity @a[tag=游戏中] slot.armor.chest minecraft:leather_chestplate 1 0 {ench:[{lvl:1s,id:10s}],Unbreakable:1b,HideFlags:5,display:{color:8388863,Name:""},AttributeModifiers:[{UUIDMost:3618156733941892737L,UUIDLeast:-7584274578594019785L,Amount:13.0d,Slot:"chest",AttributeName:"generic.armor",Operation:0,Name:"generic.armor"}]}
execute @e[tag=VMW] ~ ~ ~ execute @s[tag=半血模式] ~ ~ ~ replaceitem entity @a[tag=游戏中] slot.armor.chest minecraft:leather_chestplate 1 0 {ench:[{lvl:1s,id:10s}],Unbreakable:1b,HideFlags:5,display:{color:8388863,Name:""},AttributeModifiers:[{UUIDMost:3618156733941892737L,UUIDLeast:-7584274578594019785L,Amount:13.0d,Slot:"chest",AttributeName:"generic.armor",Operation:0,Name:"generic.armor"},{UUIDMost:6576250448452734424L,UUIDLeast:-7523519124796604724L,Amount:-10.0d,Slot:"chest",AttributeName:"generic.maxHealth",Operation:0,Name:"generic.maxHealth"}]}
replaceitem entity @s[score_选择的商店=0] slot.hotbar.0 mwc:ump_45 1 0 {IUuidLeast:-8716880898063688977L,Ammo:25,IUuidMost:8322212988169833231L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,115B,126B,112B,-98B,-87B,1B,75B,15B,-121B,7B,107B,1B,-39B,-122B,-102B,-17B,0B,0B,19B,71B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,11B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,19B,18B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,-108B,0B,0B,0B,0B,0B,0B,16B,-110B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,18B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,123B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,0B,0B,0B,0B,25B,0B,64B,0B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fUMP45"}}
replaceitem entity @s[score_选择的商店=1,score_选择的商店_min=1] slot.hotbar.0 mwc:pp91_kedr 1 0 {IUuidLeast:-4720302943062026154L,Ammo:20,IUuidMost:-6529360097055584277L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-91B,99B,13B,-107B,-12B,100B,79B,-21B,-66B,126B,29B,123B,-122B,-114B,-104B,86B,0B,0B,19B,64B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,14B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-8B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,9B,0B,0B,18B,8B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,20B,0B,64B,0B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,1B,0B,0B,0B,0B,1B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fPP-91"}}
replaceitem entity @s[score_选择的商店=2,score_选择的商店_min=2] slot.hotbar.0 mwc:uzi 1 0 {IUuidLeast:-7978153223904914120L,Ammo:32,AtId:[I;0,0,0,0,4899,0,0,-1,-1,5224,0,0,0,4687,4688,0,4689,0,4731,0,0,0,0,0,0,4096,0],IUuidMost:7579208335647789033L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,105B,46B,-63B,-45B,44B,-9B,79B,-23B,-111B,71B,-25B,-23B,-75B,-126B,-107B,56B,0B,0B,19B,-126B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,-100B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,19B,35B,0B,0B,0B,0B,0B,0B,0B,0B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,20B,104B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,79B,0B,0B,18B,80B,0B,0B,0B,0B,0B,0B,18B,81B,0B,0B,0B,0B,0B,0B,18B,123B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,32B,0B,64B,0B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fUzi"}}

xp -10000L @s
gamemode 2 @s
scoreboard players tag @s add 中途加入
scoreboard players set @s 个人-死亡判定 1
execute @e[tag=VMW] ~ ~ ~ execute @s[score_个人-地图=0] ~ ~ ~ spawnpoint @a[tag=游戏中] -265 68 1289
execute @e[tag=VMW] ~ ~ ~ execute @s[score_个人-地图=1,score_个人-地图_min=1] ~ ~ ~ spawnpoint @a[tag=游戏中] -366 78 1233
execute @e[tag=VMW] ~ ~ ~ execute @s[score_个人-地图=2,score_个人-地图_min=2] ~ ~ ~ spawnpoint @a[tag=游戏中] -375 76 1302
execute @e[tag=VMW] ~ ~ ~ execute @s[score_个人-地图=3,score_个人-地图_min=3] ~ ~ ~ spawnpoint @a[tag=游戏中] -388 78 1213
execute @e[tag=VMW] ~ ~ ~ execute @s[score_个人-地图=4,score_个人-地图_min=4] ~ ~ ~ spawnpoint @a[tag=游戏中] -476 73 1581
execute @e[tag=VMW] ~ ~ ~ execute @s[score_个人-地图=5,score_个人-地图_min=5] ~ ~ ~ spawnpoint @a[tag=游戏中] -171 73 1596
scoreboard teams join CTT @s
