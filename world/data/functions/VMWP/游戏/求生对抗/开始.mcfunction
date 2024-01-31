#计分板
scoreboard objectives add 个人-击杀数 playerKillCount §e击杀数
scoreboard objectives setdisplay sidebar 个人-击杀数
scoreboard objectives add 个人-击杀判定 playerKillCount
scoreboard objectives add 个人-死亡判定 stat.deaths

#商店
scoreboard objectives remove 配件页面
scoreboard objectives remove 投掷物页面
scoreboard objectives remove 突击步枪页面
scoreboard objectives remove 狙击枪&射手步枪页面
scoreboard objectives remove 冲锋枪页面
scoreboard objectives remove 霰弹枪页面
scoreboard objectives remove 机枪页面
scoreboard objectives remove 手枪页面
scoreboard objectives remove 特殊武器页面

scoreboard objectives add 配件页面 trigger
scoreboard objectives add 投掷物页面 trigger
scoreboard objectives add 突击步枪页面 trigger
scoreboard objectives add 狙击枪&射手步枪页面 trigger
scoreboard objectives add 冲锋枪页面 trigger
scoreboard objectives add 霰弹枪页面 trigger
scoreboard objectives add 机枪页面 trigger
scoreboard objectives add 手枪页面 trigger
scoreboard objectives add 特殊武器页面 trigger

#
scoreboard players tag @a[tag=准备中] add 游戏中
scoreboard players tag @a[tag=准备中] remove 准备中
scoreboard players tag @a[tag=选择地图] remove 选择地图

scoreboard players set @a 背景音乐 0
scoreboard players set @e[tag=VMW] 个人-剩余时间 2800
scoreboard players set @e[tag=VMW] 个人-游戏数 0
scoreboard players set @e[tag=VMW] 个人-人数 4
scoreboard players set @e[tag=VMW] 个人-等待时间 0
scoreboard players set @e[tag=VMW] 个人-第一击杀数 0
scoreboard players set @e[tag=VMW] 个人-第二击杀数 0
scoreboard players set @e[tag=VMW] 个人-第三击杀数 -1
scoreboard players set @e[tag=VMW] 爆破-选择时间 1
scoreboard players set @a[tag=游戏中] 爆破-金钱 29
scoreboard players set @a[tag=游戏中] 个人-击杀数 0
scoreboard players set @a[tag=游戏中] 个人-击杀判定 0
scoreboard players set @a[tag=游戏中] 个人-分数 0
scoreboard players set @a[tag=游戏中] 爆破-选择的主武器 0
scoreboard players set @a[tag=游戏中] 爆破-选择的副武器 0

title @a[tag=游戏中] subtitle [{"text":"§e§l存活到最后以获得胜利"}]
title @a[tag=游戏中] title [{"text":"§b§l点击§e空格§b§l开始滑翔"}]

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


clear @a[tag=!PVE-游戏中]
replaceitem entity @a[tag=游戏中] slot.armor.chest minecraft:elytra 1 0 {ench:[{lvl:1s,id:10s}],Unbreakable:1b,HideFlags:5,display:{Name:""},AttributeModifiers:[{UUIDMost:3618156733941892737L,UUIDLeast:-7584274578594019785L,Amount:13.0d,Slot:"chest",AttributeName:"generic.armor",Operation:0,Name:"generic.armor"}]}
xp -10000L @a 
stopsound @a record
gamemode 3 @a[team=旁观]
tellraw @a[tag=游戏中] [{"text":"§b提示: 请右键§e快捷栏§b中的§e武器商店§b以购买道具"}]
tellraw @a[team=旁观] [{"text":"§7§l你正在旁观整场游戏"}]
tellraw @a[team=旁观] [{"text":"§f§l§n点击即可中途加入","clickEvent":{"action":"run_command","value":"/trigger 个人-中途加入 set 1"}}]

scoreboard players tag @a[tag=中途加入] remove 中途加入
scoreboard players tag @a[tag=游戏中] add 商店
scoreboard players tag @a[tag=游戏中] add 近战武器
scoreboard players tag @a[tag=游戏中] add 涂装
scoreboard teams join CTT @a[tag=游戏中]

execute @e[tag=VMW] ~ ~ ~ function vmwp:游戏/求生对抗/单局开始

scoreboard players tag @e[tag=VMW] add 全局游戏
scoreboard players tag @e[tag=VMW] add 开始5
scoreboard players tag @e[tag=VMW] remove 预开始1
scoreboard players tag @e[tag=VMW] remove 预开始2
