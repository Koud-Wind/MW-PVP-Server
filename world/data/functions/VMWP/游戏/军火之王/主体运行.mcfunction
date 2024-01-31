#显示器
execute @a[tag=游戏中] ~ ~ ~ title @s actionbar [{"text":"§b§l剩余时间:"},{"score":{"objective":"个人-剩余时间换算","name":"@e[tag=VMW]"}},{"text":"秒 §a§l第一名分数:"},{"score":{"objective":"个人-第一击杀数","name":"@e[tag=VMW]"}},{"text":" §2§l第二名分数:"},{"score":{"objective":"个人-第二击杀数","name":"@e[tag=VMW]"}},{"text":" §c§l你的击杀数:"},{"score":{"objective":"个人-击杀数","name":"@s"}}]
execute @a[team=旁观] ~ ~ ~ title @s actionbar [{"text":"§b§l剩余时间:"},{"score":{"objective":"个人-剩余时间换算","name":"@e[tag=VMW]"}},{"text":"秒 §7§l当前为旁观状态 §a§l第一名分数:"},{"score":{"objective":"个人-第一击杀数","name":"@e[tag=VMW]"}},{"text":" §2§l第二名分数:"},{"score":{"objective":"个人-第二击杀数","name":"@e[tag=VMW]"}}]
execute @a[team=,tag=!PVE-游戏中] ~ ~ ~ title @s actionbar [{"text":"§b§l剩余时间:"},{"score":{"objective":"个人-剩余时间换算","name":"@e[tag=VMW]"}},{"text":"秒 §c§l请等待游戏结束 §a§l第一名分数:"},{"score":{"objective":"个人-第一击杀数","name":"@e[tag=VMW]"}},{"text":" §2§l第二名分数:"},{"score":{"objective":"个人-第二击杀数","name":"@e[tag=VMW]"}}]

#优化计时器检测
execute @e[tag=VMW,score_个人-剩余时间_min=7800] ~ ~ ~ function vmwp:游戏/军火之王/计时检测

#击杀
execute @a[score_个人-击杀判定_min=1,tag=游戏中] ~ ~ ~ function vmwp:游戏/军火之王/击杀

#结算
function vmwp:游戏/军火之王/结算 if @a[team=CTT,tag=游戏中,score_个人-分数_min=120]

#商店函数
execute @e[tag=VMW,score_个人-剩余时间_min=1] ~ ~ ~ function vmwp:商店/购买给予

#死后处理
effect @a[tag=随机传送] 11 2 50 true
effect @a[tag=随机传送] 12 5 0 true

execute @e[tag=VMW,score_个人-地图=0] ~ ~ ~ execute @a[tag=随机传送] ~ ~ ~ spreadplayers -223 1300 0 55 true @s
execute @e[tag=VMW,score_个人-地图=1,score_个人-地图_min=1] ~ ~ ~ execute @a[tag=随机传送] ~ ~ ~ spreadplayers -330 1234 0 44 true @s
execute @e[tag=VMW,score_个人-地图=2,score_个人-地图_min=2] ~ ~ ~ execute @a[tag=随机传送] ~ ~ ~ spreadplayers -339 1341 0 44 true @s
execute @e[tag=VMW,score_个人-地图=3,score_个人-地图_min=3] ~ ~ ~ execute @a[tag=随机传送] ~ ~ ~ spreadplayers -426 1199 0 39 true @s
execute @e[tag=VMW,score_个人-地图=4,score_个人-地图_min=4] ~ ~ ~ execute @a[tag=随机传送] ~ ~ ~ spreadplayers -452 1568 0 45 true @s
execute @e[tag=VMW,score_个人-地图=5,score_个人-地图_min=5] ~ ~ ~ execute @a[tag=随机传送] ~ ~ ~ spreadplayers -231 1545 0 69 true @s
execute @e[tag=VMW,score_个人-地图=0] ~ ~ ~ execute @a[tag=随机传送] ~ ~ ~ scoreboard players tag @s[y=78,dy=200] add 死后随机传送
execute @e[tag=VMW,score_个人-地图=1,score_个人-地图_min=1] ~ ~ ~ execute @a[tag=随机传送] ~ ~ ~ scoreboard players tag @s[y=90,dy=200] add 死后随机传送
execute @e[tag=VMW,score_个人-地图=2,score_个人-地图_min=2] ~ ~ ~ execute @a[tag=随机传送] ~ ~ ~ scoreboard players tag @s[y=80,dy=200] add 死后随机传送
execute @e[tag=VMW,score_个人-地图=3,score_个人-地图_min=3] ~ ~ ~ execute @a[tag=随机传送] ~ ~ ~ scoreboard players tag @s[y=81,dy=200] add 死后随机传送
execute @e[tag=VMW,score_个人-地图=4,score_个人-地图_min=4] ~ ~ ~ execute @a[tag=随机传送] ~ ~ ~ scoreboard players tag @s[y=80,dy=200] add 死后随机传送
execute @e[tag=VMW,score_个人-地图=4,score_个人-地图_min=4] ~ ~ ~ execute @a[tag=随机传送] ~ ~ ~ scoreboard players tag @s[y=67,dy=-10] add 死后随机传送
execute @e[tag=VMW,score_个人-地图=5,score_个人-地图_min=5] ~ ~ ~ execute @a[tag=随机传送] ~ ~ ~ scoreboard players tag @s[y=77,dy=200] add 死后随机传送
execute @e[tag=VMW,score_个人-地图=5,score_个人-地图_min=5] ~ ~ ~ execute @a[tag=随机传送] ~ ~ ~ scoreboard players tag @s[y=70,dy=-10] add 死后随机传送
execute @a[tag=随机传送] ~ ~ ~ execute @p[tag=游戏中,r=20,rm=1] ~ ~ ~ scoreboard players tag @a[tag=随机传送] add 死后随机传送

