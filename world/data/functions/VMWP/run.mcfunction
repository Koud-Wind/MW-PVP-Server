#榴弹特效
execute @e[type=mwc:ammo256] ~ ~ ~ particle lava ~ ~ ~ 0 0 0 0 1 force @a[rm=2]
execute @e[type=mwc:ammo256] ~ ~ ~ particle largesmoke ~ ~0.7 ~ 0 0 0 0.05 1 force @a[rm=2]
#检测命令执行体
function vmwp:onceRun/toolARM unless @e[tag=VMW,type=armor_stand]
#呼吸回血
effect @a[score_hunger=19] 23 2 1 true
#禁用音乐
stopsound @a music
#清除子弹
execute @e[type=mwc:ammo256] ~ ~ ~ function vmwp:onceRun/selfClear unless @a[r=100]
#加强实体追踪范围
scoreboard players tag @e[type=!player,tag=!150FR] add FortifyTrack {Attributes:[{Name:"generic.followRange"}]}
entitydata @e[tag=FortifyTrack] {Attributes:[{Name:"generic.followRange",Base:150}]}
scoreboard players tag @e[tag=FortifyTrack] add 150FR
scoreboard players tag @e[tag=FortifyTrack] remove FortifyTrack
#Watch保护
execute @a[m=3] ~ ~ ~ tp @s[y=-30,dy=30] ~ ~80 ~
#限制crawl
scoreboard players tag @a add crawl {ForgeCaps:{"mwc:player_entity_flags":1}}
#反透视体验优化
#execute @a[m=2,tag=!crawl] ~ ~ ~ particle bubble ~ ~1 ~ 0.01 0.2 0.01 1 10 force @a[rm=0,m=2]
#execute @a[m=2,tag=crawl] ~ ~ ~ particle bubble ~ ~ ~ 0.01 0.15 0.01 1 10 force @a[rm=0,m=2]
execute @a[m=2,tag=!smokeHide] ~ ~ ~ particle bubble ~ ~0.3 ~ 0.01 0.1 0.01 1 10 force @a[rm=0,m=2]
scoreboard players tag @a[tag=smokeHide] remove smokeHide
#限制crawl
#effect @a[tag=crawl] 8 1 130 true
#scoreboard players tag @a[tag=crawl] add CInjury {HurtTime:9s}
#scoreboard players tag @a[tag=crawl] add CInjury {HurtTime:8s}
#scoreboard players tag @a[tag=crawl] add CInjury {HurtTime:7s}
#scoreboard players tag @a[tag=crawl] add CInjury {HurtTime:6s}
#scoreboard players tag @a[tag=crawl] add CInjury {HurtTime:5s}
#scoreboard players tag @a[tag=crawl] add CInjury {HurtTime:4s}
#scoreboard players tag @a[tag=crawl] add CInjury {HurtTime:3s}
#scoreboard players tag @a[tag=crawl] add CInjury {HurtTime:2s}
#scoreboard players tag @a[tag=crawl] add CInjury {HurtTime:1s}
#effect @a[tag=CInjury] 8 0 0 true
#scoreboard players tag @a[tag=CInjury] remove CInjury
#scoreboard players tag @a[tag=crawl] remove crawl
#血
scoreboard players tag @a add injured {HurtTime:9s}
scoreboard players tag @e[tag=150FR] add EInjured {HurtTime:9s}
execute @e[tag=EInjured] ~ ~ ~ particle blockcrack ~ ~0.9 ~ 0 0 0 0 60 force @a 152
execute @a[score_health=10,tag=injured] ~ ~ ~ particle blockcrack ~ ~0.9 ~ 0 0 0 0 60 force @a 152
execute @a[score_health_min=11,tag=injured] ~ ~ ~ playsound minecraft:item.shield.block ambient @a ~ ~ ~ 2 1
execute @a[score_health_min=11,tag=injured] ~ ~ ~ playsound minecraft:item.shield.block ambient @a ~ ~ ~ 2 1
scoreboard players tag @a[tag=injured] remove injured
scoreboard players tag @e[tag=EInjured] remove EInjured
#血量过半
execute @e[tag=VMW] ~ ~ ~ execute @s[tag=HalfHMode] ~ ~ ~ execute @a[tag=!10health] ~ ~ ~ scoreboard players tag @s[tag=InGame] add 10health
execute @a[score_health=10,tag=!10health] ~ ~ ~ playsound minecraft:item.shield.break ambient @a ~ ~ ~ 2 1
execute @a[score_health=10,tag=!10health] ~ ~ ~ playsound minecraft:item.shield.break ambient @a ~ ~ ~ 2 1
execute @a[score_health=10,tag=!10health] ~ ~ ~ playsound minecraft:item.shield.break ambient @a ~ ~ ~ 2 1
execute @a[score_health=10,tag=!10health] ~ ~ ~ playsound minecraft:item.shield.break ambient @a ~ ~ ~ 2 1
scoreboard players tag @a[score_health=10,tag=!10health] add 10health
scoreboard players tag @a[score_health_min=12,tag=10health] remove 10health
#脚步声
execute @a[score_sprint_min=150] ~ ~ ~ particle footstep ~ ~0.05 ~ 0 0.007 0 0 1
execute @a[score_sprint_min=150] ~ ~ ~ playsound minecraft:block.stone.step ambient @a ~ ~ ~ 1.6 2
scoreboard players reset @a[score_sprint_min=150] sprint

