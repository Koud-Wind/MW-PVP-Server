#请求处理
replaceitem entity @a[m=2,tag=商店,score_选择的商店=0] slot.hotbar.6 minecraft:iron_ingot 1 0 {ench:[{lvl:1s,id:71s}],HideFlags:1,display:{Name:"§f武器商店1(右键打开)"}}
replaceitem entity @a[m=2,tag=商店,score_选择的商店=1,score_选择的商店_min=1] slot.hotbar.6 minecraft:flint 1 0 {ench:[{lvl:1s,id:71s}],HideFlags:1,display:{Name:"§f武器商店2(右键打开)"}}
replaceitem entity @a[m=2,tag=商店,score_选择的商店=2,score_选择的商店_min=2] slot.hotbar.6 minecraft:feather 1 0 {ench:[{lvl:1s,id:71s}],HideFlags:1,display:{Name:"§f武器商店3(右键打开)"}}
#武器商店

scoreboard players enable @a 配件页面
execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_配件页面_min=1,score_配件页面=1,tag=游戏中,score_爆破-金钱_min=1] add 购买瞄准器
replaceitem entity @a[tag=购买瞄准器,score_选择的瞄具=0] slot.inventory.18 mwc:reflex 1 0
replaceitem entity @a[tag=购买瞄准器,score_选择的瞄具=1,score_选择的瞄具_min=1] slot.inventory.18 mwc:rmrsight 1 0
replaceitem entity @a[tag=购买瞄准器,score_选择的瞄具=2,score_选择的瞄具_min=2] slot.inventory.18 mwc:okp7 1 0
replaceitem entity @a[tag=购买瞄准器,score_选择的瞄具=3,score_选择的瞄具_min=3] slot.inventory.18 mwc:kobra 1 0
replaceitem entity @a[tag=购买瞄准器,score_选择的瞄具=4,score_选择的瞄具_min=4] slot.inventory.18 mwc:kobragen3 1 0
replaceitem entity @a[tag=购买瞄准器,score_选择的瞄具=5,score_选择的瞄具_min=5] slot.inventory.18 mwc:holographic2 1 0
replaceitem entity @a[tag=购买瞄准器,score_选择的瞄具=6,score_选择的瞄具_min=6] slot.inventory.18 mwc:vortexsight 1 0
replaceitem entity @a[tag=购买瞄准器,score_选择的瞄具=7,score_选择的瞄具_min=7] slot.inventory.18 mwc:bijiareflex 1 0
replaceitem entity @a[tag=购买瞄准器,score_选择的瞄具=9,score_选择的瞄具_min=9] slot.inventory.18 mwc:specter 1 0
replaceitem entity @a[tag=购买瞄准器,score_选择的瞄具=10,score_选择的瞄具_min=10] slot.inventory.18 mwc:acog 1 0
replaceitem entity @a[tag=购买瞄准器,score_选择的瞄具=11,score_选择的瞄具_min=11] slot.inventory.18 mwc:nightraiderscope 1 0
scoreboard players remove @a[tag=购买瞄准器] 爆破-金钱 1
tellraw @a[tag=购买瞄准器] {"text":"§a§l成功购买§f瞄准器§a§l,需手动安装"}
scoreboard players tag @a[tag=购买瞄准器] remove 购买瞄准器

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_配件页面_min=2,score_配件页面=2,tag=游戏中,score_爆破-金钱_min=2] add 购买握把
replaceitem entity @a[tag=购买握把] slot.inventory.19 mwc:stubbygrip 1 0
scoreboard players remove @a[tag=购买握把] 爆破-金钱 2
tellraw @a[tag=购买握把] {"text":"§a§l成功购买§f握把§a§l,需手动安装"}
scoreboard players tag @a[tag=购买握把] remove 购买握把

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_配件页面_min=3,score_配件页面=3,tag=游戏中,score_爆破-金钱_min=2] add 购买消音器
replaceitem entity @a[tag=购买消音器,score_选择的消音器=0] slot.inventory.20 mwc:silencer762x39 1 0
replaceitem entity @a[tag=购买消音器,score_选择的消音器=1,score_选择的消音器_min=1] slot.inventory.20 mwc:silencer762x54 1 0
replaceitem entity @a[tag=购买消音器,score_选择的消音器=2,score_选择的消音器_min=2] slot.inventory.20 mwc:silencer50bmg 1 0
replaceitem entity @a[tag=购买消音器,score_选择的消音器=3,score_选择的消音器_min=3] slot.inventory.20 mwc:silencer762x51 1 0
replaceitem entity @a[tag=购买消音器,score_选择的消音器=4,score_选择的消音器_min=4] slot.inventory.20 mwc:silencer12gauge 1 0
replaceitem entity @a[tag=购买消音器,score_选择的消音器=5,score_选择的消音器_min=5] slot.inventory.20 mwc:silencer45acp 1 0
replaceitem entity @a[tag=购买消音器,score_选择的消音器=6,score_选择的消音器_min=6] slot.inventory.20 mwc:silencer9mm 1 0
replaceitem entity @a[tag=购买消音器,score_选择的消音器=7,score_选择的消音器_min=7] slot.inventory.20 mwc:silencer556x45 1 0
scoreboard players remove @a[tag=购买消音器] 爆破-金钱 2
tellraw @a[tag=购买消音器] {"text":"§a§l成功购买§f消音器§a§l,需手动安装"}
scoreboard players tag @a[tag=购买消音器] remove 购买消音器

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_配件页面_min=4,score_配件页面=4,tag=游戏中,score_爆破-金钱_min=2] add 购买激光
replaceitem entity @a[tag=购买激光] slot.inventory.21 mwc:laser2 1 0
scoreboard players remove @a[tag=购买激光] 爆破-金钱 2
tellraw @a[tag=购买激光] {"text":"§a§l成功购买§f激光§a§l,需手动安装"}
scoreboard players tag @a[tag=购买激光] remove 购买激光
scoreboard players reset @a[score_配件页面_min=1] 配件页面



scoreboard players enable @a 投掷物页面
execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_投掷物页面_min=1,score_投掷物页面=1,tag=游戏中,score_爆破-金钱_min=2] add 购买手雷
replaceitem entity @a[tag=购买手雷] slot.hotbar.7 mwc:m18white 1 0 {display:{Name:"§fFrag Grenade"},tag:["手雷"]}
#replaceitem entity @a[tag=购买手雷] slot.hotbar.7 mwc:m67frag 1 0 
scoreboard players remove @a[tag=购买手雷] 爆破-金钱 2
tellraw @a[tag=购买手雷] {"text":"§a§l成功购买§f手雷§a§l!"}
scoreboard players tag @a[tag=购买手雷] remove 购买手雷

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_投掷物页面_min=2,score_投掷物页面=2,tag=游戏中,score_爆破-金钱_min=2] add 购买燃烧瓶
replaceitem entity @a[tag=购买燃烧瓶] slot.hotbar.7 mwc:m18white 1 0 {display:{Name:"§fMolotov Cocktail"},tag:["燃烧瓶"]}
scoreboard players remove @a[tag=购买燃烧瓶] 爆破-金钱 2
tellraw @a[tag=购买燃烧瓶] {"text":"§a§l成功购买§f燃烧瓶§a§l!"}
scoreboard players tag @a[tag=购买燃烧瓶] remove 购买燃烧瓶

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_投掷物页面_min=3,score_投掷物页面=3,tag=游戏中,score_爆破-金钱_min=2] add 购买闪光弹
replaceitem entity @a[tag=购买闪光弹] slot.hotbar.8 mwc:flash 1 0 
scoreboard players remove @a[tag=购买闪光弹] 爆破-金钱 2
tellraw @a[tag=购买闪光弹] {"text":"§a§l成功购买§f闪光弹§a§l!"}
scoreboard players tag @a[tag=购买闪光弹] remove 购买闪光弹

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_投掷物页面_min=4,score_投掷物页面=4,tag=游戏中,score_爆破-金钱_min=2] add 购买震撼弹
replaceitem entity @a[tag=购买震撼弹] slot.hotbar.8 mwc:m18white 1 0 {display:{Name:"§fStun Grenade"},tag:["震撼弹"]}
scoreboard players remove @a[tag=购买震撼弹] 爆破-金钱 2
tellraw @a[tag=购买震撼弹] {"text":"§a§l成功购买§f震撼弹§a§l!"}
scoreboard players tag @a[tag=购买震撼弹] remove 购买震撼弹

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_投掷物页面_min=5,score_投掷物页面=5,tag=游戏中,score_爆破-金钱_min=2] add 购买烟雾弹
replaceitem entity @a[tag=购买烟雾弹] slot.hotbar.8 mwc:m18white 1 0 {display:{Name:"§fSmoke Grenade"},tag:["烟雾弹"]}
scoreboard players remove @a[tag=购买烟雾弹] 爆破-金钱 2
tellraw @a[tag=购买烟雾弹] {"text":"§a§l成功购买§f烟雾弹§a§l!"}
scoreboard players tag @a[tag=购买烟雾弹] remove 购买烟雾弹

scoreboard players reset @a[score_投掷物页面_min=1] 投掷物页面



