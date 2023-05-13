#Display器
execute @a[tag=InGame,team=CT] ~ ~ ~ title @s actionbar [{"text":"§aTeam:§9§lCT §bTime:"},{"score":{"objective":"CT-RTC","name":"@e[tag=VMW]"}},{"text":"s §3C4 time:"},{"score":{"objective":"CT-C4TC","name":"@e[tag=VMW]"}},{"text":"s §aCurrent score:"},{"score":{"objective":"CT-CTScore","name":"@e[tag=VMW]"},"color":"blue","bold":true},{"text":"/"},{"score":{"objective":"CT-TScore","name":"@e[tag=VMW]"},"color":"dark_red","bold":true},{"text":" §eYour money:"},{"score":{"objective":"money","name":"@s"}}]
execute @a[tag=InGame,team=T] ~ ~ ~ title @s actionbar [{"text":"§aTeam:§4§lT §bTime:"},{"score":{"objective":"CT-RTC","name":"@e[tag=VMW]"}},{"text":"s §3C4 time:"},{"score":{"objective":"CT-C4TC","name":"@e[tag=VMW]"}},{"text":"s §aCurrent score:"},{"score":{"objective":"CT-CTScore","name":"@e[tag=VMW]"},"color":"blue","bold":true},{"text":"/"},{"score":{"objective":"CT-TScore","name":"@e[tag=VMW]"},"color":"dark_red","bold":true},{"text":" §eYour money:"},{"score":{"objective":"money","name":"@s"}}]
execute @a[team=Watch] ~ ~ ~ title @s actionbar [{"text":"§bTime:"},{"score":{"objective":"CT-RTC","name":"@e[tag=VMW]"}},{"text":"s §3C4 time:"},{"score":{"objective":"CT-C4TC","name":"@e[tag=VMW]"}},{"text":"s §7Currently in Watch state §aCurrent score:"},{"score":{"objective":"CT-CTScore","name":"@e[tag=VMW]"},"color":"blue","bold":true},{"text":"/"},{"score":{"objective":"CT-TScore","name":"@e[tag=VMW]"},"color":"dark_red","bold":true}]
execute @a[team=,tag=!PVE-IG] ~ ~ ~ title @s actionbar [{"text":"§bTime:"},{"score":{"objective":"CT-RTC","name":"@e[tag=VMW]"}},{"text":"s §3C4 time:"},{"score":{"objective":"CT-C4TC","name":"@e[tag=VMW]"}},{"text":"s §cPlease wait for end §aCurrent score:"},{"score":{"objective":"CT-CTScore","name":"@e[tag=VMW]"},"color":"blue","bold":true},{"text":"/"},{"score":{"objective":"CT-TScore","name":"@e[tag=VMW]"},"color":"dark_red","bold":true}]

#shop函数
execute @e[tag=VMW,score_CT-TR_min=2000] ~ ~ ~ function vmwp:shop/weaponShop
execute @e[tag=VMW,score_CT-TR_min=2000] ~ ~ ~ function vmwp:shop/buyGive
execute @e[tag=VMW,score_CT-TR_min=1800,score_CT-TR=1800] ~ ~ ~ function vmwp:shop/buyGive
execute @e[tag=VMW,score_CT-TR_min=1200,score_CT-TR=1200] ~ ~ ~ function vmwp:shop/buyGive
execute @e[tag=VMW,score_CT-TR_min=600,score_CT-TR=600] ~ ~ ~ function vmwp:shop/buyGive
execute @e[tag=VMW,score_CT-C4T_min=600,score_CT-C4T=600] ~ ~ ~ function vmwp:shop/buyGive

#击杀
effect @a[score_CT-killC_min=4,tag=InGame] 1 0 0 true
replaceitem entity @a[score_CT-killC=1,tag=InGame] slot.armor.chest minecraft:leather_chestplate 1 0 {ench:[{lvl:1s,id:10s}],Unbreakable:1b,HideFlags:5,display:{color:16777215,Name:"§7§lLV1"},AttributeModifiers:[{UUIDMost:3618156733941892737L,UUIDLeast:-7584274578594019785L,Amount:10.0d,Slot:"chest",AttributeName:"generic.armor",Operation:0,Name:"generic.armor"}]}
replaceitem entity @a[score_CT-killC=3,score_CT-killC_min=2,tag=InGame] slot.armor.chest minecraft:leather_chestplate 1 0 {ench:[{lvl:1s,id:10s}],Unbreakable:1b,HideFlags:5,display:{color:33023,Name:"§b§lLV2"},AttributeModifiers:[{UUIDMost:3618156733941892737L,UUIDLeast:-7584274578594019785L,Amount:12.0d,Slot:"chest",AttributeName:"generic.armor",Operation:0,Name:"generic.armor"}]}
replaceitem entity @a[score_CT-killC=5,score_CT-killC_min=4,tag=InGame] slot.armor.chest minecraft:leather_chestplate 1 0 {ench:[{lvl:1s,id:10s}],Unbreakable:1b,HideFlags:5,display:{color:8388863,Name:"§5§lLV3"},AttributeModifiers:[{UUIDMost:3618156733941892737L,UUIDLeast:-7584274578594019785L,Amount:13.0d,Slot:"chest",AttributeName:"generic.armor",Operation:0,Name:"generic.armor"}]}
replaceitem entity @a[score_CT-killC_min=6,tag=InGame] slot.armor.chest minecraft:leather_chestplate 1 0 {ench:[{lvl:1s,id:10s}],Unbreakable:1b,HideFlags:5,display:{color:16711680,Name:"§4§lLV4"},AttributeModifiers:[{UUIDMost:3618156733941892737L,UUIDLeast:-7584274578594019785L,Amount:15.0d,Slot:"chest",AttributeName:"generic.armor",Operation:0,Name:"generic.armor"}]}

