#显示器
execute @a[tag=InGame,team=CT] ~ ~ ~ title @s actionbar [{"text":"§aTeam:§9§lCT §bTime:"},{"score":{"objective":"CT-RTC","name":"@e[tag=VMW]"}},{"text":"s §6Current score:"},{"score":{"objective":"CT-CTScore","name":"@e[tag=VMW]"},"color":"blue","bold":true},{"text":"/"},{"score":{"objective":"CT-TScore","name":"@e[tag=VMW]"},"color":"dark_red","bold":true},{"text":" §eYour money:"},{"score":{"objective":"money","name":"@s"}}]
execute @a[tag=InGame,team=T] ~ ~ ~ title @s actionbar [{"text":"§aTeam:§4§lT §bTime:"},{"score":{"objective":"CT-RTC","name":"@e[tag=VMW]"}},{"text":"s §6Current score:"},{"score":{"objective":"CT-CTScore","name":"@e[tag=VMW]"},"color":"blue","bold":true},{"text":"/"},{"score":{"objective":"CT-TScore","name":"@e[tag=VMW]"},"color":"dark_red","bold":true},{"text":" §eYour money:"},{"score":{"objective":"money","name":"@s"}}]
execute @a[team=Watch] ~ ~ ~ title @s actionbar [{"text":"§bTime:"},{"score":{"objective":"CT-RTC","name":"@e[tag=VMW]"}},{"text":"s §7Currently in Watch state §6Current score:"},{"score":{"objective":"CT-CTScore","name":"@e[tag=VMW]"},"color":"blue","bold":true},{"text":"/"},{"score":{"objective":"CT-TScore","name":"@e[tag=VMW]"},"color":"dark_red","bold":true}]
execute @a[team=,tag=!PVE-InGame] ~ ~ ~ title @s actionbar [{"text":"§bTime:"},{"score":{"objective":"CT-RTC","name":"@e[tag=VMW]"}},{"text":"s §cPlease wait for end §6Current score:"},{"score":{"objective":"CT-CTScore","name":"@e[tag=VMW]"},"color":"blue","bold":true},{"text":"/"},{"score":{"objective":"CT-TScore","name":"@e[tag=VMW]"},"color":"dark_red","bold":true}]

#shop函数
execute @e[tag=VMW,score_CT-TR_min=9700] ~ ~ ~ function vmwp:shop/weaponShop
function vmwp:shop/buyGive
execute @e[tag=VMW,score_CT-TR=9700] ~ ~ ~ replaceitem entity @a[m=2,tag=shop,score_S-Shop=0] slot.hotbar.6 minecraft:iron_ingot 1 0 {ench:[{lvl:1s,id:71s}],HideFlags:1,display:{Name:"§fWeapon shop1"}}
execute @e[tag=VMW,score_CT-TR=9700] ~ ~ ~ replaceitem entity @a[m=2,tag=shop,score_S-Shop=1,score_S-Shop_min=1] slot.hotbar.6 minecraft:flint 1 0 {ench:[{lvl:1s,id:71s}],HideFlags:1,display:{Name:"§fWeapon shop2"}}
execute @e[tag=VMW,score_CT-TR=9700] ~ ~ ~ replaceitem entity @a[m=2,tag=shop,score_S-Shop=2,score_S-Shop_min=2] slot.hotbar.6 minecraft:feather 1 0 {ench:[{lvl:1s,id:71s}],HideFlags:1,display:{Name:"§fWeapon shop3"}}

