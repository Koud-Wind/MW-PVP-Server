#显示器
execute @a[tag=游戏中] ~ ~ ~ title @s actionbar [{"text":"§b§l剩余时间:"},{"score":{"objective":"个人-剩余时间换算","name":"@e[tag=VMW]"}},{"text":"秒 §6§l第一名击杀数:"},{"score":{"objective":"个人-第一击杀数","name":"@e[tag=VMW]"}},{"text":" §e§l第二名击杀数:"},{"score":{"objective":"个人-第二击杀数","name":"@e[tag=VMW]"}},{"text":" §e§l你的金钱:"},{"score":{"objective":"爆破-金钱","name":"@s"}}]
execute @a[team=旁观] ~ ~ ~ title @s actionbar [{"text":"§b§l剩余时间:"},{"score":{"objective":"个人-剩余时间换算","name":"@e[tag=VMW]"}},{"text":"秒 §7§l当前为旁观状态 §6§l第一名击杀数:"},{"score":{"objective":"个人-第一击杀数","name":"@e[tag=VMW]"}},{"text":" §e§l第二名击杀数:"},{"score":{"objective":"个人-第二击杀数","name":"@e[tag=VMW]"}}]
execute @a[team=,tag=!PVE-游戏中] ~ ~ ~ title @s actionbar [{"text":"§b§l剩余时间:"},{"score":{"objective":"个人-剩余时间换算","name":"@e[tag=VMW]"}},{"text":"秒 §c§l请等待游戏结束 §6§l第一名击杀数:"},{"score":{"objective":"个人-第一击杀数","name":"@e[tag=VMW]"}},{"text":" §e§l第二名击杀数:"},{"score":{"objective":"个人-第二击杀数","name":"@e[tag=VMW]"}}]

#优化计时器检测
execute @e[tag=VMW,score_个人-剩余时间_min=7800] ~ ~ ~ function vmwp:游戏/个人对抗/计时检测

#商店函数
execute @e[tag=VMW,score_个人-剩余时间_min=1] ~ ~ ~ function vmwp:商店/武器商店
execute @e[tag=VMW,score_个人-剩余时间_min=1] ~ ~ ~ function vmwp:商店/购买给予

#击杀
execute @a[score_个人-击杀判定_min=1,tag=游戏中] ~ ~ ~ function vmwp:游戏/个人对抗/击杀

#满20杀结算
function vmwp:游戏/个人对抗/结算 if @a[team=CTT,tag=游戏中,score_个人-击杀数_min=25]

#10秒不杀敌发光
execute @e[tag=VMW,score_个人-不击杀发光_min=200] ~ ~ ~ effect @a[tag=游戏中] 24 2 0 true
scoreboard players set @e[tag=VMW,score_个人-不击杀发光_min=200] 个人-不击杀发光 0

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
scoreboard players set @a[score_个人-死亡判定_min=1] 个人-死亡判定 0

#无人时强制结束
function vmwp:游戏/个人对抗/重置 unless @a[team=CTT]

scoreboard players tag @p[tag=游戏中,team=CTT] add 是否无人
execute @a[tag=是否无人] ~ ~ ~ function vmwp:游戏/个人对抗/重置 unless @a[tag=!是否无人,team=CTT]
scoreboard players tag @a[tag=是否无人] remove 是否无人