title @a[score_CT-KillJ_min=1,tag=InGame] title {"text":""}
title @a[score_CT-KillJ_min=1,tag=InGame] subtitle {"text":"                            §e§l+3 money"}
playsound minecraft:entity.arrow.hit_player ambient @a[score_CT-KillJ_min=1,tag=InGame] ~ ~ ~ 100000000000
tellraw @a[score_CT-killC_min=2,score_CT-killC=2,score_CT-KillJ_min=1,tag=InGame] [{"text":"§aYour armor been upgraded!"}]
tellraw @a[score_CT-killC_min=4,score_CT-killC=4,score_CT-KillJ_min=1,tag=InGame] [{"text":"§aYour armor been upgraded! §8It seems to become heavy!"}]
tellraw @a[score_CT-killC_min=6,score_CT-killC=6,score_CT-KillJ_min=1,tag=InGame] [{"text":"§aYour armor been upgraded!"}]
xp 1L @a[score_CT-KillJ_min=1,tag=InGame]
playsound minecraft:entity.player.death ambient @a[score_CT-KillJ_min=1,tag=InGame] ~ ~ ~ 10000000000
playsound minecraft:entity.player.levelup ambient @a[score_CT-killC_min=2,score_CT-killC=2,score_CT-KillJ_min=1,tag=InGame] ~ ~ ~ 10000000000
playsound minecraft:entity.player.levelup ambient @a[score_CT-killC_min=4,score_CT-killC=4,score_CT-KillJ_min=1,tag=InGame] ~ ~ ~ 10000000000
playsound minecraft:entity.player.levelup ambient @a[score_CT-killC_min=6,score_CT-killC=6,score_CT-KillJ_min=1,tag=InGame] ~ ~ ~ 10000000000

scoreboard players add @a[score_CT-KillJ_min=1,tag=InGame] money 3
scoreboard players reset @a[score_CT-KillJ_min=1,tag=InGame] CT-KillJ

#死亡处理
gamemode spectator @a[tag=InGame,score_CT-DeathJ_min=1]
tellraw @a[tag=InGame,score_CT-DeathJ_min=1] {"text":"§bDon't lose heart, There is still a chance for the next game..."}
scoreboard players set @a[tag=InGame,score_CT-DeathJ_min=1] MainW 0
scoreboard players set @a[tag=InGame,score_CT-DeathJ_min=1] SecondaryW 0

scoreboard players tag @a[team=T,tag=InGame,score_CT-DeathJ_min=1] add FallingC4 {Inventory:[{id:"minecraft:red_nether_brick"}]}
execute @a[tag=FallingC4] ~ ~ ~ summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:red_nether_brick",Count:1b,Damage:0s,tag:{ench:[{lvl:1s,id:16s}]}},Age:-32767,Owner:0,Health:999999999,Attributes:[{Name:"generic.maxHealth",Base:999999999}],Fire:-20,CustomNameVisible:1b,CustomName:"§4C4",Glowing:1b}
scoreboard players tag @a[tag=FallingC4] remove FallingC4

clear @a[tag=InGame,score_CT-DeathJ_min=1]
scoreboard players set @a[tag=InGame,score_CT-DeathJ_min=1] CT-DeathJ 0

#等待处理
execute @e[tag=VMW] ~ ~ ~ execute @s[tag=CT-WaitF] ~ ~ ~ effect @a[tag=!PVE-IG] 11 1 50 true
execute @e[tag=VMW] ~ ~ ~ execute @s[tag=CT-WaitF] ~ ~ ~ kill @e[type=armor_stand,tag=C4]
execute @e[tag=VMW] ~ ~ ~ execute @s[tag=CT-WaitF] ~ ~ ~ scoreboard players tag @s remove CT-C4Placed
execute @e[tag=VMW] ~ ~ ~ execute @s[tag=CT-WaitF] ~ ~ ~ scoreboard players tag @a[tag=shop] remove shop
execute @e[tag=VMW] ~ ~ ~ execute @s[tag=CT-WaitF] ~ ~ ~ kill @e[type=item]
execute @e[tag=VMW] ~ ~ ~ execute @s[tag=CT-WaitF] ~ ~ ~ gamemode 2 @a[tag=InGame,m=3]
scoreboard players remove @e[tag=VMW,score_CT-WaitT_min=1] CT-WaitT 1

#完胜
execute @e[tag=VMW,score_CT-CTScore_min=5] ~ ~ ~ execute @s[score_CT-WaitT=0] ~ ~ ~ execute @a[tag=!JoinHalfway] ~ ~ ~ scoreboard players add @s[team=CT,tag=InGame] note 150
execute @e[tag=VMW,score_CT-CTScore_min=5] ~ ~ ~ execute @s[score_CT-WaitT=0] ~ ~ ~ execute @a[tag=!JoinHalfway] ~ ~ ~ scoreboard players add @s[team=CT,tag=InGame] wins 1
execute @e[tag=VMW,score_CT-CTScore_min=5] ~ ~ ~ execute @s[score_CT-WaitT=0] ~ ~ ~ execute @a[tag=!JoinHalfway] ~ ~ ~ scoreboard players operation @s[team=CT,tag=InGame] money /= §fdivision money
execute @e[tag=VMW,score_CT-CTScore_min=5] ~ ~ ~ execute @s[score_CT-WaitT=0] ~ ~ ~ execute @a[tag=!JoinHalfway] ~ ~ ~ execute @s[team=CT,tag=InGame] ~ ~ ~ scoreboard players operation @s note += @s money
execute @e[tag=VMW,score_CT-CTScore_min=5] ~ ~ ~ execute @s[score_CT-WaitT=0] ~ ~ ~ execute @a[tag=!JoinHalfway] ~ ~ ~ scoreboard players add @s[team=T,tag=InGame] note 100
execute @e[tag=VMW,score_CT-CTScore_min=5] ~ ~ ~ execute @s[score_CT-WaitT=0] ~ ~ ~ execute @a[tag=!JoinHalfway] ~ ~ ~ scoreboard players remove @s[team=T,tag=InGame,score_wins_min=1] wins 1
execute @e[tag=VMW,score_CT-CTScore_min=5] ~ ~ ~ execute @s[score_CT-WaitT=0] ~ ~ ~ execute @a[tag=!JoinHalfway] ~ ~ ~ execute @s[team=CT,tag=InGame] ~ ~ ~ tellraw @s [{"text":"§eComplete victory! +150 note +"},{"score":{"objective":"money","name":"@s"},"color":"yellow"},{"text":" §enote"}]
execute @e[tag=VMW,score_CT-CTScore_min=5] ~ ~ ~ execute @s[score_CT-WaitT=0] ~ ~ ~ execute @a[tag=!JoinHalfway] ~ ~ ~ tellraw @s[team=T,tag=InGame] [{"text":"§eThe match is over! +100 note"}]
execute @e[tag=VMW,score_CT-CTScore_min=5] ~ ~ ~ execute @s[score_CT-WaitT=0] ~ ~ ~ scoreboard players reset @a[tag=!PVE-IG] money 0

