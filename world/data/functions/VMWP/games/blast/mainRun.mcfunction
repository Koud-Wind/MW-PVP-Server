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
execute @e[tag=VMW,score_CT-CTScore_min=5] ~ ~ ~ execute @s[score_CT-WaitT=0] ~ ~ ~ scoreboard players add @a[team=CT,tag=InGame] note 150
execute @e[tag=VMW,score_CT-CTScore_min=5] ~ ~ ~ execute @s[score_CT-WaitT=0] ~ ~ ~ scoreboard players add @a[team=CT,tag=InGame] wins 1
execute @e[tag=VMW,score_CT-CTScore_min=5] ~ ~ ~ execute @s[score_CT-WaitT=0] ~ ~ ~ scoreboard players operation @a[team=CT,tag=InGame] money /= §fdivision money
execute @e[tag=VMW,score_CT-CTScore_min=5] ~ ~ ~ execute @s[score_CT-WaitT=0] ~ ~ ~ execute @a[team=CT,tag=InGame] ~ ~ ~ scoreboard players operation @s note += @s money
execute @e[tag=VMW,score_CT-CTScore_min=5] ~ ~ ~ execute @s[score_CT-WaitT=0] ~ ~ ~ scoreboard players add @a[team=T,tag=InGame] note 100
execute @e[tag=VMW,score_CT-CTScore_min=5] ~ ~ ~ execute @s[score_CT-WaitT=0] ~ ~ ~ scoreboard players remove @a[team=T,tag=InGame,score_wins_min=1] wins 1
execute @e[tag=VMW,score_CT-CTScore_min=5] ~ ~ ~ execute @s[score_CT-WaitT=0] ~ ~ ~ execute @a[team=CT,tag=InGame] ~ ~ ~ tellraw @s [{"text":"§eComplete victory! +150 note +"},{"score":{"objective":"money","name":"@s"},"color":"yellow"},{"text":" §enote"}]
execute @e[tag=VMW,score_CT-CTScore_min=5] ~ ~ ~ execute @s[score_CT-WaitT=0] ~ ~ ~ tellraw @a[team=T,tag=InGame] [{"text":"§eThe match is over! +100 note"}]
execute @e[tag=VMW,score_CT-CTScore_min=5] ~ ~ ~ execute @s[score_CT-WaitT=0] ~ ~ ~ scoreboard players reset @a[tag=!PVE-IG] money 0

execute @e[tag=VMW,score_CT-CTScore_min=5] ~ ~ ~ execute @s[score_CT-WaitT=0] ~ ~ ~ playsound minecraft:entity.firework.twinkle ambient @a[tag=!PVE-IG] ~ ~ ~ 100000000
execute @e[tag=VMW,score_CT-CTScore_min=5] ~ ~ ~ execute @s[score_CT-WaitT=0] ~ ~ ~ title @a[tag=!PVE-IG] title {"text":"§9§lCT §6Gain complete victory!"}
execute @e[tag=VMW,score_CT-CTScore_min=5] ~ ~ ~ execute @s[score_CT-WaitT=0] ~ ~ ~ title @a[tag=!PVE-IG] subtitle {"text":"§eNote have been distributed to game players"}
execute @e[tag=VMW,score_CT-CTScore_min=5] ~ ~ ~ execute @s[score_CT-WaitT=0] ~ ~ ~ function vmwp:games/blast/reset

execute @e[tag=VMW,score_CT-CTScore_min=5] ~ ~ ~ execute @s[score_CT-WaitT=0] ~ ~ ~ scoreboard players reset @s CT-TScore
execute @e[tag=VMW,score_CT-CTScore_min=5] ~ ~ ~ execute @s[score_CT-WaitT=0] ~ ~ ~ scoreboard players reset @s CT-CTScore