#execute @e[tag=VMW,score_CT-TR_min=9000] ~ ~ ~ function vmwp:shop/buyGive
#execute @e[tag=VMW,score_CT-TR_min=8400,score_CT-TR=8400] ~ ~ ~ function vmwp:shop/buyGive
#execute @e[tag=VMW,score_CT-TR_min=7800,score_CT-TR=7800] ~ ~ ~ function vmwp:shop/buyGive
#execute @e[tag=VMW,score_CT-TR_min=7200,score_CT-TR=7200] ~ ~ ~ function vmwp:shop/buyGive
#execute @e[tag=VMW,score_CT-TR_min=6600,score_CT-TR=6600] ~ ~ ~ function vmwp:shop/buyGive
#execute @e[tag=VMW,score_CT-TR_min=6000,score_CT-TR=6000] ~ ~ ~ function vmwp:shop/buyGive
#execute @e[tag=VMW,score_CT-TR_min=5400,score_CT-TR=5400] ~ ~ ~ function vmwp:shop/buyGive
#execute @e[tag=VMW,score_CT-TR_min=4800,score_CT-TR=4800] ~ ~ ~ function vmwp:shop/buyGive
#execute @e[tag=VMW,score_CT-TR_min=4200,score_CT-TR=4200] ~ ~ ~ function vmwp:shop/buyGive
#execute @e[tag=VMW,score_CT-TR_min=3600,score_CT-TR=3600] ~ ~ ~ function vmwp:shop/buyGive
#execute @e[tag=VMW,score_CT-TR_min=3000,score_CT-TR=3000] ~ ~ ~ function vmwp:shop/buyGive
#execute @e[tag=VMW,score_CT-TR_min=2400,score_CT-TR=2400] ~ ~ ~ function vmwp:shop/buyGive
#execute @e[tag=VMW,score_CT-TR_min=1800,score_CT-TR=1800] ~ ~ ~ function vmwp:shop/buyGive
#execute @e[tag=VMW,score_CT-TR_min=1200,score_CT-TR=1200] ~ ~ ~ function vmwp:shop/buyGive
#execute @e[tag=VMW,score_CT-TR_min=600,score_CT-TR=600] ~ ~ ~ function vmwp:shop/buyGive

scoreboard players enable @a[tag=InGame] moduleP
scoreboard players enable @a[tag=InGame] grenadeP
scoreboard players enable @a[tag=InGame] assaultRP
scoreboard players enable @a[tag=InGame] S&DMRP
scoreboard players enable @a[tag=InGame] SMGP
scoreboard players enable @a[tag=InGame] shotGunP
scoreboard players enable @a[tag=InGame] heavyP
scoreboard players enable @a[tag=InGame] pistolP
scoreboard players enable @a[tag=InGame] ultimateWP

function vmwp:shop/weaponShop if @a[score_moduleP_min=1]
function vmwp:shop/weaponShop if @a[score_grenadeP_min=1]
function vmwp:shop/weaponShop if @a[score_assaultRP_min=1]
function vmwp:shop/weaponShop if @a[score_S&DMRP_min=1]
function vmwp:shop/weaponShop if @a[score_SMGP_min=1]
function vmwp:shop/weaponShop if @a[score_shotGunP_min=1]
function vmwp:shop/weaponShop if @a[score_heavyP_min=1]
function vmwp:shop/weaponShop if @a[score_pistolP_min=1]
function vmwp:shop/weaponShop if @a[score_ultimateWP_min=1]

#detectionT
execute @e[tag=VMW,score_CT-TR_min=9600] ~ ~ ~ function vmwp:games/teamDM/detectionT