execute @e[tag=VMW,score_CT-CTScore_min=5] ~ ~ ~ execute @s[score_CT-WaitT=0] ~ ~ ~ playsound minecraft:entity.firework.twinkle ambient @a[tag=!PVE-IG] ~ ~ ~ 100000000
execute @e[tag=VMW,score_CT-CTScore_min=5] ~ ~ ~ execute @s[score_CT-WaitT=0] ~ ~ ~ title @a[tag=!PVE-IG] title {"text":"§9§lCT §6Gain complete victory!"}
execute @e[tag=VMW,score_CT-CTScore_min=5] ~ ~ ~ execute @s[score_CT-WaitT=0] ~ ~ ~ title @a[tag=!PVE-IG] subtitle {"text":"§eNote have been distributed to game players"}
execute @e[tag=VMW,score_CT-CTScore_min=5] ~ ~ ~ execute @s[score_CT-WaitT=0] ~ ~ ~ function vmwp:games/blast/reset

execute @e[tag=VMW,score_CT-CTScore_min=5] ~ ~ ~ execute @s[score_CT-WaitT=0] ~ ~ ~ scoreboard players reset @s CT-TScore
execute @e[tag=VMW,score_CT-CTScore_min=5] ~ ~ ~ execute @s[score_CT-WaitT=0] ~ ~ ~ scoreboard players reset @s CT-CTScore


execute @e[tag=VMW,score_CT-TScore_min=5] ~ ~ ~ execute @s[score_CT-WaitT=0] ~ ~ ~ execute @a[tag=!JoinHalfway] ~ ~ ~ scoreboard players add @s[team=T,tag=InGame] note 150
execute @e[tag=VMW,score_CT-TScore_min=5] ~ ~ ~ execute @s[score_CT-WaitT=0] ~ ~ ~ execute @a[tag=!JoinHalfway] ~ ~ ~ scoreboard players add @s[team=T,tag=InGame] wins 1
execute @e[tag=VMW,score_CT-TScore_min=5] ~ ~ ~ execute @s[score_CT-WaitT=0] ~ ~ ~ execute @a[tag=!JoinHalfway] ~ ~ ~ scoreboard players operation @s[team=T,tag=InGame] money /= §fdivision money
execute @e[tag=VMW,score_CT-TScore_min=5] ~ ~ ~ execute @s[score_CT-WaitT=0] ~ ~ ~ execute @a[tag=!JoinHalfway] ~ ~ ~ execute @s[team=T,tag=InGame] ~ ~ ~ scoreboard players operation @s note += @s money
execute @e[tag=VMW,score_CT-TScore_min=5] ~ ~ ~ execute @s[score_CT-WaitT=0] ~ ~ ~ execute @a[tag=!JoinHalfway] ~ ~ ~ scoreboard players add @s[team=CT,tag=InGame] note 100
execute @e[tag=VMW,score_CT-TScore_min=5] ~ ~ ~ execute @s[score_CT-WaitT=0] ~ ~ ~ execute @a[tag=!JoinHalfway] ~ ~ ~ scoreboard players remove @s[team=CT,tag=InGame,score_wins_min=1] wins 1
execute @e[tag=VMW,score_CT-TScore_min=5] ~ ~ ~ execute @s[score_CT-WaitT=0] ~ ~ ~ execute @a[tag=!JoinHalfway] ~ ~ ~ execute @s[team=T,tag=InGame] ~ ~ ~ tellraw @s [{"text":"§eComplete victory! +150 note +"},{"score":{"objective":"money","name":"@s"},"color":"yellow"},{"text":" §enote"}]
execute @e[tag=VMW,score_CT-TScore_min=5] ~ ~ ~ execute @s[score_CT-WaitT=0] ~ ~ ~ execute @a[tag=!JoinHalfway] ~ ~ ~ tellraw @s[team=CT,tag=InGame] [{"text":"§eThe match is over! +100 note"}]
execute @e[tag=VMW,score_CT-TScore_min=5] ~ ~ ~ execute @s[score_CT-WaitT=0] ~ ~ ~ scoreboard players reset @a[tag=!PVE-IG] money 0

execute @e[tag=VMW,score_CT-TScore_min=5] ~ ~ ~ execute @s[score_CT-WaitT=0] ~ ~ ~ playsound minecraft:entity.firework.twinkle ambient @a[tag=!PVE-IG] ~ ~ ~ 100000000
execute @e[tag=VMW,score_CT-TScore_min=5] ~ ~ ~ execute @s[score_CT-WaitT=0] ~ ~ ~ title @a[tag=!PVE-IG] title {"text":"§4§lT §6Gain complete victory!"}
execute @e[tag=VMW,score_CT-TScore_min=5] ~ ~ ~ execute @s[score_CT-WaitT=0] ~ ~ ~ title @a[tag=!PVE-IG] subtitle {"text":"§eNote have been distributed to game players"}
execute @e[tag=VMW,score_CT-TScore_min=5] ~ ~ ~ execute @s[score_CT-WaitT=0] ~ ~ ~ function vmwp:games/blast/reset

execute @e[tag=VMW,score_CT-TScore_min=5] ~ ~ ~ execute @s[score_CT-WaitT=0] ~ ~ ~ scoreboard players reset @s CT-CTScore
execute @e[tag=VMW,score_CT-TScore_min=5] ~ ~ ~ execute @s[score_CT-WaitT=0] ~ ~ ~ scoreboard players reset @s CT-TScore

#等待末期
execute @e[tag=VMW] ~ ~ ~ execute @s[tag=CT-WaitF,score_CT-WaitT=0] ~ ~ ~ function vmwp:games/blast/startAGame
scoreboard players tag @e[score_CT-WaitT=0] remove CT-WaitF

#无人时强制结束
function vmwp:games/blast/reset unless @a[team=CT]
function vmwp:games/blast/reset unless @a[team=T]

