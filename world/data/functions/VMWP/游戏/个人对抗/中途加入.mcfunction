#中途加入
scoreboard players tag @s add 游戏中
scoreboard players set @s 爆破-金钱 25
scoreboard players set @s 个人-击杀数 0
scoreboard players set @s 个人-击杀判定 0
scoreboard players set @s 爆破-选择的主武器 0
scoreboard players set @s 爆破-选择的副武器 0
title @s subtitle [{"text":"§e§l未进入前二名将不结算钞票"}]
title @s title [{"text":"§b§l中途加入"}]
tellraw @s [{"text":"§b提示: 请右键§e快捷栏§b中的§e武器商店§b以购买道具"}]
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
effect @s 15 10 10 true
effect @s 12 15 0 true
effect @s 14 10 0 true
effect @s 11 10 50 true
effect @s 6 1 4 true
replaceitem entity @s slot.armor.chest minecraft:leather_chestplate 1 0 {ench:[{lvl:1s,id:10s}],Unbreakable:1b,HideFlags:5,display:{color:8388863,Name:""},AttributeModifiers:[{UUIDMost:3618156733941892737L,UUIDLeast:-7584274578594019785L,Amount:13.0d,Slot:"chest",AttributeName:"generic.armor",Operation:0,Name:"generic.armor"}]}
xp -10000L @s
gamemode 2 @s
scoreboard players tag @s add 商店
scoreboard players tag @s add 近战武器
scoreboard players tag @s add 涂装
scoreboard players tag @s add 中途加入
scoreboard players set @s 个人-死亡判定 1
execute @e[tag=VMW] ~ ~ ~ execute @s[score_个人-地图=0] ~ ~ ~ spawnpoint @a[tag=游戏中] -265 68 1289
execute @e[tag=VMW] ~ ~ ~ execute @s[score_个人-地图=1,score_个人-地图_min=1] ~ ~ ~ spawnpoint @a[tag=游戏中] -366 78 1233
execute @e[tag=VMW] ~ ~ ~ execute @s[score_个人-地图=2,score_个人-地图_min=2] ~ ~ ~ spawnpoint @a[tag=游戏中] -375 76 1302
execute @e[tag=VMW] ~ ~ ~ execute @s[score_个人-地图=3,score_个人-地图_min=3] ~ ~ ~ spawnpoint @a[tag=游戏中] -388 78 1213
execute @e[tag=VMW] ~ ~ ~ execute @s[score_个人-地图=4,score_个人-地图_min=4] ~ ~ ~ spawnpoint @a[tag=游戏中] -476 73 1581
execute @e[tag=VMW] ~ ~ ~ execute @s[score_个人-地图=5,score_个人-地图_min=5] ~ ~ ~ spawnpoint @a[tag=游戏中] -171 73 1596
scoreboard teams join CTT @s