scoreboard players tag @a[score_jump_min=1] add Fall {OnGround:1b}
execute @a[tag=Fall] ~ ~ ~ playsound minecraft:block.stone.step ambient @a ~ ~ ~ 1.4 1
execute @a[tag=Fall] ~ ~ ~ playsound minecraft:block.stone.step ambient @a ~ ~ ~ 1.4 2
execute @a[tag=Fall] ~ ~ ~ detect ~ ~-1 ~ minecraft:air -1 scoreboard players tag @s add NoFootprint
execute @a[tag=Fall] ~ ~ ~ execute @s[tag=!NoFootprint] ~ ~ ~ particle footstep ~ ~0.05 ~ 0.1 0.007 0.1 0 2
scoreboard players tag @a[tag=NoFootprint] remove NoFootprint
scoreboard players reset @a[tag=Fall] jump
scoreboard players tag @a[tag=Fall] remove Fall
#jump效果修复&限制
scoreboard players tag @a[m=!3] add stiffStun {ActiveEffects:[{Id:8b,Amplifier:-61b}]}
execute @a[tag=stiffStun] ~ ~ ~ teleport @s ~ ~ ~ ~-1.5 ~7
scoreboard players tag @a[tag=stiffStun] remove stiffStun

scoreboard players tag @a[m=!3] add ClearJump {ActiveEffects:[{Duration:18,Id:8b}]}
scoreboard players tag @a[m=!3] add ClearJump {HurtTime:9s,ActiveEffects:[{Id:8b}]}
effect @a[tag=ClearJump] 8 0 0 true
scoreboard players tag @a[tag=ClearJump] remove ClearJump

#僵尸末日(写的跟屎一样))
scoreboard players tag @a[score_PVE-map_min=1] add PVE-ClearBed {Inventory:[{id:"minecraft:compass",tag:{display:{Name:"§7Watch"}}}]}
replaceitem entity @a[tag=PVE-ClearBed] slot.hotbar.8 minecraft:air
scoreboard players tag @a[tag=PVE-ClearBed] remove PVE-ClearBed

scoreboard players tag @a add PVE-IG {Inventory:[{tag:{author:"MW_PVE"}}]}
scoreboard players tag @a add PVE-IG {Inventory:[{tag:{author:"map1"}}]}
scoreboard players tag @a add PVE-IG {Inventory:[{id:"minecraft:skull",tag:{tag:["PVE"]}}]}
scoreboard players tag @a add PVE-IG {Inventory:[{id:"minecraft:compass",tag:{display:{Name:"§7Watch"}}}]}
function vmwp:games/zombie/mainRun if @a[tag=PVE-IG]
scoreboard players tag @a[tag=PVE-IG] remove Preparing
execute @a[tag=PVE-IG] ~ ~ ~ execute @s[team=!MW_PVE] scoreboard teams join MW_PVE @s
scoreboard teams leave @a[team=MW_PVE,tag=!PVE-IG]