scoreboard players tag @a[tag=随机传送] remove 随机传送
scoreboard players tag @a[tag=死后随机传送] add 随机传送
scoreboard players tag @a[tag=死后随机传送] remove 死后随机传送

scoreboard players tag @a[tag=游戏中,score_个人-死亡判定_min=1] add 随机传送
scoreboard players tag @a[tag=游戏中,score_个人-死亡判定_min=1] add 掉落王冠 {Inventory:[{id:"minecraft:golden_helmet",tag:{ench:[{lvl:1s,id:16s},{lvl:1s,id:10s}]}}]}
execute @a[tag=掉落王冠] ~ ~ ~ summon minecraft:item ~ ~ ~ {Tags:["王冠"],Item:{id:"minecraft:golden_helmet",Count:1b,Damage:0s,tag:{ench:[{lvl:1s,id:16s}]}},Age:-32767,Owner:0,Health:999999999,Attributes:[{Name:"generic.maxHealth",Base:999999999}],Fire:-20,CustomNameVisible:1b,CustomName:"§e王冠(满3击杀数可拾取)",Glowing:1b}
replaceitem entity @a[tag=掉落王冠] slot.armor.head minecraft:air
scoreboard players tag @a[tag=掉落王冠] remove 掉落王冠
scoreboard players set @a[score_个人-死亡判定_min=1] 个人-死亡判定 0

#持有王冠玩家
scoreboard players tag @a[tag=游戏中,team=CTT] add 持有王冠 {Inventory:[{id:"minecraft:golden_helmet",tag:{ench:[{lvl:1s,id:16s},{lvl:1s,id:10s}]}}]}
scoreboard players add @a[tag=持有王冠,score_个人-王冠计时器=39] 个人-王冠计时器 1
effect @a[tag=持有王冠] 24 1 0 true
effect @a[tag=持有王冠] 2 1 1 true
execute @a[tag=持有王冠,score_个人-王冠计时器_min=40] ~ ~ ~ function vmwp:游戏/军火之王/得分

#是否存在王冠
execute @e[tag=VMW,score_个人-剩余时间=7900] ~ ~ ~ function vmwp:游戏/军火之王/王冠检测 unless @e[type=item,tag=王冠]

#持有末期
scoreboard players tag @a[tag=持有王冠] remove 持有王冠

#关于王冠
scoreboard players tag @e[type=item] add 王冠 {Item:{id:"minecraft:golden_helmet",tag:{ench:[{lvl:1s,id:16s}]}}}
execute @e[tag=王冠,type=item] ~ ~ ~ execute @s[tag=!显示] ~ ~ ~ tellraw @a[tag=!PVE-游戏中] {"text":"§a王冠已掉落!"}
entitydata @e[type=item,tag=王冠] {Tags:["王冠","显示"],Item:{id:"minecraft:golden_helmet",Count:1b,Damage:0s,tag:{ench:[{lvl:1s,id:16s}]}},Age:-32767,Owner:0,Health:999999999,Attributes:[{Name:"generic.maxHealth",Base:999999999}],Fire:-20,CustomNameVisible:1b,CustomName:"§e王冠(满3击杀数可拾取)",Glowing:1b}
execute @e[type=item,tag=王冠] ~ ~ ~ scoreboard players tag @p[r=1,team=CTT,m=2,score_个人-击杀数_min=3] add 捡起王冠
replaceitem entity @a[tag=捡起王冠] slot.armor.head minecraft:golden_helmet 1 0 {ench:[{lvl:1s,id:16s},{lvl:1s,id:10s}],Unbreakable:1b,HideFlags:5,display:{Name:"§e王冠"},AttributeModifiers:[{UUIDMost:7315363430355781807L,UUIDLeast:-5678051707942990044L,Amount:1.0d,Slot:"head",AttributeName:"generic.armor",Operation:0,Name:"generic.armor"}]}
execute @a[tag=捡起王冠] ~ ~ ~ kill @e[type=item,tag=王冠,c=1]
execute @a[tag=捡起王冠] ~ ~ ~ tellraw @a[tag=!PVE-游戏中] [{"selector":"@s"},{"text":"§e捡起了王冠!"}]
scoreboard players tag @a[tag=捡起王冠] remove 捡起王冠

