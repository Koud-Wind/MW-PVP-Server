#Display器
execute @a[tag=InGame] ~ ~ ~ title @s actionbar [{"text":"§bTime:"},{"score":{"objective":"PC-RTC","name":"@e[tag=VMW]"}},{"text":"s §aFirst score:"},{"score":{"objective":"PC-1rdK","name":"@e[tag=VMW]"}},{"text":" §2Second score:"},{"score":{"objective":"PC-2rdK","name":"@e[tag=VMW]"}},{"text":" §cYour kill count:"},{"score":{"objective":"PC-KillCount","name":"@s"}}]
execute @a[team=Watch] ~ ~ ~ title @s actionbar [{"text":"§bTime:"},{"score":{"objective":"PC-RTC","name":"@e[tag=VMW]"}},{"text":"s §7Currently in Watch state §aFirst score:"},{"score":{"objective":"PC-1rdK","name":"@e[tag=VMW]"}},{"text":" §2Second score:"},{"score":{"objective":"PC-2rdK","name":"@e[tag=VMW]"}}]
execute @a[team=,tag=!PVE-IG] ~ ~ ~ title @s actionbar [{"text":"§bTime:"},{"score":{"objective":"PC-RTC","name":"@e[tag=VMW]"}},{"text":"s §cPlease wait for end §aFirst score:"},{"score":{"objective":"PC-1rdK","name":"@e[tag=VMW]"}},{"text":" §2Second score:"},{"score":{"objective":"PC-2rdK","name":"@e[tag=VMW]"}}]

#击杀
execute @a[score_PC-KillJ_min=1,tag=InGame] ~ ~ ~ function vmwp:games/armsKing/kill

#shop函数
execute @e[tag=VMW,score_PC-TR_min=1] ~ ~ ~ function vmwp:shop/buyGive

#优化计时器检测
execute @e[tag=VMW,score_PC-TR_min=7800] ~ ~ ~ function vmwp:games/armsKing/detectionT

#死亡处理
effect @a[tag=RandomTp] 11 2 50 true
effect @a[tag=RandomTp] 12 5 0 true

execute @e[tag=VMW,score_PC-Map=0] ~ ~ ~ execute @a[tag=RandomTp] ~ ~ ~ spreadplayers -223 1300 0 55 true @s
execute @e[tag=VMW,score_PC-Map=1,score_PC-Map_min=1] ~ ~ ~ execute @a[tag=RandomTp] ~ ~ ~ spreadplayers -330 1234 0 44 true @s
execute @e[tag=VMW,score_PC-Map=2,score_PC-Map_min=2] ~ ~ ~ execute @a[tag=RandomTp] ~ ~ ~ spreadplayers -339 1341 0 44 true @s
execute @e[tag=VMW,score_PC-Map=3,score_PC-Map_min=3] ~ ~ ~ execute @a[tag=RandomTp] ~ ~ ~ spreadplayers -426 1199 0 39 true @s
execute @e[tag=VMW,score_PC-Map=4,score_PC-Map_min=4] ~ ~ ~ execute @a[tag=RandomTp] ~ ~ ~ spreadplayers -452 1568 0 45 true @s
execute @e[tag=VMW,score_PC-Map=5,score_PC-Map_min=5] ~ ~ ~ execute @a[tag=RandomTp] ~ ~ ~ spreadplayers -231 1545 0 69 true @s
execute @e[tag=VMW,score_PC-Map=0] ~ ~ ~ execute @a[tag=RandomTp] ~ ~ ~ scoreboard players tag @s[y=78,dy=200] add DRandomTp
execute @e[tag=VMW,score_PC-Map=1,score_PC-Map_min=1] ~ ~ ~ execute @a[tag=RandomTp] ~ ~ ~ scoreboard players tag @s[y=90,dy=200] add DRandomTp
execute @e[tag=VMW,score_PC-Map=2,score_PC-Map_min=2] ~ ~ ~ execute @a[tag=RandomTp] ~ ~ ~ scoreboard players tag @s[y=80,dy=200] add DRandomTp
execute @e[tag=VMW,score_PC-Map=3,score_PC-Map_min=3] ~ ~ ~ execute @a[tag=RandomTp] ~ ~ ~ scoreboard players tag @s[y=81,dy=200] add DRandomTp
execute @e[tag=VMW,score_PC-Map=4,score_PC-Map_min=4] ~ ~ ~ execute @a[tag=RandomTp] ~ ~ ~ scoreboard players tag @s[y=80,dy=200] add DRandomTp
execute @e[tag=VMW,score_PC-Map=4,score_PC-Map_min=4] ~ ~ ~ execute @a[tag=RandomTp] ~ ~ ~ scoreboard players tag @s[y=67,dy=-10] add DRandomTp
execute @e[tag=VMW,score_PC-Map=5,score_PC-Map_min=5] ~ ~ ~ execute @a[tag=RandomTp] ~ ~ ~ scoreboard players tag @s[y=77,dy=200] add DRandomTp
execute @e[tag=VMW,score_PC-Map=5,score_PC-Map_min=5] ~ ~ ~ execute @a[tag=RandomTp] ~ ~ ~ scoreboard players tag @s[y=70,dy=-10] add DRandomTp
execute @a[tag=RandomTp] ~ ~ ~ execute @p[tag=InGame,r=20,rm=1] ~ ~ ~ scoreboard players tag @a[tag=RandomTp] add DRandomTp

