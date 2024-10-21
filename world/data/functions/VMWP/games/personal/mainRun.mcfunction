#Display器
execute @a[tag=InGame] ~ ~ ~ title @s actionbar [{"text":"§bTime:"},{"score":{"objective":"PC-RTC","name":"@e[tag=VMW]"}},{"text":"s §6First kill count:"},{"score":{"objective":"PC-1stK","name":"@e[tag=VMW]"}},{"text":" §eSecond kill count:"},{"score":{"objective":"PC-2ndK","name":"@e[tag=VMW]"}},{"text":" §eYour money:"},{"score":{"objective":"money","name":"@s"}}]
execute @a[team=Watch] ~ ~ ~ title @s actionbar [{"text":"§bTime:"},{"score":{"objective":"PC-RTC","name":"@e[tag=VMW]"}},{"text":"s §7Currently in Watch state §6First kill count:"},{"score":{"objective":"PC-1stK","name":"@e[tag=VMW]"}},{"text":" §eSecond kill count:"},{"score":{"objective":"PC-2ndK","name":"@e[tag=VMW]"}}]
execute @a[team=,tag=!PVE-IG] ~ ~ ~ title @s actionbar [{"text":"§bTime:"},{"score":{"objective":"PC-RTC","name":"@e[tag=VMW]"}},{"text":"s §cPlease wait for end §6First kill count:"},{"score":{"objective":"PC-1stK","name":"@e[tag=VMW]"}},{"text":" §eSecond kill count:"},{"score":{"objective":"PC-2ndK","name":"@e[tag=VMW]"}}]

#优化计时器检测
execute @e[tag=VMW,score_PC-TR_min=7800] ~ ~ ~ function vmwp:games/personal/detectionT

#shop函数
execute @e[tag=VMW,score_PC-TR_min=1] ~ ~ ~ function vmwp:shop/weaponShop
execute @e[tag=VMW,score_PC-TR_min=1] ~ ~ ~ function vmwp:shop/buyGive

#击杀
execute @a[score_PC-KillJ_min=1,tag=InGame] ~ ~ ~ function vmwp:games/personal/kill

#满20杀结算
function vmwp:games/personal/settlement if @a[team=CTT,tag=InGame,score_PC-KillCount_min=25]

#10秒不杀敌发光
execute @e[tag=VMW,score_PC-Glow_min=200] ~ ~ ~ effect @a[tag=InGame] 24 2 0 true
scoreboard players set @e[tag=VMW,score_PC-Glow_min=200] PC-Glow 0

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
scoreboard players set @a[score_PC-DeathJ_min=1] PC-DeathJ 0

#无人时强制结束
function vmwp:games/personal/reset unless @a[team=CTT]

scoreboard players tag @p[tag=InGame,team=CTT] add IsNoOne
execute @a[tag=IsNoOne] ~ ~ ~ function vmwp:games/personal/reset unless @a[tag=!IsNoOne,team=CTT]
scoreboard players tag @a[tag=IsNoOne] remove IsNoOne

#计时器
execute @e[tag=VMW,score_PC-TR=7800] ~ ~ ~ scoreboard players add @s PC-Glow 1
execute @e[tag=VMW,score_PC-TR_min=7000,score_PC-TR=7000] ~ ~ ~ effect @a[tag=InGame] 24 4 0 true
execute @e[tag=VMW,score_PC-TR_min=6000,score_PC-TR=6000] ~ ~ ~ effect @a[tag=InGame] 24 4 0 true
execute @e[tag=VMW,score_PC-TR_min=5000,score_PC-TR=5000] ~ ~ ~ effect @a[tag=InGame] 24 4 0 true
execute @e[tag=VMW,score_PC-TR_min=4000,score_PC-TR=4000] ~ ~ ~ effect @a[tag=InGame] 24 4 0 true
execute @e[tag=VMW,score_PC-TR_min=3000,score_PC-TR=3000] ~ ~ ~ effect @a[tag=InGame] 24 4 0 true
execute @e[tag=VMW,score_PC-TR_min=2000,score_PC-TR=2000] ~ ~ ~ effect @a[tag=InGame] 24 4 0 true
execute @e[tag=VMW,score_PC-TR_min=1000,score_PC-TR=1000] ~ ~ ~ effect @a[tag=InGame] 24 4 0 true
execute @e[tag=VMW,score_PC-TR_min=6500,score_PC-TR=6500] ~ ~ ~ effect @a[tag=InGame] 24 4 0 true
execute @e[tag=VMW,score_PC-TR_min=5500,score_PC-TR=5500] ~ ~ ~ effect @a[tag=InGame] 24 4 0 true
execute @e[tag=VMW,score_PC-TR_min=4500,score_PC-TR=4500] ~ ~ ~ effect @a[tag=InGame] 24 4 0 true
execute @e[tag=VMW,score_PC-TR_min=3500,score_PC-TR=3500] ~ ~ ~ effect @a[tag=InGame] 24 4 0 true
execute @e[tag=VMW,score_PC-TR_min=2500,score_PC-TR=2500] ~ ~ ~ effect @a[tag=InGame] 24 4 0 true
execute @e[tag=VMW,score_PC-TR_min=1500,score_PC-TR=1500] ~ ~ ~ effect @a[tag=InGame] 24 4 0 true
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

