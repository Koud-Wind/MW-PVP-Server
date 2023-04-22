#显示器
execute @a[tag=InGame] ~ ~ ~ title @s actionbar [{"text":"§3Round:"},{"score":{"objective":"PC-Games","name":"@e[tag=VMW]"}},{"text":" §bTime:"},{"score":{"objective":"PC-RTC","name":"@e[tag=VMW]"}},{"text":"s §6First score:"},{"score":{"objective":"PC-1rdK","name":"@e[tag=VMW]"}},{"text":" §eSecond score:"},{"score":{"objective":"PC-2rdK","name":"@e[tag=VMW]"}},{"text":" §eYour money:"},{"score":{"objective":"money","name":"@s"}}]
execute @a[team=Watch] ~ ~ ~ title @s actionbar [{"text":"§3Round:"},{"score":{"objective":"PC-Games","name":"@e[tag=VMW]"}},{"text":" §bTime:"},{"score":{"objective":"PC-RTC","name":"@e[tag=VMW]"}},{"text":"s §7Currently in Watch state §6First score:"},{"score":{"objective":"PC-1rdK","name":"@e[tag=VMW]"}},{"text":" §eSecond score:"},{"score":{"objective":"PC-2rdK","name":"@e[tag=VMW]"}}]
execute @a[team=,tag=!PVE-InGame] ~ ~ ~ title @s actionbar [{"text":"§3Round:"},{"score":{"objective":"PC-Games","name":"@e[tag=VMW]"}},{"text":" §bTime:"},{"score":{"objective":"PC-RTC","name":"@e[tag=VMW]"}},{"text":"s §cPlease wait for end §6First score:"},{"score":{"objective":"PC-1rdK","name":"@e[tag=VMW]"}},{"text":" §eSecond score:"},{"score":{"objective":"PC-2rdK","name":"@e[tag=VMW]"}}]

#shop函数
tellraw @a[score_assaultRP_min=1,tag=InGame] [{"text":"§cThe main weapon in this mode can only be purchased with SR/DMR/SMG"}]
scoreboard players reset @a[score_assaultRP_min=1,tag=InGame] assaultRP
tellraw @a[score_shotGunP_min=1,tag=InGame] [{"text":"§cThe main weapon in this mode can only be purchased with SR/DMR/SMG"}]
scoreboard players reset @a[score_shotGunP_min=1,tag=InGame] shotGunP
tellraw @a[score_heavyP_min=1,tag=InGame] [{"text":"§cThe main weapon in this mode can only be purchased with SR/DMR/SMG"}]
scoreboard players reset @a[score_heavyP_min=1,tag=InGame] heavyP
tellraw @a[score_ultimateWP_min=1,tag=InGame] [{"text":"§cThe main weapon in this mode can only be purchased with SR/DMR/SMG"}]
scoreboard players reset @a[score_ultimateWP_min=1,tag=InGame] ultimateWP

execute @e[tag=VMW,score_PC-TR_min=1] ~ ~ ~ function vmwp:shop/weaponShop
execute @e[tag=VMW,score_PC-TR_min=1] ~ ~ ~ function vmwp:shop/buyGive

#优化计时器检测
execute @e[tag=VMW,score_PC-TR_min=2600] ~ ~ ~ function vmwp:games/survival/detectionT

#击杀
execute @a[score_PC-KillJ_min=1,tag=InGame] ~ ~ ~ title @s title {"text":""}
execute @a[score_PC-KillJ_min=1,tag=InGame] ~ ~ ~ title @s subtitle {"text":"                            §e§l+15 money"}
execute @a[score_PC-KillJ_min=1,tag=InGame] ~ ~ ~ playsound minecraft:entity.arrow.hit_player ambient @s ~ ~ ~ 100000000000
execute @a[score_PC-KillJ_min=1,tag=InGame] ~ ~ ~ playsound minecraft:entity.player.death ambient @s ~ ~ ~ 10000000000
execute @a[score_PC-KillJ_min=1,tag=InGame] ~ ~ ~ scoreboard players add @s money 15
execute @a[score_PC-KillJ_min=1,tag=InGame] ~ ~ ~ scoreboard players tag @s add Camo
scoreboard players reset @a[score_PC-KillJ_min=1,tag=InGame] PC-KillJ

