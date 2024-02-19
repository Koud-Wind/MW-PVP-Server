#显示器
execute @a[tag=游戏中,team=CT] ~ ~ ~ title @s actionbar [{"text":"§a§l阵营:§9§lCT §b§l剩余时间:"},{"score":{"objective":"爆破-剩余时间换算","name":"@e[tag=VMW]"}},{"text":"秒 §3§l距离C4引爆:"},{"score":{"objective":"爆破-C4引爆时间换算","name":"@e[tag=VMW]"}},{"text":"秒 §a§l当前比分:"},{"score":{"objective":"爆破-CT比分","name":"@e[tag=VMW]"},"color":"blue","bold":true},{"text":"/"},{"score":{"objective":"爆破-T比分","name":"@e[tag=VMW]"},"color":"dark_red","bold":true},{"text":" §e§l你的金钱:"},{"score":{"objective":"爆破-金钱","name":"@s"}}]
execute @a[tag=游戏中,team=T] ~ ~ ~ title @s actionbar [{"text":"§a§l阵营:§4§lT §b§l剩余时间:"},{"score":{"objective":"爆破-剩余时间换算","name":"@e[tag=VMW]"}},{"text":"秒 §3§l距离C4引爆:"},{"score":{"objective":"爆破-C4引爆时间换算","name":"@e[tag=VMW]"}},{"text":"秒 §a§l当前比分:"},{"score":{"objective":"爆破-CT比分","name":"@e[tag=VMW]"},"color":"blue","bold":true},{"text":"/"},{"score":{"objective":"爆破-T比分","name":"@e[tag=VMW]"},"color":"dark_red","bold":true},{"text":" §e§l你的金钱:"},{"score":{"objective":"爆破-金钱","name":"@s"}}]
execute @a[team=旁观] ~ ~ ~ title @s actionbar [{"text":"§b§l剩余时间:"},{"score":{"objective":"爆破-剩余时间换算","name":"@e[tag=VMW]"}},{"text":"秒 §3§l距离C4引爆:"},{"score":{"objective":"爆破-C4引爆时间换算","name":"@e[tag=VMW]"}},{"text":"秒 §7§l当前为旁观状态 §a§l当前比分:"},{"score":{"objective":"爆破-CT比分","name":"@e[tag=VMW]"},"color":"blue","bold":true},{"text":"/"},{"score":{"objective":"爆破-T比分","name":"@e[tag=VMW]"},"color":"dark_red","bold":true}]
execute @a[team=,tag=!PVE-游戏中] ~ ~ ~ title @s actionbar [{"text":"§b§l剩余时间:"},{"score":{"objective":"爆破-剩余时间换算","name":"@e[tag=VMW]"}},{"text":"秒 §3§l距离C4引爆:"},{"score":{"objective":"爆破-C4引爆时间换算","name":"@e[tag=VMW]"}},{"text":"秒 §c§l请等待游戏结束 §a§l当前比分:"},{"score":{"objective":"爆破-CT比分","name":"@e[tag=VMW]"},"color":"blue","bold":true},{"text":"/"},{"score":{"objective":"爆破-T比分","name":"@e[tag=VMW]"},"color":"dark_red","bold":true}]

#商店函数
execute @e[tag=VMW,score_爆破-剩余时间_min=2000] ~ ~ ~ function vmwp:商店/武器商店
execute @e[tag=VMW,score_爆破-剩余时间_min=2000] ~ ~ ~ function vmwp:商店/购买给予
execute @e[tag=VMW,score_爆破-剩余时间_min=1800,score_爆破-剩余时间=1800] ~ ~ ~ function vmwp:商店/购买给予
execute @e[tag=VMW,score_爆破-剩余时间_min=1200,score_爆破-剩余时间=1200] ~ ~ ~ function vmwp:商店/购买给予
execute @e[tag=VMW,score_爆破-剩余时间_min=600,score_爆破-剩余时间=600] ~ ~ ~ function vmwp:商店/购买给予
execute @e[tag=VMW,score_爆破-C4引爆时间_min=600,score_爆破-C4引爆时间=600] ~ ~ ~ function vmwp:商店/购买给予

#击杀
effect @a[score_爆破-击杀数_min=4,tag=游戏中] 1 0 0 true
replaceitem entity @a[score_爆破-击杀数=1,tag=游戏中] slot.armor.chest minecraft:leather_chestplate 1 0 {ench:[{lvl:1s,id:10s}],Unbreakable:1b,HideFlags:5,display:{color:16777215,Name:"§7§lLV1"},AttributeModifiers:[{UUIDMost:3618156733941892737L,UUIDLeast:-7584274578594019785L,Amount:10.0d,Slot:"chest",AttributeName:"generic.armor",Operation:0,Name:"generic.armor"}]}
replaceitem entity @a[score_爆破-击杀数=3,score_爆破-击杀数_min=2,tag=游戏中] slot.armor.chest minecraft:leather_chestplate 1 0 {ench:[{lvl:1s,id:10s}],Unbreakable:1b,HideFlags:5,display:{color:33023,Name:"§b§lLV2"},AttributeModifiers:[{UUIDMost:3618156733941892737L,UUIDLeast:-7584274578594019785L,Amount:12.0d,Slot:"chest",AttributeName:"generic.armor",Operation:0,Name:"generic.armor"}]}
replaceitem entity @a[score_爆破-击杀数=5,score_爆破-击杀数_min=4,tag=游戏中] slot.armor.chest minecraft:leather_chestplate 1 0 {ench:[{lvl:1s,id:10s}],Unbreakable:1b,HideFlags:5,display:{color:8388863,Name:"§5§lLV3"},AttributeModifiers:[{UUIDMost:3618156733941892737L,UUIDLeast:-7584274578594019785L,Amount:13.0d,Slot:"chest",AttributeName:"generic.armor",Operation:0,Name:"generic.armor"}]}
replaceitem entity @a[score_爆破-击杀数_min=6,tag=游戏中] slot.armor.chest minecraft:leather_chestplate 1 0 {ench:[{lvl:1s,id:10s}],Unbreakable:1b,HideFlags:5,display:{color:16711680,Name:"§4§lLV4"},AttributeModifiers:[{UUIDMost:3618156733941892737L,UUIDLeast:-7584274578594019785L,Amount:15.0d,Slot:"chest",AttributeName:"generic.armor",Operation:0,Name:"generic.armor"}]}
#tellraw @a[score_爆破-击杀判定_min=1,tag=游戏中] [{"text":"§6击败一名敌人 +2金钱"}]
title @a[score_爆破-击杀判定_min=1,tag=游戏中] title {"text":""}
title @a[score_爆破-击杀判定_min=1,tag=游戏中] subtitle {"text":"                            §e§l+3金钱"}
playsound minecraft:entity.arrow.hit_player ambient @a[score_爆破-击杀判定_min=1,tag=游戏中] ~ ~ ~ 100000000000
tellraw @a[score_爆破-击杀数_min=2,score_爆破-击杀数=2,score_爆破-击杀判定_min=1,tag=游戏中] [{"text":"§a你的护甲已升级!"}]
tellraw @a[score_爆破-击杀数_min=4,score_爆破-击杀数=4,score_爆破-击杀判定_min=1,tag=游戏中] [{"text":"§a你的护甲已升级!,§8它似乎变得沉重起来!"}]
tellraw @a[score_爆破-击杀数_min=6,score_爆破-击杀数=6,score_爆破-击杀判定_min=1,tag=游戏中] [{"text":"§a你的护甲已升级!"}]
xp 1L @a[score_爆破-击杀判定_min=1,tag=游戏中]
playsound minecraft:entity.player.death ambient @a[score_爆破-击杀判定_min=1,tag=游戏中] ~ ~ ~ 10000000000
playsound minecraft:entity.player.levelup ambient @a[score_爆破-击杀数_min=2,score_爆破-击杀数=2,score_爆破-击杀判定_min=1,tag=游戏中] ~ ~ ~ 10000000000
playsound minecraft:entity.player.levelup ambient @a[score_爆破-击杀数_min=4,score_爆破-击杀数=4,score_爆破-击杀判定_min=1,tag=游戏中] ~ ~ ~ 10000000000
playsound minecraft:entity.player.levelup ambient @a[score_爆破-击杀数_min=6,score_爆破-击杀数=6,score_爆破-击杀判定_min=1,tag=游戏中] ~ ~ ~ 10000000000