execute @e[tag=VMW,score_CT-TScore_min=5] ~ ~ ~ execute @s[score_CT-WaitT=0] ~ ~ ~ scoreboard players add @a[team=T,tag=InGame] note 150
execute @e[tag=VMW,score_CT-TScore_min=5] ~ ~ ~ execute @s[score_CT-WaitT=0] ~ ~ ~ scoreboard players add @a[team=T,tag=InGame] wins 1
execute @e[tag=VMW,score_CT-TScore_min=5] ~ ~ ~ execute @s[score_CT-WaitT=0] ~ ~ ~ scoreboard players operation @a[team=T,tag=InGame] money /= §fdivision money
execute @e[tag=VMW,score_CT-TScore_min=5] ~ ~ ~ execute @s[score_CT-WaitT=0] ~ ~ ~ execute @a[team=T,tag=InGame] ~ ~ ~ scoreboard players operation @s note += @s money
execute @e[tag=VMW,score_CT-TScore_min=5] ~ ~ ~ execute @s[score_CT-WaitT=0] ~ ~ ~ scoreboard players add @a[team=CT,tag=InGame] note 100
execute @e[tag=VMW,score_CT-TScore_min=5] ~ ~ ~ execute @s[score_CT-WaitT=0] ~ ~ ~ scoreboard players remove @a[team=CT,tag=InGame,score_wins_min=1] wins 1
execute @e[tag=VMW,score_CT-TScore_min=5] ~ ~ ~ execute @s[score_CT-WaitT=0] ~ ~ ~ execute @a[team=T,tag=InGame] ~ ~ ~ tellraw @s [{"text":"§eComplete victory! +150 note +"},{"score":{"objective":"money","name":"@s"},"color":"yellow"},{"text":" §enote"}]
execute @e[tag=VMW,score_CT-TScore_min=5] ~ ~ ~ execute @s[score_CT-WaitT=0] ~ ~ ~ tellraw @a[team=CT,tag=InGame] [{"text":"§eThe match is over! +100 note"}]
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
execute @e[tag=VMW,score_CT-TR_min=2400] ~ ~ ~ kill @e[type=mw:smokegrenade260]
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

scoreboard players set @a[score_leave_min=1] leave 0

#终极武器
scoreboard players tag @a add GetUltimateW {Inventory:[{id:"mw:russian_weapons_case",tag:{tag:["UltimateW"]}}]}

