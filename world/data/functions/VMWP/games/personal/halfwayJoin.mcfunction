#JoinHalfway
scoreboard players tag @s add InGame
scoreboard players set @s money 25
scoreboard players set @s PC-KillCount 0
scoreboard players set @s PC-KillJ 0
scoreboard players set @s MainW 0
scoreboard players set @s SecondaryW 0
title @s subtitle [{"text":"§eYou will not get note if you do not enter the top 2"}]
title @s title [{"text":"§b§lJoin Halfway"}]
tellraw @s [{"text":"§bTip: Please right click §eweapon shop§b in §ehotbar§b to purchase props!"}]
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
execute @e[tag=VMW] ~ ~ ~ execute @s[tag=!HalfHMode] ~ ~ ~ replaceitem entity @a[tag=InGame] slot.armor.chest minecraft:leather_chestplate 1 0 {ench:[{lvl:1s,id:10s}],Unbreakable:1b,HideFlags:5,display:{color:8388863,Name:""},AttributeModifiers:[{UUIDMost:3618156733941892737L,UUIDLeast:-7584274578594019785L,Amount:13.0d,Slot:"chest",AttributeName:"generic.armor",Operation:0,Name:"generic.armor"}]}
execute @e[tag=VMW] ~ ~ ~ execute @s[tag=HalfHMode] ~ ~ ~ replaceitem entity @a[tag=InGame] slot.armor.chest minecraft:leather_chestplate 1 0 {ench:[{lvl:1s,id:10s}],Unbreakable:1b,HideFlags:5,display:{color:8388863,Name:""},AttributeModifiers:[{UUIDMost:3618156733941892737L,UUIDLeast:-7584274578594019785L,Amount:13.0d,Slot:"chest",AttributeName:"generic.armor",Operation:0,Name:"generic.armor"},{UUIDMost:6576250448452734424L,UUIDLeast:-7523519124796604724L,Amount:-10.0d,Slot:"chest",AttributeName:"generic.maxHealth",Operation:0,Name:"generic.maxHealth"}]}
xp -10000L @s
gamemode 2 @s
scoreboard players tag @s add shop
scoreboard players tag @s add Melee
scoreboard players tag @s add Camo
scoreboard players tag @s add JoinHalfway
scoreboard players set @s PC-DeathJ 1
execute @e[tag=VMW] ~ ~ ~ execute @s[score_PC-Map=0] ~ ~ ~ spawnpoint @a[tag=InGame] -265 68 1289
execute @e[tag=VMW] ~ ~ ~ execute @s[score_PC-Map=1,score_PC-Map_min=1] ~ ~ ~ spawnpoint @a[tag=InGame] -366 78 1233
execute @e[tag=VMW] ~ ~ ~ execute @s[score_PC-Map=2,score_PC-Map_min=2] ~ ~ ~ spawnpoint @a[tag=InGame] -375 76 1302
execute @e[tag=VMW] ~ ~ ~ execute @s[score_PC-Map=3,score_PC-Map_min=3] ~ ~ ~ spawnpoint @a[tag=InGame] -388 78 1213
execute @e[tag=VMW] ~ ~ ~ execute @s[score_PC-Map=4,score_PC-Map_min=4] ~ ~ ~ spawnpoint @a[tag=InGame] -476 73 1581
execute @e[tag=VMW] ~ ~ ~ execute @s[score_PC-Map=5,score_PC-Map_min=5] ~ ~ ~ spawnpoint @a[tag=InGame] -171 73 1596
scoreboard teams join CTT @s