#无人时强制结束
function vmwp:游戏/军火之王/重置 unless @a[team=CTT]

scoreboard players tag @p[tag=游戏中,team=CTT] add 是否无人
execute @a[tag=是否无人] ~ ~ ~ function vmwp:游戏/军火之王/重置 unless @a[tag=!是否无人,team=CTT]
scoreboard players tag @a[tag=是否无人] remove 是否无人

#计时器
execute @e[tag=VMW,score_个人-剩余时间_min=200,score_个人-剩余时间=200] ~ ~ ~ playsound minecraft:block.note.hat ambient @a ~ ~ ~ 1000000000
execute @e[tag=VMW,score_个人-剩余时间_min=120,score_个人-剩余时间=120] ~ ~ ~ playsound minecraft:block.note.hat ambient @a ~ ~ ~ 1000000000
execute @e[tag=VMW,score_个人-剩余时间_min=100,score_个人-剩余时间=100] ~ ~ ~ playsound minecraft:block.note.hat ambient @a ~ ~ ~ 1000000000
execute @e[tag=VMW,score_个人-剩余时间_min=80,score_个人-剩余时间=80] ~ ~ ~ playsound minecraft:block.note.hat ambient @a ~ ~ ~ 1000000000
execute @e[tag=VMW,score_个人-剩余时间_min=60,score_个人-剩余时间=60] ~ ~ ~ playsound minecraft:block.note.hat ambient @a ~ ~ ~ 1000000000
execute @e[tag=VMW,score_个人-剩余时间_min=40,score_个人-剩余时间=40] ~ ~ ~ playsound minecraft:block.note.hat ambient @a ~ ~ ~ 1000000000
execute @e[tag=VMW,score_个人-剩余时间_min=20,score_个人-剩余时间=20] ~ ~ ~ playsound minecraft:block.note.hat ambient @a ~ ~ ~ 1000000000
scoreboard players operation @e[tag=VMW] 个人-剩余时间换算 = @e[tag=VMW] 个人-剩余时间
scoreboard players operation @e[tag=VMW] 个人-剩余时间换算 /= §f除 个人-剩余时间换算
execute @e[tag=VMW] ~ ~ ~ scoreboard players remove @s[score_个人-剩余时间_min=1] 个人-剩余时间 1

#时间结束
execute @e[tag=VMW,score_个人-剩余时间=0] ~ ~ ~ function vmwp:游戏/军火之王/结算

#限制物品格
replaceitem entity @a[m=2,tag=!PVE-游戏中] slot.inventory.3 minecraft:air
replaceitem entity @a[m=2,tag=!PVE-游戏中] slot.hotbar.3 minecraft:stained_glass_pane 1 15 {display:{Name:"§f已禁用"}}
replaceitem entity @a[m=2,tag=!PVE-游戏中] slot.hotbar.4 minecraft:stained_glass_pane 1 15 {display:{Name:"§f已禁用"}}
replaceitem entity @a[m=2,tag=!PVE-游戏中] slot.hotbar.5 minecraft:stained_glass_pane 1 15 {display:{Name:"§f已禁用"}}
replaceitem entity @a[m=2,tag=!PVE-游戏中] slot.hotbar.6 minecraft:stained_glass_pane 1 15 {display:{Name:"§f已禁用"}}

scoreboard players tag @a[tag=游戏中] add FG01
scoreboard players tag @a[tag=FG01] remove FG01 {Inventory:[{Slot:10b}]}
replaceitem entity @a[tag=FG01] slot.inventory.1 minecraft:stained_glass_pane 1 8 {display:{Name:""}}
scoreboard players tag @a[tag=FG01] remove FG01