#计时器
execute @e[tag=VMW,score_个人-剩余时间=7800] ~ ~ ~ scoreboard players add @s 个人-不击杀发光 1
execute @e[tag=VMW,score_个人-剩余时间_min=7000,score_个人-剩余时间=7000] ~ ~ ~ effect @a[tag=游戏中] 24 4 0 true
execute @e[tag=VMW,score_个人-剩余时间_min=6000,score_个人-剩余时间=6000] ~ ~ ~ effect @a[tag=游戏中] 24 4 0 true
execute @e[tag=VMW,score_个人-剩余时间_min=5000,score_个人-剩余时间=5000] ~ ~ ~ effect @a[tag=游戏中] 24 4 0 true
execute @e[tag=VMW,score_个人-剩余时间_min=4000,score_个人-剩余时间=4000] ~ ~ ~ effect @a[tag=游戏中] 24 4 0 true
execute @e[tag=VMW,score_个人-剩余时间_min=3000,score_个人-剩余时间=3000] ~ ~ ~ effect @a[tag=游戏中] 24 4 0 true
execute @e[tag=VMW,score_个人-剩余时间_min=2000,score_个人-剩余时间=2000] ~ ~ ~ effect @a[tag=游戏中] 24 4 0 true
execute @e[tag=VMW,score_个人-剩余时间_min=1000,score_个人-剩余时间=1000] ~ ~ ~ effect @a[tag=游戏中] 24 4 0 true
execute @e[tag=VMW,score_个人-剩余时间_min=6500,score_个人-剩余时间=6500] ~ ~ ~ effect @a[tag=游戏中] 24 4 0 true
execute @e[tag=VMW,score_个人-剩余时间_min=5500,score_个人-剩余时间=5500] ~ ~ ~ effect @a[tag=游戏中] 24 4 0 true
execute @e[tag=VMW,score_个人-剩余时间_min=4500,score_个人-剩余时间=4500] ~ ~ ~ effect @a[tag=游戏中] 24 4 0 true
execute @e[tag=VMW,score_个人-剩余时间_min=3500,score_个人-剩余时间=3500] ~ ~ ~ effect @a[tag=游戏中] 24 4 0 true
execute @e[tag=VMW,score_个人-剩余时间_min=2500,score_个人-剩余时间=2500] ~ ~ ~ effect @a[tag=游戏中] 24 4 0 true
execute @e[tag=VMW,score_个人-剩余时间_min=1500,score_个人-剩余时间=1500] ~ ~ ~ effect @a[tag=游戏中] 24 4 0 true
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
execute @e[tag=VMW,score_个人-剩余时间=0] ~ ~ ~ function vmwp:游戏/个人对抗/结算

#限制物品格
replaceitem entity @a[m=2,tag=!PVE-游戏中] slot.inventory.3 minecraft:air
replaceitem entity @a[m=2,tag=!PVE-游戏中] slot.hotbar.3 minecraft:stained_glass_pane 1 15 {display:{Name:"§f已禁用"}}
replaceitem entity @a[m=2,tag=!PVE-游戏中] slot.hotbar.4 minecraft:stained_glass_pane 1 15 {display:{Name:"§f已禁用"}}
replaceitem entity @a[m=2,tag=!PVE-游戏中] slot.hotbar.5 minecraft:stained_glass_pane 1 15 {display:{Name:"§f已禁用"}}

#退出处理
scoreboard players set @a[score_离开游戏_min=1] 背景音乐 0
scoreboard players reset @a[score_离开游戏_min=1] 爆破-金钱
scoreboard players reset @a[score_离开游戏_min=1] 爆破-选择的主武器
scoreboard players reset @a[score_离开游戏_min=1] 爆破-选择的副武器
scoreboard players reset @a[score_离开游戏_min=1] 个人-击杀数
scoreboard players reset @a[score_离开游戏_min=1] 个人-击杀数计算

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
execute @a[score_个人-中途加入_min=1,team=旁观] ~ ~ ~ function vmwp:游戏/个人对抗/中途加入
scoreboard players reset @a[score_个人-中途加入_min=1] 个人-中途加入

#终极武器
scoreboard players tag @a add 获得特殊武器 {Inventory:[{id:"mwc:russian_weapons_case",tag:{tag:["特殊武器包"]}}]}