#计时器
execute @e[tag=VMW,score_CT-TR_min=2520,score_CT-TR=2520] ~ ~ ~ function vmwp:games/blast/setMap
execute @e[tag=VMW,score_CT-TR_min=2520,score_CT-TR=2520] ~ ~ ~ playsound minecraft:block.note.hat ambient @a[tag=!PVE-IG] ~ ~ ~ 1000000000
execute @e[tag=VMW,score_CT-TR_min=2500,score_CT-TR=2500] ~ ~ ~ playsound minecraft:block.note.hat ambient @a[tag=!PVE-IG] ~ ~ ~ 1000000000
execute @e[tag=VMW,score_CT-TR_min=2480,score_CT-TR=2480] ~ ~ ~ playsound minecraft:block.note.hat ambient @a[tag=!PVE-IG] ~ ~ ~ 1000000000
execute @e[tag=VMW,score_CT-TR_min=2460,score_CT-TR=2460] ~ ~ ~ playsound minecraft:block.note.hat ambient @a[tag=!PVE-IG] ~ ~ ~ 1000000000
execute @e[tag=VMW,score_CT-TR_min=2440,score_CT-TR=2440] ~ ~ ~ playsound minecraft:block.note.hat ambient @a[tag=!PVE-IG] ~ ~ ~ 1000000000
execute @e[tag=VMW,score_CT-TR_min=2420,score_CT-TR=2420] ~ ~ ~ playsound minecraft:block.note.hat ambient @a[tag=!PVE-IG] ~ ~ ~ 1000000000
execute @e[tag=VMW,score_CT-TR_min=2400,score_CT-TR=2400] ~ ~ ~ playsound minecraft:block.note.pling ambient @a[tag=!PVE-IG] ~ ~ ~ 1000000000 2
execute @e[tag=VMW,score_CT-TR_min=2400,score_CT-TR=2400] ~ ~ ~ title @a[tag=!PVE-IG] title [{"text":"§a§lGO!"}]
execute @e[tag=VMW,score_CT-TR_min=2400] ~ ~ ~ kill @e[type=mwc:smokegrenade260]
execute @e[tag=VMW,score_CT-TR=2000] ~ ~ ~ scoreboard players tag @a[tag=shop] remove shop
execute @e[tag=VMW,score_CT-TR_min=420,score_CT-TR=420] ~ ~ ~ playsound minecraft:block.note.hat ambient @a[tag=!PVE-IG] ~ ~ ~ 1000000000
execute @e[tag=VMW,score_CT-TR_min=320,score_CT-TR=320] ~ ~ ~ playsound minecraft:block.note.hat ambient @a[tag=!PVE-IG] ~ ~ ~ 1000000000
execute @e[tag=VMW,score_CT-TR_min=220,score_CT-TR=220] ~ ~ ~ playsound minecraft:block.note.hat ambient @a[tag=!PVE-IG] ~ ~ ~ 1000000000
execute @e[tag=VMW,score_CT-TR_min=120,score_CT-TR=120] ~ ~ ~ playsound minecraft:block.note.hat ambient @a[tag=!PVE-IG] ~ ~ ~ 1000000000
execute @e[tag=VMW,score_CT-TR_min=80,score_CT-TR=80] ~ ~ ~ playsound minecraft:block.note.hat ambient @a[tag=!PVE-IG] ~ ~ ~ 1000000000
execute @e[tag=VMW,score_CT-TR_min=60,score_CT-TR=60] ~ ~ ~ playsound minecraft:block.note.hat ambient @a[tag=!PVE-IG] ~ ~ ~ 1000000000
execute @e[tag=VMW,score_CT-TR_min=40,score_CT-TR=40] ~ ~ ~ playsound minecraft:block.note.hat ambient @a[tag=!PVE-IG] ~ ~ ~ 1000000000
execute @e[tag=VMW,score_CT-TR_min=20,score_CT-TR=20] ~ ~ ~ playsound minecraft:block.note.hat ambient @a[tag=!PVE-IG] ~ ~ ~ 1000000000
scoreboard players operation @e[tag=VMW] CT-RTC = @e[tag=VMW] CT-TR
scoreboard players operation @e[tag=VMW] CT-RTC /= §fdivision CT-RTC
execute @e[tag=VMW] ~ ~ ~ execute @s[tag=!CT-WaitF] ~ ~ ~ scoreboard players remove @s[tag=!CT-C4Placed,score_CT-TR_min=1] CT-TR 1

#人数赋值
scoreboard players operation @e[tag=VMW] CT-CTN = §fCT-CTN CT-CTN
scoreboard players operation @e[tag=VMW] CT-TN = §fCT-TN CT-TN

#关于c4
scoreboard players tag @e[type=item] add C4Drops {Item:{id:"minecraft:red_nether_brick",tag:{ench:[{lvl:1s,id:16s}]}}}
execute @e[tag=C4Drops,type=item] ~ ~ ~ execute @s[tag=!Display] ~ ~ ~ tellraw @a[team=T] {"text":"§cThe bomb has fallen!"}
entitydata @e[type=item,tag=C4Drops] {Tags:["C4Drops","Display"],Item:{id:"minecraft:red_nether_brick",Count:1b,Damage:0s,tag:{ench:[{lvl:1s,id:16s}]}},Age:-32767,Owner:0,Health:999999999,Attributes:[{Name:"generic.maxHealth",Base:999999999}],Fire:-20,CustomNameVisible:1b,CustomName:"§4C4",Glowing:1b}
execute @e[type=item,tag=C4Drops] ~ ~ ~ scoreboard players tag @a[r=1,team=T,m=2] add PickUpC4
replaceitem entity @a[tag=PickUpC4] slot.hotbar.4 minecraft:red_nether_brick 1 0 {ench:[{lvl:1s,id:16s}],HideFlags:1,display:{Name:"§4C4 bomb (press shift in the red circle)"}}
execute @a[tag=PickUpC4] ~ ~ ~ kill @e[type=item,tag=C4Drops,c=1]
execute @a[tag=PickUpC4] ~ ~ ~ tellraw @a[team=T] {"text":"§aThe bomb has been picked up!"}
scoreboard players tag @a[tag=PickUpC4] remove PickUpC4