scoreboard players tag @a[tag=游戏中] add FG02
scoreboard players tag @a[tag=FG02] remove FG02 {Inventory:[{Slot:11b}]}
replaceitem entity @a[tag=FG02] slot.inventory.2 minecraft:stained_glass_pane 1 8 {display:{Name:""}}
scoreboard players tag @a[tag=FG02] remove FG02

#退出处理
scoreboard players set @a[score_离开游戏_min=1] 背景音乐 0
scoreboard players reset @a[score_离开游戏_min=1] 爆破-金钱
scoreboard players reset @a[score_离开游戏_min=1] 爆破-选择的主武器
scoreboard players reset @a[score_离开游戏_min=1] 爆破-选择的副武器
scoreboard players reset @a[score_离开游戏_min=1] 个人-击杀数
scoreboard players reset @a[score_离开游戏_min=1] 个人-击杀数计算
scoreboard players reset @a[score_离开游戏_min=1] 个人-分数
scoreboard players reset @a[score_离开游戏_min=1] 个人-王冠计时器

scoreboard players tag @a[score_离开游戏_min=1] remove 准备中
scoreboard players tag @a[score_离开游戏_min=1] remove 游戏中
scoreboard players tag @a[score_离开游戏_min=1] remove 商店
scoreboard players tag @a[score_离开游戏_min=1] remove 1rd
scoreboard players tag @a[score_离开游戏_min=1] remove 2rd
scoreboard players tag @a[score_离开游戏_min=1] remove 3rd

scoreboard teams leave @a[score_离开游戏_min=1]
scoreboard teams join 旁观 @a[score_离开游戏_min=1]

gamemode 3 @a[team=旁观,m=!3]
effect @a[score_离开游戏_min=1] 1 0 0 true
xp -10000L @a[score_离开游戏_min=1]
execute @e[tag=VMW,score_个人-地图=0] ~ ~ ~ tp @a[team=旁观,score_离开游戏_min=1] -265 68 1289 -90 0
execute @e[tag=VMW,score_个人-地图=1,score_个人-地图_min=1] ~ ~ ~ tp @a[team=旁观,score_离开游戏_min=1] -366 78 1233 -180 0
execute @e[tag=VMW,score_个人-地图=2,score_个人-地图_min=2] ~ ~ ~ tp @a[team=旁观,score_离开游戏_min=1] -375 76 1302 -90 0
execute @e[tag=VMW,score_个人-地图=3,score_个人-地图_min=3] ~ ~ ~ tp @a[team=旁观,score_离开游戏_min=1] -388 78 1213 90 0
execute @e[tag=VMW,score_个人-地图=4,score_个人-地图_min=4] ~ ~ ~ tp @a[team=旁观,score_离开游戏_min=1] -476 73 1581 -90 0
execute @e[tag=VMW,score_个人-地图=5,score_个人-地图_min=5] ~ ~ ~ tp @a[team=旁观,score_离开游戏_min=1] -171 73 1596 90 0

clear @a[score_离开游戏_min=1]
playsound minecraft:block.note.bass ambient @a[score_离开游戏_min=1] ~ ~ ~ 1000000000 1
tellraw @a[score_离开游戏_min=1] [{"text":"§7§l由于你离开了服务器,你将旁观游戏"}]
tellraw @a[score_离开游戏_min=1] [{"text":"§f§l§n点击即可中途加入","clickEvent":{"action":"run_command","value":"/trigger 个人-中途加入 set 1"}}]

scoreboard players set @a[score_离开游戏_min=1] 离开游戏 0

#中途加入
scoreboard players enable @a[team=旁观] 个人-中途加入
execute @a[score_个人-中途加入_min=1,team=旁观] ~ ~ ~ function vmwp:游戏/军火之王/中途加入
scoreboard players reset @a[score_个人-中途加入_min=1] 个人-中途加入

#购买超时防误购
scoreboard players reset @a[score_配件页面_min=1] 配件页面
scoreboard players reset @a[score_投掷物页面_min=1] 投掷物页面
scoreboard players reset @a[score_突击步枪页面_min=1] 突击步枪页面
scoreboard players reset @a[score_狙击枪&射手步枪页面_min=1] 狙击枪&射手步枪页面
scoreboard players reset @a[score_冲锋枪页面_min=1] 冲锋枪页面
scoreboard players reset @a[score_霰弹枪页面_min=1] 霰弹枪页面
scoreboard players reset @a[score_机枪页面_min=1] 机枪页面
scoreboard players reset @a[score_手枪页面_min=1] 手枪页面
scoreboard players reset @a[score_特殊武器页面_min=1] 特殊武器页面