scoreboard players tag @a[tag=RandomTp] remove RandomTp
scoreboard players tag @a[tag=DRandomTp] add RandomTp
scoreboard players tag @a[tag=DRandomTp] remove DRandomTp
scoreboard players tag @a[tag=InGame,score_PC-DeathJ_min=1] add RandomTp
scoreboard players tag @a[tag=InGame,score_PC-DeathJ_min=1] add DropCrown {Inventory:[{id:"minecraft:golden_helmet",tag:{ench:[{lvl:1s,id:16s},{lvl:1s,id:10s}]}}]}
execute @a[tag=DropCrown] ~ ~ ~ summon minecraft:item ~ ~ ~ {Tags:["Crown"],Item:{id:"minecraft:golden_helmet",Count:1b,Damage:0s,tag:{ench:[{lvl:1s,id:16s}]}},Age:-32767,Owner:0,Health:999999999,Attributes:[{Name:"generic.maxHealth",Base:999999999}],Fire:-20,CustomNameVisible:1b,CustomName:"§eCrown(Need to meet 3 kills)",Glowing:1b}
replaceitem entity @a[tag=DropCrown] slot.armor.head minecraft:air
scoreboard players tag @a[tag=DropCrown] remove DropCrown
scoreboard players set @a[score_PC-DeathJ_min=1] PC-DeathJ 0

#HoldCrown玩家
scoreboard players tag @a[tag=InGame,team=CTT] add HoldCrown {Inventory:[{id:"minecraft:golden_helmet",tag:{ench:[{lvl:1s,id:16s},{lvl:1s,id:10s}]}}]}
scoreboard players add @a[tag=HoldCrown,score_PC-CrownT=39] PC-CrownT 1
effect @a[tag=HoldCrown] 24 1 0 true
effect @a[tag=HoldCrown] 2 1 1 true
execute @a[tag=HoldCrown,score_PC-CrownT_min=40] ~ ~ ~ function vmwp:games/armsKing/getScore

#是否存在Crown
execute @e[tag=VMW,score_PC-TR=7900] ~ ~ ~ function vmwp:games/armsKing/crownDetection unless @e[type=item,tag=Crown]

#持有末期
scoreboard players tag @a[tag=HoldCrown] remove HoldCrown