#击杀
effect @a[score_CT-killC_min=6,tag=InGame] 1 0 0 true
replaceitem entity @a[score_CT-killC=2,tag=InGame] slot.armor.chest minecraft:leather_chestplate 1 0 {ench:[{lvl:1s,id:10s}],Unbreakable:1b,HideFlags:5,display:{color:16777215,Name:"§7§lLV1"},AttributeModifiers:[{UUIDMost:3618156733941892737L,UUIDLeast:-7584274578594019785L,Amount:10.0d,Slot:"chest",AttributeName:"generic.armor",Operation:0,Name:"generic.armor"}]}
replaceitem entity @a[score_CT-killC=5,score_CT-killC_min=3,tag=InGame] slot.armor.chest minecraft:leather_chestplate 1 0 {ench:[{lvl:1s,id:10s}],Unbreakable:1b,HideFlags:5,display:{color:33023,Name:"§b§lLV2"},AttributeModifiers:[{UUIDMost:3618156733941892737L,UUIDLeast:-7584274578594019785L,Amount:12.0d,Slot:"chest",AttributeName:"generic.armor",Operation:0,Name:"generic.armor"}]}
replaceitem entity @a[score_CT-killC=15,score_CT-killC_min=6,tag=InGame] slot.armor.chest minecraft:leather_chestplate 1 0 {ench:[{lvl:1s,id:10s}],Unbreakable:1b,HideFlags:5,display:{color:8388863,Name:"§5§lLV3"},AttributeModifiers:[{UUIDMost:3618156733941892737L,UUIDLeast:-7584274578594019785L,Amount:13.0d,Slot:"chest",AttributeName:"generic.armor",Operation:0,Name:"generic.armor"}]}
replaceitem entity @a[score_CT-killC_min=16,tag=InGame] slot.armor.chest minecraft:leather_chestplate 1 0 {ench:[{lvl:1s,id:10s}],Unbreakable:1b,HideFlags:5,display:{color:16711680,Name:"§4§lLV4"},AttributeModifiers:[{UUIDMost:3618156733941892737L,UUIDLeast:-7584274578594019785L,Amount:15.0d,Slot:"chest",AttributeName:"generic.armor",Operation:0,Name:"generic.armor"}]}
#tellraw @a[score_CT-KillJ_min=1,tag=InGame] [{"text":"§6击败一名敌人 +2金钱"}]
title @a[score_CT-KillJ_min=1,tag=InGame] title {"text":""}
title @a[score_CT-KillJ_min=1,tag=InGame] subtitle {"text":"                            §e§l+4 money"}
playsound minecraft:entity.arrow.hit_player ambient @a[score_CT-KillJ_min=1,tag=InGame] ~ ~ ~ 100000000000
tellraw @a[score_CT-killC_min=3,score_CT-killC=3,score_CT-KillJ_min=1,tag=InGame] [{"text":"§aYour armor been upgraded!"}]
tellraw @a[score_CT-killC_min=6,score_CT-killC=6,score_CT-KillJ_min=1,tag=InGame] [{"text":"§aYour armor been upgraded! §8It seems to become heavy!"}]
tellraw @a[score_CT-killC_min=16,score_CT-killC=16,score_CT-KillJ_min=1,tag=InGame] [{"text":"§aYour armor been upgraded!"}]
xp 1L @a[score_CT-KillJ_min=1,tag=InGame]
playsound minecraft:entity.player.death ambient @a[score_CT-KillJ_min=1,tag=InGame] ~ ~ ~ 10000000000
playsound minecraft:entity.player.levelup ambient @a[score_CT-killC_min=3,score_CT-killC=3,score_CT-KillJ_min=1,tag=InGame] ~ ~ ~ 10000000000
playsound minecraft:entity.player.levelup ambient @a[score_CT-killC_min=6,score_CT-killC=6,score_CT-KillJ_min=1,tag=InGame] ~ ~ ~ 10000000000
playsound minecraft:entity.player.levelup ambient @a[score_CT-killC_min=16,score_CT-killC=16,score_CT-KillJ_min=1,tag=InGame] ~ ~ ~ 10000000000

scoreboard players add @a[score_CT-KillJ_min=1,tag=InGame] money 4
scoreboard players reset @a[score_CT-KillJ_min=1,tag=InGame] CT-KillJ

#死亡处理
effect @a[tag=Protect,score_CT-DeathJ=0] 11 6 50 true
effect @a[tag=Protect,score_CT-DeathJ=0] 12 7 0 true
effect @a[tag=Protect,score_CT-DeathJ=0] 1 1000000 0 true
scoreboard players tag @a[tag=Protect,score_CT-DeathJ=0] remove Protect

execute @a[tag=InGame,score_CT-DeathJ_min=1,team=CT] ~ ~ ~ scoreboard players add @e[tag=VMW] CT-TScore 1
execute @a[tag=InGame,score_CT-DeathJ_min=1,team=T] ~ ~ ~ scoreboard players add @e[tag=VMW] CT-CTScore 1
scoreboard players tag @a[tag=InGame,score_CT-DeathJ_min=1] add Protect
scoreboard players set @a[tag=InGame,score_CT-DeathJ_min=1] CT-DeathJ 0

#Exchange与结算
execute @e[tag=VMW,score_CT-CTScore_min=30] ~ ~ ~ execute @s[tag=!Exchange] ~ ~ ~ function vmwp:games/teamDM/settlement
execute @e[tag=VMW,score_CT-TScore_min=30] ~ ~ ~ execute @s[tag=!Exchange] ~ ~ ~ function vmwp:games/teamDM/settlement
execute @e[tag=VMW,score_CT-CTScore_min=65] ~ ~ ~ function vmwp:games/teamDM/settlement
execute @e[tag=VMW,score_CT-TScore_min=65] ~ ~ ~ function vmwp:games/teamDM/settlement