scoreboard players add @a[score_爆破-击杀判定_min=1,tag=游戏中] 爆破-金钱 3
scoreboard players reset @a[score_爆破-击杀判定_min=1,tag=游戏中] 爆破-击杀判定

#死亡处理
gamemode spectator @a[tag=游戏中,score_爆破-死亡判定_min=1]
tellraw @a[tag=游戏中,score_爆破-死亡判定_min=1] {"text":"§b§l别灰心,下一局还有机会..."}
scoreboard players set @a[tag=游戏中,score_爆破-死亡判定_min=1] 爆破-选择的主武器 0
scoreboard players set @a[tag=游戏中,score_爆破-死亡判定_min=1] 爆破-选择的副武器 0

scoreboard players tag @a[team=T,tag=游戏中,score_爆破-死亡判定_min=1] add 掉落C4 {Inventory:[{id:"minecraft:red_nether_brick"}]}
execute @a[tag=掉落C4] ~ ~ ~ summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:red_nether_brick",Count:1b,Damage:0s,tag:{ench:[{lvl:1s,id:16s}]}},Age:-32767,Owner:0,Health:999999999,Attributes:[{Name:"generic.maxHealth",Base:999999999}],Fire:-20,CustomNameVisible:1b,CustomName:"§4C4炸弹",Glowing:1b}
scoreboard players tag @a[tag=掉落C4] remove 掉落C4

clear @a[tag=游戏中,score_爆破-死亡判定_min=1]
scoreboard players set @a[tag=游戏中,score_爆破-死亡判定_min=1] 爆破-死亡判定 0

#等待处理
execute @e[tag=VMW] ~ ~ ~ execute @s[tag=爆破-等待] ~ ~ ~ effect @a[tag=!PVE-游戏中] 11 1 50 true
execute @e[tag=VMW] ~ ~ ~ execute @s[tag=爆破-等待] ~ ~ ~ kill @e[type=armor_stand,tag=C4]
execute @e[tag=VMW] ~ ~ ~ execute @s[tag=爆破-等待] ~ ~ ~ scoreboard players tag @s remove 爆破-已安放C4
execute @e[tag=VMW] ~ ~ ~ execute @s[tag=爆破-等待] ~ ~ ~ scoreboard players tag @a[tag=商店] remove 商店
execute @e[tag=VMW] ~ ~ ~ execute @s[tag=爆破-等待] ~ ~ ~ kill @e[type=item]
execute @e[tag=VMW] ~ ~ ~ execute @s[tag=爆破-等待] ~ ~ ~ gamemode 2 @a[tag=游戏中,m=3]
scoreboard players remove @e[tag=VMW,score_爆破-等待时间_min=1] 爆破-等待时间 1

#完胜
execute @e[tag=VMW,score_爆破-CT比分_min=5] ~ ~ ~ execute @s[score_爆破-等待时间=0] ~ ~ ~ execute @a[tag=!中途加入] ~ ~ ~ scoreboard players add @s[team=CT,tag=游戏中] 钞票 150
execute @e[tag=VMW,score_爆破-CT比分_min=5] ~ ~ ~ execute @s[score_爆破-等待时间=0] ~ ~ ~ execute @a[tag=!中途加入] ~ ~ ~ scoreboard players add @s[team=CT,tag=游戏中] 胜场数 1
execute @e[tag=VMW,score_爆破-CT比分_min=5] ~ ~ ~ execute @s[score_爆破-等待时间=0] ~ ~ ~ execute @a[tag=!中途加入] ~ ~ ~ scoreboard players operation @s[team=CT,tag=游戏中] 爆破-金钱 /= §f除 爆破-金钱
execute @e[tag=VMW,score_爆破-CT比分_min=5] ~ ~ ~ execute @s[score_爆破-等待时间=0] ~ ~ ~ execute @a[tag=!中途加入] ~ ~ ~ execute @s[team=CT,tag=游戏中] ~ ~ ~ scoreboard players operation @s 钞票 += @s 爆破-金钱
execute @e[tag=VMW,score_爆破-CT比分_min=5] ~ ~ ~ execute @s[score_爆破-等待时间=0] ~ ~ ~ execute @a[tag=!中途加入] ~ ~ ~ scoreboard players add @s[team=T,tag=游戏中] 钞票 100
execute @e[tag=VMW,score_爆破-CT比分_min=5] ~ ~ ~ execute @s[score_爆破-等待时间=0] ~ ~ ~ execute @a[tag=!中途加入] ~ ~ ~ scoreboard players remove @s[team=T,tag=游戏中,score_胜场数_min=1] 胜场数 1
execute @e[tag=VMW,score_爆破-CT比分_min=5] ~ ~ ~ execute @s[score_爆破-等待时间=0] ~ ~ ~ execute @a[tag=!中途加入] ~ ~ ~ execute @s[team=CT,tag=游戏中] ~ ~ ~ tellraw @s [{"text":"§e完胜! +150钞票 +"},{"score":{"objective":"爆破-金钱","name":"@s"},"color":"yellow"},{"text":"§e钞票"}]
execute @e[tag=VMW,score_爆破-CT比分_min=5] ~ ~ ~ execute @s[score_爆破-等待时间=0] ~ ~ ~ execute @a[tag=!中途加入] ~ ~ ~ tellraw @s[team=T,tag=游戏中] [{"text":"§e对局结束! +100钞票"}]
execute @e[tag=VMW,score_爆破-CT比分_min=5] ~ ~ ~ execute @s[score_爆破-等待时间=0] ~ ~ ~ scoreboard players reset @a[tag=!PVE-游戏中] 爆破-金钱 0

