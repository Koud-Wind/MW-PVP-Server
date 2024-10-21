#显示器
execute @a[tag=游戏中] ~ ~ ~ title @s actionbar [{"text":"§3§l当前回合:"},{"score":{"objective":"个人-游戏数","name":"@e[tag=VMW]"}},{"text":" §b§l剩余时间:"},{"score":{"objective":"个人-剩余时间换算","name":"@e[tag=VMW]"}},{"text":"秒 §6§l第一名分数:"},{"score":{"objective":"个人-第一击杀数","name":"@e[tag=VMW]"}},{"text":" §e§l第二名分数:"},{"score":{"objective":"个人-第二击杀数","name":"@e[tag=VMW]"}},{"text":" §e§l你的金钱:"},{"score":{"objective":"爆破-金钱","name":"@s"}}]
execute @a[team=旁观] ~ ~ ~ title @s actionbar [{"text":"§3§l当前回合:"},{"score":{"objective":"个人-游戏数","name":"@e[tag=VMW]"}},{"text":" §b§l剩余时间:"},{"score":{"objective":"个人-剩余时间换算","name":"@e[tag=VMW]"}},{"text":"秒 §7§l当前为旁观状态 §6§l第一名分数:"},{"score":{"objective":"个人-第一击杀数","name":"@e[tag=VMW]"}},{"text":" §e§l第二名分数:"},{"score":{"objective":"个人-第二击杀数","name":"@e[tag=VMW]"}}]
execute @a[team=,tag=!PVE-游戏中] ~ ~ ~ title @s actionbar [{"text":"§3§l当前回合:"},{"score":{"objective":"个人-游戏数","name":"@e[tag=VMW]"}},{"text":" §b§l剩余时间:"},{"score":{"objective":"个人-剩余时间换算","name":"@e[tag=VMW]"}},{"text":"秒 §c§l请等待游戏结束 §6§l第一名分数:"},{"score":{"objective":"个人-第一击杀数","name":"@e[tag=VMW]"}},{"text":" §e§l第二名分数:"},{"score":{"objective":"个人-第二击杀数","name":"@e[tag=VMW]"}}]

#商店函数
replaceitem entity @a[m=2,tag=商店,score_选择的商店=0] slot.hotbar.6 minecraft:iron_ingot 1 0 {ench:[{lvl:1s,id:71s}],HideFlags:1,display:{Name:"§f武器商店1(右键打开)"}}
replaceitem entity @a[m=2,tag=商店,score_选择的商店=1,score_选择的商店_min=1] slot.hotbar.6 minecraft:flint 1 0 {ench:[{lvl:1s,id:71s}],HideFlags:1,display:{Name:"§f武器商店2(右键打开)"}}
replaceitem entity @a[m=2,tag=商店,score_选择的商店=2,score_选择的商店_min=2] slot.hotbar.6 minecraft:feather 1 0 {ench:[{lvl:1s,id:71s}],HideFlags:1,display:{Name:"§f武器商店3(右键打开)"}}

tellraw @a[score_突击步枪页面_min=1,tag=游戏中] [{"text":"§c此模式主武器仅可购买狙击步枪/射手步枪/冲锋枪"}]
scoreboard players reset @a[score_突击步枪页面_min=1,tag=游戏中] 突击步枪页面
tellraw @a[score_霰弹枪页面_min=1,tag=游戏中] [{"text":"§c此模式主武器仅可购买狙击步枪/射手步枪/冲锋枪"}]
scoreboard players reset @a[score_霰弹枪页面_min=1,tag=游戏中] 霰弹枪页面
tellraw @a[score_机枪页面_min=1,tag=游戏中] [{"text":"§c此模式主武器仅可购买狙击步枪/射手步枪/冲锋枪"}]
scoreboard players reset @a[score_机枪页面_min=1,tag=游戏中] 机枪页面
tellraw @a[score_特殊武器页面_min=1,tag=游戏中] [{"text":"§c此模式主武器仅可购买狙击步枪/射手步枪/冲锋枪"}]
scoreboard players reset @a[score_特殊武器页面_min=1,tag=游戏中] 特殊武器页面

scoreboard players enable @a[tag=游戏中] 配件页面
scoreboard players enable @a[tag=游戏中] 投掷物页面
scoreboard players enable @a[tag=游戏中] 突击步枪页面
scoreboard players enable @a[tag=游戏中] 狙击枪&射手步枪页面
scoreboard players enable @a[tag=游戏中] 冲锋枪页面
scoreboard players enable @a[tag=游戏中] 霰弹枪页面
scoreboard players enable @a[tag=游戏中] 机枪页面
scoreboard players enable @a[tag=游戏中] 手枪页面
scoreboard players enable @a[tag=游戏中] 特殊武器页面