#RandomTp
execute @e[tag=VMW,score_PC-Map=0] ~ ~ ~ execute @a[tag=RandomTp] ~ ~ ~ spreadplayers -223 1300 0 55 true @s
execute @e[tag=VMW,score_PC-Map=1,score_PC-Map_min=1] ~ ~ ~ execute @a[tag=RandomTp] ~ ~ ~ spreadplayers -330 1234 0 44 true @s
execute @e[tag=VMW,score_PC-Map=2,score_PC-Map_min=2] ~ ~ ~ execute @a[tag=RandomTp] ~ ~ ~ spreadplayers -339 1341 0 44 true @s
execute @e[tag=VMW,score_PC-Map=3,score_PC-Map_min=3] ~ ~ ~ execute @a[tag=RandomTp] ~ ~ ~ spreadplayers -426 1199 0 39 true @s
execute @e[tag=VMW,score_PC-Map=4,score_PC-Map_min=4] ~ ~ ~ execute @a[tag=RandomTp] ~ ~ ~ spreadplayers -452 1568 0 45 true @s
execute @e[tag=VMW,score_PC-Map=5,score_PC-Map_min=5] ~ ~ ~ execute @a[tag=RandomTp] ~ ~ ~ spreadplayers -231 1545 0 69 true @s
execute @a[tag=RandomTp] ~ ~ ~ tp @s ~ 150 ~
title @a[tag=RandomTp] subtitle [{"text":"§3Round "},{"score":{"objective":"PC-Games","name":"@e[tag=VMW]"}}]
title @a[tag=RandomTp] title [{"text":"§bClick on "},{"keybind":"key.jump","color":"yellow"},{"text":" §bto glide"}]
playsound minecraft:item.elytra.flying ambient @a[tag=RandomTp] ~ ~ ~ 100000000000
scoreboard players tag @a[tag=RandomTp] remove RandomTp

#落地替换护甲
execute @e[tag=VMW,score_PC-TR=2790] ~ ~ ~ scoreboard players tag @a[tag=InGame] add ElytraFall {OnGround:1b,Inventory:[{id:"minecraft:elytra"}]}
replaceitem entity @a[tag=ElytraFall] slot.armor.chest minecraft:leather_chestplate 1 0 {ench:[{lvl:1s,id:10s}],Unbreakable:1b,HideFlags:5,display:{color:8388863,Name:""},AttributeModifiers:[{UUIDMost:3618156733941892737L,UUIDLeast:-7584274578594019785L,Amount:13.0d,Slot:"chest",AttributeName:"generic.armor",Operation:0,Name:"generic.armor"}]}
execute @e[tag=VMW,score_PC-TR_min=2600] ~ ~ ~ effect @a[tag=ElytraFall] 15 9 0 true
scoreboard players tag @a[tag=ElytraFall] remove ElytraFall

#无人时强制结束
function vmwp:games/survival/reset unless @a[team=CTT]

scoreboard players tag @p[tag=InGame,team=CTT] add IsNoOne
execute @a[tag=IsNoOne] ~ ~ ~ function vmwp:games/survival/reset unless @a[tag=!IsNoOne,team=CTT]
scoreboard players tag @a[tag=IsNoOne] remove IsNoOne

#NumberP判定
execute @e[tag=VMW,score_PC-N=3,score_PC-N_min=3,score_PC-TR=2599] ~ ~ ~ execute @s[tag=!PC-WaitF] ~ ~ ~ scoreboard players tag @a[tag=InGame,team=CTT,m=2] add survival3
execute @e[tag=VMW,score_PC-N=2,score_PC-N_min=2,score_PC-TR=2599] ~ ~ ~ execute @s[tag=!PC-WaitF] ~ ~ ~ scoreboard players tag @a[tag=InGame,team=CTT,m=2] add survival2
execute @e[tag=VMW,score_PC-N=2,score_PC-N_min=2,score_PC-TR=2599] ~ ~ ~ execute @s[tag=!PC-WaitF] ~ ~ ~ execute @a[tag=survival2] ~ ~ ~ effect @a[tag=InGame,m=2,team=CTT] 24 2 0 true
execute @e[tag=VMW,score_PC-N=2,score_PC-N_min=2,score_PC-TR=2599] ~ ~ ~ execute @s[tag=!PC-WaitF] ~ ~ ~ execute @s[tag=!GlowT] ~ ~ ~ tellraw @a[tag=!PVE-InGame] [{"text":"§cThe remaining two players will receive Glow!"}]
execute @e[tag=VMW,score_PC-N=2,score_PC-N_min=2,score_PC-TR=2599] ~ ~ ~ execute @s[tag=!PC-WaitF] ~ ~ ~ execute @s[tag=!GlowT] ~ ~ ~ playsound minecraft:block.note.hat ambient @a[tag=!PVE-InGame] ~ ~ ~ 1000000000
execute @e[tag=VMW,score_PC-N=2,score_PC-N_min=2,score_PC-TR=2599] ~ ~ ~ execute @s[tag=!PC-WaitF] ~ ~ ~ scoreboard players tag @s[tag=!GlowT] add GlowT
execute @e[tag=VMW,score_PC-N=1,score_PC-N_min=1,score_PC-TR=2599] ~ ~ ~ execute @s[tag=!PC-WaitF] ~ ~ ~ scoreboard players tag @a[tag=InGame,team=CTT,m=2] add survival1