#无人时强制结束
function vmwp:games/teamDM/reset unless @a[team=CT]
function vmwp:games/teamDM/reset unless @a[team=T]

#计时器
execute @e[tag=VMW,score_CT-TR_min=9720,score_CT-TR=9720] ~ ~ ~ playsound minecraft:block.note.hat ambient @a[tag=!PVE-InGame] ~ ~ ~ 1000000000
execute @e[tag=VMW,score_CT-TR_min=9700,score_CT-TR=9700] ~ ~ ~ playsound minecraft:block.note.hat ambient @a[tag=!PVE-InGame] ~ ~ ~ 1000000000
execute @e[tag=VMW,score_CT-TR_min=9680,score_CT-TR=9680] ~ ~ ~ playsound minecraft:block.note.hat ambient @a[tag=!PVE-InGame] ~ ~ ~ 1000000000
execute @e[tag=VMW,score_CT-TR_min=9660,score_CT-TR=9660] ~ ~ ~ playsound minecraft:block.note.hat ambient @a[tag=!PVE-InGame] ~ ~ ~ 1000000000
execute @e[tag=VMW,score_CT-TR_min=9640,score_CT-TR=9640] ~ ~ ~ playsound minecraft:block.note.hat ambient @a[tag=!PVE-InGame] ~ ~ ~ 1000000000
execute @e[tag=VMW,score_CT-TR_min=9620,score_CT-TR=9620] ~ ~ ~ playsound minecraft:block.note.hat ambient @a[tag=!PVE-InGame] ~ ~ ~ 1000000000
execute @e[tag=VMW,score_CT-TR_min=9600,score_CT-TR=9600] ~ ~ ~ playsound minecraft:block.note.pling ambient @a[tag=!PVE-InGame] ~ ~ ~ 1000000000 2
execute @e[tag=VMW,score_CT-TR_min=9600,score_CT-TR=9600] ~ ~ ~ title @a[tag=!PVE-InGame] title [{"text":"§a§lGO!"}]
execute @e[tag=VMW,score_CT-TR_min=9600] ~ ~ ~ kill @e[type=mwc:smokegrenade260]
execute @e[tag=VMW,score_CT-TR_min=720,score_CT-TR=720] ~ ~ ~ playsound minecraft:block.note.hat ambient @a[tag=!PVE-InGame] ~ ~ ~ 1000000000
execute @e[tag=VMW,score_CT-TR_min=620,score_CT-TR=620] ~ ~ ~ playsound minecraft:block.note.hat ambient @a[tag=!PVE-InGame] ~ ~ ~ 1000000000
execute @e[tag=VMW,score_CT-TR_min=520,score_CT-TR=520] ~ ~ ~ playsound minecraft:block.note.hat ambient @a[tag=!PVE-InGame] ~ ~ ~ 1000000000
execute @e[tag=VMW,score_CT-TR_min=420,score_CT-TR=420] ~ ~ ~ playsound minecraft:block.note.hat ambient @a[tag=!PVE-InGame] ~ ~ ~ 1000000000
execute @e[tag=VMW,score_CT-TR_min=320,score_CT-TR=320] ~ ~ ~ playsound minecraft:block.note.hat ambient @a[tag=!PVE-InGame] ~ ~ ~ 1000000000
execute @e[tag=VMW,score_CT-TR_min=220,score_CT-TR=220] ~ ~ ~ playsound minecraft:block.note.hat ambient @a[tag=!PVE-InGame] ~ ~ ~ 1000000000
execute @e[tag=VMW,score_CT-TR_min=120,score_CT-TR=120] ~ ~ ~ playsound minecraft:block.note.hat ambient @a[tag=!PVE-InGame] ~ ~ ~ 1000000000
execute @e[tag=VMW,score_CT-TR_min=80,score_CT-TR=80] ~ ~ ~ playsound minecraft:block.note.hat ambient @a[tag=!PVE-InGame] ~ ~ ~ 1000000000
execute @e[tag=VMW,score_CT-TR_min=60,score_CT-TR=60] ~ ~ ~ playsound minecraft:block.note.hat ambient @a[tag=!PVE-InGame] ~ ~ ~ 1000000000
execute @e[tag=VMW,score_CT-TR_min=40,score_CT-TR=40] ~ ~ ~ playsound minecraft:block.note.hat ambient @a[tag=!PVE-InGame] ~ ~ ~ 1000000000
execute @e[tag=VMW,score_CT-TR_min=20,score_CT-TR=20] ~ ~ ~ playsound minecraft:block.note.hat ambient @a[tag=!PVE-InGame] ~ ~ ~ 1000000000
scoreboard players operation @e[tag=VMW] CT-RTC = @e[tag=VMW] CT-TR
scoreboard players operation @e[tag=VMW] CT-RTC /= §fdivision CT-RTC
execute @e[tag=VMW] ~ ~ ~ scoreboard players remove @s[score_CT-TR_min=1] CT-TR 1

