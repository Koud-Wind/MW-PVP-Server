#个人处理
clear @a[tag=!PVE-游戏中]
scoreboard teams leave @a[tag=!PVE-游戏中]
gamemode 2 @a[tag=!PVE-游戏中]
#tp @a[tag=!PVE-游戏中] 267 66 1231 90 0
#spawnpoint @a[tag=!PVE-游戏中] 267 66 1231
tp @a[tag=!PVE-游戏中] -49 74 1054 90 0
spawnpoint @a[tag=!PVE-游戏中] -49 74 1054
effect @a[tag=!PVE-游戏中] 1 0 0 true
xp -10000L @a[tag=!PVE-游戏中]

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

scoreboard players tag @a remove 游戏中
scoreboard players tag @e remove 商店
scoreboard players tag @a remove 1rd
scoreboard players tag @a remove 2rd

scoreboard players set @a 背景音乐 0
scoreboard players reset @a[tag=!PVE-游戏中] 爆破-金钱
scoreboard players reset @a[tag=!PVE-游戏中] 爆破-选择的主武器
scoreboard players reset @a[tag=!PVE-游戏中] 爆破-选择的副武器
scoreboard players reset @a 个人-击杀数
scoreboard players reset @a 个人-击杀数计算

#全部处理
kill @e[type=item]
execute @e[tag=VMW] ~ ~ ~ setblock -229 71 1303 minecraft:obsidian
execute @e[tag=VMW] ~ ~ ~ setblock -316 75 1245 minecraft:obsidian
execute @e[tag=VMW] ~ ~ ~ setblock -343 72 1343 minecraft:obsidian
execute @e[tag=VMW] ~ ~ ~ setblock -402 78 1171 minecraft:obsidian
execute @e[tag=VMW] ~ ~ ~ setblock -439 73 1584 minecraft:obsidian
execute @e[tag=VMW] ~ ~ ~ setblock -230 73 1533 minecraft:obsidian
execute @e[tag=VMW] ~ ~ ~ setblock 165 65 1159 minecraft:air
execute @e[tag=VMW] ~ ~ ~ setblock 166 65 1159 minecraft:air
execute @e[tag=VMW] ~ ~ ~ setblock 165 65 1159 minecraft:chest 9 keep {Items:[{Slot:22b,id:"minecraft:paper",Count:1b,tag:{display:{Name:"§f+15钞票"},tag:["15钞票"]},Damage:0s}]}
#execute @e[tag=VMW] ~ ~ ~ setblock -64 164 1075 minecraft:chest 3 keep {Items:[{Slot:22b,id:"minecraft:paper",Count:1b,tag:{display:{Name:"§f+15钞票"},tag:["15钞票"]},Damage:0s}]}
execute @e[tag=VMW] ~ ~ ~ replaceitem block -64 164 1075 slot.container.22 minecraft:paper 1 0 {display:{Name:"§f+15钞票"},tag:["15钞票"]}
execute @e[tag=VMW] ~ ~ ~ setblock 166 65 1159 minecraft:chest 9 keep {Items:[{Slot:4b,id:"mwc:m17",Count:1b,tag:{IUuidLeast:-9082291306506250444L,Ammo:2147483647,IUuidMost:-682061097360406301L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-10B,-120B,-43B,11B,-80B,-72B,72B,-29B,-127B,-11B,56B,45B,65B,19B,-105B,52B,0B,0B,19B,80B,0B,0B,0B,2B,0B,0B,0B,0B,0B,0B,0B,10B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-21B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,8B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,6B,0B,0B,0B,0B,0B,0B,18B,61B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,0B,127B,-1B,-1B,-1B,0B,64B,64B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B]},Damage:0s}]}

#execute @e[tag=VMW] ~ ~ ~ tp @s 267 250 1231
execute @e[tag=VMW] ~ ~ ~ tp @s -49 250 1054

execute @e[type=armor_stand,tag=!VMW] ~ ~ ~ fill ~6 ~7 ~6 ~-6 ~-7 ~-6 air 0 replace fire
kill @e[type=armor_stand,tag=!VMW]
scoreboard players tag @e remove 暂停
scoreboard players tag @e remove 全局游戏
scoreboard players set @e[tag=VMW] 开始-选择模式 0

scoreboard objectives remove 个人-地图
scoreboard objectives remove 个人-剩余时间
scoreboard objectives remove 个人-剩余时间换算
scoreboard objectives remove 个人-击杀数计算
scoreboard objectives remove 个人-第一击杀数
scoreboard objectives remove 个人-第二击杀数
scoreboard objectives remove 个人-第三击杀数
scoreboard objectives remove 个人-不击杀发光
scoreboard objectives remove 个人-中途加入
#scoreboard objectives remove 爆破-金钱
#scoreboard objectives remove 爆破-选择的主武器
#scoreboard objectives remove 爆破-选择的副武器
scoreboard objectives remove 个人-击杀数
scoreboard objectives remove 个人-击杀判定
scoreboard objectives remove 个人-死亡判定


function vmwp:计分板
scoreboard players tag @e remove 开始1