#时间结束
execute @e[tag=VMW,score_PC-TR=0] ~ ~ ~ function vmwp:games/personal/settlement

#限制物品格
replaceitem entity @a[m=2,tag=!PVE-IG] slot.inventory.3 minecraft:air
replaceitem entity @a[m=2,tag=!PVE-IG] slot.hotbar.3 minecraft:stained_glass_pane 1 15 {display:{Name:"§fnone"}}
replaceitem entity @a[m=2,tag=!PVE-IG] slot.hotbar.4 minecraft:stained_glass_pane 1 15 {display:{Name:"§fnone"}}
replaceitem entity @a[m=2,tag=!PVE-IG] slot.hotbar.5 minecraft:stained_glass_pane 1 15 {display:{Name:"§fnone"}}

#退出处理
scoreboard players set @a[score_leave_min=1] music 0
scoreboard players reset @a[score_leave_min=1] money
scoreboard players reset @a[score_leave_min=1] MainW
scoreboard players reset @a[score_leave_min=1] SecondaryW
scoreboard players reset @a[score_leave_min=1] PC-KillCount
scoreboard players reset @a[score_leave_min=1] PC-KCC

scoreboard players tag @a[score_leave_min=1] remove Preparing
scoreboard players tag @a[score_leave_min=1] remove InGame
scoreboard players tag @a[score_leave_min=1] remove shop
scoreboard players tag @a[score_leave_min=1] remove 1st
scoreboard players tag @a[score_leave_min=1] remove 2nd
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
execute @a[score_PC-Join_min=1,team=Watch] ~ ~ ~ function vmwp:games/personal/halfwayJoin
scoreboard players reset @a[score_PC-Join_min=1] PC-Join

#终极武器
scoreboard players tag @a add GetUltimateW {Inventory:[{id:"mwc:russian_weapons_case",tag:{tag:["UltimateW"]}}]}