execute @e[tag=VMW,score_个人-剩余时间_min=1] ~ ~ ~ function vmwp:商店/武器商店 if @a[score_配件页面_min=1]
execute @e[tag=VMW,score_个人-剩余时间_min=1] ~ ~ ~ function vmwp:商店/武器商店 if @a[score_投掷物页面_min=1]
execute @e[tag=VMW,score_个人-剩余时间_min=1] ~ ~ ~ function vmwp:商店/武器商店 if @a[score_狙击枪&射手步枪页面_min=1]
execute @e[tag=VMW,score_个人-剩余时间_min=1] ~ ~ ~ function vmwp:商店/武器商店 if @a[score_冲锋枪页面_min=1]
execute @e[tag=VMW,score_个人-剩余时间_min=1] ~ ~ ~ function vmwp:商店/武器商店 if @a[score_手枪页面_min=1]
execute @e[tag=VMW,score_个人-剩余时间_min=1] ~ ~ ~ function vmwp:商店/购买给予

#优化计时器检测
execute @e[tag=VMW,score_个人-剩余时间_min=2600] ~ ~ ~ function vmwp:游戏/求生对抗/计时检测

#击杀
execute @a[score_个人-击杀判定_min=1,tag=游戏中] ~ ~ ~ title @s title {"text":""}
execute @a[score_个人-击杀判定_min=1,tag=游戏中] ~ ~ ~ title @s subtitle {"text":"                            §e§l+15金钱"}
execute @a[score_个人-击杀判定_min=1,tag=游戏中] ~ ~ ~ playsound minecraft:entity.arrow.hit_player ambient @s ~ ~ ~ 100000000000
execute @a[score_个人-击杀判定_min=1,tag=游戏中] ~ ~ ~ playsound minecraft:entity.player.death ambient @s ~ ~ ~ 10000000000
execute @a[score_个人-击杀判定_min=1,tag=游戏中] ~ ~ ~ scoreboard players add @s 爆破-金钱 15
execute @a[score_个人-击杀判定_min=1,tag=游戏中] ~ ~ ~ scoreboard players tag @s add 涂装
scoreboard players reset @a[score_个人-击杀判定_min=1,tag=游戏中] 个人-击杀判定

#随机传送
execute @e[tag=VMW,score_个人-地图=0] ~ ~ ~ execute @a[tag=随机传送] ~ ~ ~ spreadplayers -223 1300 0 55 true @s
execute @e[tag=VMW,score_个人-地图=1,score_个人-地图_min=1] ~ ~ ~ execute @a[tag=随机传送] ~ ~ ~ spreadplayers -330 1234 0 44 true @s
execute @e[tag=VMW,score_个人-地图=2,score_个人-地图_min=2] ~ ~ ~ execute @a[tag=随机传送] ~ ~ ~ spreadplayers -339 1341 0 44 true @s
execute @e[tag=VMW,score_个人-地图=3,score_个人-地图_min=3] ~ ~ ~ execute @a[tag=随机传送] ~ ~ ~ spreadplayers -426 1199 0 39 true @s
execute @e[tag=VMW,score_个人-地图=4,score_个人-地图_min=4] ~ ~ ~ execute @a[tag=随机传送] ~ ~ ~ spreadplayers -452 1568 0 45 true @s
execute @e[tag=VMW,score_个人-地图=5,score_个人-地图_min=5] ~ ~ ~ execute @a[tag=随机传送] ~ ~ ~ spreadplayers -231 1545 0 69 true @s
execute @a[tag=随机传送] ~ ~ ~ tp @s ~ 150 ~
title @a[tag=随机传送] subtitle [{"text":"§3§l第 "},{"score":{"objective":"个人-游戏数","name":"@e[tag=VMW]"}},{"text":" §3§l回合"}]
title @a[tag=随机传送] title [{"text":"§b§l点击"},{"keybind":"key.jump","color":"yellow"},{"text":"§b§l开始滑翔"}]
playsound minecraft:item.elytra.flying ambient @a[tag=随机传送] ~ ~ ~ 100000000000
scoreboard players tag @a[tag=随机传送] remove 随机传送