scoreboard players enable @a 突击步枪页面
execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_突击步枪页面_min=1,score_突击步枪页面=1,tag=游戏中,score_爆破-金钱_min=20,score_选择的商店=0] add 购买AR-15
replaceitem entity @a[tag=购买AR-15] slot.hotbar.0 mwc:ar15 1 0 {IUuidLeast:-6772703920102388532L,AtId:[I;4534,0,0,0,0,0,0,0,4334,4418,4382,4340,4471,4717,4716,0,0,0,4731,0,0,0,0,0,0,4096,0],Ammo:40,IUuidMost:-2944762565745883986L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-41B,34B,26B,12B,104B,-39B,68B,-82B,-94B,2B,-123B,-85B,1B,102B,-52B,-52B,0B,0B,19B,50B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,125B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-74B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-70B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,-18B,0B,0B,17B,66B,0B,0B,17B,30B,0B,0B,16B,-12B,0B,0B,17B,119B,0B,0B,18B,109B,0B,0B,18B,108B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,123B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,40B,0B,64B,-128B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fAR-15"}}
scoreboard players remove @a[tag=购买AR-15] 爆破-金钱 20
scoreboard players set @a[tag=购买AR-15] 爆破-选择的主武器 1
tellraw @a[tag=购买AR-15] {"text":"§a§l成功购买§fAR-15§a§l!"}
scoreboard players tag @a[tag=购买AR-15] remove 购买AR-15

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_突击步枪页面_min=2,score_突击步枪页面=2,tag=游戏中,score_爆破-金钱_min=18,score_选择的商店=0] add 购买M4A1
replaceitem entity @a[tag=购买M4A1] slot.hotbar.0 mwc:m4a1 1 0 {IUuidLeast:-7182158206075631541L,AtId:[I;4730,0,0,0,0,0,0,0,4336,4422,4383,4340,4467,4717,4716,0,0,0,0,0,0,0,0,0,0,4096,0],Ammo:30,IUuidMost:8549572861428122274L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,118B,-90B,47B,56B,74B,-66B,66B,-94B,-100B,83B,-39B,42B,14B,52B,-120B,75B,0B,0B,19B,49B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,109B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,18B,122B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-70B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,-16B,0B,0B,17B,70B,0B,0B,17B,31B,0B,0B,16B,-12B,0B,0B,17B,115B,0B,0B,18B,109B,0B,0B,18B,108B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,30B,0B,64B,64B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fM4A1"}}
scoreboard players remove @a[tag=购买M4A1] 爆破-金钱 18
scoreboard players set @a[tag=购买M4A1] 爆破-选择的主武器 2
tellraw @a[tag=购买M4A1] {"text":"§a§l成功购买§fM4A1§a§l!"}
scoreboard players tag @a[tag=购买M4A1] remove 购买M4A1

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_突击步枪页面_min=3,score_突击步枪页面=3,tag=游戏中,score_爆破-金钱_min=18,score_选择的商店=0] add 购买SIGMCX
replaceitem entity @a[tag=购买SIGMCX] slot.hotbar.0 mwc:sig_mcx 1 0 {IUuidLeast:-8412658287741561297L,Ammo:30,IUuidMost:-2159833404407396108L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-30B,6B,-70B,-10B,68B,70B,72B,-12B,-117B,64B,59B,-36B,6B,107B,22B,47B,0B,0B,19B,51B,0B,0B,0B,2B,0B,0B,0B,0B,0B,0B,0B,16B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-71B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-70B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,23B,0B,0B,17B,68B,0B,0B,17B,34B,0B,0B,16B,-11B,0B,0B,17B,118B,0B,0B,18B,111B,0B,0B,18B,108B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,124B,0B,0B,18B,123B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,30B,0B,64B,64B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fSIG MCX"}}
scoreboard players remove @a[tag=购买SIGMCX] 爆破-金钱 18
scoreboard players set @a[tag=购买SIGMCX] 爆破-选择的主武器 3
tellraw @a[tag=购买SIGMCX] {"text":"§a§l成功购买§fSIG MCX§a§l!"}
scoreboard players tag @a[tag=购买SIGMCX] remove 购买SIGMCX

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_突击步枪页面_min=4,score_突击步枪页面=4,tag=游戏中,score_爆破-金钱_min=18,score_选择的商店=0] add 购买AUG
replaceitem entity @a[tag=购买AUG] slot.hotbar.0 mwc:steyr_aug_a1 1 0 {IUuidLeast:-8088316258104355650L,AtId:[I;4479,4569,0,0,0,0,0,0,4212,0,0,-1,4214,4580,0,0,0,0,0,0,0,0,0,0,0,4096,0],Ammo:30,IUuidMost:-1033794093124665233L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-15B,-89B,57B,-65B,-28B,104B,64B,111B,-113B,-64B,-121B,55B,-116B,-84B,84B,-66B,0B,0B,19B,109B,0B,0B,0B,2B,0B,0B,0B,0B,0B,0B,0B,97B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,127B,0B,0B,17B,-39B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-70B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,116B,0B,0B,0B,0B,0B,0B,0B,0B,-1B,-1B,-1B,-1B,0B,0B,16B,118B,0B,0B,17B,-28B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,30B,0B,63B,-26B,102B,103B,127B,-1B,-1B,-1B,62B,35B,-41B,10B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fAUG"}}
scoreboard players remove @a[tag=购买AUG] 爆破-金钱 19
scoreboard players set @a[tag=购买AUG] 爆破-选择的主武器 4
tellraw @a[tag=购买AUG] {"text":"§a§l成功购买§fAUG§a§l!"}
scoreboard players tag @a[tag=购买AUG] remove 购买AUG

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_突击步枪页面_min=5,score_突击步枪页面=5,tag=游戏中,score_爆破-金钱_min=18,score_选择的商店=0] add 购买HKG36C
replaceitem entity @a[tag=购买HKG36C] slot.hotbar.0 mwc:g36c 1 0 {IUuidLeast:-8534270051340564604L,Ammo:30,IUuidMost:4407380368672771194L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,61B,42B,41B,24B,16B,-59B,76B,122B,-119B,-112B,46B,-102B,-44B,-105B,71B,-124B,0B,0B,19B,108B,0B,0B,0B,2B,0B,0B,0B,0B,0B,0B,0B,16B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-51B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,4B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,11B,0B,0B,17B,9B,0B,0B,18B,5B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,123B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,30B,0B,64B,32B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fHK G36C"}}
scoreboard players remove @a[tag=购买HKG36C] 爆破-金钱 18
scoreboard players set @a[tag=购买HKG36C] 爆破-选择的主武器 5
tellraw @a[tag=购买HKG36C] {"text":"§a§l成功购买§fHK G36C§a§l!"}
scoreboard players tag @a[tag=购买HKG36C] remove 购买HKG36C

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_突击步枪页面_min=6,score_突击步枪页面=6,tag=游戏中,score_爆破-金钱_min=16,score_选择的商店=0] add 购买AK-12
replaceitem entity @a[tag=购买AK-12] slot.hotbar.0 mwc:izhmash_ak12 1 0 {IUuidLeast:-7093218305692546573L,Ammo:31,IUuidMost:7823150799258469924L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,108B,-111B,106B,51B,-2B,29B,70B,36B,-99B,-113B,-45B,-120B,78B,-27B,-55B,-13B,0B,0B,19B,102B,0B,0B,0B,2B,0B,0B,0B,0B,0B,0B,0B,13B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-43B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,105B,0B,0B,17B,90B,0B,0B,17B,57B,0B,0B,17B,44B,0B,0B,0B,0B,0B,0B,17B,-61B,0B,0B,18B,74B,0B,0B,17B,-86B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,31B,0B,64B,64B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fAK-12"}}
scoreboard players remove @a[tag=购买AK-12] 爆破-金钱 16
scoreboard players set @a[tag=购买AK-12] 爆破-选择的主武器 6
tellraw @a[tag=购买AK-12] {"text":"§a§l成功购买§fAK-12§a§l!"}
scoreboard players tag @a[tag=购买AK-12] remove 购买AK-12

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_突击步枪页面_min=7,score_突击步枪页面=7,tag=游戏中,score_爆破-金钱_min=16,score_选择的商店=0] add 购买AK-47
replaceitem entity @a[tag=购买AK-47] slot.hotbar.0 mwc:ak47 1 0 {IUuidLeast:-5714841715180941712L,Ammo:30,AtId:[I;0,0,0,0,4818,0,0,4455,4433,4407,4392,0,4521,4674,0,0,0,4738,4731,0,0,0,0,0,0,4096,0],IUuidMost:-2607483842144809797L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-37B,-48B,91B,66B,-73B,99B,76B,-69B,-80B,-80B,-51B,-67B,19B,14B,78B,112B,0B,0B,19B,100B,0B,0B,0B,2B,0B,0B,0B,0B,0B,0B,0B,99B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-46B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,103B,0B,0B,17B,81B,0B,0B,17B,55B,0B,0B,17B,40B,0B,0B,0B,0B,0B,0B,17B,-87B,0B,0B,18B,66B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-126B,0B,0B,18B,123B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,30B,0B,64B,-128B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fAK-47"}}
scoreboard players remove @a[tag=购买AK-47] 爆破-金钱 16
scoreboard players set @a[tag=购买AK-47] 爆破-选择的主武器 7
tellraw @a[tag=购买AK-47] {"text":"§a§l成功购买§fAK-47§a§l!"}
scoreboard players tag @a[tag=购买AK-47] remove 购买AK-47

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_突击步枪页面_min=8,score_突击步枪页面=8,tag=游戏中,score_爆破-金钱_min=15,score_选择的商店=0] add 购买9A-91
replaceitem entity @a[tag=购买9A-91] slot.hotbar.0 mwc:kbp_9a91 1 0 {IUuidLeast:-8639776074379683359L,Ammo:20,AtId:[I;0,0,0,0,4855,0,0,0,4446,0,0,0,0,4678,0,0,0,0,0,0,0,0,0,0,0,4096,0],IUuidMost:7805116986724992035L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,108B,81B,88B,-117B,-48B,28B,68B,35B,-120B,25B,89B,111B,-109B,-82B,25B,-31B,0B,0B,19B,63B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,44B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-9B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,94B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,70B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,20B,0B,64B,0B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§f9A-91"}}
scoreboard players remove @a[tag=购买9A-91] 爆破-金钱 15
scoreboard players set @a[tag=购买9A-91] 爆破-选择的主武器 8
tellraw @a[tag=购买9A-91] {"text":"§a§l成功购买§f9A-91§a§l!"}
scoreboard players tag @a[tag=购买9A-91] remove 购买9A-91

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_突击步枪页面_min=9,score_突击步枪页面=9,tag=游戏中,score_爆破-金钱_min=20,score_选择的商店=1,score_选择的商店_min=1] add 购买Scar-H
replaceitem entity @a[tag=购买Scar-H] slot.hotbar.0 mwc:scar_h_cqc 1 0 {IUuidLeast:-6505968538266611428L,Ammo:40,IUuidMost:-101033933772668567L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-2B,-103B,14B,44B,43B,56B,65B,105B,-91B,-74B,40B,21B,-92B,-64B,81B,28B,0B,0B,19B,79B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,9B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-74B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,19B,28B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,4B,0B,0B,16B,64B,0B,0B,16B,-113B,0B,0B,17B,30B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,42B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,0B,0B,0B,0B,40B,0B,64B,-128B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fScar-H"}}
scoreboard players remove @a[tag=购买Scar-H] 爆破-金钱 20
scoreboard players set @a[tag=购买Scar-H] 爆破-选择的主武器 9
tellraw @a[tag=购买Scar-H] {"text":"§a§l成功购买§fScar-H§a§l!"}
scoreboard players tag @a[tag=购买Scar-H] remove 购买Scar-H

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_突击步枪页面_min=11,score_突击步枪页面=11,tag=游戏中,score_爆破-金钱_min=18,score_选择的商店=1,score_选择的商店_min=1] add 购买M16A1
replaceitem entity @a[tag=购买M16A1] slot.hotbar.0 mwc:m16a1 1 0 {IUuidLeast:-8178183891401900348L,Ammo:30,IUuidMost:-5183465422830222012L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-72B,16B,-95B,-87B,62B,-81B,69B,68B,-114B,-127B,65B,20B,-91B,42B,-2B,-60B,0B,0B,19B,47B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,11B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-70B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,16B,0B,0B,17B,74B,0B,0B,17B,30B,0B,0B,0B,0B,0B,0B,17B,115B,0B,0B,17B,-69B,0B,0B,18B,108B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,0B,0B,0B,0B,30B,0B,64B,64B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fM16A1"}}
scoreboard players remove @a[tag=购买M16A1] 爆破-金钱 18
scoreboard players set @a[tag=购买M16A1] 爆破-选择的主武器 10
tellraw @a[tag=购买M16A1] {"text":"§a§l成功购买§fM16A1§a§l!"}
scoreboard players tag @a[tag=购买M16A1] remove 购买M16A1

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_突击步枪页面_min=12,score_突击步枪页面=12,tag=游戏中,score_爆破-金钱_min=18,score_选择的商店=1,score_选择的商店_min=1] add 购买HK416
replaceitem entity @a[tag=购买HK416] slot.hotbar.0 mwc:m38_dmr 1 0 {IUuidLeast:-6003546250383098362L,Ammo:30,AtId:[I;4536,0,0,0,4794,0,0,0,4331,4427,4383,4341,4471,4717,4716,0,0,0,0,0,0,0,0,0,0,4096,0],IUuidMost:-2504522566780043220L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-35B,62B,37B,-2B,-69B,32B,64B,44B,-84B,-81B,30B,126B,81B,73B,126B,6B,0B,0B,19B,46B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,41B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-72B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-70B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,-21B,0B,0B,17B,75B,0B,0B,17B,31B,0B,0B,16B,-11B,0B,0B,17B,119B,0B,0B,18B,109B,0B,0B,18B,108B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,30B,0B,64B,64B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fHK 416"}}
scoreboard players remove @a[tag=购买HK416] 爆破-金钱 18
scoreboard players set @a[tag=购买HK416] 爆破-选择的主武器 11
tellraw @a[tag=购买HK416] {"text":"§a§l成功购买§fHK 416§a§l!"}
scoreboard players tag @a[tag=购买HK416] remove 购买HK416

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_突击步枪页面_min=13,score_突击步枪页面=13,tag=游戏中,score_爆破-金钱_min=17,score_选择的商店=1,score_选择的商店_min=1] add 购买M16A4
replaceitem entity @a[tag=购买M16A4] slot.hotbar.0 mwc:m16a4 1 0 {IUuidLeast:-4642341086625348856L,AtId:[I;4730,0,0,0,0,0,0,0,4370,4426,4382,4340,4467,4717,4716,0,0,0,4731,0,0,0,0,0,0,4096,0],Ammo:30,IUuidMost:3819616425300412006L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,53B,2B,0B,-26B,-48B,71B,70B,102B,-65B,-109B,23B,96B,-67B,126B,-61B,8B,0B,0B,19B,48B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,51B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,18B,122B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-70B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,18B,0B,0B,17B,74B,0B,0B,17B,30B,0B,0B,16B,-12B,0B,0B,17B,115B,0B,0B,18B,109B,0B,0B,18B,108B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,123B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,30B,0B,64B,64B,0B,0B,0B,0B,0B,3B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fM16A4"}}
scoreboard players remove @a[tag=购买M16A4] 爆破-金钱 17
scoreboard players set @a[tag=购买M16A4] 爆破-选择的主武器 12
tellraw @a[tag=购买M16A4] {"text":"§a§l成功购买§fM16A4§a§l!"}
scoreboard players tag @a[tag=购买M16A4] remove 购买M16A4

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_突击步枪页面_min=10,score_突击步枪页面=10,tag=游戏中,score_爆破-金钱_min=18,score_选择的商店=1,score_选择的商店_min=1] add 购买FamasF1
replaceitem entity @a[tag=购买FamasF1] slot.hotbar.0 mwc:famas_f1 1 0 {IUuidLeast:-7046286675147378151L,Ammo:30,IUuidMost:-1960475736392972157L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-28B,-54B,-3B,-76B,109B,-122B,72B,-125B,-98B,54B,-113B,-102B,14B,69B,-78B,25B,0B,0B,19B,110B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,19B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-68B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,5B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,73B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,30B,0B,64B,32B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fFamas F1"}}
scoreboard players remove @a[tag=购买FamasF1] 爆破-金钱 18
scoreboard players set @a[tag=购买FamasF1] 爆破-选择的主武器 13
tellraw @a[tag=购买FamasF1] {"text":"§a§l成功购买§fFamas F1§a§l!"}
scoreboard players tag @a[tag=购买FamasF1] remove 购买FamasF1

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_突击步枪页面_min=14,score_突击步枪页面=14,tag=游戏中,score_爆破-金钱_min=17,score_选择的商店=1,score_选择的商店_min=1] add 购买AK-15
replaceitem entity @a[tag=购买AK-15] slot.hotbar.0 mwc:ak15 1 0 {IUuidLeast:-4790820970637099023L,Ammo:30,IUuidMost:-254019068140303283L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-4B,121B,-117B,0B,-35B,82B,76B,77B,-67B,-125B,-107B,-75B,-58B,-82B,-1B,-15B,0B,0B,19B,62B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,15B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-62B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-46B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,104B,0B,0B,17B,87B,0B,0B,17B,62B,0B,0B,17B,41B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,69B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,123B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,30B,0B,64B,96B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fAK-15"}}
scoreboard players remove @a[tag=购买AK-15] 爆破-金钱 17
scoreboard players set @a[tag=购买AK-15] 爆破-选择的主武器 14
tellraw @a[tag=购买AK-15] {"text":"§a§l成功购买§fAK-15§a§l!"}
scoreboard players tag @a[tag=购买AK-15] remove 购买AK-15

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_突击步枪页面_min=15,score_突击步枪页面=15,tag=游戏中,score_爆破-金钱_min=15,score_选择的商店=1,score_选择的商店_min=1] add 购买ACR
replaceitem entity @a[tag=购买ACR] slot.hotbar.0 mwc:acr 1 0 {IUuidLeast:-4741527095272921981L,Ammo:30,IUuidMost:4701202655662588567L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,65B,62B,6B,-24B,67B,-28B,66B,-105B,-66B,50B,-74B,58B,-127B,94B,36B,-125B,0B,0B,19B,103B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,12B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-72B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-70B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,4B,0B,0B,16B,92B,0B,0B,16B,-105B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,119B,0B,0B,0B,0B,0B,0B,17B,-12B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,-8B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,0B,0B,0B,0B,30B,0B,64B,64B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fACR"}}
scoreboard players remove @a[tag=购买ACR] 爆破-金钱 15
scoreboard players set @a[tag=购买ACR] 爆破-选择的主武器 15
tellraw @a[tag=购买ACR] {"text":"§a§l成功购买§fACR§a§l!"}
scoreboard players tag @a[tag=购买ACR] remove 购买ACR

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_突击步枪页面_min=16,score_突击步枪页面=16,tag=游戏中,score_爆破-金钱_min=15,score_选择的商店=1,score_选择的商店_min=1] add 购买Scar-L
replaceitem entity @a[tag=购买Scar-L] slot.hotbar.0 mwc:scar_l 1 0 {IUuidLeast:-8205808906115914461L,Ammo:30,IUuidMost:-2290870729031858666L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-32B,53B,49B,53B,-95B,-73B,70B,22B,-114B,31B,28B,70B,-80B,57B,101B,35B,0B,0B,19B,78B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,11B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-74B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-70B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,63B,0B,0B,16B,-116B,0B,0B,17B,36B,0B,0B,16B,71B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,41B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,0B,0B,0B,0B,30B,0B,64B,64B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fScar-L"}}
scoreboard players remove @a[tag=购买Scar-L] 爆破-金钱 15
scoreboard players set @a[tag=购买Scar-L] 爆破-选择的主武器 16
tellraw @a[tag=购买Scar-L] {"text":"§a§l成功购买§fScar-L§a§l!"}
scoreboard players tag @a[tag=购买Scar-L] remove 购买Scar-L

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_突击步枪页面_min=17,score_突击步枪页面=17,tag=游戏中,score_爆破-金钱_min=15,score_选择的商店=2,score_选择的商店_min=2] add 购买AK-101
replaceitem entity @a[tag=购买AK-101] slot.hotbar.0 mwc:ak101 1 0 {IUuidLeast:-5979928231831137249L,Ammo:30,IUuidMost:5823497974735848671L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,80B,-47B,56B,-115B,-58B,86B,68B,-33B,-83B,3B,6B,-12B,-57B,96B,20B,31B,0B,0B,19B,98B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,15B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-50B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,102B,0B,0B,17B,81B,0B,0B,17B,55B,0B,0B,17B,40B,0B,0B,0B,0B,0B,0B,17B,-87B,0B,0B,18B,69B,0B,0B,0B,0B,0B,0B,18B,-125B,0B,0B,0B,0B,0B,0B,18B,-126B,0B,0B,18B,123B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,0B,0B,0B,0B,30B,0B,64B,64B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fAK-101"}}
scoreboard players remove @a[tag=购买AK-101] 爆破-金钱 15
scoreboard players set @a[tag=购买AK-101] 爆破-选择的主武器 17
tellraw @a[tag=购买AK-101] {"text":"§a§l成功购买§fAK-101§a§l!"}
scoreboard players tag @a[tag=购买AK-101] remove 购买AK-101

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_突击步枪页面_min=18,score_突击步枪页面=18,tag=游戏中,score_爆破-金钱_min=18,score_选择的商店=2,score_选择的商店_min=2] add 购买CZ-805
replaceitem entity @a[tag=购买CZ-805] slot.hotbar.0 mwc:cz805_bren 1 0 {IUuidLeast:-6680931563283792037L,Ammo:30,IUuidMost:7754458803720767497L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,107B,-99B,95B,50B,117B,45B,72B,9B,-93B,72B,-112B,35B,-23B,-58B,63B,91B,0B,0B,19B,105B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,15B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-71B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-70B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,67B,0B,0B,0B,0B,0B,0B,16B,-1B,0B,0B,17B,118B,0B,0B,0B,0B,0B,0B,18B,120B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,30B,0B,64B,64B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fCZ-805"}}
scoreboard players remove @a[tag=购买CZ-805] 爆破-金钱 18
scoreboard players set @a[tag=购买CZ-805] 爆破-选择的主武器 18
tellraw @a[tag=购买CZ-805] {"text":"§a§l成功购买§fCZ-805§a§l!"}
scoreboard players tag @a[tag=购买CZ-805] remove 购买CZ-805

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_突击步枪页面_min=19,score_突击步枪页面=19,tag=游戏中,score_爆破-金钱_min=18,score_选择的商店=2,score_选择的商店_min=2] add 购买ARX-160
replaceitem entity @a[tag=购买ARX-160] slot.hotbar.0 mwc:arx160 1 0 {IUuidLeast:-8353918310610692186L,Ammo:30,IUuidMost:5806340343048456396L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,80B,-108B,67B,-57B,88B,108B,72B,-52B,-116B,16B,-21B,-114B,-75B,107B,23B,-90B,0B,0B,19B,106B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,16B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-72B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-70B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,4B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,83B,0B,0B,17B,119B,0B,0B,18B,6B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,124B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,30B,0B,64B,32B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fARX-160"}}
scoreboard players remove @a[tag=购买ARX-160] 爆破-金钱 18
scoreboard players set @a[tag=购买ARX-160] 爆破-选择的主武器 19
tellraw @a[tag=购买ARX-160] {"text":"§a§l成功购买§fARX-160§a§l!"}
scoreboard players tag @a[tag=购买ARX-160] remove 购买ARX-160

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_突击步枪页面_min=20,score_突击步枪页面=20,tag=游戏中,score_爆破-金钱_min=18,score_选择的商店=2,score_选择的商店_min=2] add 购买HKG11
replaceitem entity @a[tag=购买HKG11] slot.hotbar.0 mwc:g11 1 0 {IUuidLeast:-7106329440988596957L,AtId:[I;4477,0,0,0,0,0,0,4356,4152,0,0,0,0,0,4579,0,0,0,0,0,0,0,0,0,0,4096,0],Ammo:50,IUuidMost:5446940351899846970L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,75B,-105B,107B,100B,19B,-69B,73B,58B,-99B,97B,63B,6B,60B,-7B,117B,35B,0B,0B,19B,113B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,32B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,125B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,19B,26B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,4B,0B,0B,16B,56B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,-29B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,50B,0B,63B,-128B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fHK G11"}}
scoreboard players remove @a[tag=购买HKG11] 爆破-金钱 18
scoreboard players set @a[tag=购买HKG11] 爆破-选择的主武器 20
tellraw @a[tag=购买HKG11] {"text":"§a§l成功购买§fHK G11§a§l!"}
scoreboard players tag @a[tag=购买HKG11] remove 购买HKG11

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_突击步枪页面_min=21,score_突击步枪页面=21,tag=游戏中,score_爆破-金钱_min=17,score_选择的商店=2,score_选择的商店_min=2] add 购买K2C1
replaceitem entity @a[tag=购买K2C1] slot.hotbar.0 mwc:k2c1 1 0 {IUuidLeast:-5989902998187926001L,Ammo:30,IUuidMost:-7496194521731872727L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-105B,-8B,42B,-52B,-116B,-15B,72B,41B,-84B,-33B,-106B,-11B,-127B,-10B,30B,15B,0B,0B,19B,111B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,13B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-68B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-70B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,4B,0B,0B,17B,28B,0B,0B,17B,64B,0B,0B,17B,38B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,116B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,124B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,0B,0B,0B,0B,30B,0B,64B,64B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fK2C1"}}
scoreboard players remove @a[tag=购买K2C1] 爆破-金钱 17
scoreboard players set @a[tag=购买K2C1] 爆破-选择的主武器 21
tellraw @a[tag=购买K2C1] {"text":"§a§l成功购买§fK2C1§a§l!"}
scoreboard players tag @a[tag=购买K2C1] remove 购买K2C1

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_突击步枪页面_min=22,score_突击步枪页面=22,tag=游戏中,score_爆破-金钱_min=17,score_选择的商店=2,score_选择的商店_min=2] add 购买Malyuk
replaceitem entity @a[tag=购买Malyuk] slot.hotbar.0 mwc:malyuk 1 0 {IUuidLeast:-5943148442416822575L,Ammo:30,IUuidMost:-3520154050309701092L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-49B,37B,-26B,-118B,-76B,-93B,66B,28B,-83B,-123B,-79B,-6B,-46B,84B,70B,-47B,0B,0B,19B,101B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,15B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-72B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-46B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,4B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,119B,0B,0B,18B,68B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,30B,0B,64B,96B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fMalyuk"}}
scoreboard players remove @a[tag=购买Malyuk] 爆破-金钱 17
scoreboard players set @a[tag=购买Malyuk] 爆破-选择的主武器 22
tellraw @a[tag=购买Malyuk] {"text":"§a§l成功购买§fMalyuk§a§l!"}
scoreboard players tag @a[tag=购买Malyuk] remove 购买Malyuk

#execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_突击步枪页面_min=23,score_突击步枪页面=23,tag=游戏中,score_爆破-金钱_min=17,score_选择的商店=2,score_选择的商店_min=2] add 购买AK-103
#replaceitem entity @a[tag=购买AK-103] slot.hotbar.0 mwc:ak103_bullpup 1 0 {IUuidLeast:-4781744458854334463L,Ammo:30,IUuidMost:8066877173228523048L,Instance:[B;-32B,83B,21B,-112B,-126B,43B,-31B,45B,117B,49B,126B,79B,17B,126B,62B,-127B,0B,0B,0B,9B,111B,-13B,78B,12B,-124B,-2B,78B,40B,-67B,-93B,-44B,-65B,-37B,75B,-128B,1B,0B,0B,20B,26B,0B,0B,0B,5B,0B,0B,0B,0B,0B,0B,0B,45B,75B,99B,82B,108B,-118B,-87B,-71B,14B,-97B,-92B,100B,-74B,-111B,106B,61B,-40B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,19B,-126B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,21B,-81B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,24B,0B,0B,18B,-44B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,111B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-99B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,30B,0B,64B,0B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fAK-103"}}
#scoreboard players remove @a[tag=购买AK-103] 爆破-金钱 17
#scoreboard players set @a[tag=购买AK-103] 爆破-选择的主武器 23
#tellraw @a[tag=购买AK-103] {"text":"§a§l成功购买§fAK-103§a§l!"}
#scoreboard players tag @a[tag=购买AK-103] remove 购买AK-103

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_突击步枪页面_min=24,score_突击步枪页面=24,tag=游戏中,score_爆破-金钱_min=16,score_选择的商店=2,score_选择的商店_min=2] add 购买NGSW-R
replaceitem entity @a[tag=购买NGSW-R] slot.hotbar.0 mwc:ngsw_r 1 0 {IUuidLeast:-7513496325445808123L,Ammo:20,AtId:[I;4537,0,0,0,4795,0,0,4356,0,4427,4387,4277,4470,4719,4716,0,0,0,0,0,0,0,0,0,0,4096,0],IUuidMost:2513738798513998538L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,34B,-30B,-104B,30B,111B,-117B,74B,-54B,-105B,-70B,-78B,-26B,116B,-103B,-112B,5B,0B,0B,19B,52B,0B,0B,0B,2B,0B,0B,0B,0B,0B,0B,0B,24B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-71B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-69B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,4B,0B,0B,0B,0B,0B,0B,17B,75B,0B,0B,17B,35B,0B,0B,16B,-75B,0B,0B,17B,118B,0B,0B,18B,111B,0B,0B,18B,108B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,20B,0B,64B,64B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fNGSW-R"}}
scoreboard players remove @a[tag=购买NGSW-R] 爆破-金钱 16
scoreboard players set @a[tag=购买NGSW-R] 爆破-选择的主武器 24
tellraw @a[tag=购买NGSW-R] {"text":"§a§l成功购买§fNGSW-R§a§l!"}
scoreboard players tag @a[tag=购买NGSW-R] remove 购买NGSW-R

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_突击步枪页面_min=25,score_突击步枪页面=25,tag=游戏中,score_爆破-金钱_min=18,score_选择的商店=0] add 购买SIG-556
replaceitem entity @a[tag=购买SIG-556] slot.hotbar.0 mwc:sig556 1 0 {IUuidLeast:-8372138869692255297L,Ammo:30,AtId:[I;4537,0,0,0,4794,0,0,0,4164,4418,4166,0,0,4718,0,0,0,0,4731,0,0,0,0,0,0,4096,0],IUuidMost:-6218574790491945297L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-87B,-77B,47B,44B,-21B,-121B,70B,-81B,-117B,-48B,48B,14B,53B,-64B,-77B,-65B,0B,0B,19B,112B,0B,0B,0B,2B,0B,0B,0B,0B,0B,0B,0B,22B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-71B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-70B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,68B,0B,0B,17B,66B,0B,0B,16B,70B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,110B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,123B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,30B,0B,64B,64B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fSIG-556"}}
scoreboard players remove @a[tag=购买SIG-556] 爆破-金钱 18
scoreboard players set @a[tag=购买SIG-556] 爆破-选择的主武器 66
tellraw @a[tag=购买SIG-556] {"text":"§a§l成功购买§fSIG-556§a§l!"}
scoreboard players tag @a[tag=购买SIG-556] remove 购买SIG-556

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_突击步枪页面_min=26,score_突击步枪页面=26,tag=游戏中,score_爆破-金钱_min=14,score_选择的商店=1,score_选择的商店_min=1] add 购买AK-74
replaceitem entity @a[tag=购买AK-74] slot.hotbar.0 mwc:ak74 1 0 {IUuidLeast:-6741609165649423365L,AtId:[I;0,0,0,0,0,0,0,4454,4430,4403,4392,0,4521,4677,0,4739,0,4738,4731,0,0,0,0,0,0,4096,0],Ammo:30,IUuidMost:-92057244041002957L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-2B,-72B,-14B,108B,-99B,-17B,64B,51B,-94B,112B,-2B,46B,-78B,-14B,-45B,-5B,0B,0B,19B,99B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,49B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-45B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,102B,0B,0B,17B,78B,0B,0B,17B,51B,0B,0B,17B,40B,0B,0B,0B,0B,0B,0B,17B,-87B,0B,0B,18B,69B,0B,0B,0B,0B,0B,0B,18B,-125B,0B,0B,0B,0B,0B,0B,18B,-126B,0B,0B,18B,123B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,30B,0B,64B,64B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fAK-74"}}
scoreboard players remove @a[tag=购买AK-74] 爆破-金钱 14
scoreboard players set @a[tag=购买AK-74] 爆破-选择的主武器 67
tellraw @a[tag=购买AK-74] {"text":"§a§l成功购买§fAK-74§a§l!"}
scoreboard players tag @a[tag=购买AK-74] remove 购买AK-74

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_突击步枪页面_min=27,score_突击步枪页面=27,tag=游戏中,score_爆破-金钱_min=15,score_选择的商店=2,score_选择的商店_min=2] add 购买Type-20
replaceitem entity @a[tag=购买Type-20] slot.hotbar.0 mwc:type20 1 0 {IUuidLeast:-7049800265273297524L,Ammo:30,IUuidMost:6873003113088043382L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,95B,97B,-49B,-22B,-89B,-60B,73B,118B,-98B,42B,20B,2B,-102B,-18B,53B,-116B,0B,0B,19B,104B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,12B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-72B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-70B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,4B,0B,0B,16B,104B,0B,0B,0B,0B,0B,0B,17B,30B,0B,0B,0B,0B,0B,0B,17B,119B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,0B,0B,0B,0B,30B,0B,64B,64B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fType-20"}}
scoreboard players remove @a[tag=购买Type-20] 爆破-金钱 15
scoreboard players set @a[tag=购买Type-20] 爆破-选择的主武器 68
tellraw @a[tag=购买Type-20] {"text":"§a§l成功购买§fType-20§a§l!"}
scoreboard players tag @a[tag=购买Type-20] remove 购买Type-20

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_突击步枪页面_min=28,score_突击步枪页面=28,tag=游戏中,score_爆破-金钱_min=20,score_选择的商店=2,score_选择的商店_min=2] add 购买HoneyBadger
replaceitem entity @a[tag=购买HoneyBadger] slot.hotbar.0 mwc:aac_honey_badger 1 0 {IUuidLeast:-7266481543041971754L,AtId:[I;4536,0,4553,0,0,0,0,4356,4201,4398,4383,4352,4471,0,4716,0,0,0,0,0,0,0,0,0,0,4096,0],Ammo:30,IUuidMost:-1738375030918394167L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-25B,-32B,13B,30B,-93B,-77B,78B,-55B,-101B,40B,69B,-119B,60B,13B,9B,-42B,0B,0B,19B,-125B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,50B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-72B,0B,0B,0B,0B,0B,0B,17B,-55B,0B,0B,0B,0B,0B,0B,18B,-59B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,4B,0B,0B,16B,105B,0B,0B,17B,46B,0B,0B,17B,31B,0B,0B,17B,0B,0B,0B,17B,119B,0B,0B,0B,0B,0B,0B,18B,108B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,30B,0B,64B,64B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fHoney Badger"}}
scoreboard players remove @a[tag=购买HoneyBadger] 爆破-金钱 20
scoreboard players set @a[tag=购买HoneyBadger] 爆破-选择的主武器 41
tellraw @a[tag=购买HoneyBadger] {"text":"§a§l成功购买§fHoney Badger§a§l!"}
scoreboard players tag @a[tag=购买HoneyBadger] remove 购买HoneyBadger

scoreboard players reset @a[score_突击步枪页面_min=1] 突击步枪页面



scoreboard players enable @a 狙击枪&射手步枪页面

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_狙击枪&射手步枪页面_min=1,score_狙击枪&射手步枪页面=1,tag=游戏中,score_爆破-金钱_min=30,score_选择的商店=1,score_选择的商店_min=1] add 购买M200
replaceitem entity @a[tag=购买M200] slot.hotbar.0 mwc:m200_intervention 1 0 {IUuidLeast:-5733573436932933439L,Ammo:7,AtId:[I;4493,0,0,0,4860,0,0,4356,0,0,0,0,0,4713,0,4702,0,0,0,0,0,0,0,0,0,4096,0],IUuidMost:-3117064980390854246L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-44B,-67B,-11B,-22B,77B,-2B,65B,-102B,-80B,110B,65B,86B,61B,-1B,56B,-63B,0B,0B,19B,-104B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,18B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-115B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-4B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,4B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,105B,0B,0B,0B,0B,0B,0B,18B,94B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,7B,0B,65B,16B,0B,0B,0B,0B,0B,1B,62B,15B,92B,41B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fM200"}}
scoreboard players remove @a[tag=购买M200] 爆破-金钱 30
scoreboard players set @a[tag=购买M200] 爆破-选择的主武器 25
tellraw @a[tag=购买M200] {"text":"§a§l成功购买§fM200§a§l!"}
scoreboard players tag @a[tag=购买M200] remove 购买M200

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_狙击枪&射手步枪页面_min=2,score_狙击枪&射手步枪页面=2,tag=游戏中,score_爆破-金钱_min=28,score_选择的商店=0] add 购买DSR1
replaceitem entity @a[tag=购买DSR1] slot.hotbar.0 mwc:dsr1 1 0 {IUuidLeast:-4702545960033560097L,AtId:[I;4493,0,0,0,0,0,0,0,4224,0,0,4227,-1,0,4700,4701,0,0,0,0,0,0,0,0,0,4096,0],Ammo:10,IUuidMost:4543435030718530762L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,63B,13B,-122B,22B,-102B,11B,68B,-54B,-66B,-67B,51B,93B,80B,64B,89B,-33B,0B,0B,19B,-106B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,47B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-115B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-5B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,-125B,-1B,-1B,-1B,-1B,0B,0B,0B,0B,0B,0B,18B,92B,0B,0B,18B,93B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,10B,0B,65B,0B,0B,0B,0B,0B,0B,1B,62B,15B,92B,41B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fDSR1"}}
scoreboard players remove @a[tag=购买DSR1] 爆破-金钱 28
scoreboard players set @a[tag=购买DSR1] 爆破-选择的主武器 26
tellraw @a[tag=购买DSR1] {"text":"§a§l成功购买§fDSR1§a§l!"}
scoreboard players tag @a[tag=购买DSR1] remove 购买DSR1

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_狙击枪&射手步枪页面_min=3,score_狙击枪&射手步枪页面=3,tag=游戏中,score_爆破-金钱_min=27,score_选择的商店=0] add 购买M40A6
replaceitem entity @a[tag=购买M40A6] slot.hotbar.0 mwc:m40a6 1 0 {IUuidLeast:-7267100874488985559L,AtId:[I;4493,0,0,0,0,0,0,4356,0,0,4362,0,-1,4691,4692,0,0,0,0,0,0,0,0,0,0,4096,0],Ammo:7,IUuidMost:6021423242944269396L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,83B,-112B,100B,-119B,93B,-7B,76B,84B,-101B,38B,18B,65B,-27B,39B,72B,41B,0B,0B,19B,38B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,21B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-115B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-3B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,4B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,10B,0B,0B,0B,0B,-1B,-1B,-1B,-1B,0B,0B,18B,83B,0B,0B,18B,84B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,7B,0B,65B,16B,0B,0B,0B,0B,0B,1B,62B,15B,92B,41B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fM40A6"}}
scoreboard players remove @a[tag=购买M40A6] 爆破-金钱 27
scoreboard players set @a[tag=购买M40A6] 爆破-选择的主武器 27
tellraw @a[tag=购买M40A6] {"text":"§a§l成功购买§fM40A6§a§l!"}
scoreboard players tag @a[tag=购买M40A6] remove 购买M40A6

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_狙击枪&射手步枪页面_min=4,score_狙击枪&射手步枪页面=4,tag=游戏中,score_爆破-金钱_min=24,score_选择的商店=0] add 购买M14DMR
replaceitem entity @a[tag=购买M14DMR] slot.hotbar.0 mwc:mk14_ebr 1 0 {IUuidLeast:-7983727144844238694L,AtId:[I;4493,0,0,0,0,0,0,4235,-1,0,4232,0,0,0,4652,0,4651,0,4731,0,0,0,0,0,0,4096,0],Ammo:20,IUuidMost:3965229476866572778L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,55B,7B,83B,51B,85B,-118B,65B,-22B,-111B,52B,26B,118B,27B,-22B,96B,-102B,0B,0B,19B,-117B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,42B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-115B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,19B,11B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,-117B,-1B,-1B,-1B,-1B,0B,0B,0B,0B,0B,0B,16B,-120B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,44B,0B,0B,0B,0B,0B,0B,18B,43B,0B,0B,0B,0B,0B,0B,18B,123B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,20B,0B,64B,-112B,0B,0B,0B,0B,0B,1B,62B,15B,92B,41B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fM14"}}
scoreboard players remove @a[tag=购买M14DMR] 爆破-金钱 24
scoreboard players set @a[tag=购买M14DMR] 爆破-选择的主武器 28
tellraw @a[tag=购买M14DMR] {"text":"§a§l成功购买§fM14§a§l!"}
scoreboard players tag @a[tag=购买M14DMR] remove 购买M14DMR

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_狙击枪&射手步枪页面_min=5,score_狙击枪&射手步枪页面=5,tag=游戏中,score_爆破-金钱_min=18,score_选择的商店=0] add 购买AR-10
replaceitem entity @a[tag=购买AR-10] slot.hotbar.0 mwc:ar10_super_sass 1 0 {IUuidLeast:-7408256676942429954L,Ammo:10,AtId:[I;4493,0,0,0,4865,0,0,0,4373,4429,4382,4340,-1,0,4716,0,0,0,0,0,0,0,0,0,0,4096,0],IUuidMost:7344822522525011620L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,101B,-18B,13B,43B,113B,100B,78B,-92B,-103B,48B,-107B,-51B,-115B,-18B,64B,-2B,0B,0B,19B,41B,0B,0B,0B,2B,0B,0B,0B,0B,0B,0B,0B,25B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-115B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,19B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,21B,0B,0B,17B,77B,0B,0B,17B,30B,0B,0B,16B,-12B,-1B,-1B,-1B,-1B,0B,0B,0B,0B,0B,0B,18B,108B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,10B,0B,64B,-96B,0B,0B,0B,0B,0B,1B,62B,15B,92B,41B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fAR-10"}}
scoreboard players remove @a[tag=购买AR-10] 爆破-金钱 18
scoreboard players set @a[tag=购买AR-10] 爆破-选择的主武器 29
tellraw @a[tag=购买AR-10] {"text":"§a§l成功购买§fAR-10§a§l!"}
scoreboard players tag @a[tag=购买AR-10] remove 购买AR-10

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_狙击枪&射手步枪页面_min=6,score_狙击枪&射手步枪页面=6,tag=游戏中,score_爆破-金钱_min=17,score_选择的商店=0] add 购买M110
replaceitem entity @a[tag=购买M110] slot.hotbar.0 mwc:m110_sass 1 0 {IUuidLeast:-4642280492762686269L,AtId:[I;4493,0,0,0,0,0,0,0,4371,4428,4388,4347,-1,4720,4729,0,0,0,0,0,0,0,0,0,0,4096,0],Ammo:10,IUuidMost:-7010384928318992582L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-98B,-74B,28B,12B,-32B,-53B,79B,58B,-65B,-109B,78B,124B,-39B,39B,-100B,-61B,0B,0B,19B,40B,0B,0B,0B,2B,0B,0B,0B,0B,0B,0B,0B,24B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-115B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,19B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,19B,0B,0B,17B,76B,0B,0B,17B,36B,0B,0B,16B,-5B,-1B,-1B,-1B,-1B,0B,0B,18B,112B,0B,0B,18B,121B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,10B,0B,64B,-64B,0B,0B,0B,0B,0B,1B,62B,15B,92B,41B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fM110"}}
scoreboard players remove @a[tag=购买M110] 爆破-金钱 17
scoreboard players set @a[tag=购买M110] 爆破-选择的主武器 30
tellraw @a[tag=购买M110] {"text":"§a§l成功购买§fM110§a§l!"}
scoreboard players tag @a[tag=购买M110] remove 购买M110

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_狙击枪&射手步枪页面_min=7,score_狙击枪&射手步枪页面=7,tag=游戏中,score_爆破-金钱_min=35,score_选择的商店=1,score_选择的商店_min=1] add 购买M82Barrett
replaceitem entity @a[tag=购买M82Barrett] slot.hotbar.0 mwc:m82_barrett 1 0 {IUuidLeast:-8600154551071994327L,AtId:[I;4493,0,0,0,0,0,0,4356,0,0,4382,0,4361,0,4623,0,0,0,0,0,0,0,0,0,0,4096,0],Ammo:10,IUuidMost:-2362780672235912177L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-33B,53B,-73B,127B,69B,56B,68B,15B,-120B,-90B,29B,0B,89B,-27B,14B,41B,0B,0B,19B,-102B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,19B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-115B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-11B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,4B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,30B,0B,0B,0B,0B,0B,0B,17B,9B,0B,0B,0B,0B,0B,0B,18B,15B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,10B,0B,65B,112B,0B,0B,0B,0B,0B,1B,62B,15B,92B,41B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fM82 Barrett"}}
scoreboard players remove @a[tag=购买M82Barrett] 爆破-金钱 35
scoreboard players set @a[tag=购买M82Barrett] 爆破-选择的主武器 31
tellraw @a[tag=购买M82Barrett] {"text":"§a§l成功购买§fM82 Barrett§a§l!"}
scoreboard players tag @a[tag=购买M82Barrett] remove 购买M82Barrett

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_狙击枪&射手步枪页面_min=8,score_狙击枪&射手步枪页面=8,tag=游戏中,score_爆破-金钱_min=28,score_选择的商店=1,score_选择的商店_min=1] add 购买SV-98
replaceitem entity @a[tag=购买SV-98] slot.hotbar.0 mwc:sv98 1 0 {IUuidLeast:-8952383709748354851L,AtId:[I;4493,0,0,0,0,0,0,4356,0,0,0,0,0,4697,0,0,0,0,0,0,0,0,0,0,0,4096,0],Ammo:10,IUuidMost:7730166122406234677L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,107B,71B,17B,33B,-44B,-56B,74B,53B,-125B,-62B,-66B,114B,-97B,116B,-96B,-35B,0B,0B,19B,68B,0B,0B,0B,4B,0B,0B,0B,0B,0B,0B,0B,24B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-115B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,19B,34B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,4B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,89B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,10B,0B,65B,16B,0B,0B,0B,0B,0B,1B,62B,97B,71B,-82B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fSV-98"}}
scoreboard players remove @a[tag=购买SV-98] 爆破-金钱 28
scoreboard players set @a[tag=购买SV-98] 爆破-选择的主武器 32
tellraw @a[tag=购买SV-98] {"text":"§a§l成功购买§fSV-98§a§l!"}
scoreboard players tag @a[tag=购买SV-98] remove 购买SV-98

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_狙击枪&射手步枪页面_min=9,score_狙击枪&射手步枪页面=9,tag=游戏中,score_爆破-金钱_min=24,score_选择的商店=1,score_选择的商店_min=1] add 购买FNFAL
replaceitem entity @a[tag=购买FNFAL] slot.hotbar.0 mwc:fnfal 1 0 {IUuidLeast:-7060305099617186498L,AtId:[I;4493,0,0,0,0,0,0,4462,4466,4464,4463,0,0,4679,4680,0,0,0,4731,0,0,0,0,0,0,4096,0],Ammo:20,IUuidMost:1760347745401260966L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,24B,110B,2B,-14B,-99B,-51B,75B,-90B,-98B,4B,-63B,-21B,67B,112B,77B,62B,0B,0B,19B,-118B,0B,0B,0B,2B,0B,0B,0B,0B,0B,0B,0B,42B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-115B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,19B,9B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,110B,0B,0B,17B,114B,0B,0B,17B,112B,0B,0B,17B,111B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,71B,0B,0B,18B,72B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,123B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,20B,0B,64B,-96B,0B,0B,0B,0B,0B,1B,62B,15B,92B,41B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fFN FAL"}}
scoreboard players remove @a[tag=购买FNFAL] 爆破-金钱 24
scoreboard players set @a[tag=购买FNFAL] 爆破-选择的主武器 33
tellraw @a[tag=购买FNFAL] {"text":"§a§l成功购买§fFN FAL§a§l!"}
scoreboard players tag @a[tag=购买FNFAL] remove 购买FNFAL

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_狙击枪&射手步枪页面_min=10,score_狙击枪&射手步枪页面=10,tag=游戏中,score_爆破-金钱_min=23,score_选择的商店=1,score_选择的商店_min=1] add 购买G3
replaceitem entity @a[tag=购买G3] slot.hotbar.0 mwc:g3 1 0 {IUuidLeast:-5456371751374251198L,AtId:[I;4493,0,0,0,0,0,0,4268,4222,4400,0,0,0,4629,4630,0,0,0,4731,0,0,0,0,0,0,4096,0],Ammo:20,IUuidMost:-5996746198853334086L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-84B,-57B,71B,26B,-79B,44B,75B,-70B,-76B,71B,18B,-51B,28B,-36B,-101B,66B,0B,0B,19B,-116B,0B,0B,0B,2B,0B,0B,0B,0B,0B,0B,0B,83B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-115B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,19B,10B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,-84B,0B,0B,16B,126B,0B,0B,17B,48B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,21B,0B,0B,18B,22B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,123B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,20B,0B,64B,64B,0B,0B,0B,0B,0B,1B,62B,15B,92B,41B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fG3"}}
scoreboard players remove @a[tag=购买G3] 爆破-金钱 23
scoreboard players set @a[tag=购买G3] 爆破-选择的主武器 34
tellraw @a[tag=购买G3] {"text":"§a§l成功购买§fG3§a§l!"}
scoreboard players tag @a[tag=购买G3] remove 购买G3

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_狙击枪&射手步枪页面_min=11,score_狙击枪&射手步枪页面=11,tag=游戏中,score_爆破-金钱_min=17,score_选择的商店=1,score_选择的商店_min=1] add 购买Beowulf
replaceitem entity @a[tag=购买Beowulf] slot.hotbar.0 mwc:beowulf_50_cal 1 0 {IUuidLeast:-7915993359378917845L,AtId:[I;4493,0,0,0,4797,0,0,0,4328,4418,4382,4349,-1,4721,4716,0,0,0,0,0,0,0,0,0,0,4096,0],Ammo:13,IUuidMost:-4826131307130631816L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-67B,6B,35B,37B,103B,22B,73B,120B,-110B,36B,-67B,-6B,-7B,-34B,86B,43B,0B,0B,19B,39B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,126B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-115B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-67B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,-24B,0B,0B,17B,66B,0B,0B,17B,30B,0B,0B,16B,-3B,-1B,-1B,-1B,-1B,0B,0B,18B,113B,0B,0B,18B,108B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,13B,0B,64B,-32B,0B,0B,0B,0B,0B,1B,62B,15B,92B,41B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fBeowulf"}}
scoreboard players remove @a[tag=购买Beowulf] 爆破-金钱 17
scoreboard players set @a[tag=购买Beowulf] 爆破-选择的主武器 35
tellraw @a[tag=购买Beowulf] {"text":"§a§l成功购买§fBeowulf§a§l!"}
scoreboard players tag @a[tag=购买Beowulf] remove 购买Beowulf

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_狙击枪&射手步枪页面_min=12,score_狙击枪&射手步枪页面=12,tag=游戏中,score_爆破-金钱_min=35,score_选择的商店=2,score_选择的商店_min=2] add 购买AS50
replaceitem entity @a[tag=购买AS50] slot.hotbar.0 mwc:as50 1 0 {IUuidLeast:-5073504178520082721L,AtId:[I;4493,0,0,0,0,0,0,4356,0,0,0,4363,-1,4685,0,0,0,4732,0,0,0,0,0,0,0,4096,0],Ammo:10,IUuidMost:-2211313720604014615L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-31B,79B,-43B,-29B,28B,115B,71B,-23B,-71B,-105B,74B,-44B,-120B,-39B,-74B,-33B,0B,0B,19B,-103B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,19B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-115B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-12B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,4B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,11B,-1B,-1B,-1B,-1B,0B,0B,18B,77B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,124B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,10B,0B,65B,96B,0B,0B,0B,0B,0B,1B,62B,15B,92B,41B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fAS50"}}
scoreboard players remove @a[tag=购买AS50] 爆破-金钱 35
scoreboard players set @a[tag=购买AS50] 爆破-选择的主武器 36
tellraw @a[tag=购买AS50] {"text":"§a§l成功购买§fAS50§a§l!"}
scoreboard players tag @a[tag=购买AS50] remove 购买AS50

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_狙击枪&射手步枪页面_min=13,score_狙击枪&射手步枪页面=13,tag=游戏中,score_爆破-金钱_min=28,score_选择的商店=2,score_选择的商店_min=2] add 购买L96A1
replaceitem entity @a[tag=购买L96A1] slot.hotbar.0 mwc:l96a1 1 0 {IUuidLeast:-6157286602719469555L,AtId:[I;4493,0,0,0,0,0,0,4356,0,0,0,0,-1,4713,4698,4699,0,4732,0,0,0,0,0,0,0,4096,0],Ammo:10,IUuidMost:-5056325566698207958L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-71B,-44B,82B,-81B,-56B,58B,69B,42B,-86B,-116B,-20B,117B,32B,-94B,96B,13B,0B,0B,19B,-105B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,22B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-115B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-7B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,4B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,-1B,-1B,-1B,-1B,0B,0B,18B,105B,0B,0B,18B,90B,0B,0B,18B,91B,0B,0B,0B,0B,0B,0B,18B,124B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,10B,0B,65B,0B,0B,0B,0B,0B,0B,1B,62B,15B,92B,41B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fL96A1"}}
scoreboard players remove @a[tag=购买L96A1] 爆破-金钱 28
scoreboard players set @a[tag=购买L96A1] 爆破-选择的主武器 37
tellraw @a[tag=购买L96A1] {"text":"§a§l成功购买§fL96A1§a§l!"}
scoreboard players tag @a[tag=购买L96A1] remove 购买L96A1

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_狙击枪&射手步枪页面_min=14,score_狙击枪&射手步枪页面=14,tag=游戏中,score_爆破-金钱_min=25,score_选择的商店=2,score_选择的商店_min=2] add 购买Remington-700
replaceitem entity @a[tag=购买Remington-700] slot.hotbar.0 mwc:remington_700 1 0 {IUuidLeast:-8259354084519634208L,AtId:[I;4493,0,0,0,4862,0,0,0,0,0,4177,0,0,0,4696,4695,0,0,0,0,0,0,0,0,0,4096,0],Ammo:5,IUuidMost:6105873396778812909L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,84B,-68B,107B,-127B,10B,-126B,69B,-19B,-115B,96B,-31B,56B,86B,9B,26B,-32B,0B,0B,19B,83B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,118B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-115B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-2B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,81B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,88B,0B,0B,18B,87B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,5B,0B,65B,32B,0B,0B,0B,0B,0B,1B,62B,97B,71B,-82B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fRemington-700"}}
scoreboard players remove @a[tag=购买Remington-700] 爆破-金钱 25
scoreboard players set @a[tag=购买Remington-700] 爆破-选择的主武器 38
tellraw @a[tag=购买Remington-700] {"text":"§a§l成功购买§fRemington-700§a§l!"}
scoreboard players tag @a[tag=购买Remington-700] remove 购买Remington-700

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_狙击枪&射手步枪页面_min=15,score_狙击枪&射手步枪页面=15,tag=游戏中,score_爆破-金钱_min=24,score_选择的商店=2,score_选择的商店_min=2] add 购买HK417
replaceitem entity @a[tag=购买HK417] slot.hotbar.0 mwc:hk_417 1 0 {IUuidLeast:-4737777854683743474L,AtId:[I;4493,0,0,0,0,0,0,0,4332,4424,4386,4345,-1,0,4716,0,0,0,4731,0,0,0,0,0,0,4096,0],Ammo:20,IUuidMost:-4018022232072895826L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-56B,61B,30B,17B,125B,-84B,66B,-82B,-66B,64B,8B,36B,-102B,-36B,-5B,14B,0B,0B,19B,45B,0B,0B,0B,2B,0B,0B,0B,0B,0B,0B,0B,19B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-115B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-56B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,-20B,0B,0B,17B,72B,0B,0B,17B,34B,0B,0B,16B,-7B,-1B,-1B,-1B,-1B,0B,0B,0B,0B,0B,0B,18B,108B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,123B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,20B,0B,64B,-96B,0B,0B,0B,0B,0B,1B,62B,15B,92B,41B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fHK417"}}
scoreboard players remove @a[tag=购买HK417] 爆破-金钱 24
scoreboard players set @a[tag=购买HK417] 爆破-选择的主武器 39
tellraw @a[tag=购买HK417] {"text":"§a§l成功购买§fHK 417§a§l!"}
scoreboard players tag @a[tag=购买HK417] remove 购买HK417

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_狙击枪&射手步枪页面_min=16,score_狙击枪&射手步枪页面=16,tag=游戏中,score_爆破-金钱_min=17,score_选择的商店=2,score_选择的商店_min=2] add 购买Z10
replaceitem entity @a[tag=购买Z10] slot.hotbar.0 mwc:zbroyar_z10 1 0 {IUuidLeast:-7006729836744774167L,AtId:[I;4493,0,0,0,0,0,0,0,4372,0,4386,4348,-1,0,4716,0,0,0,0,0,0,0,0,0,0,4096,0],Ammo:10,IUuidMost:3500069121669153840L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,48B,-110B,-66B,82B,110B,103B,68B,48B,-98B,-61B,24B,86B,51B,-78B,109B,-23B,0B,0B,19B,42B,0B,0B,0B,2B,0B,0B,0B,0B,0B,0B,0B,24B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-115B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,19B,2B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,20B,0B,0B,0B,0B,0B,0B,17B,34B,0B,0B,16B,-4B,-1B,-1B,-1B,-1B,0B,0B,0B,0B,0B,0B,18B,108B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,10B,0B,64B,-64B,0B,0B,0B,0B,0B,1B,62B,15B,92B,41B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fZ10"}}
scoreboard players remove @a[tag=购买Z10] 爆破-金钱 17
scoreboard players set @a[tag=购买Z10] 爆破-选择的主武器 40
tellraw @a[tag=购买Z10] {"text":"§a§l成功购买§fZ10§a§l!"}
scoreboard players tag @a[tag=购买Z10] remove 购买Z10

#execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_狙击枪&射手步枪页面_min=17,score_狙击枪&射手步枪页面=17,tag=游戏中,score_爆破-金钱_min=32,score_选择的商店=0] add 购买PGMHecate
#replaceitem entity @a[tag=购买PGMHecate] slot.hotbar.0 mwc:pgm_hecate_ii 1 0 {IUuidLeast:-6066917029289179972L,AtId:[I;5629,4203,0,0,4472,0,0,0,4939,0,0,0,0,4247,4857,4859,0,0,0,0,0,0,0,0,0,4765,0],Ammo:7,IUuidMost:5272012225584713559L,Instance:[B;-32B,83B,21B,-112B,-126B,43B,-31B,45B,117B,49B,126B,79B,17B,126B,62B,-127B,0B,0B,0B,9B,73B,41B,-13B,47B,-43B,126B,79B,87B,-85B,-51B,-5B,27B,19B,115B,68B,-68B,0B,0B,20B,86B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,3B,21B,75B,99B,82B,108B,-118B,-87B,-71B,14B,-97B,-92B,100B,-74B,-111B,106B,61B,-40B,0B,0B,0B,1B,27B,0B,0B,21B,-3B,0B,0B,16B,107B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,120B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,19B,75B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,-105B,0B,0B,18B,-7B,0B,0B,18B,-5B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-99B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,7B,0B,64B,-77B,51B,51B,0B,0B,0B,1B,62B,15B,92B,41B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fPGM Hecate"}}
#scoreboard players remove @a[tag=购买PGMHecate] 爆破-金钱 32
#scoreboard players set @a[tag=购买PGMHecate] 爆破-选择的主武器 65
#tellraw @a[tag=购买PGMHecate] {"text":"§a§l成功购买§fPGM Hecate§a§l!"}
#scoreboard players tag @a[tag=购买PGMHecate] remove 购买PGMHecate

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_狙击枪&射手步枪页面_min=18,score_狙击枪&射手步枪页面=18,tag=游戏中,score_爆破-金钱_min=34,score_选择的商店=0] add 购买SVD
replaceitem entity @a[tag=购买SVD] slot.hotbar.0 mwc:svd_dragunov 1 0 {IUuidLeast:-7519338191134423540L,AtId:[I;4473,0,0,0,0,0,0,4452,4431,4404,0,0,0,4675,0,0,0,0,0,0,0,0,0,0,0,4096,0],Ammo:10,IUuidMost:-1150069385637836924L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-16B,10B,33B,-4B,-78B,1B,71B,-124B,-105B,-91B,-15B,-63B,27B,103B,-122B,12B,0B,0B,19B,66B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,26B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,121B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-37B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,100B,0B,0B,17B,79B,0B,0B,17B,52B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,67B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,10B,0B,65B,32B,0B,0B,0B,0B,0B,1B,62B,15B,92B,41B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fSVD"}}
scoreboard players remove @a[tag=购买SVD] 爆破-金钱 34
scoreboard players set @a[tag=购买SVD] 爆破-选择的主武器 69
tellraw @a[tag=购买SVD] {"text":"§a§l成功购买§fSVD§a§l!"}
scoreboard players tag @a[tag=购买SVD] remove 购买SVD

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_狙击枪&射手步枪页面_min=19,score_狙击枪&射手步枪页面=19,tag=游戏中,score_爆破-金钱_min=34,score_选择的商店=2,score_选择的商店_min=2] add 购买SSG-08
replaceitem entity @a[tag=购买SSG-08] slot.hotbar.0 mwc:ssg_08 1 0 {IUuidLeast:-7962852169594754774L,AtId:[I;4493,0,0,0,0,0,0,0,4178,0,0,0,0,0,4694,4693,0,0,0,0,0,0,0,0,0,4096,0],Ammo:8,IUuidMost:-6385736461343701618L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-89B,97B,78B,-123B,-128B,89B,69B,-114B,-111B,126B,68B,36B,8B,91B,41B,42B,0B,0B,19B,-107B,0B,0B,0B,2B,0B,0B,0B,0B,0B,0B,0B,16B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-115B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,19B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,82B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,86B,0B,0B,18B,85B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,8B,0B,65B,32B,0B,0B,0B,0B,0B,1B,62B,15B,92B,41B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fSSG-08"}}
scoreboard players remove @a[tag=购买SSG-08] 爆破-金钱 34
scoreboard players set @a[tag=购买SSG-08] 爆破-选择的主武器 70
tellraw @a[tag=购买SSG-08] {"text":"§a§l成功购买§fSSG-08§a§l!"}
scoreboard players tag @a[tag=购买SSG-08] remove 购买SSG-08

scoreboard players reset @a[score_狙击枪&射手步枪页面_min=1] 狙击枪&射手步枪页面



scoreboard players enable @a 冲锋枪页面

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_冲锋枪页面_min=1,score_冲锋枪页面=1,tag=游戏中,score_爆破-金钱_min=17,score_选择的商店=0] add 购买FMG-9
replaceitem entity @a[tag=购买FMG-9] slot.hotbar.0 mwc:fmg9 1 0 {IUuidLeast:-8150991747020309455L,Ammo:50,IUuidMost:1983679872391726784L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,27B,-121B,114B,85B,126B,0B,70B,-64B,-114B,-31B,-36B,49B,31B,-74B,-68B,49B,0B,0B,19B,97B,0B,0B,0B,2B,0B,0B,0B,0B,0B,0B,0B,24B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,123B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-13B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,50B,0B,63B,-128B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fFMG-9"}}
scoreboard players remove @a[tag=购买FMG-9] 爆破-金钱 17
scoreboard players set @a[tag=购买FMG-9] 爆破-选择的主武器 71
tellraw @a[tag=购买FMG-9] {"text":"§a§l成功购买§fFMG-9§a§l!"}
scoreboard players tag @a[tag=购买FMG-9] remove 购买FMG-9

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_冲锋枪页面_min=2,score_冲锋枪页面=2,tag=游戏中,score_爆破-金钱_min=17,score_选择的商店=0] add 购买KrissVector
replaceitem entity @a[tag=购买KrissVector] slot.hotbar.0 mwc:kriss_vector 1 0 {IUuidLeast:-7456109238719143185L,AtId:[I;4535,0,0,0,0,0,0,0,0,4240,4172,4169,4471,0,0,0,0,0,0,0,0,0,0,0,0,4096,0],Ammo:30,IUuidMost:8283260365471106957L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,114B,-12B,13B,106B,113B,-6B,71B,-115B,-104B,-122B,-108B,38B,-53B,-93B,34B,-17B,0B,0B,19B,96B,0B,0B,0B,2B,0B,0B,0B,0B,0B,0B,0B,33B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-73B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-68B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,-112B,0B,0B,16B,76B,0B,0B,16B,73B,0B,0B,17B,119B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,30B,0B,64B,32B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fKriss Vector"}}
scoreboard players remove @a[tag=购买KrissVector] 爆破-金钱 17
scoreboard players set @a[tag=购买KrissVector] 爆破-选择的主武器 42
tellraw @a[tag=购买KrissVector] {"text":"§a§l成功购买§fKriss Vector§a§l!"}
scoreboard players tag @a[tag=购买KrissVector] remove 购买KrissVector

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_冲锋枪页面_min=3,score_冲锋枪页面=3,tag=游戏中,score_爆破-金钱_min=16,score_选择的商店=0] add 购买MAC-10
replaceitem entity @a[tag=购买MAC-10] slot.hotbar.0 mwc:mac10 1 0 {IUuidLeast:-5659362121651530793L,Ammo:30,IUuidMost:-7705777692699767903L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-107B,15B,-108B,3B,-12B,-128B,75B,-95B,-79B,117B,-24B,34B,-117B,-88B,-45B,-41B,0B,0B,19B,74B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,15B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,19B,25B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,-107B,0B,0B,16B,-29B,0B,0B,16B,-39B,0B,0B,16B,-38B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,30B,0B,63B,-128B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fMAC-10"}}
scoreboard players remove @a[tag=购买MAC-10] 爆破-金钱 16
scoreboard players set @a[tag=购买MAC-10] 爆破-选择的主武器 43
tellraw @a[tag=购买MAC-10] {"text":"§a§l成功购买§fMAC-10§a§l!"}
scoreboard players tag @a[tag=购买MAC-10] remove 购买MAC-10

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_冲锋枪页面_min=4,score_冲锋枪页面=4,tag=游戏中,score_爆破-金钱_min=14,score_选择的商店=0] add 购买HKMP5
replaceitem entity @a[tag=购买HKMP5] slot.hotbar.0 mwc:mp5a5 1 0 {IUuidLeast:-5947069529144436922L,AtId:[I;0,0,0,0,4878,0,0,4268,4264,4325,4318,0,0,0,4625,4627,0,0,4731,0,0,0,0,0,0,4096,0],Ammo:30,IUuidMost:-8979962496157661341L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-125B,96B,-61B,-80B,8B,49B,71B,99B,-83B,119B,-61B,-59B,-84B,-53B,-41B,70B,0B,0B,19B,69B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,97B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,19B,14B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,-84B,0B,0B,16B,-88B,0B,0B,16B,-27B,0B,0B,16B,-34B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,17B,0B,0B,18B,19B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,123B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,30B,0B,63B,-64B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fHK MP5"}}
scoreboard players remove @a[tag=购买HKMP5] 爆破-金钱 14
scoreboard players set @a[tag=购买HKMP5] 爆破-选择的主武器 44
tellraw @a[tag=购买HKMP5] {"text":"§a§l成功购买§fHK MP5§a§l!"}
scoreboard players tag @a[tag=购买HKMP5] remove 购买HKMP5

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_冲锋枪页面_min=5,score_冲锋枪页面=5,tag=游戏中,score_爆破-金钱_min=13,score_选择的商店=0] add 购买UMP45
replaceitem entity @a[tag=购买UMP45] slot.hotbar.0 mwc:ump_45 1 0 {IUuidLeast:-8716880898063688977L,Ammo:25,IUuidMost:8322212988169833231L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,115B,126B,112B,-98B,-87B,1B,75B,15B,-121B,7B,107B,1B,-39B,-122B,-102B,-17B,0B,0B,19B,71B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,11B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,19B,18B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,-108B,0B,0B,0B,0B,0B,0B,16B,-110B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,18B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,123B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,0B,0B,0B,0B,25B,0B,64B,0B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fUMP45"}}
scoreboard players remove @a[tag=购买UMP45] 爆破-金钱 13
scoreboard players set @a[tag=购买UMP45] 爆破-选择的主武器 45
tellraw @a[tag=购买UMP45] {"text":"§a§l成功购买§fUMP45§a§l!"}
scoreboard players tag @a[tag=购买UMP45] remove 购买UMP45

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_冲锋枪页面_min=6,score_冲锋枪页面=6,tag=游戏中,score_爆破-金钱_min=18,score_选择的商店=1,score_选择的商店_min=1] add 购买HKMP7
replaceitem entity @a[tag=购买HKMP7] slot.hotbar.0 mwc:mp7 1 0 {IUuidLeast:-6369814933787399743L,AtId:[I;0,0,0,0,0,0,0,4356,0,4401,0,4363,4543,4618,0,4628,0,0,0,0,0,0,0,0,0,4096,0],Ammo:40,IUuidMost:8543809977599413643L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,118B,-111B,-75B,-24B,87B,64B,77B,-117B,-89B,-103B,-33B,17B,2B,-97B,-87B,-63B,0B,0B,19B,70B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,18B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,19B,16B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,4B,0B,0B,0B,0B,0B,0B,17B,49B,0B,0B,0B,0B,0B,0B,17B,11B,0B,0B,17B,-65B,0B,0B,18B,10B,0B,0B,0B,0B,0B,0B,18B,20B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,40B,0B,63B,-128B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fHK MP7"}}
scoreboard players remove @a[tag=购买HKMP7] 爆破-金钱 18
scoreboard players set @a[tag=购买HKMP7] 爆破-选择的主武器 46
tellraw @a[tag=购买HKMP7] {"text":"§a§l成功购买§fHK MP7§a§l!"}
scoreboard players tag @a[tag=购买HKMP7] remove 购买HKMP7

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_冲锋枪页面_min=7,score_冲锋枪页面=7,tag=游戏中,score_爆破-金钱_min=17,score_选择的商店=1,score_选择的商店_min=1] add 购买EVO3A1
replaceitem entity @a[tag=购买EVO3A1] slot.hotbar.0 mwc:scorpion_evo3_a1 1 0 {IUuidLeast:-6273350484618825417L,Ammo:30,IUuidMost:3079067859732547682L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,42B,-69B,11B,-25B,-94B,-82B,72B,98B,-88B,-16B,-108B,-8B,-52B,-59B,49B,55B,0B,0B,19B,75B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,9B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-67B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,19B,22B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,4B,0B,0B,16B,-86B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,-66B,0B,0B,0B,0B,0B,0B,18B,117B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,124B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,0B,0B,0B,0B,30B,0B,63B,-64B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fEVO3 A1"}}
scoreboard players remove @a[tag=购买EVO3A1] 爆破-金钱 17
scoreboard players set @a[tag=购买EVO3A1] 爆破-选择的主武器 47
tellraw @a[tag=购买EVO3A1] {"text":"§a§l成功购买§fEVO3 A1§a§l!"}
scoreboard players tag @a[tag=购买EVO3A1] remove 购买EVO3A1

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_冲锋枪页面_min=8,score_冲锋枪页面=8,tag=游戏中,score_爆破-金钱_min=16,score_选择的商店=1,score_选择的商店_min=1] add 购买APC9
replaceitem entity @a[tag=购买APC9] slot.hotbar.0 mwc:apc9 1 0 {IUuidLeast:-6818567854021482270L,Ammo:30,IUuidMost:8060666051150106470L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,111B,-35B,61B,16B,-9B,-38B,79B,102B,-95B,95B,-108B,-87B,-64B,38B,-24B,-30B,0B,0B,19B,76B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,13B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-72B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,19B,21B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,4B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,6B,0B,0B,17B,119B,0B,0B,0B,0B,0B,0B,18B,118B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,124B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,30B,0B,64B,0B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fAPC9"}}
scoreboard players remove @a[tag=购买APC9] 爆破-金钱 16
scoreboard players set @a[tag=购买APC9] 爆破-选择的主武器 48
tellraw @a[tag=购买APC9] {"text":"§a§l成功购买§fAPC9§a§l!"}
scoreboard players tag @a[tag=购买APC9] remove 购买APC9

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_冲锋枪页面_min=9,score_冲锋枪页面=9,tag=游戏中,score_爆破-金钱_min=10,score_选择的商店=1,score_选择的商店_min=1] add 购买PP-91
replaceitem entity @a[tag=购买PP-91] slot.hotbar.0 mwc:pp91_kedr 1 0 {IUuidLeast:-4720302943062026154L,Ammo:20,IUuidMost:-6529360097055584277L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-91B,99B,13B,-107B,-12B,100B,79B,-21B,-66B,126B,29B,123B,-122B,-114B,-104B,86B,0B,0B,19B,64B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,14B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-8B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,9B,0B,0B,18B,8B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,20B,0B,64B,0B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,1B,0B,0B,0B,0B,1B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fPP-91"}}
scoreboard players remove @a[tag=购买PP-91] 爆破-金钱 10
scoreboard players set @a[tag=购买PP-91] 爆破-选择的主武器 49
tellraw @a[tag=购买PP-91] {"text":"§a§l成功购买§fPP-91§a§l!"}
scoreboard players tag @a[tag=购买PP-91] remove 购买PP-91

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_冲锋枪页面_min=10,score_冲锋枪页面=10,tag=游戏中,score_爆破-金钱_min=18,score_选择的商店=2,score_选择的商店_min=2] add 购买FNP90
replaceitem entity @a[tag=购买FNP90] slot.hotbar.0 mwc:p90 1 0 {IUuidLeast:-6756024936624115932L,Ammo:50,IUuidMost:2477860599545413906L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,34B,99B,33B,22B,70B,-41B,65B,18B,-94B,61B,-57B,29B,118B,-42B,-81B,36B,0B,0B,19B,73B,0B,0B,0B,2B,0B,0B,0B,0B,0B,0B,0B,11B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-74B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,19B,23B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,7B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,61B,0B,0B,17B,-31B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,124B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,0B,0B,0B,0B,50B,0B,63B,-64B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fFN P90"}}
scoreboard players remove @a[tag=购买FNP90] 爆破-金钱 18
scoreboard players set @a[tag=购买FNP90] 爆破-选择的主武器 50
tellraw @a[tag=购买FNP90] {"text":"§a§l成功购买§fFN P90§a§l!"}
scoreboard players tag @a[tag=购买FNP90] remove 购买FNP90

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_冲锋枪页面_min=11,score_冲锋枪页面=11,tag=游戏中,score_爆破-金钱_min=17,score_选择的商店=2,score_选择的商店_min=2] add 购买S7-10Tricun
replaceitem entity @a[tag=购买S7-10Tricun] slot.hotbar.0 mwc:s7_10_tricun 1 0 {IUuidLeast:-7292966059444737451L,AtId:[I;4535,0,0,0,0,0,0,0,4374,4424,4389,4350,4471,0,4722,4723,0,4732,0,0,0,0,0,0,0,4096,0],Ammo:30,IUuidMost:8619973238262285246L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,119B,-96B,75B,-3B,87B,-1B,67B,-66B,-102B,-54B,46B,2B,59B,-48B,-22B,85B,0B,0B,19B,77B,0B,0B,0B,2B,0B,0B,0B,0B,0B,0B,0B,21B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-73B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-64B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,22B,0B,0B,17B,72B,0B,0B,17B,37B,0B,0B,16B,-2B,0B,0B,17B,119B,0B,0B,0B,0B,0B,0B,18B,114B,0B,0B,18B,115B,0B,0B,0B,0B,0B,0B,18B,124B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,30B,0B,63B,-64B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fS7-10 Tricun"}}
scoreboard players remove @a[tag=购买S7-10Tricun] 爆破-金钱 17
scoreboard players set @a[tag=购买S7-10Tricun] 爆破-选择的主武器 51
tellraw @a[tag=购买S7-10Tricun] {"text":"§a§l成功购买§fS7-10 Tricun§a§l!"}
scoreboard players tag @a[tag=购买S7-10Tricun] remove 购买S7-10Tricun

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_冲锋枪页面_min=12,score_冲锋枪页面=12,tag=游戏中,score_爆破-金钱_min=16,score_选择的商店=2,score_选择的商店_min=2] add 购买SIGMPX
replaceitem entity @a[tag=购买SIGMPX] slot.hotbar.0 mwc:sig_mpx 1 0 {IUuidLeast:-5386339646053695138L,Ammo:30,AtId:[I;4535,0,0,0,4884,0,0,4356,4379,0,4382,0,4470,0,4716,0,0,4732,0,0,0,0,0,0,0,4096,0],IUuidMost:-2751164513004598604L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-39B,-47B,-26B,115B,-93B,-77B,74B,-76B,-75B,63B,-32B,-95B,69B,93B,-63B,94B,0B,0B,19B,72B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,29B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-73B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,19B,20B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,4B,0B,0B,17B,27B,0B,0B,0B,0B,0B,0B,17B,30B,0B,0B,0B,0B,0B,0B,17B,118B,0B,0B,0B,0B,0B,0B,18B,108B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,124B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,30B,0B,63B,-64B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fSIG MPX"}}
scoreboard players remove @a[tag=购买SIGMPX] 爆破-金钱 16
scoreboard players set @a[tag=购买SIGMPX] 爆破-选择的主武器 52
tellraw @a[tag=购买SIGMPX] {"text":"§a§l成功购买§fSIG MPX§a§l!"}
scoreboard players tag @a[tag=购买SIGMPX] remove 购买SIGMPX

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_冲锋枪页面_min=13,score_冲锋枪页面=13,tag=游戏中,score_爆破-金钱_min=14,score_选择的商店=2,score_选择的商店_min=2] add 购买Uzi
replaceitem entity @a[tag=购买Uzi] slot.hotbar.0 mwc:uzi 1 0 {IUuidLeast:-9039682457717428042L,Ammo:32,IUuidMost:166886706606919252L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,2B,80B,-26B,-109B,81B,10B,78B,84B,-126B,-116B,-104B,-78B,-15B,108B,48B,-74B,0B,0B,19B,-126B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,15B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,19B,35B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,79B,0B,0B,18B,80B,0B,0B,0B,0B,0B,0B,18B,81B,0B,0B,0B,0B,0B,0B,18B,123B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,32B,0B,64B,0B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fUzi"}}
scoreboard players remove @a[tag=购买Uzi] 爆破-金钱 14
scoreboard players set @a[tag=购买Uzi] 爆破-选择的主武器 53
tellraw @a[tag=购买Uzi] {"text":"§a§l成功购买§fUzi§a§l!"}
scoreboard players tag @a[tag=购买Uzi] remove 购买Uzi

scoreboard players reset @a[score_冲锋枪页面_min=1] 冲锋枪页面



scoreboard players enable @a 霰弹枪页面

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_霰弹枪页面_min=1,score_霰弹枪页面=1,tag=游戏中,score_爆破-金钱_min=25,score_选择的商店=0] add 购买M1014
replaceitem entity @a[tag=购买M1014] slot.hotbar.0 mwc:m1014 1 0 {IUuidLeast:-5100956449941880470L,Ammo:7,IUuidMost:-2074987703778195900L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-29B,52B,41B,-83B,90B,-1B,70B,68B,-71B,53B,-61B,34B,-126B,122B,1B,106B,0B,0B,19B,43B,0B,0B,0B,2B,0B,0B,0B,0B,0B,0B,0B,26B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,4B,0B,0B,0B,0B,0B,0B,16B,-97B,0B,0B,16B,-96B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,102B,0B,0B,17B,-11B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,124B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,7B,0B,65B,0B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fM1014"}}
scoreboard players remove @a[tag=购买M1014] 爆破-金钱 25
scoreboard players set @a[tag=购买M1014] 爆破-选择的主武器 54
tellraw @a[tag=购买M1014] {"text":"§a§l成功购买§fM1014§a§l!"}
scoreboard players tag @a[tag=购买M1014] remove 购买M1014

#execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_霰弹枪页面_min=2,score_霰弹枪页面=2,tag=游戏中,score_爆破-金钱_min=19,score_选择的商店=0] add 购买KS-23
#replaceitem entity @a[tag=购买KS-23] slot.hotbar.0 mwc:ks23 1 0 {IUuidLeast:-6304014676566215756L,Ammo:4,IUuidMost:-1028429530334934828L,Instance:[B;-32B,83B,21B,-112B,-126B,43B,-31B,45B,117B,49B,126B,79B,17B,126B,62B,-127B,0B,0B,0B,9B,-15B,-70B,72B,-54B,127B,-35B,72B,-44B,-88B,-125B,-92B,13B,64B,107B,-13B,-76B,0B,0B,19B,-19B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,57B,75B,99B,82B,108B,-118B,-87B,-71B,14B,-97B,-92B,100B,-74B,-111B,106B,61B,-40B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,19B,105B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,35B,0B,0B,19B,0B,0B,0B,21B,64B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,111B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-99B,0B,0B,0B,0B,0B,0B,0B,0B,4B,0B,65B,16B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fKS-23"}}
#scoreboard players remove @a[tag=购买KS-23] 爆破-金钱 19
#scoreboard players set @a[tag=购买KS-23] 爆破-选择的主武器 55
#tellraw @a[tag=购买KS-23] {"text":"§a§l成功购买§fKS-23§a§l!"}
#scoreboard players tag @a[tag=购买KS-23] remove 购买KS-23

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_霰弹枪页面_min=3,score_霰弹枪页面=3,tag=游戏中,score_爆破-金钱_min=14,score_选择的商店=0] add 购买Remington-870
replaceitem entity @a[tag=购买Remington-870] slot.hotbar.0 mwc:remington870 1 0 {IUuidLeast:-5912394206176092211L,AtId:[I;0,0,0,0,0,0,0,4270,4506,4509,0,4512,0,4710,0,0,0,0,0,0,0,0,0,0,0,4096,0],Ammo:4,IUuidMost:-7828650694173507168L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-109B,91B,11B,-85B,-17B,44B,65B,-96B,-83B,-14B,-12B,-53B,112B,-53B,-33B,-51B,0B,0B,19B,118B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,70B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,-82B,0B,0B,17B,-102B,0B,0B,17B,-99B,0B,0B,0B,0B,0B,0B,17B,-96B,0B,0B,0B,0B,0B,0B,18B,102B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,4B,0B,65B,112B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fRemington-870"}}
scoreboard players remove @a[tag=购买Remington-870] 爆破-金钱 14
scoreboard players set @a[tag=购买Remington-870] 爆破-选择的主武器 56
tellraw @a[tag=购买Remington-870] {"text":"§a§l成功购买§fRemington-870§a§l!"}
scoreboard players tag @a[tag=购买Remington-870] remove 购买Remington-870

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_霰弹枪页面_min=4,score_霰弹枪页面=4,tag=游戏中,score_爆破-金钱_min=25,score_选择的商店=1,score_选择的商店_min=1] add 购买Spas-12
replaceitem entity @a[tag=购买Spas-12] slot.hotbar.0 mwc:spas_12 1 0 {IUuidLeast:-6822353459049369778L,AtId:[I;0,0,0,0,0,0,0,4270,0,4255,0,0,0,4710,4597,4598,0,0,4731,0,0,0,0,0,0,4096,0],Ammo:7,IUuidMost:-1019703951384426231L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-15B,-39B,72B,-88B,-87B,-85B,73B,9B,-95B,82B,33B,-84B,-27B,52B,111B,78B,0B,0B,19B,-123B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,32B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,-82B,0B,0B,0B,0B,0B,0B,16B,-97B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,102B,0B,0B,17B,-11B,0B,0B,17B,-10B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,123B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,7B,0B,64B,-32B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fSpas-12"}}
scoreboard players remove @a[tag=购买Spas-12] 爆破-金钱 25
scoreboard players set @a[tag=购买Spas-12] 爆破-选择的主武器 57
tellraw @a[tag=购买Spas-12] {"text":"§a§l成功购买§fSpas-12§a§l!"}
scoreboard players tag @a[tag=购买Spas-12] remove 购买Spas-12

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_霰弹枪页面_min=5,score_霰弹枪页面=5,tag=游戏中,score_爆破-金钱_min=18,score_选择的商店=1,score_选择的商店_min=1] add 购买Benelli
replaceitem entity @a[tag=购买Benelli] slot.hotbar.0 mwc:supernova 1 0 {IUuidLeast:-7631250576300085084L,AtId:[I;0,0,0,0,0,0,0,4270,0,4255,4256,0,0,4710,0,4599,0,0,0,0,0,0,0,0,0,4096,0],Ammo:7,IUuidMost:-5564507254728015829L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-78B,-58B,-26B,34B,67B,-38B,64B,43B,-106B,24B,90B,8B,111B,-93B,112B,-92B,0B,0B,19B,44B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,35B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,-82B,0B,0B,0B,0B,0B,0B,16B,-97B,0B,0B,16B,-96B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,102B,0B,0B,0B,0B,0B,0B,17B,-9B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,7B,0B,65B,48B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fSupernova"}}
scoreboard players remove @a[tag=购买Benelli] 爆破-金钱 18
scoreboard players set @a[tag=购买Benelli] 爆破-选择的主武器 58
tellraw @a[tag=购买Benelli] {"text":"§a§l成功购买§fSupernova§a§l!"}
scoreboard players tag @a[tag=购买Benelli] remove 购买Benelli

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_霰弹枪页面_min=6,score_霰弹枪页面=6,tag=游戏中,score_爆破-金钱_min=40,score_选择的商店=2,score_选择的商店_min=2] add 购买Origin-12
replaceitem entity @a[tag=购买Origin-12] slot.hotbar.0 mwc:origin12 1 0 {IUuidLeast:-7328131934878527904L,Ammo:12,IUuidMost:-4452940498445188074L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-62B,51B,-6B,53B,-104B,57B,68B,22B,-102B,77B,62B,-44B,-46B,94B,-114B,96B,0B,0B,19B,-120B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,14B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-72B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-34B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,77B,0B,0B,16B,90B,0B,0B,16B,88B,0B,0B,0B,0B,0B,0B,17B,119B,0B,0B,17B,-32B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,124B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,12B,0B,65B,16B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fOrigin-12"}}
scoreboard players remove @a[tag=购买Origin-12] 爆破-金钱 40
scoreboard players set @a[tag=购买Origin-12] 爆破-选择的主武器 59
tellraw @a[tag=购买Origin-12] {"text":"§a§l成功购买§fOrigin-12§a§l!"}
scoreboard players tag @a[tag=购买Origin-12] remove 购买Origin-12

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_霰弹枪页面_min=7,score_霰弹枪页面=7,tag=游戏中,score_爆破-金钱_min=20,score_选择的商店=2,score_选择的商店_min=2] add 购买Saiga12
replaceitem entity @a[tag=购买Saiga12] slot.hotbar.0 mwc:saiga12 1 0 {IUuidLeast:-7821613522827601590L,Ammo:4,IUuidMost:-7503162114418851234L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-105B,-33B,105B,-49B,117B,-27B,66B,94B,-109B,116B,11B,-15B,17B,120B,25B,74B,0B,0B,19B,-124B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,14B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-36B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,76B,0B,0B,18B,75B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,4B,0B,64B,-96B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fSaiga 12"}}
scoreboard players remove @a[tag=购买Saiga12] 爆破-金钱 20
scoreboard players set @a[tag=购买Saiga12] 爆破-选择的主武器 60
tellraw @a[tag=购买Saiga12] {"text":"§a§l成功购买§fSaiga 12§a§l!"}
scoreboard players tag @a[tag=购买Saiga12] remove 购买Saiga12

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_霰弹枪页面_min=8,score_霰弹枪页面=8,tag=游戏中,score_爆破-金钱_min=17,score_选择的商店=0] add 购买HS-12
replaceitem entity @a[tag=购买HS-12] slot.hotbar.0 mwc:hs12 1 0 {IUuidLeast:-7231647298778175104L,Ammo:2,IUuidMost:4898900808714504615L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,67B,-4B,100B,84B,125B,77B,73B,-89B,-101B,-92B,7B,24B,-65B,105B,-23B,-128B,0B,0B,19B,-121B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,11B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,4B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,2B,0B,0B,18B,103B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,2B,0B,65B,16B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fHS-12"}}
scoreboard players remove @a[tag=购买HS-12] 爆破-金钱 17
scoreboard players set @a[tag=购买HS-12] 爆破-选择的主武器 61
tellraw @a[tag=购买HS-12] {"text":"§a§l成功购买§fHS-12§a§l!"}
scoreboard players tag @a[tag=购买HS-12] remove 购买HS-12

scoreboard players reset @a[score_霰弹枪页面_min=1] 霰弹枪页面



scoreboard players enable @a 机枪页面

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_机枪页面_min=1,score_机枪页面=1,tag=游戏中,score_爆破-金钱_min=28,score_选择的商店=0] add 购买M249
replaceitem entity @a[tag=购买M249] slot.hotbar.0 mwc:m249 1 0 {IUuidLeast:-6492234188110390079L,Ammo:100,IUuidMost:823147108016934909L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,11B,108B,103B,-18B,-5B,61B,79B,-3B,-91B,-26B,-13B,103B,59B,8B,-100B,-63B,0B,0B,19B,37B,0B,0B,0B,2B,0B,0B,0B,0B,0B,0B,0B,8B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-61B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,4B,0B,0B,16B,109B,0B,0B,16B,-93B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,111B,0B,0B,0B,0B,0B,0B,18B,37B,0B,0B,18B,38B,0B,0B,18B,39B,0B,0B,0B,0B,0B,0B,18B,123B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,0B,0B,0B,0B,100B,0B,64B,0B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fM249"}}
scoreboard players remove @a[tag=购买M249] 爆破-金钱 28
scoreboard players set @a[tag=购买M249] 爆破-选择的主武器 62
tellraw @a[tag=购买M249] {"text":"§a§l成功购买§fM249§a§l!"}
scoreboard players tag @a[tag=购买M249] remove 购买M249

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_机枪页面_min=2,score_机枪页面=2,tag=游戏中,score_爆破-金钱_min=30,score_选择的商店=1,score_选择的商店_min=1] add 购买StonerA1
replaceitem entity @a[tag=购买StonerA1] slot.hotbar.0 mwc:stonera1 1 0 {IUuidLeast:-8079973872194883267L,Ammo:100,IUuidMost:1449176338948705609L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,20B,28B,-126B,51B,-61B,-16B,77B,73B,-113B,-34B,42B,-110B,-95B,98B,-15B,61B,0B,0B,19B,-108B,0B,0B,0B,4B,0B,0B,0B,0B,0B,0B,0B,12B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-74B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-60B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,4B,0B,0B,16B,113B,0B,0B,16B,-93B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,117B,0B,0B,0B,0B,0B,0B,18B,28B,0B,0B,18B,27B,0B,0B,18B,39B,0B,0B,18B,124B,0B,0B,18B,123B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,100B,0B,64B,0B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fStoner A1"}}
scoreboard players remove @a[tag=购买StonerA1] 爆破-金钱 30
scoreboard players set @a[tag=购买StonerA1] 爆破-选择的主武器 63
tellraw @a[tag=购买StonerA1] {"text":"§a§l成功购买§fStoner A1§a§l!"}
scoreboard players tag @a[tag=购买StonerA1] remove 购买StonerA1

scoreboard players reset @a[score_机枪页面_min=1] 机枪页面



scoreboard players enable @a 手枪页面

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_手枪页面_min=1,score_手枪页面=1,tag=游戏中,score_爆破-金钱_min=10,score_选择的商店=0] add 购买APS
replaceitem entity @a[tag=购买APS] slot.hotbar.1 mwc:aps 1 0 {IUuidLeast:-7140461638995232592L,Ammo:20,IUuidMost:-7559611536820909413L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-105B,22B,-35B,92B,27B,-40B,74B,-101B,-100B,-25B,-5B,-8B,-101B,98B,-72B,-80B,0B,0B,19B,-128B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,11B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-16B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,-31B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,53B,0B,0B,18B,54B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,0B,0B,0B,0B,20B,0B,64B,64B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fAPS"}}
scoreboard players remove @a[tag=购买APS] 爆破-金钱 10
scoreboard players set @a[tag=购买APS] 爆破-选择的副武器 1
tellraw @a[tag=购买APS] {"text":"§a§l成功购买§fAPS§a§l!"}
scoreboard players tag @a[tag=购买APS] remove 购买APS

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_手枪页面_min=2,score_手枪页面=2,tag=游戏中,score_爆破-金钱_min=8,score_选择的商店=0] add 购买S&W.500
replaceitem entity @a[tag=购买S&W.500] slot.hotbar.1 mwc:sw_500_magnum 1 0 {IUuidLeast:-8539460014452569777L,Ammo:6,IUuidMost:-6812140194918021160L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-95B,118B,106B,-107B,-63B,-64B,71B,-40B,-119B,125B,-66B,92B,96B,-25B,9B,79B,0B,0B,19B,92B,0B,0B,0B,2B,0B,0B,0B,0B,0B,0B,0B,5B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,4B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,-16B,0B,0B,17B,-15B,0B,0B,17B,-14B,0B,0B,0B,0B,0B,0B,18B,126B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,0B,0B,0B,0B,6B,0B,65B,48B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fS&W .500"}}
scoreboard players remove @a[tag=购买S&W.500] 爆破-金钱 8
scoreboard players set @a[tag=购买S&W.500] 爆破-选择的副武器 2
tellraw @a[tag=购买S&W.500] {"text":"§a§l成功购买§fS&W .500§a§l!"}
scoreboard players tag @a[tag=购买S&W.500] remove 购买S&W.500

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_手枪页面_min=3,score_手枪页面=3,tag=游戏中,score_爆破-金钱_min=8,score_选择的商店=0] add 购买MAS-21
replaceitem entity @a[tag=购买MAS-21] slot.hotbar.1 mwc:mas_21 1 0 {IUuidLeast:-7126980639896892225L,Ammo:15,IUuidMost:-4427430446090204922L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-62B,-114B,-101B,119B,-127B,11B,73B,6B,-99B,23B,-32B,-34B,77B,-36B,12B,-65B,0B,0B,19B,56B,0B,0B,0B,2B,0B,0B,0B,0B,0B,0B,0B,12B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-33B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,-68B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,-27B,0B,0B,17B,-26B,0B,0B,17B,-25B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,15B,0B,64B,0B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fMAS-21"}}
scoreboard players remove @a[tag=购买MAS-21] 爆破-金钱 8
scoreboard players set @a[tag=购买MAS-21] 爆破-选择的副武器 3
tellraw @a[tag=购买MAS-21] {"text":"§a§l成功购买§fMAS-21§a§l!"}
scoreboard players tag @a[tag=购买MAS-21] remove 购买MAS-21

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_手枪页面_min=4,score_手枪页面=4,tag=游戏中,score_爆破-金钱_min=7,score_选择的商店=0] add 购买SIGP226
replaceitem entity @a[tag=购买SIGP226] slot.hotbar.1 mwc:p226 1 0 {IUuidLeast:-4923898922594741715L,Ammo:15,IUuidMost:5079198205727359032L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,70B,124B,-17B,-37B,124B,46B,64B,56B,-69B,-86B,-52B,4B,-112B,-49B,-46B,45B,0B,0B,19B,53B,0B,0B,0B,4B,0B,0B,0B,0B,0B,0B,0B,10B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-33B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,8B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,-46B,0B,0B,0B,0B,0B,0B,18B,56B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,0B,0B,0B,0B,15B,0B,64B,0B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fSIG P226"}}
scoreboard players remove @a[tag=购买SIGP226] 爆破-金钱 7
scoreboard players set @a[tag=购买SIGP226] 爆破-选择的副武器 4
tellraw @a[tag=购买SIGP226] {"text":"§a§l成功购买§fSIG P226§a§l!"}
scoreboard players tag @a[tag=购买SIGP226] remove 购买SIGP226

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_手枪页面_min=5,score_手枪页面=5,tag=游戏中,score_爆破-金钱_min=4,score_选择的商店=0] add 购买HKP12
replaceitem entity @a[tag=购买HKP12] slot.hotbar.1 mwc:hk_p12 1 0 {IUuidLeast:-7984625428159484800L,Ammo:8,IUuidMost:-8818720879475343136L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-123B,-99B,-100B,21B,109B,-115B,64B,-32B,-111B,48B,-23B,122B,58B,0B,-84B,-128B,0B,0B,19B,81B,0B,0B,0B,4B,0B,0B,0B,0B,0B,0B,0B,10B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-19B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,8B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,63B,0B,0B,18B,55B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,0B,0B,0B,0B,8B,0B,64B,-128B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fHK P12"}}
scoreboard players remove @a[tag=购买HKP12] 爆破-金钱 4
scoreboard players set @a[tag=购买HKP12] 爆破-选择的副武器 5
tellraw @a[tag=购买HKP12] {"text":"§a§l成功购买§fHK P12§a§l!"}
scoreboard players tag @a[tag=购买HKP12] remove 购买HKP12

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_手枪页面_min=6,score_手枪页面=6,tag=游戏中,score_爆破-金钱_min=0,score_选择的商店=0] add 购买Hunter
replaceitem entity @a[tag=购买Hunter] slot.hotbar.1 mwc:taurus_raging_hunter 1 0 {IUuidLeast:-5688055440932467152L,Ammo:6,IUuidMost:-1620633660333732644L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-23B,-126B,90B,69B,-68B,-60B,76B,-36B,-79B,15B,-9B,-74B,-116B,126B,14B,48B,0B,0B,19B,90B,0B,0B,0B,2B,0B,0B,0B,0B,0B,0B,0B,9B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,4B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,-16B,0B,0B,17B,-15B,0B,0B,17B,-14B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,0B,0B,0B,0B,6B,0B,64B,-32B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fRaging Hunter"}}
scoreboard players remove @a[tag=购买Hunter] 爆破-金钱 0
scoreboard players set @a[tag=购买Hunter] 爆破-选择的副武器 6
tellraw @a[tag=购买Hunter] {"text":"§a§l成功购买§fRaging Hunter§a§l!"}
scoreboard players tag @a[tag=购买Hunter] remove 购买Hunter

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_手枪页面_min=7,score_手枪页面=7,tag=游戏中,score_爆破-金钱_min=10,score_选择的商店=1,score_选择的商店_min=1] add 购买Glock-18C
replaceitem entity @a[tag=购买Glock-18C] slot.hotbar.1 mwc:glock_18c 1 0 {IUuidLeast:-5330394761193420738L,Ammo:20,IUuidMost:-1190295328237859009L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-17B,123B,56B,-76B,-106B,-109B,79B,63B,-74B,6B,-94B,52B,-46B,118B,-120B,62B,0B,0B,19B,126B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,11B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-14B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,8B,0B,0B,0B,0B,0B,0B,16B,-60B,0B,0B,0B,0B,0B,0B,16B,-57B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,0B,0B,0B,0B,20B,0B,64B,64B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fGlock-18C"}}
scoreboard players remove @a[tag=购买Glock-18C] 爆破-金钱 10
scoreboard players set @a[tag=购买Glock-18C] 爆破-选择的副武器 7
tellraw @a[tag=购买Glock-18C] {"text":"§a§l成功购买§fGlock-18C§a§l!"}
scoreboard players tag @a[tag=购买Glock-18C] remove 购买Glock-18C

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_手枪页面_min=8,score_手枪页面=8,tag=游戏中,score_爆破-金钱_min=8,score_选择的商店=1,score_选择的商店_min=1] add 购买VP-70
replaceitem entity @a[tag=购买VP-70] slot.hotbar.1 mwc:vp70 1 0 {IUuidLeast:-6752349885728540126L,Ammo:18,IUuidMost:562501555906101591L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,7B,-50B,104B,47B,81B,99B,65B,87B,-94B,74B,-43B,-115B,-18B,0B,58B,34B,0B,0B,19B,84B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,10B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,19B,36B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,52B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,0B,64B,0B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fVP-70"}}
scoreboard players remove @a[tag=购买VP-70] 爆破-金钱 8
scoreboard players set @a[tag=购买VP-70] 爆破-选择的副武器 8
tellraw @a[tag=购买VP-70] {"text":"§a§l成功购买§fVP-70§a§l!"}
scoreboard players tag @a[tag=购买VP-70] remove 购买VP-70

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_手枪页面_min=9,score_手枪页面=9,tag=游戏中,score_爆破-金钱_min=7,score_选择的商店=1,score_选择的商店_min=1] add 购买M9A1
replaceitem entity @a[tag=购买M9A1] slot.hotbar.1 mwc:m9a1 1 0 {IUuidLeast:-5220919450969740303L,Ammo:15,IUuidMost:-2041975163527607540L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-29B,-87B,114B,104B,89B,-60B,75B,12B,-73B,-117B,-111B,107B,-60B,5B,107B,-15B,0B,0B,19B,55B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,10B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-33B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,-68B,0B,0B,0B,0B,0B,0B,16B,-69B,0B,0B,0B,0B,0B,0B,18B,57B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,0B,0B,0B,0B,15B,0B,64B,0B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fM9A1"}}
scoreboard players remove @a[tag=购买M9A1] 爆破-金钱 7
scoreboard players set @a[tag=购买M9A1] 爆破-选择的副武器 9
tellraw @a[tag=购买M9A1] {"text":"§a§l成功购买§fM9A1§a§l!"}
scoreboard players tag @a[tag=购买M9A1] remove 购买M9A1

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_手枪页面_min=10,score_手枪页面=10,tag=游戏中,score_爆破-金钱_min=5,score_选择的商店=1,score_选择的商店_min=1] add 购买Glock-19
replaceitem entity @a[tag=购买Glock-19] slot.hotbar.1 mwc:glock_19 1 0 {IUuidLeast:-6821557444815563363L,Ammo:13,IUuidMost:-4739488970969035761L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-66B,57B,-13B,-28B,76B,-126B,76B,15B,-95B,84B,-11B,-91B,102B,-40B,-43B,-99B,0B,0B,19B,85B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,10B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-15B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,8B,0B,0B,0B,0B,0B,0B,16B,-61B,0B,0B,0B,0B,0B,0B,16B,-58B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,0B,0B,0B,0B,13B,0B,64B,0B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fGlock-19"}}
scoreboard players remove @a[tag=购买Glock-19] 爆破-金钱 5
scoreboard players set @a[tag=购买Glock-19] 爆破-选择的副武器 10
tellraw @a[tag=购买Glock-19] {"text":"§a§l成功购买§fGlock-19§a§l!"}
scoreboard players tag @a[tag=购买Glock-19] remove 购买Glock-19

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_手枪页面_min=11,score_手枪页面=11,tag=游戏中,score_爆破-金钱_min=0,score_选择的商店=1,score_选择的商店_min=1] add 购买ColtPython
replaceitem entity @a[tag=购买ColtPython] slot.hotbar.1 mwc:python 1 0 {IUuidLeast:-7610011293500917292L,Ammo:6,IUuidMost:3658739933296283149L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,50B,-58B,116B,-107B,-95B,-87B,78B,13B,-106B,99B,-49B,12B,82B,42B,-71B,-44B,0B,0B,19B,89B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,9B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,-16B,0B,0B,17B,-15B,0B,0B,17B,-17B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,0B,0B,0B,0B,6B,0B,64B,-64B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fColt Python"}}
scoreboard players remove @a[tag=购买ColtPython] 爆破-金钱 0
scoreboard players set @a[tag=购买ColtPython] 爆破-选择的副武器 11
tellraw @a[tag=购买ColtPython] {"text":"§a§l成功购买§fColt Python§a§l!"}
scoreboard players tag @a[tag=购买ColtPython] remove 购买ColtPython

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_手枪页面_min=12,score_手枪页面=12,tag=游戏中,score_爆破-金钱_min=10,score_选择的商店=2,score_选择的商店_min=2] add 购买DesertEagle
replaceitem entity @a[tag=购买DesertEagle] slot.hotbar.1 mwc:desert_eagle 1 0 {IUuidLeast:-7750586171040179190L,Ammo:7,IUuidMost:4962461930415735978L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,68B,-34B,52B,-43B,93B,-44B,68B,-86B,-108B,112B,98B,-15B,26B,24B,92B,10B,0B,0B,19B,93B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,14B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-28B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,8B,0B,0B,0B,0B,0B,0B,16B,-63B,0B,0B,0B,0B,0B,0B,16B,-64B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,7B,0B,65B,112B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fDesertEagle"}}
scoreboard players remove @a[tag=购买DesertEagle] 爆破-金钱 10
scoreboard players set @a[tag=购买DesertEagle] 爆破-选择的副武器 12
tellraw @a[tag=购买DesertEagle] {"text":"§a§l成功购买§fDesertEagle§a§l!"}
scoreboard players tag @a[tag=购买DesertEagle] remove 购买DesertEagle

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_手枪页面_min=13,score_手枪页面=13,tag=游戏中,score_爆破-金钱_min=8,score_选择的商店=2,score_选择的商店_min=2] add 购买MP443
replaceitem entity @a[tag=购买MP443] slot.hotbar.1 mwc:mp443 1 0 {IUuidLeast:-4837783484294237366L,Ammo:18,IUuidMost:1443766133844492371L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,20B,9B,73B,-90B,58B,-118B,64B,83B,-68B,-36B,-67B,-115B,126B,99B,-13B,74B,0B,0B,19B,60B,0B,0B,0B,2B,0B,0B,0B,0B,0B,0B,0B,10B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-25B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,8B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,-41B,0B,0B,0B,0B,0B,0B,18B,58B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,0B,64B,0B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fMP443"}}
scoreboard players remove @a[tag=购买MP443] 爆破-金钱 8
scoreboard players set @a[tag=购买MP443] 爆破-选择的副武器 13
tellraw @a[tag=购买MP443] {"text":"§a§l成功购买§fMP443§a§l!"}
scoreboard players tag @a[tag=购买MP443] remove 购买MP443

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_手枪页面_min=14,score_手枪页面=14,tag=游戏中,score_爆破-金钱_min=8,score_选择的商店=2,score_选择的商店_min=2] add 购买M17
replaceitem entity @a[tag=购买M17] slot.hotbar.1 mwc:m17 1 0 {IUuidLeast:-5276484159348670858L,Ammo:17,IUuidMost:1805463229925180345L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,25B,14B,75B,61B,-22B,-72B,67B,-71B,-74B,-58B,41B,-100B,-13B,11B,-2B,118B,0B,0B,19B,80B,0B,0B,0B,2B,0B,0B,0B,0B,0B,0B,0B,10B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-21B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,8B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,6B,0B,0B,0B,0B,0B,0B,18B,61B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,0B,64B,64B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fM17"}}
scoreboard players remove @a[tag=购买M17] 爆破-金钱 8
scoreboard players set @a[tag=购买M17] 爆破-选择的副武器 14
tellraw @a[tag=购买M17] {"text":"§a§l成功购买§fM17§a§l!"}
scoreboard players tag @a[tag=购买M17] remove 购买M17

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_手枪页面_min=15,score_手枪页面=15,tag=游戏中,score_爆破-金钱_min=5,score_选择的商店=2,score_选择的商店_min=2] add 购买CPX-2
replaceitem entity @a[tag=购买CPX-2] slot.hotbar.1 mwc:sccy_cpx_2 1 0 {IUuidLeast:-8813820404859603493L,Ammo:10,IUuidMost:-6396891021922907281L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-89B,57B,-83B,-127B,-5B,102B,75B,111B,-123B,-81B,5B,10B,22B,64B,-11B,-37B,0B,0B,19B,86B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,10B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-30B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,-51B,0B,0B,0B,0B,0B,0B,16B,-48B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,0B,0B,0B,0B,10B,0B,64B,0B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fCPX-2"}}
scoreboard players remove @a[tag=购买CPX-2] 爆破-金钱 5
scoreboard players set @a[tag=购买CPX-2] 爆破-选择的副武器 15
tellraw @a[tag=购买CPX-2] {"text":"§a§l成功购买§fCPX-2§a§l!"}
scoreboard players tag @a[tag=购买CPX-2] remove 购买CPX-2

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_手枪页面_min=16,score_手枪页面=16,tag=游戏中,score_爆破-金钱_min=0,score_选择的商店=2,score_选择的商店_min=2] add 购买Chiappa
replaceitem entity @a[tag=购买Chiappa] slot.hotbar.1 mwc:chiappa_rhino 1 0 {IUuidLeast:-7496963292837938762L,Ammo:6,IUuidMost:-7816745184766767513L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-109B,-123B,87B,-85B,90B,59B,78B,103B,-105B,-11B,111B,-101B,20B,64B,121B,-74B,0B,0B,19B,91B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,7B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,-16B,0B,0B,17B,-15B,0B,0B,17B,-13B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,0B,0B,0B,0B,6B,0B,64B,-64B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fChiappa Rhino"}}
scoreboard players remove @a[tag=购买Chiappa] 爆破-金钱 0
scoreboard players set @a[tag=购买Chiappa] 爆破-选择的副武器 16
tellraw @a[tag=购买Chiappa] {"text":"§a§l成功购买§fChiappa Rhino§a§l!"}
scoreboard players tag @a[tag=购买Chiappa] remove 购买Chiappa

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_手枪页面_min=17,score_手枪页面=17,tag=游戏中,score_爆破-金钱_min=9,score_选择的商店=2,score_选择的商店_min=2] add 购买FN57
replaceitem entity @a[tag=购买FN57] slot.hotbar.1 mwc:fiveseven 1 0 {IUuidLeast:-7599737842716806060L,Ammo:20,IUuidMost:4756006844498920861L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,66B,0B,-69B,6B,-45B,-81B,69B,-99B,-106B,-120B,78B,-78B,122B,-59B,116B,84B,0B,0B,19B,54B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,10B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-32B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,8B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,-45B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,0B,0B,0B,0B,20B,0B,64B,0B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fFN57"}}
scoreboard players remove @a[tag=购买FN57] 爆破-金钱 9
scoreboard players set @a[tag=购买FN57] 爆破-选择的副武器 17
tellraw @a[tag=购买FN57] {"text":"§a§l成功购买§fFN57§a§l!"}
scoreboard players tag @a[tag=购买FN57] remove 购买FN57

scoreboard players reset @a[score_手枪页面_min=1] 手枪页面



scoreboard players enable @a 特殊武器页面

execute @e[tag=全局游戏] ~ ~ ~ scoreboard players tag @a[score_特殊武器页面_min=1,score_特殊武器页面=1,tag=游戏中,score_爆破-金钱_min=100] add 购买特殊武器
replaceitem entity @a[tag=购买特殊武器] slot.enderchest.13 mwc:russian_weapons_case 1 0 {ench:[{lvl:1s,id:71s}],HideFlags:1,display:{Name:"§4§l§kaaaa终极武器包aaaa"},tag:["特殊武器包"]}
scoreboard players remove @a[tag=购买特殊武器] 爆破-金钱 100
execute @a[tag=购买特殊武器] ~ ~ ~ tellraw @a[tag=!PVE-游戏中] [{"selector":"@a[tag=购买特殊武器]"},{"text":"§f§l的§4§l§kaaaa终极武器aaaa§a§l已投放至末影箱内"}]
execute @a[tag=购买特殊武器] ~ ~ ~ playsound minecraft:entity.enderdragon.death ambient @a[tag=!PVE-游戏中] ~ ~ ~ 100000000000000 0
scoreboard players tag @a[tag=购买特殊武器] remove 购买特殊武器

scoreboard players reset @a[score_特殊武器页面_min=1] 特殊武器页面
