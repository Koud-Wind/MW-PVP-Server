#榴弹特效
execute @e[type=mwc:ammo256] ~ ~ ~ particle lava ~ ~ ~ 0 0 0 0 1 force @a[rm=2]
execute @e[type=mwc:ammo256] ~ ~ ~ particle largesmoke ~ ~0.5 ~ 0 0 0 0.05 1 force @a[rm=2]
#检测命令执行体
function vmwp:单向执行/工具人 unless @e[tag=VMW,type=armor_stand]
#呼吸回血
effect @a[score_饥饿=19] 23 2 1 true
#禁用音乐
stopsound @a music
#清除子弹
execute @e[type=mwc:ammo256] ~ ~ ~ function vmwp:单向执行/自清 unless @a[r=100]
#加强实体追踪范围
scoreboard players tag @e[type=!player,tag=!150FR] add 加强追踪 {Attributes:[{Name:"generic.followRange"}]}
entitydata @e[tag=加强追踪] {Attributes:[{Name:"generic.followRange",Base:150}]}
scoreboard players tag @e[tag=加强追踪] add 150FR
scoreboard players tag @e[tag=加强追踪] remove 加强追踪
#旁观保护
execute @a[m=3] ~ ~ ~ tp @s[y=-30,dy=30] ~ ~80 ~
#限制爬行
scoreboard players tag @a add 爬行 {ForgeCaps:{"mwc:player_entity_flags":1}}
#反透视体验优化
#execute @a[m=2,tag=!爬行] ~ ~ ~ particle bubble ~ ~1 ~ 0.01 0.2 0.01 1 10 force @a[rm=0,m=2]
#execute @a[m=2,tag=爬行] ~ ~ ~ particle bubble ~ ~ ~ 0.01 0.15 0.01 1 10 force @a[rm=0,m=2]
execute @a[m=2,tag=!烟雾隐藏] ~ ~ ~ particle bubble ~ ~0.3 ~ 0.01 0.1 0.01 1 10 force @a[rm=0,m=2]
scoreboard players tag @a[tag=烟雾隐藏] remove 烟雾隐藏
#限制爬行
#effect @a[tag=爬行] 8 1 130 true
#scoreboard players tag @a[tag=爬行] add 爬行受伤 {HurtTime:9s}
#scoreboard players tag @a[tag=爬行] add 爬行受伤 {HurtTime:8s}
#scoreboard players tag @a[tag=爬行] add 爬行受伤 {HurtTime:7s}
#scoreboard players tag @a[tag=爬行] add 爬行受伤 {HurtTime:6s}
#scoreboard players tag @a[tag=爬行] add 爬行受伤 {HurtTime:5s}
#scoreboard players tag @a[tag=爬行] add 爬行受伤 {HurtTime:4s}
#scoreboard players tag @a[tag=爬行] add 爬行受伤 {HurtTime:3s}
#scoreboard players tag @a[tag=爬行] add 爬行受伤 {HurtTime:2s}
#scoreboard players tag @a[tag=爬行] add 爬行受伤 {HurtTime:1s}
#effect @a[tag=爬行受伤] 8 0 0 true
#scoreboard players tag @a[tag=爬行受伤] remove 爬行受伤
#scoreboard players tag @a[tag=爬行] remove 爬行
#血
scoreboard players tag @a add 受伤 {HurtTime:9s}
scoreboard players tag @e[tag=150FR] add 实体受伤 {HurtTime:9s}
execute @e[tag=实体受伤] ~ ~ ~ particle blockcrack ~ ~0.9 ~ 0 0 0 0 60 force @a 152
execute @a[score_生命=10,tag=受伤] ~ ~ ~ particle blockcrack ~ ~0.9 ~ 0 0 0 0 60 force @a 152
execute @a[score_生命_min=11,tag=受伤] ~ ~ ~ playsound minecraft:item.shield.block ambient @a ~ ~ ~ 2 1
execute @a[score_生命_min=11,tag=受伤] ~ ~ ~ playsound minecraft:item.shield.block ambient @a ~ ~ ~ 2 1
scoreboard players tag @a[tag=受伤] remove 受伤
scoreboard players tag @e[tag=实体受伤] remove 实体受伤
#血量过半
execute @e[tag=VMW] ~ ~ ~ execute @s[tag=半血模式] ~ ~ ~ execute @a[tag=!半血] ~ ~ ~ scoreboard players tag @s[tag=游戏中] add 半血
execute @a[score_生命=10,tag=!半血] ~ ~ ~ playsound minecraft:item.shield.break ambient @a ~ ~ ~ 2 1
execute @a[score_生命=10,tag=!半血] ~ ~ ~ playsound minecraft:item.shield.break ambient @a ~ ~ ~ 2 1
execute @a[score_生命=10,tag=!半血] ~ ~ ~ playsound minecraft:item.shield.break ambient @a ~ ~ ~ 2 1
execute @a[score_生命=10,tag=!半血] ~ ~ ~ playsound minecraft:item.shield.break ambient @a ~ ~ ~ 2 1
scoreboard players tag @a[score_生命=10,tag=!半血] add 半血
scoreboard players tag @a[score_生命_min=12,tag=半血] remove 半血
#脚步声
execute @a[score_疾跑_min=150] ~ ~ ~ particle footstep ~ ~0.05 ~ 0 0.007 0 0 1
execute @a[score_疾跑_min=150] ~ ~ ~ playsound minecraft:block.stone.step ambient @a ~ ~ ~ 1.6 2
scoreboard players reset @a[score_疾跑_min=150] 疾跑