#落地替换护甲
execute @e[tag=VMW,score_个人-剩余时间=2790] ~ ~ ~ scoreboard players tag @a[tag=游戏中] add 鞘翅落地 {OnGround:1b,Inventory:[{id:"minecraft:elytra"}]}
execute @e[tag=VMW] ~ ~ ~ execute @s[tag=!半血模式] ~ ~ ~ replaceitem entity @a[tag=鞘翅落地] slot.armor.chest minecraft:leather_chestplate 1 0 {ench:[{lvl:1s,id:10s}],Unbreakable:1b,HideFlags:5,display:{color:8388863,Name:""},AttributeModifiers:[{UUIDMost:3618156733941892737L,UUIDLeast:-7584274578594019785L,Amount:13.0d,Slot:"chest",AttributeName:"generic.armor",Operation:0,Name:"generic.armor"}]}
execute @e[tag=VMW] ~ ~ ~ execute @s[tag=半血模式] ~ ~ ~ replaceitem entity @a[tag=鞘翅落地] slot.armor.chest minecraft:leather_chestplate 1 0 {ench:[{lvl:1s,id:10s}],Unbreakable:1b,HideFlags:5,display:{color:8388863,Name:""},AttributeModifiers:[{UUIDMost:3618156733941892737L,UUIDLeast:-7584274578594019785L,Amount:13.0d,Slot:"chest",AttributeName:"generic.armor",Operation:0,Name:"generic.armor"},{UUIDMost:6576250448452734424L,UUIDLeast:-7523519124796604724L,Amount:-10.0d,Slot:"chest",AttributeName:"generic.maxHealth",Operation:0,Name:"generic.maxHealth"}]}
execute @e[tag=VMW,score_个人-剩余时间_min=2600] ~ ~ ~ effect @a[tag=鞘翅落地] 15 9 0 true
scoreboard players tag @a[tag=鞘翅落地] remove 鞘翅落地

#无人时强制结束
function vmwp:游戏/求生对抗/重置 unless @a[team=CTT]

scoreboard players tag @p[tag=游戏中,team=CTT] add 是否无人
execute @a[tag=是否无人] ~ ~ ~ function vmwp:游戏/求生对抗/重置 unless @a[tag=!是否无人,team=CTT]
scoreboard players tag @a[tag=是否无人] remove 是否无人

#人数判定
execute @a[tag=游戏中,m=2,c=4] ~ ~ ~ scoreboard players add @e[tag=VMW] 个人-人数 1

execute @e[tag=VMW,score_个人-人数=3,score_个人-人数_min=3,score_个人-剩余时间=2599] ~ ~ ~ execute @s[tag=!个人-等待] ~ ~ ~ scoreboard players tag @a[tag=游戏中,team=CTT,m=2] add 存活3
execute @e[tag=VMW,score_个人-人数=2,score_个人-人数_min=2,score_个人-剩余时间=2599] ~ ~ ~ execute @s[tag=!个人-等待] ~ ~ ~ scoreboard players tag @a[tag=游戏中,team=CTT,m=2] add 存活2
execute @e[tag=VMW,score_个人-人数=2,score_个人-人数_min=2,score_个人-剩余时间=2599] ~ ~ ~ execute @s[tag=!个人-等待] ~ ~ ~ execute @a[tag=存活2] ~ ~ ~ effect @a[tag=游戏中,m=2,team=CTT] 24 2 0 true
execute @e[tag=VMW,score_个人-人数=2,score_个人-人数_min=2,score_个人-剩余时间=2599] ~ ~ ~ execute @s[tag=!个人-等待] ~ ~ ~ execute @s[tag=!发光提示] ~ ~ ~ tellraw @a[tag=!PVE-游戏中] [{"text":"§c§l剩余二名玩家存活, 将获得发光!"}]
execute @e[tag=VMW,score_个人-人数=2,score_个人-人数_min=2,score_个人-剩余时间=2599] ~ ~ ~ execute @s[tag=!个人-等待] ~ ~ ~ execute @s[tag=!发光提示] ~ ~ ~ playsound minecraft:block.note.hat ambient @a[tag=!PVE-游戏中] ~ ~ ~ 1000000000
execute @e[tag=VMW,score_个人-人数=2,score_个人-人数_min=2,score_个人-剩余时间=2599] ~ ~ ~ execute @s[tag=!个人-等待] ~ ~ ~ scoreboard players tag @s[tag=!发光提示] add 发光提示
execute @e[tag=VMW,score_个人-人数=1,score_个人-人数_min=1,score_个人-剩余时间=2599] ~ ~ ~ execute @s[tag=!个人-等待] ~ ~ ~ scoreboard players tag @a[tag=游戏中,team=CTT,m=2] add 存活1