execute @e[tag=VMW,score_爆破-CT比分_min=5] ~ ~ ~ execute @s[score_爆破-等待时间=0] ~ ~ ~ playsound minecraft:entity.firework.twinkle ambient @a[tag=!PVE-游戏中] ~ ~ ~ 100000000
execute @e[tag=VMW,score_爆破-CT比分_min=5] ~ ~ ~ execute @s[score_爆破-等待时间=0] ~ ~ ~ title @a[tag=!PVE-游戏中] title {"text":"§9§lCT 阵营§6§l大获全胜!"}
execute @e[tag=VMW,score_爆破-CT比分_min=5] ~ ~ ~ execute @s[score_爆破-等待时间=0] ~ ~ ~ title @a[tag=!PVE-游戏中] subtitle {"text":"§6§l钞票已发放给已参与游戏玩家"}
execute @e[tag=VMW,score_爆破-CT比分_min=5] ~ ~ ~ execute @s[score_爆破-等待时间=0] ~ ~ ~ function vmwp:游戏/赏金爆破/重置

execute @e[tag=VMW,score_爆破-CT比分_min=5] ~ ~ ~ execute @s[score_爆破-等待时间=0] ~ ~ ~ scoreboard players reset @s 爆破-T比分
execute @e[tag=VMW,score_爆破-CT比分_min=5] ~ ~ ~ execute @s[score_爆破-等待时间=0] ~ ~ ~ scoreboard players reset @s 爆破-CT比分


execute @e[tag=VMW,score_爆破-T比分_min=5] ~ ~ ~ execute @s[score_爆破-等待时间=0] ~ ~ ~ execute @a[tag=!中途加入] ~ ~ ~ scoreboard players add @s[team=T,tag=游戏中] 钞票 150
execute @e[tag=VMW,score_爆破-T比分_min=5] ~ ~ ~ execute @s[score_爆破-等待时间=0] ~ ~ ~ execute @a[tag=!中途加入] ~ ~ ~ scoreboard players add @s[team=T,tag=游戏中] 胜场数 1
execute @e[tag=VMW,score_爆破-T比分_min=5] ~ ~ ~ execute @s[score_爆破-等待时间=0] ~ ~ ~ execute @a[tag=!中途加入] ~ ~ ~ scoreboard players operation @s[team=T,tag=游戏中] 爆破-金钱 /= §f除 爆破-金钱
execute @e[tag=VMW,score_爆破-T比分_min=5] ~ ~ ~ execute @s[score_爆破-等待时间=0] ~ ~ ~ execute @a[tag=!中途加入] ~ ~ ~ execute @s[team=T,tag=游戏中] ~ ~ ~ scoreboard players operation @s 钞票 += @s 爆破-金钱
execute @e[tag=VMW,score_爆破-T比分_min=5] ~ ~ ~ execute @s[score_爆破-等待时间=0] ~ ~ ~ execute @a[tag=!中途加入] ~ ~ ~ scoreboard players add @s[team=CT,tag=游戏中] 钞票 100
execute @e[tag=VMW,score_爆破-T比分_min=5] ~ ~ ~ execute @s[score_爆破-等待时间=0] ~ ~ ~ execute @a[tag=!中途加入] ~ ~ ~ scoreboard players remove @s[team=CT,tag=游戏中,score_胜场数_min=1] 胜场数 1
execute @e[tag=VMW,score_爆破-T比分_min=5] ~ ~ ~ execute @s[score_爆破-等待时间=0] ~ ~ ~ execute @a[tag=!中途加入] ~ ~ ~ execute @s[team=T,tag=游戏中] ~ ~ ~ tellraw @s [{"text":"§e完胜! +150钞票 +"},{"score":{"objective":"爆破-金钱","name":"@s"},"color":"yellow"},{"text":"§e钞票"}]
execute @e[tag=VMW,score_爆破-T比分_min=5] ~ ~ ~ execute @s[score_爆破-等待时间=0] ~ ~ ~ execute @a[tag=!中途加入] ~ ~ ~ tellraw @s[team=CT,tag=游戏中] [{"text":"§e对局结束! +100钞票"}]
execute @e[tag=VMW,score_爆破-T比分_min=5] ~ ~ ~ execute @s[score_爆破-等待时间=0] ~ ~ ~ scoreboard players reset @a[tag=!PVE-游戏中] 爆破-金钱 0

execute @e[tag=VMW,score_爆破-T比分_min=5] ~ ~ ~ execute @s[score_爆破-等待时间=0] ~ ~ ~ playsound minecraft:entity.firework.twinkle ambient @a[tag=!PVE-游戏中] ~ ~ ~ 100000000
execute @e[tag=VMW,score_爆破-T比分_min=5] ~ ~ ~ execute @s[score_爆破-等待时间=0] ~ ~ ~ title @a[tag=!PVE-游戏中] title {"text":"§4§lT 阵营§6§l大获全胜!"}
execute @e[tag=VMW,score_爆破-T比分_min=5] ~ ~ ~ execute @s[score_爆破-等待时间=0] ~ ~ ~ title @a[tag=!PVE-游戏中] subtitle {"text":"§6§l钞票已发放给已参与游戏玩家"}
execute @e[tag=VMW,score_爆破-T比分_min=5] ~ ~ ~ execute @s[score_爆破-等待时间=0] ~ ~ ~ function vmwp:游戏/赏金爆破/重置