#关于Crown
scoreboard players tag @e[type=item] add Crown {Item:{id:"minecraft:golden_helmet",tag:{ench:[{lvl:1s,id:16s}]}}}
execute @e[tag=Crown,type=item] ~ ~ ~ execute @s[tag=!Display] ~ ~ ~ tellraw @a[tag=!PVE-IG] {"text":"§aThe crown has fallen!"}
entitydata @e[type=item,tag=Crown] {Tags:["Crown","Display"],Item:{id:"minecraft:golden_helmet",Count:1b,Damage:0s,tag:{ench:[{lvl:1s,id:16s}]}},Age:-32767,Owner:0,Health:999999999,Attributes:[{Name:"generic.maxHealth",Base:999999999}],Fire:-20,CustomNameVisible:1b,CustomName:"§eCrown(Need to meet 3 kills)",Glowing:1b}
execute @e[type=item,tag=Crown] ~ ~ ~ scoreboard players tag @a[r=1,team=CTT,m=2,score_PC-KillCount_min=3] add PickUpCrown
replaceitem entity @a[tag=PickUpCrown] slot.armor.head minecraft:golden_helmet 1 0 {ench:[{lvl:1s,id:16s},{lvl:1s,id:10s}],Unbreakable:1b,HideFlags:5,display:{Name:"§eCrown"},AttributeModifiers:[{UUIDMost:7315363430355781807L,UUIDLeast:-5678051707942990044L,Amount:1.0d,Slot:"head",AttributeName:"generic.armor",Operation:0,Name:"generic.armor"}]}
execute @a[tag=PickUpCrown] ~ ~ ~ kill @e[type=item,tag=Crown,c=1]
execute @a[tag=PickUpCrown] ~ ~ ~ tellraw @a[tag=!PVE-IG] [{"selector":"@s"},{"text":" §epicked up the crown!"}]
scoreboard players tag @a[tag=PickUpCrown] remove PickUpCrown

#无人时强制结束
function vmwp:games/armsKing/reset unless @a[team=CTT]

scoreboard players tag @p[tag=InGame,team=CTT] add IsNoOne
execute @a[tag=IsNoOne] ~ ~ ~ function vmwp:games/armsKing/reset unless @a[tag=!IsNoOne,team=CTT]
scoreboard players tag @a[tag=IsNoOne] remove IsNoOne

#计时器
execute @e[tag=VMW,score_PC-TR_min=200,score_PC-TR=200] ~ ~ ~ playsound minecraft:block.note.hat ambient @a ~ ~ ~ 1000000000
execute @e[tag=VMW,score_PC-TR_min=120,score_PC-TR=120] ~ ~ ~ playsound minecraft:block.note.hat ambient @a ~ ~ ~ 1000000000
execute @e[tag=VMW,score_PC-TR_min=100,score_PC-TR=100] ~ ~ ~ playsound minecraft:block.note.hat ambient @a ~ ~ ~ 1000000000
execute @e[tag=VMW,score_PC-TR_min=80,score_PC-TR=80] ~ ~ ~ playsound minecraft:block.note.hat ambient @a ~ ~ ~ 1000000000
execute @e[tag=VMW,score_PC-TR_min=60,score_PC-TR=60] ~ ~ ~ playsound minecraft:block.note.hat ambient @a ~ ~ ~ 1000000000
execute @e[tag=VMW,score_PC-TR_min=40,score_PC-TR=40] ~ ~ ~ playsound minecraft:block.note.hat ambient @a ~ ~ ~ 1000000000
execute @e[tag=VMW,score_PC-TR_min=20,score_PC-TR=20] ~ ~ ~ playsound minecraft:block.note.hat ambient @a ~ ~ ~ 1000000000
scoreboard players operation @e[tag=VMW] PC-RTC = @e[tag=VMW] PC-TR
scoreboard players operation @e[tag=VMW] PC-RTC /= §fdivision PC-RTC
execute @e[tag=VMW] ~ ~ ~ scoreboard players remove @s[score_PC-TR_min=1] PC-TR 1

#结算
function vmwp:games/armsKing/settlement if @a[team=CTT,tag=InGame,score_PC-Score_min=120]

#时间结束
execute @e[tag=VMW,score_PC-TR=0] ~ ~ ~ function vmwp:games/armsKing/settlement

#限制物品格
replaceitem entity @a[m=2,tag=!PVE-IG] slot.inventory.3 minecraft:air
replaceitem entity @a[m=2,tag=!PVE-IG] slot.hotbar.3 minecraft:stained_glass_pane 1 15 {display:{Name:"§fnone"}}
replaceitem entity @a[m=2,tag=!PVE-IG] slot.hotbar.4 minecraft:stained_glass_pane 1 15 {display:{Name:"§fnone"}}
replaceitem entity @a[m=2,tag=!PVE-IG] slot.hotbar.5 minecraft:stained_glass_pane 1 15 {display:{Name:"§fnone"}}
replaceitem entity @a[m=2,tag=!PVE-IG] slot.hotbar.6 minecraft:stained_glass_pane 1 15 {display:{Name:"§fnone"}}

