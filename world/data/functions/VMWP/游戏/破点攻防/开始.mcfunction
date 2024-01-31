#计分板
scoreboard objectives add 爆破-击杀数 playerKillCount
scoreboard objectives add 爆破-击杀判定 playerKillCount
scoreboard objectives add 爆破-死亡判定 stat.deaths
scoreboard objectives add 爆破-死亡数 stat.deaths
scoreboard objectives setdisplay sidebar 爆破-生命数显示

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
scoreboard players set @e[tag=VMW] 爆破-剩余时间 5000
scoreboard players set @e[tag=VMW] 爆破-CT比分 0
scoreboard players set @e[tag=VMW] 爆破-T比分 0
scoreboard players set @e[tag=VMW] 爆破-CT生命数 20
scoreboard players set @e[tag=VMW] 爆破-T生命数 20
scoreboard players set @e[tag=VMW] 爆破-占领分数 0

scoreboard players set @e[tag=VMW] 爆破-游戏数 0
scoreboard players set @a[tag=游戏中] 爆破-金钱 20
scoreboard players set @a[tag=游戏中] 爆破-击杀数 0
scoreboard players set @a[tag=游戏中] 爆破-死亡数 0
scoreboard players set @a[tag=游戏中] 爆破-提示冷却 0
scoreboard players set @a[tag=游戏中] 爆破-击杀判定 0
scoreboard players set @a[tag=游戏中] 爆破-选择的主武器 0
scoreboard players set @a[tag=游戏中] 爆破-选择的副武器 0

title @a[team=CT] subtitle [{"text":"§e§l击败全部对手或坚守目标点以获得胜利"}]
title @a[team=T] subtitle [{"text":"§e§l击败全部对手或占领目标点以获得胜利"}]
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

clear @a[tag=!PVE-游戏中]
effect @a[tag=游戏中] 1 1000000 0 true
xp -10000L @a[tag=!PVE-游戏中] 
stopsound @a record
gamemode 3 @a[team=旁观]
tellraw @a[tag=游戏中] [{"text":"§b提示: 请右键§e快捷栏§b中的§e武器商店§b以购买道具"}]
tellraw @a[team=旁观] [{"text":"§7§l你正在旁观整场游戏"}]
tellraw @a[team=旁观] [{"text":"§f§l§n点击即可中途加入","clickEvent":{"action":"run_command","value":"/trigger 爆破-中途加入 set 1"}}]
execute @e[tag=VMW,score_爆破-地图=0] ~ ~ ~ tp @a[team=旁观] -265 68 1289 -90 0
execute @e[tag=VMW,score_爆破-地图=1,score_爆破-地图_min=1] ~ ~ ~ tp @a[team=旁观] -366 78 1233 -180 0
execute @e[tag=VMW,score_爆破-地图=2,score_爆破-地图_min=2] ~ ~ ~ tp @a[team=旁观] -375 76 1302 -90 0
execute @e[tag=VMW,score_爆破-地图=3,score_爆破-地图_min=3] ~ ~ ~ tp @a[team=旁观] -388 78 1213 90 0
execute @e[tag=VMW,score_爆破-地图=4,score_爆破-地图_min=4] ~ ~ ~ tp @a[team=旁观] -476 73 1581 -90 0
execute @e[tag=VMW,score_爆破-地图=5,score_爆破-地图_min=5] ~ ~ ~ tp @a[team=旁观] -171 73 1596 90 0

execute @e[tag=VMW] ~ ~ ~ function vmwp:游戏/破点攻防/地图设定
execute @e[tag=VMW] ~ ~ ~ function vmwp:游戏/破点攻防/单局开始

scoreboard players tag @e[tag=VMW] add 全局游戏
scoreboard players tag @e[tag=VMW] add 开始4
scoreboard players tag @e[tag=VMW] remove 爆破-等待
scoreboard players tag @e[tag=VMW] remove 预开始1
scoreboard players tag @e[tag=VMW] remove 预开始2