replaceitem entity @a[tag=GetUltimateW,score_S-UltimateW_min=0,score_S-UltimateW=0] slot.hotbar.0 mwc:gl06 1 0 {IUuidLeast:-5624438658342251273L,Ammo:1,IUuidMost:2795396047957476467L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,38B,-53B,61B,-27B,29B,9B,68B,115B,-79B,-15B,-6B,-42B,-4B,-119B,20B,-9B,0B,0B,19B,-101B,0B,0B,0B,2B,0B,0B,0B,0B,0B,0B,0B,9B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,-3B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,-5B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,64B,-96B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§4GL-06"}}
scoreboard players set @a[tag=GetUltimateW,score_S-UltimateW_min=0,score_S-UltimateW=0] MainW 100

replaceitem entity @a[tag=GetUltimateW,score_S-UltimateW_min=1,score_S-UltimateW=1] slot.hotbar.0 mwc:rpg7 1 0 {IUuidLeast:-6783022202184099568L,Ammo:1,IUuidMost:2727878700286364111L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,37B,-37B,95B,57B,-104B,-20B,73B,-49B,-95B,-35B,-35B,62B,-65B,58B,-103B,16B,0B,0B,19B,-98B,0B,0B,0B,2B,0B,0B,0B,0B,0B,0B,0B,15B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,-7B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,65B,32B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§4RPG-7"}}
scoreboard players set @a[tag=GetUltimateW,score_S-UltimateW_min=1,score_S-UltimateW=1] MainW 101

replaceitem entity @a[tag=GetUltimateW,score_S-UltimateW_min=2,score_S-UltimateW=2] slot.hotbar.0 mwc:pkm 1 0 {IUuidLeast:-4637615483478291902L,AtId:[I;4482,5177,0,0,0,0,0,5231,5197,5193,5181,5183,0,5199,5182,5129,5221,0,0,0,0,0,0,0,0,4096,0],Ammo:120,IUuidMost:-4216991670720511768L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-59B,122B,60B,107B,5B,-20B,64B,-24B,-65B,-93B,-31B,73B,-10B,108B,-54B,66B,0B,0B,20B,95B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,121B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-126B,0B,0B,20B,57B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,4B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,20B,111B,0B,0B,20B,77B,0B,0B,20B,73B,0B,0B,20B,61B,0B,0B,20B,63B,0B,0B,0B,0B,0B,0B,20B,79B,0B,0B,20B,62B,0B,0B,20B,9B,0B,0B,20B,101B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,120B,0B,64B,44B,-52B,-51B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§4PKM"}}
scoreboard players set @a[tag=GetUltimateW,score_S-UltimateW_min=2,score_S-UltimateW=2] MainW 102

replaceitem entity @a[tag=GetUltimateW,score_S-UltimateW_min=3,score_S-UltimateW=3] slot.hotbar.0 mwc:vss_vintorez 1 0 {IUuidLeast:-8271220579771256398L,AtId:[I;4473,0,0,0,0,0,0,4459,4448,4412,0,0,4449,0,4673,0,0,0,0,0,0,0,0,0,0,4096,0],Ammo:20,IUuidMost:2831285840988489465L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,39B,74B,-65B,120B,-71B,-74B,70B,-7B,-115B,54B,-72B,-76B,-101B,-43B,113B,-78B,0B,0B,19B,65B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,63B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,121B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,19B,31B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,107B,0B,0B,17B,96B,0B,0B,17B,60B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,97B,0B,0B,0B,0B,0B,0B,18B,65B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,20B,0B,63B,-64B,0B,0B,127B,-1B,-1B,-1B,62B,15B,92B,41B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§4VSS"}}
scoreboard players set @a[tag=GetUltimateW,score_S-UltimateW_min=3,score_S-UltimateW=3] MainW 103

replaceitem entity @a[tag=GetUltimateW,score_S-UltimateW_min=4,score_S-UltimateW=4] slot.hotbar.0 mwc:m202 1 0 {IUuidLeast:-5646834837680465466L,Ammo:4,IUuidMost:3590677991825819471L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,49B,-44B,-90B,-101B,-3B,-105B,71B,79B,-79B,-94B,105B,-94B,34B,-63B,89B,-58B,0B,0B,19B,-97B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,9B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-111B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,-6B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,0B,0B,0B,0B,4B,0B,64B,-96B,0B,0B,0B,0B,0B,1B,61B,-11B,-62B,-113B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§4M202"}}
scoreboard players set @a[tag=GetUltimateW,score_S-UltimateW_min=4,score_S-UltimateW=4] MainW 104

replaceitem entity @a[tag=GetUltimateW,score_S-UltimateW_min=5,score_S-UltimateW=5] slot.hotbar.0 mwc:m32_mgl 1 0 {IUuidLeast:-8614578431577803302L,Ammo:6,AtId:[I;-1,-1,0,0,0,0,0,4356,0,4416,0,0,-1,4584,0,4607,0,4732,0,0,0,0,0,0,0,4096,0],IUuidMost:-336372285734894412L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-5B,84B,-9B,48B,52B,124B,68B,-76B,-120B,114B,-34B,-114B,-8B,16B,53B,-38B,0B,0B,19B,-99B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,125B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,4B,0B,0B,0B,0B,0B,0B,17B,64B,0B,0B,0B,0B,0B,0B,0B,0B,-1B,-1B,-1B,-1B,0B,0B,17B,-24B,0B,0B,0B,0B,0B,0B,17B,-1B,0B,0B,0B,0B,0B,0B,18B,124B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,6B,0B,64B,-64B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§4M32 MGL"}}
scoreboard players set @a[tag=GetUltimateW,score_S-UltimateW_min=5,score_S-UltimateW=5] MainW 105

replaceitem entity @a[tag=GetUltimateW,score_S-UltimateW_min=6,score_S-UltimateW=6] slot.hotbar.0 mwc:m134 1 0 {IUuidLeast:-7120371601867481734L,Ammo:100,IUuidMost:652440629080836363L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,9B,13B,-17B,75B,-99B,101B,73B,11B,-99B,47B,91B,-64B,-31B,-24B,-35B,122B,0B,0B,19B,-96B,0B,0B,0B,2B,0B,0B,0B,0B,0B,0B,0B,10B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-63B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,-23B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,0B,0B,0B,0B,100B,0B,63B,-128B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§4M134"}}
scoreboard players set @a[tag=GetUltimateW,score_S-UltimateW_min=6,score_S-UltimateW=6] MainW 106

#replaceitem entity @a[tag=GetUltimateW,score_S-UltimateW_min=7,score_S-UltimateW=7] slot.hotbar.0 mwc:fatman 1 0 {IUuidLeast:-6164030412886089568L,Ammo:1,IUuidMost:7902692299008657250L,Instance:[B;-32B,83B,21B,-112B,-126B,43B,-31B,45B,117B,49B,126B,79B,17B,126B,62B,-127B,0B,0B,0B,9B,109B,-84B,0B,-58B,-109B,-96B,71B,98B,-86B,116B,-10B,-1B,119B,56B,96B,-96B,0B,0B,20B,114B,0B,0B,0B,5B,0B,0B,0B,0B,0B,0B,1B,-32B,75B,99B,82B,108B,-118B,-87B,-71B,14B,-97B,-92B,100B,-74B,-111B,106B,61B,-40B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,20B,100B,0B,0B,21B,-79B,0B,0B,22B,99B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-99B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,65B,-96B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§4fat man"}}
scoreboard players set @a[tag=GetUltimateW,score_S-UltimateW_min=7,score_S-UltimateW=7] MainW 107

clear @a[tag=GetUltimateW] mwc:russian_weapons_case
scoreboard players tag @a[tag=GetUltimateW] remove GetUltimateW

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