replaceitem entity @a[tag=获得特殊武器,score_选择的特殊武器_min=0,score_选择的特殊武器=0] slot.hotbar.0 mwc:gl06 1 0 {IUuidLeast:-5624438658342251273L,Ammo:1,IUuidMost:2795396047957476467L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,38B,-53B,61B,-27B,29B,9B,68B,115B,-79B,-15B,-6B,-42B,-4B,-119B,20B,-9B,0B,0B,19B,-101B,0B,0B,0B,2B,0B,0B,0B,0B,0B,0B,0B,9B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,-3B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,-5B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,64B,-96B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§4GL-06"}}
scoreboard players set @a[tag=获得特殊武器,score_选择的特殊武器_min=0,score_选择的特殊武器=0] 爆破-选择的主武器 100

replaceitem entity @a[tag=获得特殊武器,score_选择的特殊武器_min=1,score_选择的特殊武器=1] slot.hotbar.0 mwc:rpg7 1 0 {IUuidLeast:-6783022202184099568L,Ammo:1,IUuidMost:2727878700286364111L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,37B,-37B,95B,57B,-104B,-20B,73B,-49B,-95B,-35B,-35B,62B,-65B,58B,-103B,16B,0B,0B,19B,-98B,0B,0B,0B,2B,0B,0B,0B,0B,0B,0B,0B,15B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,-7B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,65B,32B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§4RPG-7"}}
scoreboard players set @a[tag=获得特殊武器,score_选择的特殊武器_min=1,score_选择的特殊武器=1] 爆破-选择的主武器 101

replaceitem entity @a[tag=获得特殊武器,score_选择的特殊武器_min=2,score_选择的特殊武器=2] slot.hotbar.0 mwc:pkm 1 0 {IUuidLeast:-4637615483478291902L,AtId:[I;4482,5177,0,0,0,0,0,5231,5197,5193,5181,5183,0,5199,5182,5129,5221,0,0,0,0,0,0,0,0,4096,0],Ammo:120,IUuidMost:-4216991670720511768L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-59B,122B,60B,107B,5B,-20B,64B,-24B,-65B,-93B,-31B,73B,-10B,108B,-54B,66B,0B,0B,20B,95B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,121B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-126B,0B,0B,20B,57B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,4B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,20B,111B,0B,0B,20B,77B,0B,0B,20B,73B,0B,0B,20B,61B,0B,0B,20B,63B,0B,0B,0B,0B,0B,0B,20B,79B,0B,0B,20B,62B,0B,0B,20B,9B,0B,0B,20B,101B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,120B,0B,64B,44B,-52B,-51B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§4PKM"}}
scoreboard players set @a[tag=获得特殊武器,score_选择的特殊武器_min=2,score_选择的特殊武器=2] 爆破-选择的主武器 102

replaceitem entity @a[tag=获得特殊武器,score_选择的特殊武器_min=3,score_选择的特殊武器=3] slot.hotbar.0 mwc:vss_vintorez 1 0 {IUuidLeast:-8271220579771256398L,AtId:[I;4473,0,0,0,0,0,0,4459,4448,4412,0,0,4449,0,4673,0,0,0,0,0,0,0,0,0,0,4096,0],Ammo:20,IUuidMost:2831285840988489465L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,39B,74B,-65B,120B,-71B,-74B,70B,-7B,-115B,54B,-72B,-76B,-101B,-43B,113B,-78B,0B,0B,19B,65B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,63B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,121B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,19B,31B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,107B,0B,0B,17B,96B,0B,0B,17B,60B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,97B,0B,0B,0B,0B,0B,0B,18B,65B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,20B,0B,63B,-64B,0B,0B,127B,-1B,-1B,-1B,62B,15B,92B,41B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§4VSS"}}
scoreboard players set @a[tag=获得特殊武器,score_选择的特殊武器_min=3,score_选择的特殊武器=3] 爆破-选择的主武器 103

replaceitem entity @a[tag=获得特殊武器,score_选择的特殊武器_min=4,score_选择的特殊武器=4] slot.hotbar.0 mwc:m202 1 0 {IUuidLeast:-5646834837680465466L,Ammo:4,IUuidMost:3590677991825819471L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,49B,-44B,-90B,-101B,-3B,-105B,71B,79B,-79B,-94B,105B,-94B,34B,-63B,89B,-58B,0B,0B,19B,-97B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,9B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-111B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,-6B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,0B,0B,0B,0B,4B,0B,64B,-96B,0B,0B,0B,0B,0B,1B,61B,-11B,-62B,-113B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§4M202"}}
scoreboard players set @a[tag=获得特殊武器,score_选择的特殊武器_min=4,score_选择的特殊武器=4] 爆破-选择的主武器 104

replaceitem entity @a[tag=获得特殊武器,score_选择的特殊武器_min=5,score_选择的特殊武器=5] slot.hotbar.0 mwc:m32_mgl 1 0 {IUuidLeast:-8614578431577803302L,Ammo:6,AtId:[I;-1,-1,0,0,0,0,0,4356,0,4416,0,0,-1,4584,0,4607,0,4732,0,0,0,0,0,0,0,4096,0],IUuidMost:-336372285734894412L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-5B,84B,-9B,48B,52B,124B,68B,-76B,-120B,114B,-34B,-114B,-8B,16B,53B,-38B,0B,0B,19B,-99B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,125B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,4B,0B,0B,0B,0B,0B,0B,17B,64B,0B,0B,0B,0B,0B,0B,0B,0B,-1B,-1B,-1B,-1B,0B,0B,17B,-24B,0B,0B,0B,0B,0B,0B,17B,-1B,0B,0B,0B,0B,0B,0B,18B,124B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,6B,0B,64B,-64B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§4M32 MGL"}}
scoreboard players set @a[tag=获得特殊武器,score_选择的特殊武器_min=5,score_选择的特殊武器=5] 爆破-选择的主武器 105

replaceitem entity @a[tag=获得特殊武器,score_选择的特殊武器_min=6,score_选择的特殊武器=6] slot.hotbar.0 mwc:m134 1 0 {IUuidLeast:-7120371601867481734L,Ammo:60,IUuidMost:652440629080836363L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,9B,13B,-17B,75B,-99B,101B,73B,11B,-99B,47B,91B,-64B,-31B,-24B,-35B,122B,0B,0B,19B,-96B,0B,0B,0B,2B,0B,0B,0B,0B,0B,0B,0B,10B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-63B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,-23B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,0B,0B,0B,0B,60B,0B,63B,-128B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§4M134"}}
scoreboard players set @a[tag=获得特殊武器,score_选择的特殊武器_min=6,score_选择的特殊武器=6] 爆破-选择的主武器 106

#replaceitem entity @a[tag=获得特殊武器,score_选择的特殊武器_min=7,score_选择的特殊武器=7] slot.hotbar.0 mwc:fatman 1 0 {IUuidLeast:-6164030412886089568L,Ammo:1,IUuidMost:7902692299008657250L,Instance:[B;-32B,83B,21B,-112B,-126B,43B,-31B,45B,117B,49B,126B,79B,17B,126B,62B,-127B,0B,0B,0B,9B,109B,-84B,0B,-58B,-109B,-96B,71B,98B,-86B,116B,-10B,-1B,119B,56B,96B,-96B,0B,0B,20B,114B,0B,0B,0B,5B,0B,0B,0B,0B,0B,0B,1B,-32B,75B,99B,82B,108B,-118B,-87B,-71B,14B,-97B,-92B,100B,-74B,-111B,106B,61B,-40B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,20B,100B,0B,0B,21B,-79B,0B,0B,22B,99B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-99B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,65B,-96B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§4fat man"}}
scoreboard players set @a[tag=获得特殊武器,score_选择的特殊武器_min=7,score_选择的特殊武器=7] 爆破-选择的主武器 107

clear @a[tag=获得特殊武器] mwc:russian_weapons_case
scoreboard players tag @a[tag=获得特殊武器] remove 获得特殊武器

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
