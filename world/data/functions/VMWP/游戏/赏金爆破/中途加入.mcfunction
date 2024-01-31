#中途加入
scoreboard players set @s 爆破-金钱 4
scoreboard players set @s 爆破-击杀数 0
scoreboard players set @s 爆破-击杀判定 0
scoreboard players set @s 爆破-选择的主武器 0
scoreboard players set @s 爆破-选择的副武器 0
title @s subtitle [{"text":"§e§l将不结算钞票"}]
title @s title [{"text":"§b§l中途加入"}]
tellraw @s [{"text":"§c提示: 请等待当前回合结束!"}]
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
xp -10000L @s
gamemode 3 @s
scoreboard players tag @s add 中途加入


execute @a[tag=游戏中,team=CT] ~ ~ ~ scoreboard players add @e[tag=VMW] 爆破-均衡人数 1
execute @a[tag=游戏中,team=T] ~ ~ ~ scoreboard players add §fT 爆破-均衡人数 1
scoreboard players operation @e[tag=VMW] 爆破-均衡人数 -= §fT 爆破-均衡人数
execute @e[tag=VMW,score_爆破-均衡人数=0] ~ ~ ~ scoreboard teams join CT @a[score_爆破-中途加入_min=1,tag=!游戏中]
execute @e[tag=VMW,score_爆破-均衡人数_min=1] ~ ~ ~ scoreboard teams join T @a[score_爆破-中途加入_min=1,tag=!游戏中]

execute @e[tag=VMW,score_爆破-地图=0] ~ ~ ~ tp @a[team=CT,score_爆破-中途加入_min=1,tag=!游戏中] -265 68 1289 -90 0
execute @e[tag=VMW,score_爆破-地图=0] ~ ~ ~ tp @a[team=T,score_爆破-中途加入_min=1,tag=!游戏中] -176 76 1313 180 0
execute @e[tag=VMW,score_爆破-地图=1,score_爆破-地图_min=1] ~ ~ ~ tp @a[team=CT,score_爆破-中途加入_min=1,tag=!游戏中] -366 78 1233 -180 0
execute @e[tag=VMW,score_爆破-地图=1,score_爆破-地图_min=1] ~ ~ ~ tp @a[team=T,score_爆破-中途加入_min=1,tag=!游戏中] -295 75 1198 0 0
execute @e[tag=VMW,score_爆破-地图=2,score_爆破-地图_min=2] ~ ~ ~ tp @a[team=CT,score_爆破-中途加入_min=1,tag=!游戏中] -375 76 1302 -90 0
execute @e[tag=VMW,score_爆破-地图=2,score_爆破-地图_min=2] ~ ~ ~ tp @a[team=T,score_爆破-中途加入_min=1,tag=!游戏中] -301 76 1386 180 0
execute @e[tag=VMW,score_爆破-地图=3,score_爆破-地图_min=3] ~ ~ ~ tp @a[team=CT,score_爆破-中途加入_min=1,tag=!游戏中] -388 78 1213 90 0
execute @e[tag=VMW,score_爆破-地图=3,score_爆破-地图_min=3] ~ ~ ~ tp @a[team=T,score_爆破-中途加入_min=1,tag=!游戏中] -460 73 1184 -90 0
execute @e[tag=VMW,score_爆破-地图=4,score_爆破-地图_min=4] ~ ~ ~ tp @a[team=CT,score_爆破-中途加入_min=1,tag=!游戏中] -476 73 1581 -90 0
execute @e[tag=VMW,score_爆破-地图=4,score_爆破-地图_min=4] ~ ~ ~ tp @a[team=T,score_爆破-中途加入_min=1,tag=!游戏中] -394 72 1568 -90 0
execute @e[tag=VMW,score_爆破-地图=5,score_爆破-地图_min=5] ~ ~ ~ tp @a[team=CT,score_爆破-中途加入_min=1,tag=!游戏中] -171 73 1596 90 0
execute @e[tag=VMW,score_爆破-地图=5,score_爆破-地图_min=5] ~ ~ ~ tp @a[team=T,score_爆破-中途加入_min=1,tag=!游戏中] -282 73 1462 0 0

execute @e[tag=VMW,score_爆破-地图=0] ~ ~ ~ spawnpoint @a[team=CT,score_爆破-中途加入_min=1,tag=!游戏中] -265 68 1289
execute @e[tag=VMW,score_爆破-地图=0] ~ ~ ~ spawnpoint @a[team=T,score_爆破-中途加入_min=1,tag=!游戏中] -176 76 1313
execute @e[tag=VMW,score_爆破-地图=1,score_爆破-地图_min=1] ~ ~ ~ spawnpoint @a[team=CT,score_爆破-中途加入_min=1,tag=!游戏中] -366 78 1233
execute @e[tag=VMW,score_爆破-地图=1,score_爆破-地图_min=1] ~ ~ ~ spawnpoint @a[team=T,score_爆破-中途加入_min=1,tag=!游戏中] -295 75 1198
execute @e[tag=VMW,score_爆破-地图=2,score_爆破-地图_min=2] ~ ~ ~ spawnpoint @a[team=CT,score_爆破-中途加入_min=1,tag=!游戏中] -375 76 1302
execute @e[tag=VMW,score_爆破-地图=2,score_爆破-地图_min=2] ~ ~ ~ spawnpoint @a[team=T,score_爆破-中途加入_min=1,tag=!游戏中] -301 76 1386
execute @e[tag=VMW,score_爆破-地图=3,score_爆破-地图_min=3] ~ ~ ~ spawnpoint @a[team=CT,score_爆破-中途加入_min=1,tag=!游戏中] -388 78 1213
execute @e[tag=VMW,score_爆破-地图=3,score_爆破-地图_min=3] ~ ~ ~ spawnpoint @a[team=T,score_爆破-中途加入_min=1,tag=!游戏中] -460 73 1184
execute @e[tag=VMW,score_爆破-地图=4,score_爆破-地图_min=4] ~ ~ ~ spawnpoint @a[team=CT,score_爆破-中途加入_min=1,tag=!游戏中] -476 73 1581
execute @e[tag=VMW,score_爆破-地图=4,score_爆破-地图_min=4] ~ ~ ~ spawnpoint @a[team=T,score_爆破-中途加入_min=1,tag=!游戏中] -394 72 1568
execute @e[tag=VMW,score_爆破-地图=5,score_爆破-地图_min=5] ~ ~ ~ spawnpoint @a[team=CT,score_爆破-中途加入_min=1,tag=!游戏中] -171 73 1596
execute @e[tag=VMW,score_爆破-地图=5,score_爆破-地图_min=5] ~ ~ ~ spawnpoint @a[team=T,score_爆破-中途加入_min=1,tag=!游戏中] -282 73 1462

scoreboard players tag @s add 游戏中

scoreboard players reset @e[tag=VMW] 爆破-均衡人数
scoreboard players reset §fT 爆破-均衡人数