scoreboard players tag @p[tag=InGame,team=CTT,m=2] add NumberP1
execute @r[tag=NumberP1] ~ ~ ~ scoreboard players tag @p[tag=!NumberP1,team=CTT,m=2] add NumberP2
execute @a[tag=NumberP2] ~ ~ ~ scoreboard players tag @a[tag=NumberP1] add NumberP2
scoreboard players tag @a[tag=NumberP2] remove NumberP1
execute @r[tag=NumberP2] ~ ~ ~ scoreboard players tag @p[tag=!NumberP2,team=CTT,m=2] add NumberP3
execute @a[tag=NumberP3] ~ ~ ~ scoreboard players tag @a[tag=NumberP2] add NumberP3
scoreboard players tag @a[tag=NumberP3] remove NumberP2
execute @r[tag=NumberP3] ~ ~ ~ scoreboard players tag @p[tag=!NumberP3,team=CTT,m=2] add NumberP4
execute @a[tag=NumberP4] ~ ~ ~ scoreboard players tag @a[tag=NumberP3] add NumberP4
scoreboard players tag @a[tag=NumberP4] remove NumberP3
execute @r[tag=NumberP1] ~ ~ ~ scoreboard players set @e[tag=VMW] PC-N 1
execute @r[tag=NumberP2] ~ ~ ~ scoreboard players set @e[tag=VMW] PC-N 2
execute @r[tag=NumberP3] ~ ~ ~ scoreboard players set @e[tag=VMW] PC-N 3
execute @r[tag=NumberP4] ~ ~ ~ scoreboard players set @e[tag=VMW] PC-N 4
scoreboard players tag @a[tag=NumberP1] remove NumberP1
scoreboard players tag @a[tag=NumberP2] remove NumberP2
scoreboard players tag @a[tag=NumberP3] remove NumberP3
scoreboard players tag @a[tag=NumberP4] remove NumberP4

#死亡处理
gamemode spectator @a[tag=InGame,score_PC-DeathJ_min=1]
tellraw @a[tag=InGame,score_PC-DeathJ_min=1] {"text":"§bDon't lose heart, There is still a chance for the next game..."}
scoreboard players set @a[tag=InGame,score_PC-DeathJ_min=1] MainW 0
scoreboard players set @a[tag=InGame,score_PC-DeathJ_min=1] SecondaryW 0
clear @a[tag=InGame,score_PC-DeathJ_min=1]
scoreboard players set @a[tag=InGame,score_PC-DeathJ_min=1] PC-DeathJ 0

#等待结束
execute @e[tag=VMW] ~ ~ ~ execute @s[tag=PC-WaitF] ~ ~ ~ effect @a[tag=!PVE-InGame] 11 1 50 true
execute @e[tag=VMW] ~ ~ ~ execute @s[tag=PC-WaitF] ~ ~ ~ scoreboard players tag @a[tag=shop] remove shop
execute @e[tag=VMW] ~ ~ ~ execute @s[tag=PC-WaitF] ~ ~ ~ kill @e[type=item]
execute @e[tag=VMW] ~ ~ ~ execute @s[tag=PC-WaitF] ~ ~ ~ gamemode 2 @a[tag=InGame,m=3]
scoreboard players remove @e[tag=VMW,score_PC-WaitT_min=1] PC-WaitT 1
execute @e[tag=VMW,score_PC-Games_min=5] ~ ~ ~ execute @s[tag=PC-WaitF,score_PC-WaitT=0] ~ ~ ~ function vmwp:games/survival/settlement
execute @e[tag=VMW] ~ ~ ~ execute @s[tag=PC-WaitF,score_PC-WaitT=0] ~ ~ ~ function vmwp:games/survival/startAGame
scoreboard players tag @e[score_PC-WaitT=0] remove PC-WaitF