scoreboard players tag @a[score_跳跃_min=1] add 落下 {OnGround:1b}
execute @a[tag=落下] ~ ~ ~ playsound minecraft:block.stone.step ambient @a ~ ~ ~ 1.4 1
execute @a[tag=落下] ~ ~ ~ playsound minecraft:block.stone.step ambient @a ~ ~ ~ 1.4 2
execute @a[tag=落下] ~ ~ ~ detect ~ ~-1 ~ minecraft:air -1 scoreboard players tag @s add 无脚印
execute @a[tag=落下] ~ ~ ~ execute @s[tag=!无脚印] ~ ~ ~ particle footstep ~ ~0.05 ~ 0.1 0.007 0.1 0 2
scoreboard players tag @a[tag=无脚印] remove 无脚印
scoreboard players reset @a[tag=落下] 跳跃
scoreboard players tag @a[tag=落下] remove 落下
#跳跃效果修复&限制
scoreboard players tag @a[m=!3] add 震撼硬直 {ActiveEffects:[{Id:8b,Amplifier:-61b}]}
execute @a[tag=震撼硬直] ~ ~ ~ teleport @s ~ ~ ~ ~-1.5 ~7
scoreboard players tag @a[tag=震撼硬直] remove 震撼硬直

scoreboard players tag @a[m=!3] add 清除跳跃 {ActiveEffects:[{Duration:18,Id:8b}]}
scoreboard players tag @a[m=!3] add 清除跳跃 {HurtTime:9s,ActiveEffects:[{Id:8b}]}
effect @a[tag=清除跳跃] 8 0 0 true
scoreboard players tag @a[tag=清除跳跃] remove 清除跳跃

#僵尸末日(写的跟屎一样))
scoreboard players tag @a[score_PVE-map_min=1] add PVE-清除床 {Inventory:[{id:"minecraft:compass",tag:{display:{Name:"§7旁观"}}}]}
replaceitem entity @a[tag=PVE-清除床] slot.hotbar.8 minecraft:air
scoreboard players tag @a[tag=PVE-清除床] remove PVE-清除床

scoreboard players tag @a add PVE-游戏中 {Inventory:[{tag:{author:"MW_PVE"}}]}
scoreboard players tag @a add PVE-游戏中 {Inventory:[{tag:{author:"map1"}}]}
scoreboard players tag @a add PVE-游戏中 {Inventory:[{id:"minecraft:skull",tag:{tag:["PVE"]}}]}
scoreboard players tag @a add PVE-游戏中 {Inventory:[{id:"minecraft:compass",tag:{display:{Name:"§7旁观"}}}]}
function vmwp:游戏/僵尸末日/主体运行 if @a[tag=PVE-游戏中]
scoreboard players tag @a[tag=PVE-游戏中] remove 准备中
execute @a[tag=PVE-游戏中] ~ ~ ~ execute @s[team=!MW_PVE] scoreboard teams join MW_PVE @s
scoreboard teams leave @a[team=MW_PVE,tag=!PVE-游戏中]