scoreboard players set @e[tag=VMW] 个人-人数 0

#scoreboard players tag @p[tag=游戏中,team=CTT,m=2] add 人数1
#execute @r[tag=人数1] ~ ~ ~ scoreboard players tag @p[tag=!人数1,team=CTT,m=2] add 人数2
#execute @a[tag=人数2] ~ ~ ~ scoreboard players tag @a[tag=人数1] add 人数2
#scoreboard players tag @a[tag=人数2] remove 人数1
#execute @r[tag=人数2] ~ ~ ~ scoreboard players tag @p[tag=!人数2,team=CTT,m=2] add 人数3
#execute @a[tag=人数3] ~ ~ ~ scoreboard players tag @a[tag=人数2] add 人数3
#scoreboard players tag @a[tag=人数3] remove 人数2
#execute @r[tag=人数3] ~ ~ ~ scoreboard players tag @p[tag=!人数3,team=CTT,m=2] add 人数4
#execute @a[tag=人数4] ~ ~ ~ scoreboard players tag @a[tag=人数3] add 人数4
#scoreboard players tag @a[tag=人数4] remove 人数3
#execute @r[tag=人数1] ~ ~ ~ scoreboard players set @e[tag=VMW] 个人-人数 1
#execute @r[tag=人数2] ~ ~ ~ scoreboard players set @e[tag=VMW] 个人-人数 2
#execute @r[tag=人数3] ~ ~ ~ scoreboard players set @e[tag=VMW] 个人-人数 3
#execute @r[tag=人数4] ~ ~ ~ scoreboard players set @e[tag=VMW] 个人-人数 4
#scoreboard players tag @a[tag=人数1] remove 人数1
#scoreboard players tag @a[tag=人数2] remove 人数2
#scoreboard players tag @a[tag=人数3] remove 人数3
#scoreboard players tag @a[tag=人数4] remove 人数4

#死亡处理
gamemode spectator @a[tag=游戏中,score_个人-死亡判定_min=1]
tellraw @a[tag=游戏中,score_个人-死亡判定_min=1] {"text":"§b§l别灰心,下一局还有机会..."}
scoreboard players set @a[tag=游戏中,score_个人-死亡判定_min=1] 爆破-选择的主武器 0
scoreboard players set @a[tag=游戏中,score_个人-死亡判定_min=1] 爆破-选择的副武器 0
clear @a[tag=游戏中,score_个人-死亡判定_min=1]
scoreboard players set @a[tag=游戏中,score_个人-死亡判定_min=1] 个人-死亡判定 0

#等待结束
execute @e[tag=VMW] ~ ~ ~ execute @s[tag=个人-等待] ~ ~ ~ effect @a[tag=!PVE-游戏中] 11 1 50 true
execute @e[tag=VMW] ~ ~ ~ execute @s[tag=个人-等待] ~ ~ ~ scoreboard players tag @a[tag=商店] remove 商店
execute @e[tag=VMW] ~ ~ ~ execute @s[tag=个人-等待] ~ ~ ~ kill @e[type=item]
execute @e[tag=VMW] ~ ~ ~ execute @s[tag=个人-等待] ~ ~ ~ gamemode 2 @a[tag=游戏中,m=3]
scoreboard players remove @e[tag=VMW,score_个人-等待时间_min=1] 个人-等待时间 1
execute @e[tag=VMW,score_个人-游戏数_min=5] ~ ~ ~ execute @s[tag=个人-等待,score_个人-等待时间=0] ~ ~ ~ function vmwp:游戏/求生对抗/结算
execute @e[tag=VMW] ~ ~ ~ execute @s[tag=个人-等待,score_个人-等待时间=0] ~ ~ ~ function vmwp:游戏/求生对抗/单局开始
scoreboard players tag @e[score_个人-等待时间=0] remove 个人-等待