#C4判定


execute @a[team=T,tag=InGame,score_CT-Sneak_min=1] ~ ~ ~ detect ~ ~-2 ~ minecraft:structure_block -1 scoreboard players tag @s add Placing {SelectedItem:{id:"minecraft:red_nether_brick",tag:{ench:[{lvl:1s,id:16s}]}}}
scoreboard players add @a[team=T,tag=Placing] CT-RunC4 1
scoreboard players reset @a[score_CT-RunC4_min=1,tag=!Placing,team=T] CT-RunC4
scoreboard players tag @a[tag=Placing] remove Placing 
title @a[score_CT-RunC4_min=5,score_CT-RunC4=5,team=T] title [{"text":"§aInstalling..."}]
execute @a[score_CT-RunC4_min=10,score_CT-RunC4=10,team=T] ~ ~ ~ playsound minecraft:block.anvil.use ambient @a ~ ~ ~ 1 1
clear @a[score_CT-RunC4_min=100,team=T] minecraft:red_nether_brick
scoreboard players add @a[score_CT-RunC4_min=100,team=T] money 3
title @a[score_CT-RunC4_min=100,team=T] title {"text":""}
title @a[score_CT-RunC4_min=100,team=T] subtitle {"text":"                            §e§l+3 money"}
execute @a[score_CT-RunC4_min=100,team=T] ~ ~ ~ summon minecraft:armor_stand ~ ~-0.7 ~ {Tags:["C4"],Invisible:1b,HandItems:[{Slot:0b,id:"red_nether_brick",Count:1s,tag:{ench:[{lvl:1s,id:16s}]},Damage:0s},{}],NoGravity:1b,Pose:{RightArm:[0.0f,270.0f,346.0f]},Silent:1b,Marker:1b,Invisible:1b,Glowing:1b}
execute @e[tag=VMW,score_CT-C4T=0] ~ ~ ~ execute @e[tag=C4] ~ ~ ~ scoreboard players set @e[tag=VMW] CT-C4T 1000
execute @e[tag=VMW,score_CT-C4T_min=1000] ~ ~ ~ execute @e[tag=C4] ~ ~ ~ scoreboard players reset @a[score_CT-RunC4_min=100] CT-RunC4
execute @e[tag=VMW,score_CT-C4T_min=1000] ~ ~ ~ execute @e[tag=C4] ~ ~ ~ scoreboard players tag @e[tag=VMW] add CT-C4Placed
execute @e[tag=VMW,score_CT-C4T_min=1000] ~ ~ ~ execute @e[tag=C4] ~ ~ ~ scoreboard players tag @a[tag=shop] remove shop
execute @e[tag=VMW,score_CT-C4T_min=1000] ~ ~ ~ execute @e[tag=C4] ~ ~ ~ playsound minecraft:entity.elder_guardian.curse ambient @a[tag=!PVE-IG] ~ ~ ~ 1000000 0.7
execute @e[tag=VMW,score_CT-C4T_min=1000] ~ ~ ~ execute @e[tag=C4] ~ ~ ~ tellraw @a[tag=!PVE-IG] {"text":"§cBomb installed!"}


execute @e[type=armor_stand,tag=C4] ~ ~ ~ execute @a[team=CT,tag=InGame,score_CT-Sneak_min=1,r=2,m=2] ~ ~ ~ scoreboard players tag @s add Removing
scoreboard players add @a[team=CT,tag=Removing] CT-RunC4 1
scoreboard players reset @a[score_CT-RunC4_min=1,tag=!Removing,team=CT] CT-RunC4
scoreboard players tag @a[tag=Removing] remove Removing 
title @a[score_CT-RunC4_min=5,score_CT-RunC4=5,team=CT] title [{"text":"§a§lC4Removing..."}]
execute @a[score_CT-RunC4_min=10,score_CT-RunC4=10,team=CT] ~ ~ ~ playsound minecraft:entity.slime.jump ambient @a ~ ~ ~ 2 1
scoreboard players add @a[score_CT-RunC4_min=100,team=CT] money 3
title @a[score_CT-RunC4_min=100,team=CT] title {"text":""}
title @a[score_CT-RunC4_min=100,team=CT] subtitle {"text":"                            §e§l+3 money"}
execute @a[score_CT-RunC4_min=100,team=CT] ~ ~ ~ kill @e[tag=C4,type=armor_stand]
execute @a[score_CT-RunC4_min=100,team=CT] ~ ~ ~ scoreboard players tag @e[tag=VMW] remove CT-C4Placed
execute @a[score_CT-RunC4_min=100,team=CT] ~ ~ ~ function vmwp:games/blast/ctWin
execute @a[score_CT-RunC4_min=100,team=CT] ~ ~ ~ title @a[tag=!PVE-IG] subtitle {"text":"§bC4 removed"}
execute @a[score_CT-RunC4_min=100,team=CT] ~ ~ ~ playsound minecraft:entity.enderdragon.growl ambient @a[tag=!PVE-IG] ~ ~ ~ 10000000000 2
execute @a[score_CT-RunC4_min=100,team=CT] ~ ~ ~ scoreboard players reset @s CT-RunC4

scoreboard players set @a[score_CT-Sneak_min=1] CT-Sneak 0