#时间结束
execute @e[tag=VMW,score_CT-TR=0] ~ ~ ~ function vmwp:games/teamDM/settlement

#限制物品格
replaceitem entity @a[m=2,tag=!PVE-InGame] slot.inventory.3 minecraft:air
replaceitem entity @a[m=2,tag=!PVE-InGame] slot.hotbar.3 minecraft:stained_glass_pane 1 15 {display:{Name:"§fnone"}}
replaceitem entity @a[m=2,tag=!PVE-InGame] slot.hotbar.4 minecraft:stained_glass_pane 1 15 {display:{Name:"§fnone"}}
replaceitem entity @a[m=2,tag=!PVE-InGame] slot.hotbar.5 minecraft:stained_glass_pane 1 15 {display:{Name:"§fnone"}}
execute @a[tag=!PVE-InGame] ~ ~ ~ replaceitem entity @s[m=2,tag=!shop] slot.hotbar.6 minecraft:stained_glass_pane 1 15 {display:{Name:"§fnone"}}
#退出处理
scoreboard players set @a[score_leave_min=1] music 0
scoreboard players reset @a[score_leave_min=1] money
scoreboard players reset @a[score_leave_min=1] MainW
scoreboard players reset @a[score_leave_min=1] SecondaryW
scoreboard players reset @a[score_leave_min=1] CT-killC

scoreboard players tag @a[score_leave_min=1] remove Preparing
scoreboard players tag @a[score_leave_min=1] remove InGame
scoreboard players tag @a[score_leave_min=1] remove shop

scoreboard teams leave @a[score_leave_min=1]
scoreboard teams join Watch @a[score_leave_min=1]

gamemode 3 @a[team=Watch,m=!3]
effect @a[score_leave_min=1] 1 0 0 true
xp -10000L @a[score_leave_min=1]
execute @e[tag=VMW,score_CT-Map=0] ~ ~ ~ tp @a[team=Watch,score_leave_min=1] -265 68 1289 -90 0
execute @e[tag=VMW,score_CT-Map=1,score_CT-Map_min=1] ~ ~ ~ tp @a[team=Watch,score_leave_min=1] -366 78 1233 -180 0
execute @e[tag=VMW,score_CT-Map=2,score_CT-Map_min=2] ~ ~ ~ tp @a[team=Watch,score_leave_min=1] -375 76 1302 -90 0
execute @e[tag=VMW,score_CT-Map=3,score_CT-Map_min=3] ~ ~ ~ tp @a[team=Watch,score_leave_min=1] -388 78 1213 90 0
execute @e[tag=VMW,score_CT-Map=4,score_CT-Map_min=4] ~ ~ ~ tp @a[team=Watch,score_leave_min=1] -476 73 1581 -90 0
execute @e[tag=VMW,score_CT-Map=5,score_CT-Map_min=5] ~ ~ ~ tp @a[team=Watch,score_leave_min=1] -171 73 1596 90 0

clear @a[score_leave_min=1]
playsound minecraft:block.note.bass ambient @a[score_leave_min=1] ~ ~ ~ 1000000000 1
tellraw @a[score_leave_min=1] [{"text":"§7You leave the server! You will watch the whole game."}]
tellraw @a[score_leave_min=1] [{"text":"§f§l§nClick to join halfway","clickEvent":{"action":"run_command","value":"/trigger CT-Join set 1"}}]