#计时器
execute @e[tag=VMW,score_个人-剩余时间_min=1200,score_个人-剩余时间=1200] ~ ~ ~ execute @s[tag=!个人-等待] ~ ~ ~ effect @a[tag=游戏中,m=2,team=CTT] 24 60 0 true
execute @e[tag=VMW,score_个人-剩余时间_min=1200,score_个人-剩余时间=1200] ~ ~ ~ execute @s[tag=!个人-等待] ~ ~ ~ tellraw @a[tag=!PVE-游戏中] [{"text":"§c§l剩余60秒, 存活玩家会获得发光!"}]
execute @e[tag=VMW,score_个人-剩余时间_min=1200,score_个人-剩余时间=1200] ~ ~ ~ execute @s[tag=!个人-等待] ~ ~ ~ playsound minecraft:block.note.hat ambient @a[tag=!PVE-游戏中] ~ ~ ~ 1000000000
execute @e[tag=VMW,score_个人-剩余时间_min=800,score_个人-剩余时间=800] ~ ~ ~ execute @s[tag=!个人-等待] ~ ~ ~ tellraw @a[tag=!PVE-游戏中] [{"text":"§4§l10秒后, 信标附近外玩家会受到凋零效果!"}]
execute @e[tag=VMW,score_个人-剩余时间_min=800,score_个人-剩余时间=800] ~ ~ ~ execute @s[tag=!个人-等待] ~ ~ ~ playsound minecraft:block.note.hat ambient @a[tag=!PVE-游戏中] ~ ~ ~ 1000000000

execute @e[tag=VMW,score_个人-剩余时间=600] ~ ~ ~ execute @s[tag=!个人-等待,score_个人-地图=0] ~ ~ ~ effect @a[tag=游戏中,x=-229,y=71,z=1303,rm=10] 20 1 1 true
execute @e[tag=VMW,score_个人-剩余时间=600] ~ ~ ~ execute @s[tag=!个人-等待,score_个人-地图=1,score_个人-地图_min=1] ~ ~ ~ effect @a[tag=游戏中,x=-316,y=75,z=1245,rm=10] 20 1 1 true
execute @e[tag=VMW,score_个人-剩余时间=600] ~ ~ ~ execute @s[tag=!个人-等待,score_个人-地图=2,score_个人-地图_min=2] ~ ~ ~ effect @a[tag=游戏中,x=-343,y=72,z=1343,rm=10] 20 1 1 true
execute @e[tag=VMW,score_个人-剩余时间=600] ~ ~ ~ execute @s[tag=!个人-等待,score_个人-地图=3,score_个人-地图_min=3] ~ ~ ~ effect @a[tag=游戏中,x=-402,y=78,z=1171,rm=10] 20 1 1 true
execute @e[tag=VMW,score_个人-剩余时间=600] ~ ~ ~ execute @s[tag=!个人-等待,score_个人-地图=4,score_个人-地图_min=4] ~ ~ ~ effect @a[tag=游戏中,x=-439,y=73,z=1584,rm=10] 20 1 1 true
execute @e[tag=VMW,score_个人-剩余时间=600] ~ ~ ~ execute @s[tag=!个人-等待,score_个人-地图=5,score_个人-地图_min=5] ~ ~ ~ effect @a[tag=游戏中,x=-230,y=73,z=1533,rm=10] 20 1 1 true

execute @e[tag=VMW,score_个人-剩余时间_min=200,score_个人-剩余时间=200] ~ ~ ~ playsound minecraft:block.note.hat ambient @a ~ ~ ~ 1000000000
execute @e[tag=VMW,score_个人-剩余时间_min=120,score_个人-剩余时间=120] ~ ~ ~ playsound minecraft:block.note.hat ambient @a ~ ~ ~ 1000000000
execute @e[tag=VMW,score_个人-剩余时间_min=100,score_个人-剩余时间=100] ~ ~ ~ playsound minecraft:block.note.hat ambient @a ~ ~ ~ 1000000000
execute @e[tag=VMW,score_个人-剩余时间_min=80,score_个人-剩余时间=80] ~ ~ ~ playsound minecraft:block.note.hat ambient @a ~ ~ ~ 1000000000
execute @e[tag=VMW,score_个人-剩余时间_min=60,score_个人-剩余时间=60] ~ ~ ~ playsound minecraft:block.note.hat ambient @a ~ ~ ~ 1000000000
execute @e[tag=VMW,score_个人-剩余时间_min=40,score_个人-剩余时间=40] ~ ~ ~ playsound minecraft:block.note.hat ambient @a ~ ~ ~ 1000000000
execute @e[tag=VMW,score_个人-剩余时间_min=20,score_个人-剩余时间=20] ~ ~ ~ playsound minecraft:block.note.hat ambient @a ~ ~ ~ 1000000000
scoreboard players operation @e[tag=VMW] 个人-剩余时间换算 = @e[tag=VMW] 个人-剩余时间
scoreboard players operation @e[tag=VMW] 个人-剩余时间换算 /= §f除 个人-剩余时间换算
execute @e[tag=VMW] ~ ~ ~ execute @s[tag=!个人-等待] ~ ~ ~ scoreboard players remove @s[score_个人-剩余时间_min=1] 个人-剩余时间 1