#C4计时器
execute @e[tag=VMW,score_CT-C4T_min=420,score_CT-C4T=420] ~ ~ ~ execute @e[tag=C4,type=armor_stand] ~ ~ ~ playsound minecraft:block.note.xylophone ambient @a ~ ~ ~ 3 2
execute @e[tag=VMW,score_CT-C4T_min=320,score_CT-C4T=320] ~ ~ ~ execute @e[tag=C4,type=armor_stand] ~ ~ ~ playsound minecraft:block.note.xylophone ambient @a ~ ~ ~ 3 2
execute @e[tag=VMW,score_CT-C4T_min=220,score_CT-C4T=220] ~ ~ ~ execute @e[tag=C4,type=armor_stand] ~ ~ ~ playsound minecraft:block.note.xylophone ambient @a ~ ~ ~ 3 2
execute @e[tag=VMW,score_CT-C4T_min=120,score_CT-C4T=120] ~ ~ ~ execute @e[tag=C4,type=armor_stand] ~ ~ ~ playsound minecraft:block.note.xylophone ambient @a ~ ~ ~ 3 2
execute @e[tag=VMW,score_CT-C4T_min=100,score_CT-C4T=100] ~ ~ ~ execute @e[tag=C4,type=armor_stand] ~ ~ ~ playsound minecraft:block.note.xylophone ambient @a ~ ~ ~ 3 2
execute @e[tag=VMW,score_CT-C4T_min=80,score_CT-C4T=80] ~ ~ ~ execute @e[tag=C4,type=armor_stand] ~ ~ ~ playsound minecraft:block.note.xylophone ambient @a ~ ~ ~ 3 2
execute @e[tag=VMW,score_CT-C4T_min=60,score_CT-C4T=60] ~ ~ ~ execute @e[tag=C4,type=armor_stand] ~ ~ ~ playsound minecraft:block.note.xylophone ambient @a ~ ~ ~ 3 2
execute @e[tag=VMW,score_CT-C4T_min=40,score_CT-C4T=40] ~ ~ ~ execute @e[tag=C4,type=armor_stand] ~ ~ ~ playsound minecraft:block.note.xylophone ambient @a ~ ~ ~ 3 2
execute @e[tag=VMW,score_CT-C4T_min=20,score_CT-C4T=20] ~ ~ ~ execute @e[tag=C4,type=armor_stand] ~ ~ ~ playsound minecraft:block.note.xylophone ambient @a ~ ~ ~ 3 2
scoreboard players operation @e[tag=VMW] CT-C4TC = @e[tag=VMW] CT-C4T
scoreboard players operation @e[tag=VMW] CT-C4TC /= §fdivision CT-C4TC
execute @e[tag=VMW] ~ ~ ~ execute @s[tag=!CT-WaitF] ~ ~ ~ scoreboard players remove @s[tag=CT-C4Placed,score_CT-C4T_min=1] CT-C4T 1
execute @e[tag=VMW] ~ ~ ~ execute @s[tag=CT-C4Placed,score_CT-C4T=0] ~ ~ ~ execute @e[tag=C4,type=armor_stand] ~ ~ ~ particle hugeexplosion ~ ~2 ~ 1 1 1 0 5 force
execute @e[tag=VMW] ~ ~ ~ execute @s[tag=CT-C4Placed,score_CT-C4T=0] ~ ~ ~ function vmwp:games/blast/tWin
execute @e[tag=VMW] ~ ~ ~ execute @s[tag=CT-C4Placed,score_CT-C4T=0] ~ ~ ~ title @a[tag=!PVE-IG] subtitle {"text":"§bSuccessfully detonated C4"}
execute @e[tag=VMW] ~ ~ ~ execute @s[tag=CT-C4Placed,score_CT-C4T=0] ~ ~ ~ playsound minecraft:entity.experience_orb.pickup ambient @a[tag=!PVE-IG] ~ ~ ~ 10000000
execute @e[tag=VMW] ~ ~ ~ execute @s[tag=CT-C4Placed,score_CT-C4T=0] ~ ~ ~ playsound minecraft:entity.generic.explode ambient @a[tag=!PVE-IG] ~ ~ ~ 100000000 0
execute @e[tag=VMW] ~ ~ ~ execute @s[tag=CT-C4Placed,score_CT-C4T=0] ~ ~ ~ kill @e[tag=C4,type=armor_stand]
execute @e[tag=VMW] ~ ~ ~ execute @s[tag=CT-C4Placed,score_CT-C4T=0] ~ ~ ~ scoreboard players tag @s remove CT-C4Placed

#时间结束
execute @e[tag=VMW,score_CT-TR=0] ~ ~ ~ execute @s[tag=!CT-WaitF] ~ ~ ~ playsound minecraft:entity.elder_guardian.curse ambient @a[tag=!PVE-IG] ~ ~ ~ 10000000000 
execute @e[tag=VMW,score_CT-TR=0] ~ ~ ~ execute @s[tag=!CT-WaitF] ~ ~ ~ title @a[tag=!PVE-IG] subtitle {"text":"§bTime out"}
execute @e[tag=VMW,score_CT-TR=0] ~ ~ ~ execute @s[tag=!CT-WaitF] ~ ~ ~ function vmwp:games/blast/ctWin

#击败队伍
execute @e[tag=VMW,score_CT-CTN=0,score_CT-TR=2399] ~ ~ ~ execute @s[tag=!CT-WaitF] ~ ~ ~ playsound minecraft:entity.cat.ambient ambient @a[tag=!PVE-IG] ~ ~ ~ 100000000 0
execute @e[tag=VMW,score_CT-CTN=0,score_CT-TR=2399] ~ ~ ~ execute @s[tag=!CT-WaitF] ~ ~ ~ title @a[tag=!PVE-IG] subtitle {"text":"§bAll CT players have been killed"}
execute @e[tag=VMW,score_CT-CTN=0,score_CT-TR=2399] ~ ~ ~ execute @s[tag=!CT-WaitF] ~ ~ ~ function vmwp:games/blast/tWin

execute @e[tag=VMW,score_CT-TN=0,score_CT-TR=2399] ~ ~ ~ execute @s[tag=!CT-C4Placed] ~ ~ ~ execute @s[tag=!CT-WaitF] ~ ~ ~ playsound minecraft:entity.cat.ambient ambient @a[tag=!PVE-IG] ~ ~ ~ 100000000 0
execute @e[tag=VMW,score_CT-TN=0,score_CT-TR=2399] ~ ~ ~ execute @s[tag=!CT-C4Placed] ~ ~ ~ execute @s[tag=!CT-WaitF] ~ ~ ~ title @a[tag=!PVE-IG] subtitle {"text":"§bAll T players have been killed"}
execute @e[tag=VMW,score_CT-TN=0,score_CT-TR=2399] ~ ~ ~ execute @s[tag=!CT-C4Placed] ~ ~ ~ execute @s[tag=!CT-WaitF] ~ ~ ~ function vmwp:games/blast/ctWin