#函数
scoreboard players set 薛定谔的菜鸟 投掷物页面 0
effect 1 24 1 0 true
effect 2 24 1 0 true
effect 3 24 1 0 true
effect 4 24 1 0 true
effect 5 24 1 0 true
function vmwp:新人
function vmwp:投掷物
execute @e[tag=VMW] ~ ~ ~ execute @s[tag=!全局游戏] ~ ~ ~ execute @s[tag=!预开始1] ~ ~ ~ execute @s[tag=!预开始2] ~ ~ ~ function vmwp:大厅
execute @e[tag=预开始1] ~ ~ ~ function vmwp:预开始1
execute @e[tag=预开始2] ~ ~ ~ function vmwp:预开始2
execute @e[tag=VMW] ~ ~ ~ execute @s[tag=开始1] ~ ~ ~ function vmwp:游戏/个人对抗/主体运行
execute @e[tag=VMW] ~ ~ ~ execute @s[tag=开始2] ~ ~ ~ function vmwp:游戏/赏金爆破/主体运行
execute @e[tag=VMW] ~ ~ ~ execute @s[tag=开始3] ~ ~ ~ function vmwp:游戏/军火之王/主体运行
execute @e[tag=VMW] ~ ~ ~ execute @s[tag=开始4] ~ ~ ~ function vmwp:游戏/破点攻防/主体运行
execute @e[tag=VMW] ~ ~ ~ execute @s[tag=开始5] ~ ~ ~ function vmwp:游戏/求生对抗/主体运行
execute @e[tag=VMW] ~ ~ ~ execute @s[tag=开始6] ~ ~ ~ function vmwp:游戏/团队死斗/主体运行

#反玩家修改命令主体
scoreboard players tag @a[tag=VMW] remove VMW

#及时禁用未使用的栏位
scoreboard players tag @a[tag=游戏中] add FG7
scoreboard players tag @a[tag=FG7] remove FG7 {Inventory:[{Slot:7b}]}
replaceitem entity @a[tag=FG7] slot.hotbar.7 minecraft:stained_glass_pane 1 15 {display:{Name:"§f已禁用"}}
scoreboard players tag @a[tag=FG7] remove FG7

scoreboard players tag @a[tag=游戏中] add FG8
scoreboard players tag @a[tag=FG8] remove FG8 {Inventory:[{Slot:8b}]}
replaceitem entity @a[tag=FG8] slot.hotbar.8 minecraft:stained_glass_pane 1 15 {display:{Name:"§f已禁用"}}
scoreboard players tag @a[tag=FG8] remove FG8

scoreboard players tag @a[tag=游戏中,team=T] add FG4
scoreboard players tag @a[tag=FG4] remove FG4 {Inventory:[{Slot:4b}]}
replaceitem entity @a[tag=FG4] slot.hotbar.4 minecraft:stained_glass_pane 1 15 {display:{Name:"§f已禁用"}}
scoreboard players tag @a[tag=FG4] remove FG4

scoreboard players tag @a[tag=游戏中] add FG2
scoreboard players tag @a[tag=FG2] remove FG2 {Inventory:[{Slot:2b}]}
replaceitem entity @a[tag=FG2] slot.hotbar.2 minecraft:stained_glass_pane 1 15 {display:{Name:"§f已禁用"}}
scoreboard players tag @a[tag=FG2] remove FG2

scoreboard players tag @a[tag=游戏中] add FG1
scoreboard players tag @a[tag=FG1] remove FG1 {Inventory:[{Slot:1b}]}
replaceitem entity @a[tag=FG1] slot.hotbar.1 minecraft:stained_glass_pane 1 15 {display:{Name:"§f已禁用"}}
scoreboard players tag @a[tag=FG1] remove FG1

#scoreboard players tag @a[tag=游戏中] add FG0
#scoreboard players tag @a[tag=FG0] remove FG0 {Inventory:[{Slot:0b}]}
#replaceitem entity @a[tag=FG0] slot.hotbar.0 minecraft:stained_glass_pane 1 15 {display:{Name:"§f已禁用"}}
#scoreboard players tag @a[tag=FG0] remove FG0

scoreboard players tag @a[tag=游戏中] add FG00
scoreboard players tag @a[tag=FG00] remove FG00 {Inventory:[{Slot:9b}]}
replaceitem entity @a[tag=FG00] slot.inventory.0 minecraft:stained_glass_pane 1 8 {display:{Name:""}}
scoreboard players tag @a[tag=FG00] remove FG00

#僵尸末日末尾
scoreboard players tag @a[tag=PVE-游戏中] remove PVE-游戏中