execute @e[tag=VMW,score_爆破-T比分_min=5] ~ ~ ~ execute @s[score_爆破-等待时间=0] ~ ~ ~ scoreboard players reset @s 爆破-CT比分
execute @e[tag=VMW,score_爆破-T比分_min=5] ~ ~ ~ execute @s[score_爆破-等待时间=0] ~ ~ ~ scoreboard players reset @s 爆破-T比分

#等待末期
execute @e[tag=VMW] ~ ~ ~ execute @s[tag=爆破-等待,score_爆破-等待时间=0] ~ ~ ~ function vmwp:游戏/赏金爆破/单局开始
scoreboard players tag @e[score_爆破-等待时间=0] remove 爆破-等待

#无人时强制结束
function vmwp:游戏/赏金爆破/重置 unless @a[team=CT]
function vmwp:游戏/赏金爆破/重置 unless @a[team=T]

#计时器
execute @e[tag=VMW,score_爆破-剩余时间_min=2520,score_爆破-剩余时间=2520] ~ ~ ~ function vmwp:游戏/赏金爆破/地图设定
execute @e[tag=VMW,score_爆破-剩余时间_min=2520,score_爆破-剩余时间=2520] ~ ~ ~ playsound minecraft:block.note.hat ambient @a[tag=!PVE-游戏中] ~ ~ ~ 1000000000
execute @e[tag=VMW,score_爆破-剩余时间_min=2500,score_爆破-剩余时间=2500] ~ ~ ~ playsound minecraft:block.note.hat ambient @a[tag=!PVE-游戏中] ~ ~ ~ 1000000000
execute @e[tag=VMW,score_爆破-剩余时间_min=2480,score_爆破-剩余时间=2480] ~ ~ ~ playsound minecraft:block.note.hat ambient @a[tag=!PVE-游戏中] ~ ~ ~ 1000000000
execute @e[tag=VMW,score_爆破-剩余时间_min=2460,score_爆破-剩余时间=2460] ~ ~ ~ playsound minecraft:block.note.hat ambient @a[tag=!PVE-游戏中] ~ ~ ~ 1000000000
execute @e[tag=VMW,score_爆破-剩余时间_min=2440,score_爆破-剩余时间=2440] ~ ~ ~ playsound minecraft:block.note.hat ambient @a[tag=!PVE-游戏中] ~ ~ ~ 1000000000
execute @e[tag=VMW,score_爆破-剩余时间_min=2420,score_爆破-剩余时间=2420] ~ ~ ~ playsound minecraft:block.note.hat ambient @a[tag=!PVE-游戏中] ~ ~ ~ 1000000000
execute @e[tag=VMW,score_爆破-剩余时间_min=2400,score_爆破-剩余时间=2400] ~ ~ ~ playsound minecraft:block.note.pling ambient @a[tag=!PVE-游戏中] ~ ~ ~ 1000000000 2
execute @e[tag=VMW,score_爆破-剩余时间_min=2400,score_爆破-剩余时间=2400] ~ ~ ~ title @a[tag=!PVE-游戏中] title [{"text":"§a§lGO!"}]
execute @e[tag=VMW,score_爆破-剩余时间_min=2400] ~ ~ ~ kill @e[type=mwc:smokegrenade260]
execute @e[tag=VMW,score_爆破-剩余时间=2000] ~ ~ ~ scoreboard players tag @a[tag=商店] remove 商店
execute @e[tag=VMW,score_爆破-剩余时间_min=420,score_爆破-剩余时间=420] ~ ~ ~ playsound minecraft:block.note.hat ambient @a[tag=!PVE-游戏中] ~ ~ ~ 1000000000
execute @e[tag=VMW,score_爆破-剩余时间_min=320,score_爆破-剩余时间=320] ~ ~ ~ playsound minecraft:block.note.hat ambient @a[tag=!PVE-游戏中] ~ ~ ~ 1000000000
execute @e[tag=VMW,score_爆破-剩余时间_min=220,score_爆破-剩余时间=220] ~ ~ ~ playsound minecraft:block.note.hat ambient @a[tag=!PVE-游戏中] ~ ~ ~ 1000000000
execute @e[tag=VMW,score_爆破-剩余时间_min=120,score_爆破-剩余时间=120] ~ ~ ~ playsound minecraft:block.note.hat ambient @a[tag=!PVE-游戏中] ~ ~ ~ 1000000000
execute @e[tag=VMW,score_爆破-剩余时间_min=80,score_爆破-剩余时间=80] ~ ~ ~ playsound minecraft:block.note.hat ambient @a[tag=!PVE-游戏中] ~ ~ ~ 1000000000
execute @e[tag=VMW,score_爆破-剩余时间_min=60,score_爆破-剩余时间=60] ~ ~ ~ playsound minecraft:block.note.hat ambient @a[tag=!PVE-游戏中] ~ ~ ~ 1000000000
execute @e[tag=VMW,score_爆破-剩余时间_min=40,score_爆破-剩余时间=40] ~ ~ ~ playsound minecraft:block.note.hat ambient @a[tag=!PVE-游戏中] ~ ~ ~ 1000000000
execute @e[tag=VMW,score_爆破-剩余时间_min=20,score_爆破-剩余时间=20] ~ ~ ~ playsound minecraft:block.note.hat ambient @a[tag=!PVE-游戏中] ~ ~ ~ 1000000000
scoreboard players operation @e[tag=VMW] 爆破-剩余时间换算 = @e[tag=VMW] 爆破-剩余时间
scoreboard players operation @e[tag=VMW] 爆破-剩余时间换算 /= §f除 爆破-剩余时间换算
execute @e[tag=VMW] ~ ~ ~ execute @s[tag=!爆破-等待] ~ ~ ~ scoreboard players remove @s[tag=!爆破-已安放C4,score_爆破-剩余时间_min=1] 爆破-剩余时间 1

#人数赋值
scoreboard players operation @e[tag=VMW] 爆破-CT人数 = §f爆破-CT人数 爆破-CT人数
scoreboard players operation @e[tag=VMW] 爆破-T人数 = §f爆破-T人数 爆破-T人数