#计时器
execute @e[tag=VMW,score_PC-TR_min=1200,score_PC-TR=1200] ~ ~ ~ execute @s[tag=!PC-WaitF] ~ ~ ~ effect @a[tag=InGame,m=2,team=CTT] 24 60 0 true
execute @e[tag=VMW,score_PC-TR_min=1200,score_PC-TR=1200] ~ ~ ~ execute @s[tag=!PC-WaitF] ~ ~ ~ tellraw @a[tag=!PVE-InGame] [{"text":"§c60 seconds remaining, players will receive glow!"}]
execute @e[tag=VMW,score_PC-TR_min=1200,score_PC-TR=1200] ~ ~ ~ execute @s[tag=!PC-WaitF] ~ ~ ~ playsound minecraft:block.note.hat ambient @a[tag=!PVE-InGame] ~ ~ ~ 1000000000
execute @e[tag=VMW,score_PC-TR_min=800,score_PC-TR=800] ~ ~ ~ execute @s[tag=!PC-WaitF] ~ ~ ~ tellraw @a[tag=!PVE-InGame] [{"text":"§4After 10 seconds, players outside the beacon will receive the withering effect!"}]
execute @e[tag=VMW,score_PC-TR_min=800,score_PC-TR=800] ~ ~ ~ execute @s[tag=!PC-WaitF] ~ ~ ~ playsound minecraft:block.note.hat ambient @a[tag=!PVE-InGame] ~ ~ ~ 1000000000

execute @e[tag=VMW,score_PC-TR=600] ~ ~ ~ execute @s[tag=!PC-WaitF,score_PC-Map=0] ~ ~ ~ effect @a[tag=InGame,x=-229,y=71,z=1303,rm=10] 20 1 1 true
execute @e[tag=VMW,score_PC-TR=600] ~ ~ ~ execute @s[tag=!PC-WaitF,score_PC-Map=1,score_PC-Map_min=1] ~ ~ ~ effect @a[tag=InGame,x=-316,y=75,z=1245,rm=10] 20 1 1 true
execute @e[tag=VMW,score_PC-TR=600] ~ ~ ~ execute @s[tag=!PC-WaitF,score_PC-Map=2,score_PC-Map_min=2] ~ ~ ~ effect @a[tag=InGame,x=-343,y=72,z=1343,rm=10] 20 1 1 true
execute @e[tag=VMW,score_PC-TR=600] ~ ~ ~ execute @s[tag=!PC-WaitF,score_PC-Map=3,score_PC-Map_min=3] ~ ~ ~ effect @a[tag=InGame,x=-402,y=78,z=1171,rm=10] 20 1 1 true
execute @e[tag=VMW,score_PC-TR=600] ~ ~ ~ execute @s[tag=!PC-WaitF,score_PC-Map=4,score_PC-Map_min=4] ~ ~ ~ effect @a[tag=InGame,x=-439,y=73,z=1584,rm=10] 20 1 1 true
execute @e[tag=VMW,score_PC-TR=600] ~ ~ ~ execute @s[tag=!PC-WaitF,score_PC-Map=5,score_PC-Map_min=5] ~ ~ ~ effect @a[tag=InGame,x=-230,y=73,z=1533,rm=10] 20 1 1 true

execute @e[tag=VMW,score_PC-TR_min=200,score_PC-TR=200] ~ ~ ~ playsound minecraft:block.note.hat ambient @a ~ ~ ~ 1000000000
execute @e[tag=VMW,score_PC-TR_min=120,score_PC-TR=120] ~ ~ ~ playsound minecraft:block.note.hat ambient @a ~ ~ ~ 1000000000
execute @e[tag=VMW,score_PC-TR_min=100,score_PC-TR=100] ~ ~ ~ playsound minecraft:block.note.hat ambient @a ~ ~ ~ 1000000000
execute @e[tag=VMW,score_PC-TR_min=80,score_PC-TR=80] ~ ~ ~ playsound minecraft:block.note.hat ambient @a ~ ~ ~ 1000000000
execute @e[tag=VMW,score_PC-TR_min=60,score_PC-TR=60] ~ ~ ~ playsound minecraft:block.note.hat ambient @a ~ ~ ~ 1000000000
execute @e[tag=VMW,score_PC-TR_min=40,score_PC-TR=40] ~ ~ ~ playsound minecraft:block.note.hat ambient @a ~ ~ ~ 1000000000
execute @e[tag=VMW,score_PC-TR_min=20,score_PC-TR=20] ~ ~ ~ playsound minecraft:block.note.hat ambient @a ~ ~ ~ 1000000000
scoreboard players operation @e[tag=VMW] PC-RTC = @e[tag=VMW] PC-TR
scoreboard players operation @e[tag=VMW] PC-RTC /= §fdivision PC-RTC
execute @e[tag=VMW] ~ ~ ~ execute @s[tag=!PC-WaitF] ~ ~ ~ scoreboard players remove @s[score_PC-TR_min=1] PC-TR 1