scoreboard players tag @a[tag=InGame] add FG01
scoreboard players tag @a[tag=FG01] remove FG01 {Inventory:[{Slot:10b}]}
replaceitem entity @a[tag=FG01] slot.inventory.1 minecraft:stained_glass_pane 1 8 {display:{Name:""}}
scoreboard players tag @a[tag=FG01] remove FG01

scoreboard players tag @a[tag=InGame] add FG02
scoreboard players tag @a[tag=FG02] remove FG02 {Inventory:[{Slot:11b}]}
replaceitem entity @a[tag=FG02] slot.inventory.2 minecraft:stained_glass_pane 1 8 {display:{Name:""}}
scoreboard players tag @a[tag=FG02] remove FG02

#退出处理
scoreboard players set @a[score_leave_min=1] music 0
scoreboard players reset @a[score_leave_min=1] money
scoreboard players reset @a[score_leave_min=1] MainW
scoreboard players reset @a[score_leave_min=1] SecondaryW
scoreboard players reset @a[score_leave_min=1] PC-KillCount
scoreboard players reset @a[score_leave_min=1] PC-KCC
scoreboard players reset @a[score_leave_min=1] PC-Score
scoreboard players reset @a[score_leave_min=1] PC-CrownT

scoreboard players tag @a[score_leave_min=1] remove Preparing
scoreboard players tag @a[score_leave_min=1] remove InGame
scoreboard players tag @a[score_leave_min=1] remove shop
scoreboard players tag @a[score_leave_min=1] remove 1rd
scoreboard players tag @a[score_leave_min=1] remove 2rd
scoreboard players tag @a[score_leave_min=1] remove 3rd

scoreboard teams leave @a[score_leave_min=1]
scoreboard teams join Watch @a[score_leave_min=1]

gamemode 3 @a[team=Watch,m=!3]
effect @a[score_leave_min=1] 1 0 0 true
xp -10000L @a[score_leave_min=1]
execute @e[tag=VMW,score_PC-Map=0] ~ ~ ~ tp @a[team=Watch,score_leave_min=1] -265 68 1289 -90 0
execute @e[tag=VMW,score_PC-Map=1,score_PC-Map_min=1] ~ ~ ~ tp @a[team=Watch,score_leave_min=1] -366 78 1233 -180 0
execute @e[tag=VMW,score_PC-Map=2,score_PC-Map_min=2] ~ ~ ~ tp @a[team=Watch,score_leave_min=1] -375 76 1302 -90 0
execute @e[tag=VMW,score_PC-Map=3,score_PC-Map_min=3] ~ ~ ~ tp @a[team=Watch,score_leave_min=1] -388 78 1213 90 0
execute @e[tag=VMW,score_PC-Map=4,score_PC-Map_min=4] ~ ~ ~ tp @a[team=Watch,score_leave_min=1] -476 73 1581 -90 0
execute @e[tag=VMW,score_PC-Map=5,score_PC-Map_min=5] ~ ~ ~ tp @a[team=Watch,score_leave_min=1] -171 73 1596 90 0

clear @a[score_leave_min=1]
playsound minecraft:block.note.bass ambient @a[score_leave_min=1] ~ ~ ~ 1000000000 1
tellraw @a[score_leave_min=1] [{"text":"§7You leave the server! You will watch the whole game."}]
tellraw @a[score_leave_min=1] [{"text":"§f§l§nClick to join halfway","clickEvent":{"action":"run_command","value":"/trigger PC-Join set 1"}}]

scoreboard players set @a[score_leave_min=1] leave 0

#JoinHalfway
scoreboard players enable @a[team=Watch] PC-Join
execute @a[score_PC-Join_min=1,team=Watch] ~ ~ ~ function vmwp:games/armsKing/halfwayJoin
scoreboard players reset @a[score_PC-Join_min=1] PC-Join

#购买超时防误购
scoreboard players reset @a[score_moduleP_min=1] moduleP
scoreboard players reset @a[score_grenadeP_min=1] grenadeP
scoreboard players reset @a[score_assaultRP_min=1] assaultRP
scoreboard players reset @a[score_S&DMRP_min=1] S&DMRP
scoreboard players reset @a[score_SMGP_min=1] SMGP
scoreboard players reset @a[score_shotGunP_min=1] shotGunP
scoreboard players reset @a[score_heavyP_min=1] heavyP
scoreboard players reset @a[score_pistolP_min=1] pistolP
scoreboard players reset @a[score_ultimateWP_min=1] ultimateWP
