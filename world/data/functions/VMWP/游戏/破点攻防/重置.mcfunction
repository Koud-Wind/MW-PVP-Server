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

scoreboard players set @a 背景音乐 0
scoreboard players reset @a[tag=!PVE-游戏中] 爆破-金钱
scoreboard players reset @a[tag=!PVE-游戏中] 爆破-选择的主武器
scoreboard players reset @a[tag=!PVE-游戏中] 爆破-选择的副武器
scoreboard players reset @a 爆破-击杀数
scoreboard players reset @a 爆破-死亡数

#全部处理
kill @e[type=item]
function vmwp:游戏/破点攻防/地图重置
scoreboard players tag @e remove 暂停
scoreboard players tag @e remove 全局游戏
#scoreboard players tag @e remove 半血模式
scoreboard players tag @e remove 爆破-等待
#scoreboard players set @e[tag=VMW] 开始-选择模式 0
#scoreboard objectives remove 爆破-地图

scoreboard objectives remove 爆破-剩余时间
scoreboard objectives remove 爆破-剩余时间换算
scoreboard objectives remove 爆破-CT比分
scoreboard objectives remove 爆破-T比分
scoreboard objectives remove 爆破-游戏数
scoreboard objectives remove 爆破-等待时间
scoreboard objectives remove 爆破-均衡人数
scoreboard objectives remove 爆破-中途加入
#scoreboard objectives remove 爆破-金钱
#scoreboard objectives remove 爆破-选择的主武器
#scoreboard objectives remove 爆破-选择的副武器
scoreboard objectives remove 爆破-操作C4
scoreboard objectives remove 爆破-C4引爆时间
scoreboard objectives remove 爆破-C4引爆时间换算
scoreboard objectives remove 爆破-潜行判定
scoreboard objectives remove 爆破-击杀数
scoreboard objectives remove 爆破-击杀判定
scoreboard objectives remove 爆破-死亡判定
scoreboard objectives remove 爆破-死亡数
scoreboard objectives remove 爆破-占领分数
scoreboard objectives remove 爆破-提示冷却
scoreboard objectives remove 爆破-CT生命数
scoreboard objectives remove 爆破-T生命数
scoreboard objectives remove 爆破-生命数显示

function vmwp:计分板
scoreboard players tag @e remove 开始4