#平局
execute @e[tag=VMW,score_PC-TR_min=1] ~ ~ ~ execute @s[tag=!PC-WaitF] ~ ~ ~ function vmwp:games/survival/SMAGame unless @a[tag=InGame,team=CTT,m=2]

#survival玩家胜利
execute @e[tag=VMW,score_PC-TR_min=1] ~ ~ ~ execute @s[tag=!PC-WaitF] ~ ~ ~ execute @a[tag=survival1,team=CTT,m=2] ~ ~ ~ playsound minecraft:entity.cat.ambient ambient @a[tag=!PVE-InGame] ~ ~ ~ 100000000 0
execute @e[tag=VMW,score_PC-TR_min=1] ~ ~ ~ execute @s[tag=!PC-WaitF] ~ ~ ~ execute @a[tag=survival1,team=CTT,m=2] ~ ~ ~ title @a[tag=!PVE-InGame] subtitle [{"selector":"@s"},{"text":" §bis the last survivor"}]
execute @e[tag=VMW,score_PC-TR_min=1] ~ ~ ~ execute @s[tag=!PC-WaitF] ~ ~ ~ function vmwp:games/survival/SMAGame if @a[tag=survival1,team=CTT,m=2]

#时间结束
execute @e[tag=VMW,score_PC-TR=0] ~ ~ ~ execute @s[tag=!PC-WaitF] ~ ~ ~ playsound minecraft:entity.elder_guardian.curse ambient @a[tag=!PVE-InGame] ~ ~ ~ 10000000000 
execute @e[tag=VMW,score_PC-TR=0] ~ ~ ~ execute @s[tag=!PC-WaitF] ~ ~ ~ title @a[tag=!PVE-InGame] subtitle {"text":"§b§lTime out"}
execute @e[tag=VMW,score_PC-TR=0] ~ ~ ~ execute @s[tag=!PC-WaitF] ~ ~ ~ function vmwp:games/survival/SMAGame

#判定末期
scoreboard players tag @a[tag=survival3,team=CTT,m=2] remove survival3
scoreboard players tag @a[tag=survival2,team=CTT,m=2] remove survival2

#限制物品格
replaceitem entity @a[m=2,tag=!PVE-InGame] slot.inventory.3 minecraft:air
replaceitem entity @a[m=2,tag=!PVE-InGame] slot.hotbar.3 minecraft:stained_glass_pane 1 15 {display:{Name:"§fnone"}}
replaceitem entity @a[m=2,tag=!PVE-InGame] slot.hotbar.4 minecraft:stained_glass_pane 1 15 {display:{Name:"§fnone"}}
replaceitem entity @a[m=2,tag=!PVE-InGame] slot.hotbar.5 minecraft:stained_glass_pane 1 15 {display:{Name:"§fnone"}}
execute @a[tag=!PVE-InGame,m=2] ~ ~ ~ replaceitem entity @s[tag=!shop] slot.hotbar.6 minecraft:stained_glass_pane 1 15 {display:{Name:"§fnone"}}

#退出处理
scoreboard players set @a[score_leave_min=1] music 0
scoreboard players reset @a[score_leave_min=1] money
scoreboard players reset @a[score_leave_min=1] MainW
scoreboard players reset @a[score_leave_min=1] SecondaryW
scoreboard players reset @a[score_leave_min=1] PC-KillCount
scoreboard players reset @a[score_leave_min=1] PC-KCC
scoreboard players reset @a[score_leave_min=1] PC-Score

scoreboard players tag @a[score_leave_min=1] remove Preparing
scoreboard players tag @a[score_leave_min=1] remove InGame
scoreboard players tag @a[score_leave_min=1] remove shop
scoreboard players tag @a[score_leave_min=1] remove 1rd
scoreboard players tag @a[score_leave_min=1] remove 2rd

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
execute @a[score_PC-Join_min=1,team=Watch] ~ ~ ~ function vmwp:games/survival/halfwayJoin
scoreboard players reset @a[score_PC-Join_min=1] PC-Join
