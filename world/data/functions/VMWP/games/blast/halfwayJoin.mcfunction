#中途加入
scoreboard players set @s money 4
scoreboard players set @s CT-killC 0
scoreboard players set @s CT-KillJ 0
scoreboard players set @s MainW 0
scoreboard players set @s SecondaryW 0
title @s subtitle [{"text":"§eNote will not be settled"}]
title @s title [{"text":"§b§lJoin Halfway"}]
tellraw @s [{"text":"§cTip: Please wait for the end of the current round!"}]
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
scoreboard players tag @s add shop
scoreboard players tag @s add Melee
scoreboard players tag @s add Camo
scoreboard players tag @s add JoinHalfway


execute @a[tag=InGame,team=CT] ~ ~ ~ scoreboard players add @e[tag=VMW] CT-BP 1
execute @a[tag=InGame,team=T] ~ ~ ~ scoreboard players add §fT CT-BP 1
scoreboard players operation @e[tag=VMW] CT-BP -= §fT CT-BP
execute @e[tag=VMW,score_CT-BP=0] ~ ~ ~ scoreboard teams join CT @a[score_CT-Join_min=1,tag=!InGame]
execute @e[tag=VMW,score_CT-BP_min=1] ~ ~ ~ scoreboard teams join T @a[score_CT-Join_min=1,tag=!InGame]

execute @e[tag=VMW,score_CT-Map=0] ~ ~ ~ tp @a[team=CT,score_CT-Join_min=1,tag=!InGame] -265 68 1289 -90 0
execute @e[tag=VMW,score_CT-Map=0] ~ ~ ~ tp @a[team=T,score_CT-Join_min=1,tag=!InGame] -176 76 1313 180 0
execute @e[tag=VMW,score_CT-Map=1,score_CT-Map_min=1] ~ ~ ~ tp @a[team=CT,score_CT-Join_min=1,tag=!InGame] -366 78 1233 -180 0
execute @e[tag=VMW,score_CT-Map=1,score_CT-Map_min=1] ~ ~ ~ tp @a[team=T,score_CT-Join_min=1,tag=!InGame] -295 75 1198 0 0
execute @e[tag=VMW,score_CT-Map=2,score_CT-Map_min=2] ~ ~ ~ tp @a[team=CT,score_CT-Join_min=1,tag=!InGame] -375 76 1302 -90 0
execute @e[tag=VMW,score_CT-Map=2,score_CT-Map_min=2] ~ ~ ~ tp @a[team=T,score_CT-Join_min=1,tag=!InGame] -301 76 1386 180 0
execute @e[tag=VMW,score_CT-Map=3,score_CT-Map_min=3] ~ ~ ~ tp @a[team=CT,score_CT-Join_min=1,tag=!InGame] -388 78 1213 90 0
execute @e[tag=VMW,score_CT-Map=3,score_CT-Map_min=3] ~ ~ ~ tp @a[team=T,score_CT-Join_min=1,tag=!InGame] -460 73 1184 -90 0
execute @e[tag=VMW,score_CT-Map=4,score_CT-Map_min=4] ~ ~ ~ tp @a[team=CT,score_CT-Join_min=1,tag=!InGame] -476 73 1581 -90 0
execute @e[tag=VMW,score_CT-Map=4,score_CT-Map_min=4] ~ ~ ~ tp @a[team=T,score_CT-Join_min=1,tag=!InGame] -394 72 1568 -90 0
execute @e[tag=VMW,score_CT-Map=5,score_CT-Map_min=5] ~ ~ ~ tp @a[team=CT,score_CT-Join_min=1,tag=!InGame] -171 73 1596 90 0
execute @e[tag=VMW,score_CT-Map=5,score_CT-Map_min=5] ~ ~ ~ tp @a[team=T,score_CT-Join_min=1,tag=!InGame] -282 73 1462 0 0

execute @e[tag=VMW,score_CT-Map=0] ~ ~ ~ spawnpoint @a[team=CT,score_CT-Join_min=1,tag=!InGame] -265 68 1289
execute @e[tag=VMW,score_CT-Map=0] ~ ~ ~ spawnpoint @a[team=T,score_CT-Join_min=1,tag=!InGame] -176 76 1313
execute @e[tag=VMW,score_CT-Map=1,score_CT-Map_min=1] ~ ~ ~ spawnpoint @a[team=CT,score_CT-Join_min=1,tag=!InGame] -366 78 1233
execute @e[tag=VMW,score_CT-Map=1,score_CT-Map_min=1] ~ ~ ~ spawnpoint @a[team=T,score_CT-Join_min=1,tag=!InGame] -295 75 1198
execute @e[tag=VMW,score_CT-Map=2,score_CT-Map_min=2] ~ ~ ~ spawnpoint @a[team=CT,score_CT-Join_min=1,tag=!InGame] -375 76 1302
execute @e[tag=VMW,score_CT-Map=2,score_CT-Map_min=2] ~ ~ ~ spawnpoint @a[team=T,score_CT-Join_min=1,tag=!InGame] -301 76 1386
execute @e[tag=VMW,score_CT-Map=3,score_CT-Map_min=3] ~ ~ ~ spawnpoint @a[team=CT,score_CT-Join_min=1,tag=!InGame] -388 78 1213
execute @e[tag=VMW,score_CT-Map=3,score_CT-Map_min=3] ~ ~ ~ spawnpoint @a[team=T,score_CT-Join_min=1,tag=!InGame] -460 73 1184
execute @e[tag=VMW,score_CT-Map=4,score_CT-Map_min=4] ~ ~ ~ spawnpoint @a[team=CT,score_CT-Join_min=1,tag=!InGame] -476 73 1581
execute @e[tag=VMW,score_CT-Map=4,score_CT-Map_min=4] ~ ~ ~ spawnpoint @a[team=T,score_CT-Join_min=1,tag=!InGame] -394 72 1568
execute @e[tag=VMW,score_CT-Map=5,score_CT-Map_min=5] ~ ~ ~ spawnpoint @a[team=CT,score_CT-Join_min=1,tag=!InGame] -171 73 1596
execute @e[tag=VMW,score_CT-Map=5,score_CT-Map_min=5] ~ ~ ~ spawnpoint @a[team=T,score_CT-Join_min=1,tag=!InGame] -282 73 1462

scoreboard players tag @s add InGame

scoreboard players reset @e[tag=VMW] CT-BP
scoreboard players reset §fT CT-BP