#关于c4
scoreboard players tag @e[type=item] add C4掉落物 {Item:{id:"minecraft:red_nether_brick",tag:{ench:[{lvl:1s,id:16s}]}}}
execute @e[tag=C4掉落物,type=item] ~ ~ ~ execute @s[tag=!显示] ~ ~ ~ tellraw @a[team=T] {"text":"§c§l炸弹已掉落"}
entitydata @e[type=item,tag=C4掉落物] {Tags:["C4掉落物","显示"],Item:{id:"minecraft:red_nether_brick",Count:1b,Damage:0s,tag:{ench:[{lvl:1s,id:16s}]}},Age:-32767,Owner:0,Health:9999,Attributes:[{Name:"generic.maxHealth",Base:999999999}],Fire:-20,CustomNameVisible:1b,CustomName:"§4C4炸弹",Glowing:1b}
execute @e[type=item,tag=C4掉落物] ~ ~ ~ scoreboard players tag @a[r=1,team=T,m=2] add 捡起C4
replaceitem entity @a[tag=捡起C4] slot.hotbar.4 minecraft:red_nether_brick 1 0 {ench:[{lvl:1s,id:16s}],HideFlags:1,display:{Name:"§4§lC4炸弹(红圈内按shift使用)"}}
execute @a[tag=捡起C4] ~ ~ ~ kill @e[type=item,tag=C4掉落物,c=1]
execute @a[tag=捡起C4] ~ ~ ~ tellraw @a[team=T] {"text":"§a§l炸弹已拾取!"}
scoreboard players tag @a[tag=捡起C4] remove 捡起C4

#C4判定
execute @a[team=T,tag=游戏中,score_爆破-潜行判定_min=1] ~ ~ ~ detect ~ ~-2 ~ minecraft:structure_block -1 scoreboard players tag @s add 安放中 {SelectedItem:{id:"minecraft:red_nether_brick",tag:{ench:[{lvl:1s,id:16s}]}}}
scoreboard players add @a[team=T,tag=安放中] 爆破-操作C4 1
scoreboard players reset @a[score_爆破-操作C4_min=1,tag=!安放中,team=T] 爆破-操作C4
scoreboard players tag @a[tag=安放中] remove 安放中 
title @a[score_爆破-操作C4_min=5,score_爆破-操作C4=5,team=T] title [{"text":"§a§lC4安装中..."}]
execute @a[score_爆破-操作C4_min=10,score_爆破-操作C4=10,team=T] ~ ~ ~ playsound minecraft:block.anvil.use ambient @a ~ ~ ~ 1 1
clear @a[score_爆破-操作C4_min=100,team=T] minecraft:red_nether_brick
scoreboard players add @a[score_爆破-操作C4_min=100,team=T] 爆破-金钱 3
#tellraw @a[score_爆破-操作C4_min=100,team=T] [{"text":"§6成功安装C4 +3金钱"}]
title @a[score_爆破-操作C4_min=100,team=T] title {"text":""}
title @a[score_爆破-操作C4_min=100,team=T] subtitle {"text":"                            §e§l+3金钱"}
execute @a[score_爆破-操作C4_min=100,team=T] ~ ~ ~ summon minecraft:armor_stand ~ ~-0.7 ~ {Tags:["C4"],Invisible:1b,HandItems:[{Slot:0b,id:"red_nether_brick",Count:1s,tag:{ench:[{lvl:1s,id:16s}]},Damage:0s},{}],NoGravity:1b,Pose:{RightArm:[0.0f,270.0f,346.0f]},Silent:1b,Marker:1b,Invisible:1b,Glowing:1b}
execute @e[tag=VMW,score_爆破-C4引爆时间=0] ~ ~ ~ execute @e[tag=C4] ~ ~ ~ scoreboard players set @e[tag=VMW] 爆破-C4引爆时间 1000
execute @e[tag=VMW,score_爆破-C4引爆时间_min=1000] ~ ~ ~ execute @e[tag=C4] ~ ~ ~ scoreboard players reset @a[score_爆破-操作C4_min=100] 爆破-操作C4
execute @e[tag=VMW,score_爆破-C4引爆时间_min=1000] ~ ~ ~ execute @e[tag=C4] ~ ~ ~ scoreboard players tag @e[tag=VMW] add 爆破-已安放C4
execute @e[tag=VMW,score_爆破-C4引爆时间_min=1000] ~ ~ ~ execute @e[tag=C4] ~ ~ ~ scoreboard players tag @a[tag=商店] remove 商店
execute @e[tag=VMW,score_爆破-C4引爆时间_min=1000] ~ ~ ~ execute @e[tag=C4] ~ ~ ~ playsound minecraft:entity.elder_guardian.curse ambient @a[tag=!PVE-游戏中] ~ ~ ~ 1000000 0.7
execute @e[tag=VMW,score_爆破-C4引爆时间_min=1000] ~ ~ ~ execute @e[tag=C4] ~ ~ ~ tellraw @a[tag=!PVE-游戏中] {"text":"§c§l炸弹已安装"}


execute @e[type=armor_stand,tag=C4] ~ ~ ~ execute @a[team=CT,tag=游戏中,score_爆破-潜行判定_min=1,r=2,m=2] ~ ~ ~ scoreboard players tag @s add 拆除中
scoreboard players add @a[team=CT,tag=拆除中] 爆破-操作C4 1
scoreboard players reset @a[score_爆破-操作C4_min=1,tag=!拆除中,team=CT] 爆破-操作C4
scoreboard players tag @a[tag=拆除中] remove 拆除中 
title @a[score_爆破-操作C4_min=5,score_爆破-操作C4=5,team=CT] title [{"text":"§a§lC4拆除中..."}]
execute @a[score_爆破-操作C4_min=10,score_爆破-操作C4=10,team=CT] ~ ~ ~ playsound minecraft:entity.slime.jump ambient @a ~ ~ ~ 2 1
scoreboard players add @a[score_爆破-操作C4_min=100,team=CT] 爆破-金钱 3
#tellraw @a[score_爆破-操作C4_min=100,team=CT] [{"text":"§6成功拆除C4 +3金钱"}]
title @a[score_爆破-操作C4_min=100,team=CT] title {"text":""}
title @a[score_爆破-操作C4_min=100,team=CT] subtitle {"text":"                            §e§l+3金钱"}
execute @a[score_爆破-操作C4_min=100,team=CT] ~ ~ ~ kill @e[tag=C4,type=armor_stand]
execute @a[score_爆破-操作C4_min=100,team=CT] ~ ~ ~ scoreboard players tag @e[tag=VMW] remove 爆破-已安放C4
execute @a[score_爆破-操作C4_min=100,team=CT] ~ ~ ~ function vmwp:游戏/赏金爆破/ct胜利
execute @a[score_爆破-操作C4_min=100,team=CT] ~ ~ ~ title @a[tag=!PVE-游戏中] subtitle {"text":"§b§lC4被拆除"}
execute @a[score_爆破-操作C4_min=100,team=CT] ~ ~ ~ playsound minecraft:entity.enderdragon.growl ambient @a[tag=!PVE-游戏中] ~ ~ ~ 10000000000 2
execute @a[score_爆破-操作C4_min=100,team=CT] ~ ~ ~ scoreboard players reset @s 爆破-操作C4

