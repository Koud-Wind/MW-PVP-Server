#JoinHalfway
scoreboard players tag @s add InGame
scoreboard players set @s PC-KillCount 0
scoreboard players set @s PC-KillJ 0
scoreboard players set @s PC-Score 0
scoreboard players set @s money 0
scoreboard players reset @s MainW
scoreboard players reset @s SecondaryW
title @s subtitle [{"text":"§eYou will not get note if you do not enter the top 2"}]
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
execute @e[tag=VMW] ~ ~ ~ execute @s[score_PC-Map=0] ~ ~ ~ spawnpoint @a[tag=InGame] -265 68 1289
execute @e[tag=VMW] ~ ~ ~ execute @s[score_PC-Map=1,score_PC-Map_min=1] ~ ~ ~ spawnpoint @a[tag=InGame] -366 78 1233
execute @e[tag=VMW] ~ ~ ~ execute @s[score_PC-Map=2,score_PC-Map_min=2] ~ ~ ~ spawnpoint @a[tag=InGame] -375 76 1302
execute @e[tag=VMW] ~ ~ ~ execute @s[score_PC-Map=3,score_PC-Map_min=3] ~ ~ ~ spawnpoint @a[tag=InGame] -388 78 1213
execute @e[tag=VMW] ~ ~ ~ execute @s[score_PC-Map=4,score_PC-Map_min=4] ~ ~ ~ spawnpoint @a[tag=InGame] -476 73 1581
execute @e[tag=VMW] ~ ~ ~ execute @s[score_PC-Map=5,score_PC-Map_min=5] ~ ~ ~ spawnpoint @a[tag=InGame] -171 73 1596
scoreboard teams join CTT @s