#限制物品格
replaceitem entity @a[m=2,tag=!PVE-IG] slot.inventory.3 minecraft:air
replaceitem entity @a[m=2,tag=!PVE-IG] slot.hotbar.3 minecraft:stained_glass_pane 1 15 {display:{Name:"§fnone"}}
replaceitem entity @a[m=2,team=CT] slot.hotbar.4 minecraft:stained_glass_pane 1 15 {display:{Name:"§fnone"}}
replaceitem entity @a[m=2,tag=!PVE-IG] slot.hotbar.5 minecraft:stained_glass_pane 1 15 {display:{Name:"§fnone"}}
execute @a[tag=!PVE-IG] ~ ~ ~ replaceitem entity @s[m=2,tag=!shop] slot.hotbar.6 minecraft:stained_glass_pane 1 15 {display:{Name:"§fnone"}}
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
execute @a[score_CT-Join_min=1,team=Watch] ~ ~ ~ function vmwp:games/blast/halfwayJoin
scoreboard players reset @a[score_CT-Join_min=1] CT-Join

#防跑图
execute @e[tag=VMW,score_CT-Map=0] ~ ~ ~ effect @a[tag=InGame,m=2,x=-223,y=120,z=1300,rm=130] 20 1 1 true
execute @e[tag=VMW,score_CT-Map=1,score_CT-Map_min=1] ~ ~ ~ effect @a[tag=InGame,m=2,x=-330,y=120,z=1234,rm=100] 20 1 1 true
execute @e[tag=VMW,score_CT-Map=2,score_CT-Map_min=2] ~ ~ ~ effect @a[tag=InGame,m=2,x=-339,y=120,z=1341,rm=100] 20 1 1 true
execute @e[tag=VMW,score_CT-Map=3,score_CT-Map_min=3] ~ ~ ~ effect @a[tag=InGame,m=2,x=-426,y=120,z=1199,rm=90] 20 1 1 true
execute @e[tag=VMW,score_CT-Map=4,score_CT-Map_min=4] ~ ~ ~ effect @a[tag=InGame,m=2,x=-452,y=120,z=1568,rm=110] 20 1 1 true
execute @e[tag=VMW,score_CT-Map=5,score_CT-Map_min=5] ~ ~ ~ effect @a[tag=InGame,m=2,x=-231,y=120,z=1545,rm=155] 20 1 1 true

#终极武器
scoreboard players tag @a add GetUltimateW {Inventory:[{id:"mwc:russian_weapons_case",tag:{tag:["UltimateW"]}}]}