scoreboard players set @a[score_爆破-潜行判定_min=1] 爆破-潜行判定 0

#C4计时器
execute @e[tag=VMW,score_爆破-C4引爆时间_min=420,score_爆破-C4引爆时间=420] ~ ~ ~ execute @e[tag=C4,type=armor_stand] ~ ~ ~ playsound minecraft:block.note.xylophone ambient @a ~ ~ ~ 3 2
execute @e[tag=VMW,score_爆破-C4引爆时间_min=320,score_爆破-C4引爆时间=320] ~ ~ ~ execute @e[tag=C4,type=armor_stand] ~ ~ ~ playsound minecraft:block.note.xylophone ambient @a ~ ~ ~ 3 2
execute @e[tag=VMW,score_爆破-C4引爆时间_min=220,score_爆破-C4引爆时间=220] ~ ~ ~ execute @e[tag=C4,type=armor_stand] ~ ~ ~ playsound minecraft:block.note.xylophone ambient @a ~ ~ ~ 3 2
execute @e[tag=VMW,score_爆破-C4引爆时间_min=120,score_爆破-C4引爆时间=120] ~ ~ ~ execute @e[tag=C4,type=armor_stand] ~ ~ ~ playsound minecraft:block.note.xylophone ambient @a ~ ~ ~ 3 2
execute @e[tag=VMW,score_爆破-C4引爆时间_min=100,score_爆破-C4引爆时间=100] ~ ~ ~ execute @e[tag=C4,type=armor_stand] ~ ~ ~ playsound minecraft:block.note.xylophone ambient @a ~ ~ ~ 3 2
execute @e[tag=VMW,score_爆破-C4引爆时间_min=80,score_爆破-C4引爆时间=80] ~ ~ ~ execute @e[tag=C4,type=armor_stand] ~ ~ ~ playsound minecraft:block.note.xylophone ambient @a ~ ~ ~ 3 2
execute @e[tag=VMW,score_爆破-C4引爆时间_min=60,score_爆破-C4引爆时间=60] ~ ~ ~ execute @e[tag=C4,type=armor_stand] ~ ~ ~ playsound minecraft:block.note.xylophone ambient @a ~ ~ ~ 3 2
execute @e[tag=VMW,score_爆破-C4引爆时间_min=40,score_爆破-C4引爆时间=40] ~ ~ ~ execute @e[tag=C4,type=armor_stand] ~ ~ ~ playsound minecraft:block.note.xylophone ambient @a ~ ~ ~ 3 2
execute @e[tag=VMW,score_爆破-C4引爆时间_min=20,score_爆破-C4引爆时间=20] ~ ~ ~ execute @e[tag=C4,type=armor_stand] ~ ~ ~ playsound minecraft:block.note.xylophone ambient @a ~ ~ ~ 3 2
scoreboard players operation @e[tag=VMW] 爆破-C4引爆时间换算 = @e[tag=VMW] 爆破-C4引爆时间
scoreboard players operation @e[tag=VMW] 爆破-C4引爆时间换算 /= §f除 爆破-C4引爆时间换算
execute @e[tag=VMW] ~ ~ ~ execute @s[tag=!爆破-等待] ~ ~ ~ scoreboard players remove @s[tag=爆破-已安放C4,score_爆破-C4引爆时间_min=1] 爆破-C4引爆时间 1
execute @e[tag=VMW] ~ ~ ~ execute @s[tag=爆破-已安放C4,score_爆破-C4引爆时间=0] ~ ~ ~ execute @e[tag=C4,type=armor_stand] ~ ~ ~ particle hugeexplosion ~ ~2 ~ 1 1 1 0 5 force
execute @e[tag=VMW] ~ ~ ~ execute @s[tag=爆破-已安放C4,score_爆破-C4引爆时间=0] ~ ~ ~ function vmwp:游戏/赏金爆破/t胜利
execute @e[tag=VMW] ~ ~ ~ execute @s[tag=爆破-已安放C4,score_爆破-C4引爆时间=0] ~ ~ ~ title @a[tag=!PVE-游戏中] subtitle {"text":"§b§lC4被引爆"}
execute @e[tag=VMW] ~ ~ ~ execute @s[tag=爆破-已安放C4,score_爆破-C4引爆时间=0] ~ ~ ~ playsound minecraft:entity.experience_orb.pickup ambient @a[tag=!PVE-游戏中] ~ ~ ~ 10000000
execute @e[tag=VMW] ~ ~ ~ execute @s[tag=爆破-已安放C4,score_爆破-C4引爆时间=0] ~ ~ ~ playsound minecraft:entity.generic.explode ambient @a[tag=!PVE-游戏中] ~ ~ ~ 100000000 0
execute @e[tag=VMW] ~ ~ ~ execute @s[tag=爆破-已安放C4,score_爆破-C4引爆时间=0] ~ ~ ~ kill @e[tag=C4,type=armor_stand]
execute @e[tag=VMW] ~ ~ ~ execute @s[tag=爆破-已安放C4,score_爆破-C4引爆时间=0] ~ ~ ~ scoreboard players tag @s remove 爆破-已安放C4

#时间结束
execute @e[tag=VMW,score_爆破-剩余时间=0] ~ ~ ~ execute @s[tag=!爆破-等待] ~ ~ ~ playsound minecraft:entity.elder_guardian.curse ambient @a[tag=!PVE-游戏中] ~ ~ ~ 10000000000 
execute @e[tag=VMW,score_爆破-剩余时间=0] ~ ~ ~ execute @s[tag=!爆破-等待] ~ ~ ~ title @a[tag=!PVE-游戏中] subtitle {"text":"§b§l时间已耗尽"}
execute @e[tag=VMW,score_爆破-剩余时间=0] ~ ~ ~ execute @s[tag=!爆破-等待] ~ ~ ~ function vmwp:游戏/赏金爆破/ct胜利