#平局
execute @e[tag=VMW,score_个人-剩余时间_min=1] ~ ~ ~ execute @s[tag=!个人-等待] ~ ~ ~ function vmwp:游戏/求生对抗/单局结算 unless @a[tag=游戏中,team=CTT,m=2]

#存活玩家胜利
execute @e[tag=VMW,score_个人-剩余时间_min=1] ~ ~ ~ execute @s[tag=!个人-等待] ~ ~ ~ execute @a[tag=存活1,team=CTT,m=2] ~ ~ ~ playsound minecraft:entity.cat.ambient ambient @a[tag=!PVE-游戏中] ~ ~ ~ 100000000 0
execute @e[tag=VMW,score_个人-剩余时间_min=1] ~ ~ ~ execute @s[tag=!个人-等待] ~ ~ ~ execute @a[tag=存活1,team=CTT,m=2] ~ ~ ~ title @a[tag=!PVE-游戏中] subtitle [{"selector":"@s"},{"text":" §b§l是最后的幸存者"}]
execute @e[tag=VMW,score_个人-剩余时间_min=1] ~ ~ ~ execute @s[tag=!个人-等待] ~ ~ ~ function vmwp:游戏/求生对抗/单局结算 if @a[tag=存活1,team=CTT,m=2]

#时间结束
execute @e[tag=VMW,score_个人-剩余时间=0] ~ ~ ~ execute @s[tag=!个人-等待] ~ ~ ~ playsound minecraft:entity.elder_guardian.curse ambient @a[tag=!PVE-游戏中] ~ ~ ~ 10000000000 
execute @e[tag=VMW,score_个人-剩余时间=0] ~ ~ ~ execute @s[tag=!个人-等待] ~ ~ ~ title @a[tag=!PVE-游戏中] subtitle {"text":"§b§l时间已耗尽"}
execute @e[tag=VMW,score_个人-剩余时间=0] ~ ~ ~ execute @s[tag=!个人-等待] ~ ~ ~ function vmwp:游戏/求生对抗/单局结算

#判定末期
scoreboard players tag @a[tag=存活3,team=CTT,m=2] remove 存活3
scoreboard players tag @a[tag=存活2,team=CTT,m=2] remove 存活2

#限制物品格
replaceitem entity @a[m=2,tag=!PVE-游戏中] slot.inventory.3 minecraft:air
replaceitem entity @a[m=2,tag=!PVE-游戏中] slot.hotbar.3 minecraft:stained_glass_pane 1 15 {display:{Name:"§f已禁用"}}
replaceitem entity @a[m=2,tag=!PVE-游戏中] slot.hotbar.4 minecraft:stained_glass_pane 1 15 {display:{Name:"§f已禁用"}}
replaceitem entity @a[m=2,tag=!PVE-游戏中] slot.hotbar.5 minecraft:stained_glass_pane 1 15 {display:{Name:"§f已禁用"}}
execute @a[tag=!PVE-游戏中,m=2] ~ ~ ~ replaceitem entity @s[tag=!商店] slot.hotbar.6 minecraft:stained_glass_pane 1 15 {display:{Name:"§f已禁用"}}

#退出处理
scoreboard players set @a[score_离开游戏_min=1] 背景音乐 0
scoreboard players reset @a[score_离开游戏_min=1] 爆破-金钱
scoreboard players reset @a[score_离开游戏_min=1] 爆破-选择的主武器
scoreboard players reset @a[score_离开游戏_min=1] 爆破-选择的副武器
scoreboard players reset @a[score_离开游戏_min=1] 个人-击杀数
scoreboard players reset @a[score_离开游戏_min=1] 个人-击杀数计算
scoreboard players reset @a[score_离开游戏_min=1] 个人-分数

scoreboard players tag @a[score_离开游戏_min=1] remove 准备中
scoreboard players tag @a[score_离开游戏_min=1] remove 游戏中
scoreboard players tag @a[score_离开游戏_min=1] remove 商店
scoreboard players tag @a[score_离开游戏_min=1] remove 1st
scoreboard players tag @a[score_离开游戏_min=1] remove 2nd
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
execute @a[score_个人-中途加入_min=1,team=旁观] ~ ~ ~ function vmwp:游戏/求生对抗/中途加入
scoreboard players reset @a[score_个人-中途加入_min=1] 个人-中途加入
