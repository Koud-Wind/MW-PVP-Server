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
scoreboard players set @e[tag=VMW] 个人-剩余时间 8000
scoreboard players set @e[tag=VMW] 个人-第一击杀数 0
scoreboard players set @e[tag=VMW] 个人-第二击杀数 0
scoreboard players set @e[tag=VMW] 个人-第三击杀数 -1
scoreboard players set @a[tag=游戏中] 个人-击杀数 0
scoreboard players set @a[tag=游戏中] 个人-击杀判定 0
scoreboard players set @a[tag=游戏中] 个人-分数 0
scoreboard players set @a[tag=游戏中] 个人-王冠计时器 0
scoreboard players set @a[tag=游戏中,score_选择的商店=0] 爆破-选择的主武器 45
scoreboard players set @a[tag=游戏中,score_选择的商店=1,score_选择的商店_min=1] 爆破-选择的主武器 49
scoreboard players set @a[tag=游戏中,score_选择的商店=2,score_选择的商店_min=2] 爆破-选择的主武器 53

title @a[tag=游戏中] subtitle [{"text":"§e§l结算时分数排名位列前二以获得胜利"}]
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
effect @a[tag=游戏中] 15 10 10 true
effect @a[tag=游戏中] 2 10 50 true
effect @a[tag=游戏中] 8 11 130 true
effect @a[tag=游戏中] 12 15 0 true
effect @a[tag=游戏中] 14 10 0 true
effect @a[tag=游戏中] 11 10 50 true
effect @a[tag=游戏中] 6 1 4 true
effect @a[tag=游戏中] 25 9 130 true

execute @e[tag=VMW] ~ ~ ~ execute @s[tag=!半血模式] ~ ~ ~ replaceitem entity @a[tag=游戏中] slot.armor.chest minecraft:leather_chestplate 1 0 {ench:[{lvl:1s,id:10s}],Unbreakable:1b,HideFlags:5,display:{color:8388863,Name:""},AttributeModifiers:[{UUIDMost:3618156733941892737L,UUIDLeast:-7584274578594019785L,Amount:13.0d,Slot:"chest",AttributeName:"generic.armor",Operation:0,Name:"generic.armor"}]}
execute @e[tag=VMW] ~ ~ ~ execute @s[tag=半血模式] ~ ~ ~ replaceitem entity @a[tag=游戏中] slot.armor.chest minecraft:leather_chestplate 1 0 {ench:[{lvl:1s,id:10s}],Unbreakable:1b,HideFlags:5,display:{color:8388863,Name:""},AttributeModifiers:[{UUIDMost:3618156733941892737L,UUIDLeast:-7584274578594019785L,Amount:13.0d,Slot:"chest",AttributeName:"generic.armor",Operation:0,Name:"generic.armor"},{UUIDMost:6576250448452734424L,UUIDLeast:-7523519124796604724L,Amount:-10.0d,Slot:"chest",AttributeName:"generic.maxHealth",Operation:0,Name:"generic.maxHealth"}]}
replaceitem entity @a[tag=游戏中,score_选择的商店=0] slot.hotbar.0 mwc:ump_45 1 0 {IUuidLeast:-8716880898063688977L,Ammo:25,IUuidMost:8322212988169833231L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,115B,126B,112B,-98B,-87B,1B,75B,15B,-121B,7B,107B,1B,-39B,-122B,-102B,-17B,0B,0B,19B,71B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,11B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,19B,18B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,-108B,0B,0B,0B,0B,0B,0B,16B,-110B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,18B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,123B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,0B,0B,0B,0B,25B,0B,64B,0B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fUMP45"}}
replaceitem entity @a[tag=游戏中,score_选择的商店=1,score_选择的商店_min=1] slot.hotbar.0 mwc:pp91_kedr 1 0 {IUuidLeast:-4720302943062026154L,Ammo:20,IUuidMost:-6529360097055584277L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-91B,99B,13B,-107B,-12B,100B,79B,-21B,-66B,126B,29B,123B,-122B,-114B,-104B,86B,0B,0B,19B,64B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,14B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-8B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,9B,0B,0B,18B,8B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,20B,0B,64B,0B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,1B,0B,0B,0B,0B,1B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fPP-91"}}
replaceitem entity @a[tag=游戏中,score_选择的商店=2,score_选择的商店_min=2] slot.hotbar.0 mwc:uzi 1 0 {IUuidLeast:-9039682457717428042L,Ammo:32,IUuidMost:166886706606919252L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,2B,80B,-26B,-109B,81B,10B,78B,84B,-126B,-116B,-104B,-78B,-15B,108B,48B,-74B,0B,0B,19B,-126B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,15B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,19B,35B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,79B,0B,0B,18B,80B,0B,0B,0B,0B,0B,0B,18B,81B,0B,0B,0B,0B,0B,0B,18B,123B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,32B,0B,64B,0B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fUzi"}}

xp -10000L @a 
stopsound @a record
gamemode 3 @a[team=旁观]
tellraw @a[team=旁观] [{"text":"§7§l你正在旁观整场游戏"}]
tellraw @a[team=旁观] [{"text":"§f§l§n点击即可中途加入","clickEvent":{"action":"run_command","value":"/trigger 个人-中途加入 set 1"}}]

scoreboard players tag @a[tag=中途加入] remove 中途加入
scoreboard teams join CTT @a[tag=游戏中]

scoreboard players set @a[tag=游戏中] 个人-死亡判定 1


scoreboard players tag @e[tag=VMW] add 全局游戏
scoreboard players tag @e[tag=VMW] add 开始3
scoreboard players tag @e[tag=VMW] remove 预开始1