#击败队伍
execute @e[tag=VMW,score_爆破-CT人数=0,score_爆破-剩余时间=2399] ~ ~ ~ execute @s[tag=!爆破-等待] ~ ~ ~ playsound minecraft:entity.cat.ambient ambient @a[tag=!PVE-游戏中] ~ ~ ~ 100000000 0
execute @e[tag=VMW,score_爆破-CT人数=0,score_爆破-剩余时间=2399] ~ ~ ~ execute @s[tag=!爆破-等待] ~ ~ ~ title @a[tag=!PVE-游戏中] subtitle {"text":"§b§l已击败全部CT队员"}
execute @e[tag=VMW,score_爆破-CT人数=0,score_爆破-剩余时间=2399] ~ ~ ~ execute @s[tag=!爆破-等待] ~ ~ ~ function vmwp:游戏/赏金爆破/t胜利

execute @e[tag=VMW,score_爆破-T人数=0,score_爆破-剩余时间=2399] ~ ~ ~ execute @s[tag=!爆破-已安放C4] ~ ~ ~ execute @s[tag=!爆破-等待] ~ ~ ~ playsound minecraft:entity.cat.ambient ambient @a[tag=!PVE-游戏中] ~ ~ ~ 100000000 0
execute @e[tag=VMW,score_爆破-T人数=0,score_爆破-剩余时间=2399] ~ ~ ~ execute @s[tag=!爆破-已安放C4] ~ ~ ~ execute @s[tag=!爆破-等待] ~ ~ ~ title @a[tag=!PVE-游戏中] subtitle {"text":"§b§l已击败全部T队员"}
execute @e[tag=VMW,score_爆破-T人数=0,score_爆破-剩余时间=2399] ~ ~ ~ execute @s[tag=!爆破-已安放C4] ~ ~ ~ execute @s[tag=!爆破-等待] ~ ~ ~ function vmwp:游戏/赏金爆破/ct胜利

#限制物品格
replaceitem entity @a[m=2,tag=!PVE-游戏中] slot.inventory.3 minecraft:air
replaceitem entity @a[m=2,tag=!PVE-游戏中] slot.hotbar.3 minecraft:stained_glass_pane 1 15 {display:{Name:"§f已禁用"}}
replaceitem entity @a[m=2,team=CT] slot.hotbar.4 minecraft:stained_glass_pane 1 15 {display:{Name:"§f已禁用"}}
replaceitem entity @a[m=2,tag=!PVE-游戏中] slot.hotbar.5 minecraft:stained_glass_pane 1 15 {display:{Name:"§f已禁用"}}
execute @a[tag=!PVE-游戏中] ~ ~ ~ replaceitem entity @s[m=2,tag=!商店] slot.hotbar.6 minecraft:stained_glass_pane 1 15 {display:{Name:"§f已禁用"}}
#退出处理
scoreboard players set @a[score_离开游戏_min=1] 背景音乐 0
scoreboard players reset @a[score_离开游戏_min=1] 爆破-金钱
scoreboard players reset @a[score_离开游戏_min=1] 爆破-选择的主武器
scoreboard players reset @a[score_离开游戏_min=1] 爆破-选择的副武器
scoreboard players reset @a[score_离开游戏_min=1] 爆破-击杀数

scoreboard players tag @a[score_离开游戏_min=1] remove 准备中
scoreboard players tag @a[score_离开游戏_min=1] remove 游戏中
scoreboard players tag @a[score_离开游戏_min=1] remove 商店

scoreboard teams leave @a[score_离开游戏_min=1]
scoreboard teams join 旁观 @a[score_离开游戏_min=1]

gamemode 3 @a[team=旁观,m=!3]
effect @a[score_离开游戏_min=1] 1 0 0 true
xp -10000L @a[score_离开游戏_min=1]
execute @e[tag=VMW,score_爆破-地图=0] ~ ~ ~ tp @a[team=旁观,score_离开游戏_min=1] -265 68 1289 -90 0
execute @e[tag=VMW,score_爆破-地图=1,score_爆破-地图_min=1] ~ ~ ~ tp @a[team=旁观,score_离开游戏_min=1] -366 78 1233 -180 0
execute @e[tag=VMW,score_爆破-地图=2,score_爆破-地图_min=2] ~ ~ ~ tp @a[team=旁观,score_离开游戏_min=1] -375 76 1302 -90 0
execute @e[tag=VMW,score_爆破-地图=3,score_爆破-地图_min=3] ~ ~ ~ tp @a[team=旁观,score_离开游戏_min=1] -388 78 1213 90 0
execute @e[tag=VMW,score_爆破-地图=4,score_爆破-地图_min=4] ~ ~ ~ tp @a[team=旁观,score_离开游戏_min=1] -476 73 1581 -90 0
execute @e[tag=VMW,score_爆破-地图=5,score_爆破-地图_min=5] ~ ~ ~ tp @a[team=旁观,score_离开游戏_min=1] -171 73 1596 90 0

clear @a[score_离开游戏_min=1]
playsound minecraft:block.note.bass ambient @a[score_离开游戏_min=1] ~ ~ ~ 1000000000 1
tellraw @a[score_离开游戏_min=1] [{"text":"§7§l由于你离开了服务器,你将旁观游戏"}]
tellraw @a[score_离开游戏_min=1] [{"text":"§f§l§n点击即可中途加入","clickEvent":{"action":"run_command","value":"/trigger 爆破-中途加入 set 1"}}]

scoreboard players set @a[score_离开游戏_min=1] 离开游戏 0

#中途加入
scoreboard players enable @a[team=旁观] 爆破-中途加入
execute @a[score_爆破-中途加入_min=1,team=旁观] ~ ~ ~ function vmwp:游戏/赏金爆破/中途加入
scoreboard players reset @a[score_爆破-中途加入_min=1] 爆破-中途加入