replaceitem entity @a[tag=GetUltimateW,score_S-UltimateW_min=0,score_S-UltimateW=0] slot.hotbar.0 mw:gl06 1 0 {IUuidLeast:-4748487005263204291L,Ammo:1,IUuidMost:-1415742761990860894L,Instance:[B;-32B,83B,21B,-112B,-126B,43B,-31B,45B,117B,49B,126B,79B,17B,126B,62B,-127B,0B,0B,0B,9B,-20B,90B,69B,117B,122B,52B,79B,-94B,-66B,25B,-4B,58B,46B,-70B,112B,61B,0B,0B,18B,0B,0B,0B,0B,5B,0B,0B,0B,0B,0B,0B,0B,79B,75B,99B,82B,108B,-118B,-87B,-71B,14B,-97B,-92B,100B,-74B,-111B,106B,61B,-40B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,114B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,113B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-99B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,1B,0B,64B,-96B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§4GL-06"}}
scoreboard players set @a[tag=GetUltimateW,score_S-UltimateW_min=0,score_S-UltimateW=0] MainW 100

replaceitem entity @a[tag=GetUltimateW,score_S-UltimateW_min=1,score_S-UltimateW=1] slot.hotbar.0 mw:rpg7 1 0 {IUuidLeast:-7598649906421414376L,Ammo:1,IUuidMost:-419731572397096733L,Instance:[B;-32B,83B,21B,-112B,-126B,43B,-31B,45B,117B,49B,126B,79B,17B,126B,62B,-127B,0B,0B,0B,9B,-6B,44B,-48B,91B,-42B,65B,64B,-29B,-106B,-116B,44B,43B,99B,50B,70B,24B,0B,0B,20B,93B,0B,0B,0B,5B,0B,0B,0B,0B,0B,0B,1B,10B,75B,99B,82B,108B,-118B,-87B,-71B,14B,-97B,-92B,100B,-74B,-111B,106B,61B,-40B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,22B,90B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-99B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,1B,0B,65B,32B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§4RPG-7"}}
scoreboard players set @a[tag=GetUltimateW,score_S-UltimateW_min=1,score_S-UltimateW=1] MainW 101

replaceitem entity @a[tag=GetUltimateW,score_S-UltimateW_min=2,score_S-UltimateW=2] slot.hotbar.0 mw:gpca1 1 0 {IUuidLeast:-7444059099945504498L,Ammo:4,IUuidMost:-3341448486415416402L,Instance:[B;-32B,83B,21B,-112B,-126B,43B,-31B,45B,117B,49B,126B,79B,17B,126B,62B,-127B,0B,0B,0B,9B,-47B,-96B,-54B,78B,43B,-15B,67B,-82B,-104B,-79B,99B,-80B,92B,-69B,-15B,14B,0B,0B,20B,99B,0B,0B,0B,5B,0B,0B,0B,0B,0B,0B,1B,30B,75B,99B,82B,108B,-118B,-87B,-71B,14B,-97B,-92B,100B,-74B,-111B,106B,61B,-40B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,20B,-30B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-99B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,4B,0B,65B,80B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§4GPC-A1"}}
scoreboard players set @a[tag=GetUltimateW,score_S-UltimateW_min=2,score_S-UltimateW=2] MainW 102

replaceitem entity @a[tag=GetUltimateW,score_S-UltimateW_min=3,score_S-UltimateW=3] slot.hotbar.0 mw:vss_vintorez 1 0 {IUuidLeast:-6653584849722816256L,Ammo:20,AtId:[I;4176,-1,0,-1,4470,0,0,4697,4666,5439,0,0,4776,0,4332,0,0,0,0,0,0,0,0,0,0,4765,0],IUuidMost:-8157162376623272750L,Instance:[B;-32B,83B,21B,-112B,-126B,43B,-31B,45B,117B,49B,126B,79B,17B,126B,62B,-127B,0B,0B,0B,9B,-114B,-53B,-16B,9B,118B,48B,76B,-46B,-93B,-87B,-73B,-44B,-43B,89B,-55B,0B,0B,0B,19B,-20B,0B,0B,0B,5B,0B,0B,0B,0B,0B,0B,0B,-51B,75B,99B,82B,108B,-118B,-87B,-71B,14B,-97B,-92B,100B,-74B,-111B,106B,61B,-40B,0B,0B,0B,1B,27B,0B,0B,16B,80B,-1B,-1B,-1B,-1B,0B,0B,0B,0B,-1B,-1B,-1B,-1B,0B,0B,17B,118B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,89B,0B,0B,18B,58B,0B,0B,21B,63B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-88B,0B,0B,0B,0B,0B,0B,16B,-20B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-99B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,20B,0B,63B,-64B,0B,0B,0B,0B,0B,1B,62B,97B,71B,-82B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§4VSS"}}
scoreboard players set @a[tag=GetUltimateW,score_S-UltimateW_min=3,score_S-UltimateW=3] MainW 103

replaceitem entity @a[tag=GetUltimateW,score_S-UltimateW_min=4,score_S-UltimateW=4] slot.hotbar.0 mw:m202 1 0 {IUuidLeast:-5099029149774785620L,Ammo:4,AtId:[I;4768,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5701,0,0,0,0,0,0,0,0,0,4765,0],IUuidMost:-7445162206384731508L,Instance:[B;-32B,83B,21B,-112B,-126B,43B,-31B,45B,117B,49B,126B,79B,17B,126B,62B,-127B,0B,0B,0B,9B,-104B,-83B,120B,107B,97B,70B,74B,-116B,-71B,60B,-100B,1B,12B,79B,-45B,-84B,0B,0B,21B,22B,0B,0B,0B,5B,0B,0B,0B,0B,0B,0B,0B,57B,75B,99B,82B,108B,-118B,-87B,-71B,14B,-97B,-92B,100B,-74B,-111B,106B,61B,-40B,0B,0B,0B,1B,27B,0B,0B,18B,-96B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,22B,69B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-99B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,4B,0B,64B,-96B,0B,0B,0B,0B,0B,1B,61B,-11B,-62B,-113B,0B,0B,0B,0B,0B,0B,0B,1B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§4M202"}}
scoreboard players set @a[tag=GetUltimateW,score_S-UltimateW_min=4,score_S-UltimateW=4] MainW 104

replaceitem entity @a[tag=GetUltimateW,score_S-UltimateW_min=5,score_S-UltimateW=5] slot.hotbar.0 mw:m32_mgl 1 0 {IUuidLeast:-6435627993422038028L,Ammo:6,AtId:[I;0,4199,0,0,0,0,0,5568,0,5368,0,0,-1,4705,0,4732,0,4327,0,0,0,0,0,0,0,4765,0],IUuidMost:2309397515943889281L,Instance:[B;-32B,83B,21B,-112B,-126B,43B,-31B,45B,117B,49B,126B,79B,17B,126B,62B,-127B,0B,0B,0B,9B,32B,12B,-96B,-50B,23B,1B,73B,-127B,-90B,-80B,14B,111B,-7B,-124B,-5B,-12B,0B,0B,20B,92B,0B,0B,0B,5B,0B,0B,0B,0B,0B,0B,0B,-108B,75B,99B,82B,108B,-118B,-87B,-71B,14B,-97B,-92B,100B,-74B,-111B,106B,61B,-40B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,16B,103B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,21B,-64B,0B,0B,0B,0B,0B,0B,20B,-8B,0B,0B,0B,0B,0B,0B,0B,0B,-1B,-1B,-1B,-1B,0B,0B,18B,97B,0B,0B,0B,0B,0B,0B,18B,124B,0B,0B,0B,0B,0B,0B,16B,-25B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-99B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,6B,0B,64B,102B,102B,103B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§4M32 MGL"}}
scoreboard players set @a[tag=GetUltimateW,score_S-UltimateW_min=5,score_S-UltimateW=5] MainW 105

replaceitem entity @a[tag=GetUltimateW,score_S-UltimateW_min=6,score_S-UltimateW=6] slot.hotbar.0 mw:m134 1 0 {IUuidLeast:-5694336392616626384L,Ammo:60,IUuidMost:-7424793332147076222L,Instance:[B;-32B,83B,21B,-112B,-126B,43B,-31B,45B,117B,49B,126B,79B,17B,126B,62B,-127B,0B,0B,0B,9B,-104B,-11B,-43B,-51B,122B,-81B,67B,-126B,-80B,-7B,-89B,56B,-122B,-127B,-73B,48B,0B,0B,20B,95B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,19B,84B,75B,99B,82B,108B,-118B,-87B,-71B,14B,-97B,-92B,100B,-74B,-111B,106B,61B,-40B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,20B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,19B,-60B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-99B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,60B,0B,63B,-128B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§4M134"}}
scoreboard players set @a[tag=GetUltimateW,score_S-UltimateW_min=6,score_S-UltimateW=6] MainW 106

replaceitem entity @a[tag=GetUltimateW,score_S-UltimateW_min=7,score_S-UltimateW=7] slot.hotbar.0 mw:fatman 1 0 {IUuidLeast:-6164030412886089568L,Ammo:1,IUuidMost:7902692299008657250L,Instance:[B;-32B,83B,21B,-112B,-126B,43B,-31B,45B,117B,49B,126B,79B,17B,126B,62B,-127B,0B,0B,0B,9B,109B,-84B,0B,-58B,-109B,-96B,71B,98B,-86B,116B,-10B,-1B,119B,56B,96B,-96B,0B,0B,20B,114B,0B,0B,0B,5B,0B,0B,0B,0B,0B,0B,1B,-32B,75B,99B,82B,108B,-118B,-87B,-71B,14B,-97B,-92B,100B,-74B,-111B,106B,61B,-40B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,20B,100B,0B,0B,21B,-79B,0B,0B,22B,99B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-99B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,65B,-96B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§4fat man"}}
scoreboard players set @a[tag=GetUltimateW,score_S-UltimateW_min=7,score_S-UltimateW=7] MainW 107

replaceitem entity @a[tag=GetUltimateW,score_MainW_min=100,score_MainW=100] slot.inventory.1 mw:grenade40mm 64 0
replaceitem entity @a[tag=GetUltimateW,score_MainW_min=101,score_MainW=101] slot.inventory.1 mw:rpg7_rocket 64 0
replaceitem entity @a[tag=GetUltimateW,score_MainW_min=102,score_MainW=102] slot.inventory.1 mw:plasmacapsule 64 0
replaceitem entity @a[tag=GetUltimateW,score_MainW_min=103,score_MainW=103] slot.inventory.1 mw:asvalmag 6 0 {Ammo:20}
replaceitem entity @a[tag=GetUltimateW,score_MainW_min=104,score_MainW=104] slot.inventory.1 mw:m202rocket 64 0
replaceitem entity @a[tag=GetUltimateW,score_MainW_min=105,score_MainW=105] slot.inventory.1 mw:grenade40mm 64 0
replaceitem entity @a[tag=GetUltimateW,score_MainW_min=106,score_MainW=106] slot.inventory.1 mw:m134mag 6 0 {Ammo:60}
replaceitem entity @a[tag=GetUltimateW,score_MainW_min=107,score_MainW=107] slot.inventory.1 mw:mininuke 64 0

clear @a[tag=GetUltimateW] mw:russian_weapons_case
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
