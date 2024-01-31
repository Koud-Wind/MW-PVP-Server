#计分板
scoreboard objectives add 爆破-击杀数 playerKillCount
scoreboard objectives add 爆破-击杀判定 playerKillCount
scoreboard objectives add 爆破-死亡判定 stat.deaths

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
scoreboard players tag @a[tag=中途加入] remove 中途加入
scoreboard players tag @a[tag=准备中] add 游戏中
scoreboard players tag @a[tag=准备中] remove 准备中
scoreboard players tag @a[tag=选择地图] remove 选择地图

scoreboard players set @a 背景音乐 0
scoreboard players set @e[tag=VMW] 爆破-剩余时间 9800
scoreboard players set @e[tag=VMW] 爆破-CT比分 0
scoreboard players set @e[tag=VMW] 爆破-T比分 0

scoreboard players set @a[tag=游戏中] 爆破-金钱 19
scoreboard players set @a[tag=游戏中] 爆破-击杀数 0
scoreboard players set @a[tag=游戏中] 爆破-击杀判定 0
scoreboard players set @a[tag=游戏中] 爆破-选择的主武器 0
scoreboard players set @a[tag=游戏中] 爆破-选择的副武器 0

scoreboard players tag @a[tag=游戏中] add 涂装
scoreboard players tag @a[tag=游戏中] add 近战武器
scoreboard players tag @a[tag=游戏中] add 商店

title @a[team=CT] subtitle [{"text":"§e§l总击杀数达到65以获得胜利"}]
title @a[team=T] subtitle [{"text":"§e§l总击杀数达到65以获得胜利"}]
title @a[tag=游戏中] title [{"text":"§b§l游戏开始"}]

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

effect @a[tag=游戏中] 2 10 50 true
effect @a[tag=游戏中] 8 11 130 true
effect @a[tag=游戏中] 12 15 0 true
effect @a[tag=游戏中] 14 10 0 true
effect @a[tag=游戏中] 15 10 0 true
effect @a[tag=游戏中] 11 10 50 true
effect @a[tag=游戏中] 6 1 4 true
effect @a[tag=游戏中] 25 9 130 true

clear @a[tag=!PVE-游戏中]
effect @a[tag=游戏中] 1 1000000 0 true
xp -10000L @a[tag=!PVE-游戏中] 
stopsound @a record
gamemode 3 @a[team=旁观]
tellraw @a[tag=游戏中] [{"text":"§b提示: 请右键§e快捷栏§b中的§e武器商店§b以购买道具"}]
tellraw @a[team=旁观] [{"text":"§7§l你正在旁观整场游戏"}]
tellraw @a[team=旁观] [{"text":"§f§l§n点击即可中途加入","clickEvent":{"action":"run_command","value":"/trigger 爆破-中途加入 set 1"}}]

scoreboard players tag @e[tag=VMW] add 全局游戏
scoreboard players tag @e[tag=VMW] add 开始6
scoreboard players tag @e[tag=VMW] remove 预开始1
scoreboard players tag @e[tag=VMW] remove 预开始2