#防跑图
execute @e[tag=VMW,score_爆破-地图=0] ~ ~ ~ effect @a[tag=游戏中,m=2,x=-223,y=120,z=1300,rm=130] 20 1 1 true
execute @e[tag=VMW,score_爆破-地图=1,score_爆破-地图_min=1] ~ ~ ~ effect @a[tag=游戏中,m=2,x=-330,y=120,z=1234,rm=100] 20 1 1 true
execute @e[tag=VMW,score_爆破-地图=2,score_爆破-地图_min=2] ~ ~ ~ effect @a[tag=游戏中,m=2,x=-339,y=120,z=1341,rm=100] 20 1 1 true
execute @e[tag=VMW,score_爆破-地图=3,score_爆破-地图_min=3] ~ ~ ~ effect @a[tag=游戏中,m=2,x=-426,y=120,z=1199,rm=90] 20 1 1 true
execute @e[tag=VMW,score_爆破-地图=4,score_爆破-地图_min=4] ~ ~ ~ effect @a[tag=游戏中,m=2,x=-452,y=120,z=1568,rm=110] 20 1 1 true
execute @e[tag=VMW,score_爆破-地图=5,score_爆破-地图_min=5] ~ ~ ~ effect @a[tag=游戏中,m=2,x=-231,y=120,z=1545,rm=155] 20 1 1 true

#终极武器
scoreboard players tag @a add 获得特殊武器 {Inventory:[{id:"mwc:russian_weapons_case",tag:{tag:["特殊武器包"]}}]}

replaceitem entity @a[tag=获得特殊武器,score_选择的特殊武器_min=0,score_选择的特殊武器=0] slot.hotbar.0 mwc:gl06 1 0 {IUuidLeast:-5624438658342251273L,Ammo:1,IUuidMost:2795396047957476467L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,38B,-53B,61B,-27B,29B,9B,68B,115B,-79B,-15B,-6B,-42B,-4B,-119B,20B,-9B,0B,0B,19B,-101B,0B,0B,0B,2B,0B,0B,0B,0B,0B,0B,0B,9B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,-3B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,-5B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,64B,-96B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§4GL-06"}}
scoreboard players set @a[tag=获得特殊武器,score_选择的特殊武器_min=0,score_选择的特殊武器=0] 爆破-选择的主武器 100

replaceitem entity @a[tag=获得特殊武器,score_选择的特殊武器_min=1,score_选择的特殊武器=1] slot.hotbar.0 mwc:rpg7 1 0 {IUuidLeast:-6783022202184099568L,Ammo:1,IUuidMost:2727878700286364111L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,37B,-37B,95B,57B,-104B,-20B,73B,-49B,-95B,-35B,-35B,62B,-65B,58B,-103B,16B,0B,0B,19B,-98B,0B,0B,0B,2B,0B,0B,0B,0B,0B,0B,0B,15B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,-7B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,65B,32B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§4RPG-7"}}
scoreboard players set @a[tag=获得特殊武器,score_选择的特殊武器_min=1,score_选择的特殊武器=1] 爆破-选择的主武器 101

#replaceitem entity @a[tag=获得特殊武器,score_选择的特殊武器_min=2,score_选择的特殊武器=2] slot.hotbar.0 mwc:gpca1 1 0 {IUuidLeast:-7444059099945504498L,Ammo:4,IUuidMost:-3341448486415416402L,Instance:[B;-32B,83B,21B,-112B,-126B,43B,-31B,45B,117B,49B,126B,79B,17B,126B,62B,-127B,0B,0B,0B,9B,-47B,-96B,-54B,78B,43B,-15B,67B,-82B,-104B,-79B,99B,-80B,92B,-69B,-15B,14B,0B,0B,20B,99B,0B,0B,0B,5B,0B,0B,0B,0B,0B,0B,1B,30B,75B,99B,82B,108B,-118B,-87B,-71B,14B,-97B,-92B,100B,-74B,-111B,106B,61B,-40B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,20B,-30B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-99B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,4B,0B,65B,80B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§4GPC-A1"}}
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

#replaceitem entity @a[tag=获得特殊武器,score_爆破-选择的主武器_min=100,score_爆破-选择的主武器=100] slot.inventory.1 mwc:grenade40mm 64 0
#replaceitem entity @a[tag=获得特殊武器,score_爆破-选择的主武器_min=101,score_爆破-选择的主武器=101] slot.inventory.1 mwc:rpg7_rocket 64 0
#replaceitem entity @a[tag=获得特殊武器,score_爆破-选择的主武器_min=102,score_爆破-选择的主武器=102] slot.inventory.1 mwc:plasmacapsule 64 0
#replaceitem entity @a[tag=获得特殊武器,score_爆破-选择的主武器_min=103,score_爆破-选择的主武器=103] slot.inventory.1 mwc:asvalmag 6 0 {Ammo:20}
#replaceitem entity @a[tag=获得特殊武器,score_爆破-选择的主武器_min=104,score_爆破-选择的主武器=104] slot.inventory.1 mwc:m202rocket 64 0
#replaceitem entity @a[tag=获得特殊武器,score_爆破-选择的主武器_min=105,score_爆破-选择的主武器=105] slot.inventory.1 mwc:grenade40mm 64 0
#replaceitem entity @a[tag=获得特殊武器,score_爆破-选择的主武器_min=106,score_爆破-选择的主武器=106] slot.inventory.1 mwc:m134mag 6 0 {Ammo:60}
#replaceitem entity @a[tag=获得特殊武器,score_爆破-选择的主武器_min=107,score_爆破-选择的主武器=107] slot.inventory.1 mwc:mininuke 64 0

clear @a[tag=获得特殊武器] mwc:russian_weapons_case
scoreboard players tag @a[tag=获得特殊武器] remove 获得特殊武器



replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=100,score_爆破-选择的主武器=100] slot.inventory.1 mwc:grenade40mm 16 0
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=101,score_爆破-选择的主武器=101] slot.inventory.1 mwc:rpg7_rocket 2 0
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=102,score_爆破-选择的主武器=102] slot.inventory.1 mwc:plasmacapsule 64 0
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=103,score_爆破-选择的主武器=103] slot.inventory.1 mwc:asvalmag 6 0 {Ammo:20}
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=104,score_爆破-选择的主武器=104] slot.inventory.1 mwc:m202rocket 4 0
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=105,score_爆破-选择的主武器=105] slot.inventory.1 mwc:grenade40mm 16 0
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=106,score_爆破-选择的主武器=106] slot.inventory.1 mwc:m134mag 6 0 {Ammo:60}
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=107,score_爆破-选择的主武器=107] slot.inventory.1 mwc:mininuke 64 0

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