#函数
function vmwp:novice
function vmwp:grenade
execute @e[tag=VMW] ~ ~ ~ execute @s[tag=!GlobalGame] ~ ~ ~ execute @s[tag=!RS1] ~ ~ ~ execute @s[tag=!RS2] ~ ~ ~ function vmwp:hall
execute @e[tag=RS1] ~ ~ ~ function vmwp:RS1
execute @e[tag=RS2] ~ ~ ~ function vmwp:RS2
execute @e[tag=VMW] ~ ~ ~ execute @s[tag=start1] ~ ~ ~ function vmwp:games/personal/mainRun
execute @e[tag=VMW] ~ ~ ~ execute @s[tag=start2] ~ ~ ~ function vmwp:games/blast/mainRun
execute @e[tag=VMW] ~ ~ ~ execute @s[tag=start3] ~ ~ ~ function vmwp:games/armsKing/mainRun
execute @e[tag=VMW] ~ ~ ~ execute @s[tag=start4] ~ ~ ~ function vmwp:games/defense/mainRun
execute @e[tag=VMW] ~ ~ ~ execute @s[tag=start5] ~ ~ ~ function vmwp:games/survival/mainRun
execute @e[tag=VMW] ~ ~ ~ execute @s[tag=start6] ~ ~ ~ function vmwp:games/teamDM/mainRun

#反玩家修改命令主体
scoreboard players tag @a[tag=VMW] remove VMW

#及时禁用未使用的栏位
scoreboard players tag @a[tag=InGame] add FG7
scoreboard players tag @a[tag=FG7] remove FG7 {Inventory:[{Slot:7b}]}
replaceitem entity @a[tag=FG7] slot.hotbar.7 minecraft:stained_glass_pane 1 15 {display:{Name:"§fnone"}}
scoreboard players tag @a[tag=FG7] remove FG7

scoreboard players tag @a[tag=InGame] add FG8
scoreboard players tag @a[tag=FG8] remove FG8 {Inventory:[{Slot:8b}]}
replaceitem entity @a[tag=FG8] slot.hotbar.8 minecraft:stained_glass_pane 1 15 {display:{Name:"§fnone"}}
scoreboard players tag @a[tag=FG8] remove FG8

scoreboard players tag @a[tag=InGame,team=T] add FG4
scoreboard players tag @a[tag=FG4] remove FG4 {Inventory:[{Slot:4b}]}
replaceitem entity @a[tag=FG4] slot.hotbar.4 minecraft:stained_glass_pane 1 15 {display:{Name:"§fnone"}}
scoreboard players tag @a[tag=FG4] remove FG4

scoreboard players tag @a[tag=InGame] add FG2
scoreboard players tag @a[tag=FG2] remove FG2 {Inventory:[{Slot:2b}]}
replaceitem entity @a[tag=FG2] slot.hotbar.2 minecraft:stained_glass_pane 1 15 {display:{Name:"§fnone"}}
scoreboard players tag @a[tag=FG2] remove FG2

scoreboard players tag @a[tag=InGame] add FG1
scoreboard players tag @a[tag=FG1] remove FG1 {Inventory:[{Slot:1b}]}
replaceitem entity @a[tag=FG1] slot.hotbar.1 minecraft:stained_glass_pane 1 15 {display:{Name:"§fnone"}}
scoreboard players tag @a[tag=FG1] remove FG1

scoreboard players tag @a[tag=InGame] add FG00
scoreboard players tag @a[tag=FG00] remove FG00 {Inventory:[{Slot:9b}]}
replaceitem entity @a[tag=FG00] slot.inventory.0 minecraft:stained_glass_pane 1 8 {display:{Name:""}}
scoreboard players tag @a[tag=FG00] remove FG00

#scoreboard players tag @a[tag=InGame] add FG0
#scoreboard players tag @a[tag=FG0] remove FG0 {Inventory:[{Slot:0b}]}
#replaceitem entity @a[tag=FG0] slot.hotbar.0 minecraft:stained_glass_pane 1 15 {display:{Name:"§fnone"}}
#scoreboard players tag @a[tag=FG0] remove FG0

#僵尸末日末尾
scoreboard players tag @a[tag=PVE-IG] remove PVE-IG