replaceitem entity @a[tag=GetUltimateW,score_S-UltimateW_min=0,score_S-UltimateW=0] slot.hotbar.0 mwc:gl06 1 0 {IUuidLeast:-5624438658342251273L,Ammo:1,IUuidMost:2795396047957476467L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,38B,-53B,61B,-27B,29B,9B,68B,115B,-79B,-15B,-6B,-42B,-4B,-119B,20B,-9B,0B,0B,19B,-101B,0B,0B,0B,2B,0B,0B,0B,0B,0B,0B,0B,9B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,-3B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,-5B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,64B,-96B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§4GL-06"}}
scoreboard players set @a[tag=GetUltimateW,score_S-UltimateW_min=0,score_S-UltimateW=0] MainW 100

replaceitem entity @a[tag=GetUltimateW,score_S-UltimateW_min=1,score_S-UltimateW=1] slot.hotbar.0 mwc:rpg7 1 0 {IUuidLeast:-6783022202184099568L,Ammo:1,IUuidMost:2727878700286364111L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,37B,-37B,95B,57B,-104B,-20B,73B,-49B,-95B,-35B,-35B,62B,-65B,58B,-103B,16B,0B,0B,19B,-98B,0B,0B,0B,2B,0B,0B,0B,0B,0B,0B,0B,15B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,-7B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,65B,32B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§4RPG-7"}}
scoreboard players set @a[tag=GetUltimateW,score_S-UltimateW_min=1,score_S-UltimateW=1] MainW 101

#replaceitem entity @a[tag=GetUltimateW,score_S-UltimateW_min=2,score_S-UltimateW=2] slot.hotbar.0 mwc:gpca1 1 0 {IUuidLeast:-7444059099945504498L,Ammo:4,IUuidMost:-3341448486415416402L,Instance:[B;-32B,83B,21B,-112B,-126B,43B,-31B,45B,117B,49B,126B,79B,17B,126B,62B,-127B,0B,0B,0B,9B,-47B,-96B,-54B,78B,43B,-15B,67B,-82B,-104B,-79B,99B,-80B,92B,-69B,-15B,14B,0B,0B,20B,99B,0B,0B,0B,5B,0B,0B,0B,0B,0B,0B,1B,30B,75B,99B,82B,108B,-118B,-87B,-71B,14B,-97B,-92B,100B,-74B,-111B,106B,61B,-40B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,20B,-30B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-99B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,4B,0B,65B,80B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§4GPC-A1"}}
scoreboard players set @a[tag=GetUltimateW,score_S-UltimateW_min=2,score_S-UltimateW=2] MainW 102

replaceitem entity @a[tag=获得特殊武器,score_选择的特殊武器_min=3,score_选择的特殊武器=3] slot.hotbar.0 mwc:vss_vintorez 1 0 {IUuidLeast:-8271220579771256398L,AtId:[I;4473,0,0,0,0,0,0,4459,4448,4412,0,0,4449,0,4673,0,0,0,0,0,0,0,0,0,0,4096,0],Ammo:20,IUuidMost:2831285840988489465L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,39B,74B,-65B,120B,-71B,-74B,70B,-7B,-115B,54B,-72B,-76B,-101B,-43B,113B,-78B,0B,0B,19B,65B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,63B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,121B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,19B,31B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,107B,0B,0B,17B,96B,0B,0B,17B,60B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,97B,0B,0B,0B,0B,0B,0B,18B,65B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,20B,0B,63B,-64B,0B,0B,127B,-1B,-1B,-1B,62B,15B,92B,41B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§4VSS"}}
scoreboard players set @a[tag=GetUltimateW,score_S-UltimateW_min=3,score_S-UltimateW=3] MainW 103

replaceitem entity @a[tag=获得特殊武器,score_选择的特殊武器_min=4,score_选择的特殊武器=4] slot.hotbar.0 mwc:m202 1 0 {IUuidLeast:-5646834837680465466L,Ammo:4,IUuidMost:3590677991825819471L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,49B,-44B,-90B,-101B,-3B,-105B,71B,79B,-79B,-94B,105B,-94B,34B,-63B,89B,-58B,0B,0B,19B,-97B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,9B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-111B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,-6B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,0B,0B,0B,0B,4B,0B,64B,-96B,0B,0B,0B,0B,0B,1B,61B,-11B,-62B,-113B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§4M202"}}
scoreboard players set @a[tag=GetUltimateW,score_S-UltimateW_min=4,score_S-UltimateW=4] MainW 104

replaceitem entity @a[tag=获得特殊武器,score_选择的特殊武器_min=5,score_选择的特殊武器=5] slot.hotbar.0 mwc:m32_mgl 1 0 {IUuidLeast:-8614578431577803302L,Ammo:6,AtId:[I;-1,-1,0,0,0,0,0,4356,0,4416,0,0,-1,4584,0,4607,0,4732,0,0,0,0,0,0,0,4096,0],IUuidMost:-336372285734894412L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-5B,84B,-9B,48B,52B,124B,68B,-76B,-120B,114B,-34B,-114B,-8B,16B,53B,-38B,0B,0B,19B,-99B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,125B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,4B,0B,0B,0B,0B,0B,0B,17B,64B,0B,0B,0B,0B,0B,0B,0B,0B,-1B,-1B,-1B,-1B,0B,0B,17B,-24B,0B,0B,0B,0B,0B,0B,17B,-1B,0B,0B,0B,0B,0B,0B,18B,124B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,6B,0B,64B,-64B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§4M32 MGL"}}
scoreboard players set @a[tag=GetUltimateW,score_S-UltimateW_min=5,score_S-UltimateW=5] MainW 105

replaceitem entity @a[tag=获得特殊武器,score_选择的特殊武器_min=6,score_选择的特殊武器=6] slot.hotbar.0 mwc:m134 1 0 {IUuidLeast:-7120371601867481734L,Ammo:60,IUuidMost:652440629080836363L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,9B,13B,-17B,75B,-99B,101B,73B,11B,-99B,47B,91B,-64B,-31B,-24B,-35B,122B,0B,0B,19B,-96B,0B,0B,0B,2B,0B,0B,0B,0B,0B,0B,0B,10B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-63B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,-23B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,0B,0B,0B,0B,60B,0B,63B,-128B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§4M134"}}
scoreboard players set @a[tag=GetUltimateW,score_S-UltimateW_min=6,score_S-UltimateW=6] MainW 106

#replaceitem entity @a[tag=GetUltimateW,score_S-UltimateW_min=7,score_S-UltimateW=7] slot.hotbar.0 mwc:fatman 1 0 {IUuidLeast:-6164030412886089568L,Ammo:1,IUuidMost:7902692299008657250L,Instance:[B;-32B,83B,21B,-112B,-126B,43B,-31B,45B,117B,49B,126B,79B,17B,126B,62B,-127B,0B,0B,0B,9B,109B,-84B,0B,-58B,-109B,-96B,71B,98B,-86B,116B,-10B,-1B,119B,56B,96B,-96B,0B,0B,20B,114B,0B,0B,0B,5B,0B,0B,0B,0B,0B,0B,1B,-32B,75B,99B,82B,108B,-118B,-87B,-71B,14B,-97B,-92B,100B,-74B,-111B,106B,61B,-40B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,20B,100B,0B,0B,21B,-79B,0B,0B,22B,99B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-99B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,65B,-96B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§4fat man"}}
scoreboard players set @a[tag=GetUltimateW,score_S-UltimateW_min=7,score_S-UltimateW=7] MainW 107

#replaceitem entity @a[tag=GetUltimateW,score_MainW_min=100,score_MainW=100] slot.inventory.1 mwc:grenade40mm 64 0
#replaceitem entity @a[tag=GetUltimateW,score_MainW_min=101,score_MainW=101] slot.inventory.1 mwc:rpg7_rocket 64 0
#replaceitem entity @a[tag=GetUltimateW,score_MainW_min=102,score_MainW=102] slot.inventory.1 mwc:plasmacapsule 64 0
#replaceitem entity @a[tag=GetUltimateW,score_MainW_min=103,score_MainW=103] slot.inventory.1 mwc:asvalmag 6 0 {Ammo:20}
#replaceitem entity @a[tag=GetUltimateW,score_MainW_min=104,score_MainW=104] slot.inventory.1 mwc:m202rocket 64 0
#replaceitem entity @a[tag=GetUltimateW,score_MainW_min=105,score_MainW=105] slot.inventory.1 mwc:grenade40mm 64 0
#replaceitem entity @a[tag=GetUltimateW,score_MainW_min=106,score_MainW=106] slot.inventory.1 mwc:m134mag 6 0 {Ammo:60}
#replaceitem entity @a[tag=GetUltimateW,score_MainW_min=107,score_MainW=107] slot.inventory.1 mwc:mininuke 64 0

clear @a[tag=GetUltimateW] mwc:russian_weapons_case
scoreboard players tag @a[tag=GetUltimateW] remove GetUltimateW



replaceitem entity @a[tag=InGame,score_MainW_min=100,score_MainW=100] slot.inventory.1 mwc:grenade40mm 16 0
replaceitem entity @a[tag=InGame,score_MainW_min=101,score_MainW=101] slot.inventory.1 mwc:rpg7_rocket 2 0
replaceitem entity @a[tag=InGame,score_MainW_min=102,score_MainW=102] slot.inventory.1 mwc:plasmacapsule 64 0
replaceitem entity @a[tag=InGame,score_MainW_min=103,score_MainW=103] slot.inventory.1 mwc:asvalmag 6 0 {Ammo:20}
replaceitem entity @a[tag=InGame,score_MainW_min=104,score_MainW=104] slot.inventory.1 mwc:m202rocket 4 0
replaceitem entity @a[tag=InGame,score_MainW_min=105,score_MainW=105] slot.inventory.1 mwc:grenade40mm 16 0
replaceitem entity @a[tag=InGame,score_MainW_min=106,score_MainW=106] slot.inventory.1 mwc:m134mag 6 0 {Ammo:60}
replaceitem entity @a[tag=InGame,score_MainW_min=107,score_MainW=107] slot.inventory.1 mwc:mininuke 64 0

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