scoreboard players set @a[score_leave_min=1] leave 0

#中途加入
scoreboard players enable @a[team=Watch] CT-Join
execute @a[score_CT-Join_min=1,team=Watch] ~ ~ ~ function vmwp:games/teamDM/halfwayJoin
scoreboard players reset @a[score_CT-Join_min=1] CT-Join

#终极武器
scoreboard players tag @a add GetUltimateW {Inventory:[{id:"mwc:russian_weapons_case",tag:{tag:["UltimateW"]}}]}

replaceitem entity @a[tag=GetUltimateW,score_S-UltimateW_min=0,score_S-UltimateW=0] slot.hotbar.0 mwc:gl06 1 0 {IUuidLeast:-5624438658342251273L,Ammo:1,IUuidMost:2795396047957476467L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,38B,-53B,61B,-27B,29B,9B,68B,115B,-79B,-15B,-6B,-42B,-4B,-119B,20B,-9B,0B,0B,19B,-101B,0B,0B,0B,2B,0B,0B,0B,0B,0B,0B,0B,9B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,-3B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,-5B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,64B,-96B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§4GL-06"}}
scoreboard players set @a[tag=GetUltimateW,score_S-UltimateW_min=0,score_S-UltimateW=0] MainW 100

replaceitem entity @a[tag=GetUltimateW,score_S-UltimateW_min=1,score_S-UltimateW=1] slot.hotbar.0 mwc:rpg7 1 0 {IUuidLeast:-6783022202184099568L,Ammo:1,IUuidMost:2727878700286364111L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,37B,-37B,95B,57B,-104B,-20B,73B,-49B,-95B,-35B,-35B,62B,-65B,58B,-103B,16B,0B,0B,19B,-98B,0B,0B,0B,2B,0B,0B,0B,0B,0B,0B,0B,15B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,-7B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,65B,32B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§4RPG-7"}}
scoreboard players set @a[tag=GetUltimateW,score_S-UltimateW_min=1,score_S-UltimateW=1] MainW 101

#replaceitem entity @a[tag=GetUltimateW,score_S-UltimateW_min=2,score_S-UltimateW=2] slot.hotbar.0 mwc:gpca1 1 0 {IUuidLeast:-7444059099945504498L,Ammo:4,IUuidMost:-3341448486415416402L,Instance:[B;-32B,83B,21B,-112B,-126B,43B,-31B,45B,117B,49B,126B,79B,17B,126B,62B,-127B,0B,0B,0B,9B,-47B,-96B,-54B,78B,43B,-15B,67B,-82B,-104B,-79B,99B,-80B,92B,-69B,-15B,14B,0B,0B,20B,99B,0B,0B,0B,5B,0B,0B,0B,0B,0B,0B,1B,30B,75B,99B,82B,108B,-118B,-87B,-71B,14B,-97B,-92B,100B,-74B,-111B,106B,61B,-40B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,20B,-30B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-99B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,4B,0B,65B,80B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§4GPC-A1"}}
scoreboard players set @a[tag=GetUltimateW,score_S-UltimateW_min=2,score_S-UltimateW=2] MainW 102

replaceitem entity @a[tag=GetUltimateW,score_S-UltimateW_min=3,score_S-UltimateW=3] slot.hotbar.0 mwc:vss_vintorez 1 0 {IUuidLeast:-8271220579771256398L,AtId:[I;4473,0,0,0,0,0,0,4459,4448,4412,0,0,4449,0,4673,0,0,0,0,0,0,0,0,0,0,4096,0],Ammo:20,IUuidMost:2831285840988489465L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,39B,74B,-65B,120B,-71B,-74B,70B,-7B,-115B,54B,-72B,-76B,-101B,-43B,113B,-78B,0B,0B,19B,65B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,63B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,121B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,19B,31B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,107B,0B,0B,17B,96B,0B,0B,17B,60B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,97B,0B,0B,0B,0B,0B,0B,18B,65B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,20B,0B,63B,-64B,0B,0B,127B,-1B,-1B,-1B,62B,15B,92B,41B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§4VSS"}}
scoreboard players set @a[tag=GetUltimateW,score_S-UltimateW_min=3,score_S-UltimateW=3] MainW 103

replaceitem entity @a[tag=GetUltimateW,score_S-UltimateW_min=4,score_S-UltimateW=4] slot.hotbar.0 mwc:m202 1 0 {IUuidLeast:-5646834837680465466L,Ammo:4,IUuidMost:3590677991825819471L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,49B,-44B,-90B,-101B,-3B,-105B,71B,79B,-79B,-94B,105B,-94B,34B,-63B,89B,-58B,0B,0B,19B,-97B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,9B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-111B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,-6B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,0B,0B,0B,0B,4B,0B,64B,-96B,0B,0B,0B,0B,0B,1B,61B,-11B,-62B,-113B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§4M202"}}
scoreboard players set @a[tag=GetUltimateW,score_S-UltimateW_min=4,score_S-UltimateW=4] MainW 104

replaceitem entity @a[tag=GetUltimateW,score_S-UltimateW_min=5,score_S-UltimateW=5] slot.hotbar.0 mwc:m32_mgl 1 0 {IUuidLeast:-8614578431577803302L,Ammo:6,AtId:[I;-1,-1,0,0,0,0,0,4356,0,4416,0,0,-1,4584,0,4607,0,4732,0,0,0,0,0,0,0,4096,0],IUuidMost:-336372285734894412L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-5B,84B,-9B,48B,52B,124B,68B,-76B,-120B,114B,-34B,-114B,-8B,16B,53B,-38B,0B,0B,19B,-99B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,125B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,4B,0B,0B,0B,0B,0B,0B,17B,64B,0B,0B,0B,0B,0B,0B,0B,0B,-1B,-1B,-1B,-1B,0B,0B,17B,-24B,0B,0B,0B,0B,0B,0B,17B,-1B,0B,0B,0B,0B,0B,0B,18B,124B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,6B,0B,64B,-64B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§4M32 MGL"}}
scoreboard players set @a[tag=GetUltimateW,score_S-UltimateW_min=5,score_S-UltimateW=5] MainW 105

replaceitem entity @a[tag=GetUltimateW,score_S-UltimateW_min=6,score_S-UltimateW=6] slot.hotbar.0 mwc:m134 1 0 {IUuidLeast:-7120371601867481734L,Ammo:60,IUuidMost:652440629080836363L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,9B,13B,-17B,75B,-99B,101B,73B,11B,-99B,47B,91B,-64B,-31B,-24B,-35B,122B,0B,0B,19B,-96B,0B,0B,0B,2B,0B,0B,0B,0B,0B,0B,0B,10B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-63B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,-23B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,0B,0B,0B,0B,60B,0B,63B,-128B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§4M134"}}
scoreboard players set @a[tag=GetUltimateW,score_S-UltimateW_min=6,score_S-UltimateW=6] MainW 106

#replaceitem entity @a[tag=GetUltimateW,score_S-UltimateW_min=7,score_S-UltimateW=7] slot.hotbar.0 mwc:fatman 1 0 {IUuidLeast:-6164030412886089568L,Ammo:1,IUuidMost:7902692299008657250L,Instance:[B;-32B,83B,21B,-112B,-126B,43B,-31B,45B,117B,49B,126B,79B,17B,126B,62B,-127B,0B,0B,0B,9B,109B,-84B,0B,-58B,-109B,-96B,71B,98B,-86B,116B,-10B,-1B,119B,56B,96B,-96B,0B,0B,20B,114B,0B,0B,0B,5B,0B,0B,0B,0B,0B,0B,1B,-32B,75B,99B,82B,108B,-118B,-87B,-71B,14B,-97B,-92B,100B,-74B,-111B,106B,61B,-40B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,20B,100B,0B,0B,21B,-79B,0B,0B,22B,99B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-99B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,65B,-96B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§4fat man"}}
scoreboard players set @a[tag=GetUltimateW,score_S-UltimateW_min=7,score_S-UltimateW=7] MainW 107

clear @a[tag=GetUltimateW] mwc:russian_weapons_case
scoreboard players tag @a[tag=GetUltimateW] remove GetUltimateW
