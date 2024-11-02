#请求处理
replaceitem entity @a[m=2,tag=shop,score_S-Shop=0] slot.hotbar.6 minecraft:iron_ingot 1 0 {ench:[{lvl:1s,id:71s}],HideFlags:1,display:{Name:"§fWeapon shop1"}}
replaceitem entity @a[m=2,tag=shop,score_S-Shop=1,score_S-Shop_min=1] slot.hotbar.6 minecraft:flint 1 0 {ench:[{lvl:1s,id:71s}],HideFlags:1,display:{Name:"§fWeapon shop2"}}
replaceitem entity @a[m=2,tag=shop,score_S-Shop=2,score_S-Shop_min=2] slot.hotbar.6 minecraft:feather 1 0 {ench:[{lvl:1s,id:71s}],HideFlags:1,display:{Name:"§fWeapon shop3"}}
#武器shop

scoreboard players enable @a moduleP
execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_moduleP_min=1,score_moduleP=1,tag=InGame,score_money_min=1] add BySight
replaceitem entity @a[tag=BySight,score_S-Sight=0] slot.inventory.18 mwc:reflex 1 0
replaceitem entity @a[tag=BySight,score_S-Sight=1,score_S-Sight_min=1] slot.inventory.18 mwc:rmrsight 1 0
replaceitem entity @a[tag=BySight,score_S-Sight=2,score_S-Sight_min=2] slot.inventory.18 mwc:okp7 1 0
replaceitem entity @a[tag=BySight,score_S-Sight=3,score_S-Sight_min=3] slot.inventory.18 mwc:kobra 1 0
replaceitem entity @a[tag=BySight,score_S-Sight=4,score_S-Sight_min=4] slot.inventory.18 mwc:kobragen3 1 0
replaceitem entity @a[tag=BySight,score_S-Sight=5,score_S-Sight_min=5] slot.inventory.18 mwc:holographic2 1 0
replaceitem entity @a[tag=BySight,score_S-Sight=6,score_S-Sight_min=6] slot.inventory.18 mwc:vortexsight 1 0
replaceitem entity @a[tag=BySight,score_S-Sight=7,score_S-Sight_min=7] slot.inventory.18 mwc:bijiareflex 1 0
replaceitem entity @a[tag=BySight,score_S-Sight=9,score_S-Sight_min=9] slot.inventory.18 mwc:specter 1 0
replaceitem entity @a[tag=BySight,score_S-Sight=10,score_S-Sight_min=10] slot.inventory.18 mwc:acog 1 0
replaceitem entity @a[tag=BySight,score_S-Sight=11,score_S-Sight_min=11] slot.inventory.18 mwc:nightraiderscope 1 0
scoreboard players remove @a[tag=BySight] money 1
tellraw @a[tag=BySight] {"text":"§aSuccessfully purchased §fSight§a, manual installation is required"}
scoreboard players tag @a[tag=BySight] remove BySight

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_moduleP_min=2,score_moduleP=2,tag=InGame,score_money_min=2] add ByGrip
replaceitem entity @a[tag=ByGrip] slot.inventory.19 mwc:stubbygrip 1 0
scoreboard players remove @a[tag=ByGrip] money 2
tellraw @a[tag=ByGrip] {"text":"§aSuccessfully purchased §fGrip§a, manual installation is required"}
scoreboard players tag @a[tag=ByGrip] remove ByGrip

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_moduleP_min=3,score_moduleP=3,tag=InGame,score_money_min=2] add BySilencer
replaceitem entity @a[tag=BySilencer,score_S-Silencer=0] slot.inventory.20 mwc:silencer762x39 1 0
replaceitem entity @a[tag=BySilencer,score_S-Silencer=1,score_S-Silencer_min=1] slot.inventory.20 mwc:silencer762x54 1 0
replaceitem entity @a[tag=BySilencer,score_S-Silencer=2,score_S-Silencer_min=2] slot.inventory.20 mwc:silencer50bmg 1 0
replaceitem entity @a[tag=BySilencer,score_S-Silencer=3,score_S-Silencer_min=3] slot.inventory.20 mwc:silencer762x51 1 0
replaceitem entity @a[tag=BySilencer,score_S-Silencer=4,score_S-Silencer_min=4] slot.inventory.20 mwc:silencer12gauge 1 0
replaceitem entity @a[tag=BySilencer,score_S-Silencer=5,score_S-Silencer_min=5] slot.inventory.20 mwc:silencer45acp 1 0
replaceitem entity @a[tag=BySilencer,score_S-Silencer=6,score_S-Silencer_min=6] slot.inventory.20 mwc:silencer9mm 1 0
replaceitem entity @a[tag=BySilencer,score_S-Silencer=7,score_S-Silencer_min=7] slot.inventory.20 mwc:silencer556x45 1 0
scoreboard players remove @a[tag=BySilencer] money 2
tellraw @a[tag=BySilencer] {"text":"§aSuccessfully purchased §fSilencer§a, manual installation is required"}
scoreboard players tag @a[tag=BySilencer] remove BySilencer

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_moduleP_min=4,score_moduleP=4,tag=InGame,score_money_min=2] add ByLaser
replaceitem entity @a[tag=ByLaser] slot.inventory.21 mwc:laser2 1 0
scoreboard players remove @a[tag=ByLaser] money 2
tellraw @a[tag=ByLaser] {"text":"§aSuccessfully purchased §fLaser§a, manual installation is required"}
scoreboard players tag @a[tag=ByLaser] remove ByLaser
scoreboard players reset @a[score_moduleP_min=1] moduleP



scoreboard players enable @a grenadeP
execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_grenadeP_min=1,score_grenadeP=1,tag=InGame,score_money_min=2] add ByFragG
replaceitem entity @a[tag=ByFragG] slot.hotbar.7 mwc:m18white 1 0 {display:{Name:"§fFrag Grenade"},tag:["grenade"]}
#replaceitem entity @a[tag=ByFragG] slot.hotbar.7 mwc:m67frag 1 0 
scoreboard players remove @a[tag=ByFragG] money 2
tellraw @a[tag=ByFragG] {"text":"§aSuccessfully purchased §fFrag Grenade§a§l!"}
scoreboard players tag @a[tag=ByFragG] remove ByFragG

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_grenadeP_min=2,score_grenadeP=2,tag=InGame,score_money_min=2] add ByIncendiaryG
replaceitem entity @a[tag=ByIncendiaryG] slot.hotbar.7 mwc:m18white 1 0 {display:{Name:"§fMolotov Cocktail"},tag:["incendiaryGrenade"]}
scoreboard players remove @a[tag=ByIncendiaryG] money 2
tellraw @a[tag=ByIncendiaryG] {"text":"§aSuccessfully purchased §fIncendiary Grenade§a§l!"}
scoreboard players tag @a[tag=ByIncendiaryG] remove ByIncendiaryG

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_grenadeP_min=3,score_grenadeP=3,tag=InGame,score_money_min=2] add ByFlashG
replaceitem entity @a[tag=ByFlashG] slot.hotbar.8 mwc:flash 1 0 
scoreboard players remove @a[tag=ByFlashG] money 2
tellraw @a[tag=ByFlashG] {"text":"§aSuccessfully purchased §fFlash Grenade§a§l!"}
scoreboard players tag @a[tag=ByFlashG] remove ByFlashG

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_grenadeP_min=4,score_grenadeP=4,tag=InGame,score_money_min=2] add ByStunG
replaceitem entity @a[tag=ByStunG] slot.hotbar.8 mwc:m18white 1 0 {display:{Name:"§fStun Grenade"},tag:["stunGrenade"]}
scoreboard players remove @a[tag=ByStunG] money 2
tellraw @a[tag=ByStunG] {"text":"§aSuccessfully purchased §fStun Grenade§a§l!"}
scoreboard players tag @a[tag=ByStunG] remove ByStunG

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_grenadeP_min=5,score_grenadeP=5,tag=InGame,score_money_min=2] add BySmokeG
replaceitem entity @a[tag=BySmokeG] slot.hotbar.8 mwc:m18white 1 0 {display:{Name:"§fSmoke Grenade"},tag:["smokeGrenade"]}
scoreboard players remove @a[tag=BySmokeG] money 2
tellraw @a[tag=BySmokeG] {"text":"§aSuccessfully purchased §fSmoke Grenade§a§l!"}
scoreboard players tag @a[tag=BySmokeG] remove BySmokeG

scoreboard players reset @a[score_grenadeP_min=1] grenadeP



scoreboard players enable @a assaultRP
execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_assaultRP_min=1,score_assaultRP=1,tag=InGame,score_money_min=20,score_S-Shop=0] add ByAR-15
replaceitem entity @a[tag=ByAR-15] slot.hotbar.0 mwc:ar15 1 0 {IUuidLeast:-6772703920102388532L,AtId:[I;4534,0,0,0,0,0,0,0,4334,4418,4382,4340,4471,4717,4716,0,0,0,4731,0,0,0,0,0,0,4096,0],Ammo:40,IUuidMost:-2944762565745883986L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-41B,34B,26B,12B,104B,-39B,68B,-82B,-94B,2B,-123B,-85B,1B,102B,-52B,-52B,0B,0B,19B,50B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,125B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-74B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-70B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,-18B,0B,0B,17B,66B,0B,0B,17B,30B,0B,0B,16B,-12B,0B,0B,17B,119B,0B,0B,18B,109B,0B,0B,18B,108B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,123B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,40B,0B,64B,-128B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fAR-15"}}
scoreboard players remove @a[tag=ByAR-15] money 20
scoreboard players set @a[tag=ByAR-15] MainW 1
tellraw @a[tag=ByAR-15] {"text":"§aSuccessfully purchased §fAR-15§a§l!"}
scoreboard players tag @a[tag=ByAR-15] remove ByAR-15

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_assaultRP_min=2,score_assaultRP=2,tag=InGame,score_money_min=18,score_S-Shop=0] add ByM4A1
replaceitem entity @a[tag=ByM4A1] slot.hotbar.0 mwc:m4a1 1 0 {IUuidLeast:-7182158206075631541L,AtId:[I;4730,0,0,0,0,0,0,0,4336,4422,4383,4340,4467,4717,4716,0,0,0,0,0,0,0,0,0,0,4096,0],Ammo:30,IUuidMost:8549572861428122274L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,118B,-90B,47B,56B,74B,-66B,66B,-94B,-100B,83B,-39B,42B,14B,52B,-120B,75B,0B,0B,19B,49B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,109B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,18B,122B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-70B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,-16B,0B,0B,17B,70B,0B,0B,17B,31B,0B,0B,16B,-12B,0B,0B,17B,115B,0B,0B,18B,109B,0B,0B,18B,108B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,30B,0B,64B,64B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fM4A1"}}
scoreboard players remove @a[tag=ByM4A1] money 18
scoreboard players set @a[tag=ByM4A1] MainW 2
tellraw @a[tag=ByM4A1] {"text":"§aSuccessfully purchased §fM4A1§a§l!"}
scoreboard players tag @a[tag=ByM4A1] remove ByM4A1

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_assaultRP_min=3,score_assaultRP=3,tag=InGame,score_money_min=18,score_S-Shop=0] add BySIGMCX
replaceitem entity @a[tag=BySIGMCX] slot.hotbar.0 mwc:sig_mcx 1 0 {IUuidLeast:-8412658287741561297L,Ammo:30,IUuidMost:-2159833404407396108L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-30B,6B,-70B,-10B,68B,70B,72B,-12B,-117B,64B,59B,-36B,6B,107B,22B,47B,0B,0B,19B,51B,0B,0B,0B,2B,0B,0B,0B,0B,0B,0B,0B,16B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-71B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-70B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,23B,0B,0B,17B,68B,0B,0B,17B,34B,0B,0B,16B,-11B,0B,0B,17B,118B,0B,0B,18B,111B,0B,0B,18B,108B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,124B,0B,0B,18B,123B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,30B,0B,64B,64B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fSIG MCX"}}
scoreboard players remove @a[tag=BySIGMCX] money 18
scoreboard players set @a[tag=BySIGMCX] MainW 3
tellraw @a[tag=BySIGMCX] {"text":"§aSuccessfully purchased §fSIG MCX§a§l!"}
scoreboard players tag @a[tag=BySIGMCX] remove BySIGMCX

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_assaultRP_min=4,score_assaultRP=4,tag=InGame,score_money_min=18,score_S-Shop=0] add ByAUG
replaceitem entity @a[tag=ByAUG] slot.hotbar.0 mwc:steyr_aug_a1 1 0 {IUuidLeast:-8088316258104355650L,AtId:[I;4479,4569,0,0,0,0,0,0,4212,0,0,-1,4214,4580,0,0,0,0,0,0,0,0,0,0,0,4096,0],Ammo:30,IUuidMost:-1033794093124665233L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-15B,-89B,57B,-65B,-28B,104B,64B,111B,-113B,-64B,-121B,55B,-116B,-84B,84B,-66B,0B,0B,19B,109B,0B,0B,0B,2B,0B,0B,0B,0B,0B,0B,0B,97B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,127B,0B,0B,17B,-39B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-70B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,116B,0B,0B,0B,0B,0B,0B,0B,0B,-1B,-1B,-1B,-1B,0B,0B,16B,118B,0B,0B,17B,-28B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,30B,0B,63B,-26B,102B,103B,127B,-1B,-1B,-1B,62B,35B,-41B,10B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fAUG"}}
scoreboard players remove @a[tag=ByAUG] money 19
scoreboard players set @a[tag=ByAUG] MainW 4
tellraw @a[tag=ByAUG] {"text":"§aSuccessfully purchased §fAUG§a§l!"}
scoreboard players tag @a[tag=ByAUG] remove ByAUG

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_assaultRP_min=5,score_assaultRP=5,tag=InGame,score_money_min=18,score_S-Shop=0] add ByHKG36C
replaceitem entity @a[tag=ByHKG36C] slot.hotbar.0 mwc:g36c 1 0 {IUuidLeast:-4769335021229515204L,AtId:[I;0,0,0,0,0,0,0,4356,5239,5230,0,0,0,4613,0,0,0,0,4731,0,0,0,0,0,0,4096,0],Ammo:30,IUuidMost:4940396762435635306L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,68B,-113B,-48B,-82B,26B,119B,72B,106B,-67B,-49B,-21B,17B,52B,-56B,-34B,60B,0B,0B,19B,108B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,41B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-51B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,4B,0B,0B,20B,119B,0B,0B,20B,110B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,5B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,123B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,30B,0B,64B,51B,51B,51B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fHK G36C"}}
scoreboard players remove @a[tag=ByHKG36C] money 18
scoreboard players set @a[tag=ByHKG36C] MainW 5
tellraw @a[tag=ByHKG36C] {"text":"§aSuccessfully purchased §fHK G36C§a§l!"}
scoreboard players tag @a[tag=ByHKG36C] remove ByHKG36C

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_assaultRP_min=6,score_assaultRP=6,tag=InGame,score_money_min=16,score_S-Shop=0] add ByAK-12
replaceitem entity @a[tag=ByAK-12] slot.hotbar.0 mwc:izhmash_ak12 1 0 {IUuidLeast:-7093218305692546573L,Ammo:31,IUuidMost:7823150799258469924L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,108B,-111B,106B,51B,-2B,29B,70B,36B,-99B,-113B,-45B,-120B,78B,-27B,-55B,-13B,0B,0B,19B,102B,0B,0B,0B,2B,0B,0B,0B,0B,0B,0B,0B,13B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-43B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,105B,0B,0B,17B,90B,0B,0B,17B,57B,0B,0B,17B,44B,0B,0B,0B,0B,0B,0B,17B,-61B,0B,0B,18B,74B,0B,0B,17B,-86B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,31B,0B,64B,64B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fAK-12"}}
scoreboard players remove @a[tag=ByAK-12] money 16
scoreboard players set @a[tag=ByAK-12] MainW 6
tellraw @a[tag=ByAK-12] {"text":"§aSuccessfully purchased §fAK-12§a§l!"}
scoreboard players tag @a[tag=ByAK-12] remove ByAK-12

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_assaultRP_min=7,score_assaultRP=7,tag=InGame,score_money_min=16,score_S-Shop=0] add ByAK-47
replaceitem entity @a[tag=ByAK-47] slot.hotbar.0 mwc:ak47 1 0 {IUuidLeast:-5714841715180941712L,Ammo:30,AtId:[I;0,0,0,0,4818,0,0,4455,4433,4407,4392,0,4521,4674,0,0,0,4738,4731,0,0,0,0,0,0,4096,0],IUuidMost:-2607483842144809797L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-37B,-48B,91B,66B,-73B,99B,76B,-69B,-80B,-80B,-51B,-67B,19B,14B,78B,112B,0B,0B,19B,100B,0B,0B,0B,2B,0B,0B,0B,0B,0B,0B,0B,99B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-46B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,103B,0B,0B,17B,81B,0B,0B,17B,55B,0B,0B,17B,40B,0B,0B,0B,0B,0B,0B,17B,-87B,0B,0B,18B,66B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-126B,0B,0B,18B,123B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,30B,0B,64B,-128B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fAK-47"}}
scoreboard players remove @a[tag=ByAK-47] money 16
scoreboard players set @a[tag=ByAK-47] MainW 7
tellraw @a[tag=ByAK-47] {"text":"§aSuccessfully purchased §fAK-47§a§l!"}
scoreboard players tag @a[tag=ByAK-47] remove ByAK-47

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_assaultRP_min=8,score_assaultRP=8,tag=InGame,score_money_min=15,score_S-Shop=0] add By9A-91
replaceitem entity @a[tag=By9A-91] slot.hotbar.0 mwc:kbp_9a91 1 0 {IUuidLeast:-8639776074379683359L,Ammo:20,AtId:[I;0,0,0,0,4855,0,0,0,4446,0,0,0,0,4678,0,0,0,0,0,0,0,0,0,0,0,4096,0],IUuidMost:7805116986724992035L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,108B,81B,88B,-117B,-48B,28B,68B,35B,-120B,25B,89B,111B,-109B,-82B,25B,-31B,0B,0B,19B,63B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,44B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-9B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,94B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,70B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,20B,0B,64B,0B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§f9A-91"}}
scoreboard players remove @a[tag=By9A-91] money 15
scoreboard players set @a[tag=By9A-91] MainW 8
tellraw @a[tag=By9A-91] {"text":"§aSuccessfully purchased §f9A-91§a§l!"}
scoreboard players tag @a[tag=By9A-91] remove By9A-91

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_assaultRP_min=9,score_assaultRP=9,tag=InGame,score_money_min=20,score_S-Shop=1,score_S-Shop_min=1] add ByScar-H
replaceitem entity @a[tag=ByScar-H] slot.hotbar.0 mwc:scar_h_cqc 1 0 {IUuidLeast:-6505968538266611428L,Ammo:40,IUuidMost:-101033933772668567L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-2B,-103B,14B,44B,43B,56B,65B,105B,-91B,-74B,40B,21B,-92B,-64B,81B,28B,0B,0B,19B,79B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,9B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-74B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,19B,28B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,4B,0B,0B,16B,64B,0B,0B,16B,-113B,0B,0B,17B,30B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,42B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,0B,0B,0B,0B,40B,0B,64B,-128B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fScar-H"}}
scoreboard players remove @a[tag=ByScar-H] money 20
scoreboard players set @a[tag=ByScar-H] MainW 9
tellraw @a[tag=ByScar-H] {"text":"§aSuccessfully purchased §fScar-H§a§l!"}
scoreboard players tag @a[tag=ByScar-H] remove ByScar-H

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_assaultRP_min=11,score_assaultRP=11,tag=InGame,score_money_min=18,score_S-Shop=1,score_S-Shop_min=1] add ByM16A1
replaceitem entity @a[tag=ByM16A1] slot.hotbar.0 mwc:m16a1 1 0 {IUuidLeast:-8178183891401900348L,Ammo:30,IUuidMost:-5183465422830222012L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-72B,16B,-95B,-87B,62B,-81B,69B,68B,-114B,-127B,65B,20B,-91B,42B,-2B,-60B,0B,0B,19B,47B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,11B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-70B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,16B,0B,0B,17B,74B,0B,0B,17B,30B,0B,0B,0B,0B,0B,0B,17B,115B,0B,0B,17B,-69B,0B,0B,18B,108B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,0B,0B,0B,0B,30B,0B,64B,64B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fM16A1"}}
scoreboard players remove @a[tag=ByM16A1] money 18
scoreboard players set @a[tag=ByM16A1] MainW 10
tellraw @a[tag=ByM16A1] {"text":"§aSuccessfully purchased §fM16A1§a§l!"}
scoreboard players tag @a[tag=ByM16A1] remove ByM16A1

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_assaultRP_min=12,score_assaultRP=12,tag=InGame,score_money_min=18,score_S-Shop=1,score_S-Shop_min=1] add ByHK416
replaceitem entity @a[tag=ByHK416] slot.hotbar.0 mwc:m38_dmr 1 0 {IUuidLeast:-6003546250383098362L,Ammo:30,AtId:[I;4536,0,0,0,4794,0,0,0,4331,4427,4383,4341,4471,4717,4716,0,0,0,0,0,0,0,0,0,0,4096,0],IUuidMost:-2504522566780043220L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-35B,62B,37B,-2B,-69B,32B,64B,44B,-84B,-81B,30B,126B,81B,73B,126B,6B,0B,0B,19B,46B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,41B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-72B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-70B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,-21B,0B,0B,17B,75B,0B,0B,17B,31B,0B,0B,16B,-11B,0B,0B,17B,119B,0B,0B,18B,109B,0B,0B,18B,108B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,30B,0B,64B,64B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fHK 416"}}
scoreboard players remove @a[tag=ByHK416] money 18
scoreboard players set @a[tag=ByHK416] MainW 11
tellraw @a[tag=ByHK416] {"text":"§aSuccessfully purchased §fHK 416§a§l!"}
scoreboard players tag @a[tag=ByHK416] remove ByHK416

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_assaultRP_min=13,score_assaultRP=13,tag=InGame,score_money_min=17,score_S-Shop=1,score_S-Shop_min=1] add ByM16A4
replaceitem entity @a[tag=ByM16A4] slot.hotbar.0 mwc:m16a4 1 0 {IUuidLeast:-4642341086625348856L,AtId:[I;4730,0,0,0,0,0,0,0,4370,4426,4382,4340,4467,4717,4716,0,0,0,4731,0,0,0,0,0,0,4096,0],Ammo:30,IUuidMost:3819616425300412006L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,53B,2B,0B,-26B,-48B,71B,70B,102B,-65B,-109B,23B,96B,-67B,126B,-61B,8B,0B,0B,19B,48B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,51B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,18B,122B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-70B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,18B,0B,0B,17B,74B,0B,0B,17B,30B,0B,0B,16B,-12B,0B,0B,17B,115B,0B,0B,18B,109B,0B,0B,18B,108B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,123B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,30B,0B,64B,64B,0B,0B,0B,0B,0B,3B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fM16A4"}}
scoreboard players remove @a[tag=ByM16A4] money 17
scoreboard players set @a[tag=ByM16A4] MainW 12
tellraw @a[tag=ByM16A4] {"text":"§aSuccessfully purchased §fM16A4§a§l!"}
scoreboard players tag @a[tag=ByM16A4] remove ByM16A4

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_assaultRP_min=10,score_assaultRP=10,tag=InGame,score_money_min=18,score_S-Shop=1,score_S-Shop_min=1] add ByFamasF1
replaceitem entity @a[tag=ByFamasF1] slot.hotbar.0 mwc:famas_f1 1 0 {IUuidLeast:-7046286675147378151L,Ammo:30,IUuidMost:-1960475736392972157L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-28B,-54B,-3B,-76B,109B,-122B,72B,-125B,-98B,54B,-113B,-102B,14B,69B,-78B,25B,0B,0B,19B,110B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,19B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-68B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,5B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,73B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,30B,0B,64B,32B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fFamas F1"}}
scoreboard players remove @a[tag=ByFamasF1] money 18
scoreboard players set @a[tag=ByFamasF1] MainW 13
tellraw @a[tag=ByFamasF1] {"text":"§aSuccessfully purchased §fFamas F1§a§l!"}
scoreboard players tag @a[tag=ByFamasF1] remove ByFamasF1

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_assaultRP_min=14,score_assaultRP=14,tag=InGame,score_money_min=17,score_S-Shop=1,score_S-Shop_min=1] add ByAK-15
replaceitem entity @a[tag=ByAK-15] slot.hotbar.0 mwc:ak15 1 0 {IUuidLeast:-4790820970637099023L,Ammo:30,IUuidMost:-254019068140303283L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-4B,121B,-117B,0B,-35B,82B,76B,77B,-67B,-125B,-107B,-75B,-58B,-82B,-1B,-15B,0B,0B,19B,62B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,15B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-62B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-46B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,104B,0B,0B,17B,87B,0B,0B,17B,62B,0B,0B,17B,41B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,69B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,123B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,30B,0B,64B,96B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fAK-15"}}
scoreboard players remove @a[tag=ByAK-15] money 17
scoreboard players set @a[tag=ByAK-15] MainW 14
tellraw @a[tag=ByAK-15] {"text":"§aSuccessfully purchased §fAK-15§a§l!"}
scoreboard players tag @a[tag=ByAK-15] remove ByAK-15

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_assaultRP_min=15,score_assaultRP=15,tag=InGame,score_money_min=15,score_S-Shop=1,score_S-Shop_min=1] add ByACR
replaceitem entity @a[tag=ByACR] slot.hotbar.0 mwc:acr 1 0 {IUuidLeast:-4741527095272921981L,Ammo:30,IUuidMost:4701202655662588567L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,65B,62B,6B,-24B,67B,-28B,66B,-105B,-66B,50B,-74B,58B,-127B,94B,36B,-125B,0B,0B,19B,103B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,12B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-72B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-70B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,4B,0B,0B,16B,92B,0B,0B,16B,-105B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,119B,0B,0B,0B,0B,0B,0B,17B,-12B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,-8B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,0B,0B,0B,0B,30B,0B,64B,64B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fACR"}}
scoreboard players remove @a[tag=ByACR] money 15
scoreboard players set @a[tag=ByACR] MainW 15
tellraw @a[tag=ByACR] {"text":"§aSuccessfully purchased §fACR§a§l!"}
scoreboard players tag @a[tag=ByACR] remove ByACR

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_assaultRP_min=16,score_assaultRP=16,tag=InGame,score_money_min=15,score_S-Shop=1,score_S-Shop_min=1] add ByScar-L
replaceitem entity @a[tag=ByScar-L] slot.hotbar.0 mwc:scar_l 1 0 {IUuidLeast:-8205808906115914461L,Ammo:30,IUuidMost:-2290870729031858666L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-32B,53B,49B,53B,-95B,-73B,70B,22B,-114B,31B,28B,70B,-80B,57B,101B,35B,0B,0B,19B,78B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,11B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-74B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-70B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,63B,0B,0B,16B,-116B,0B,0B,17B,36B,0B,0B,16B,71B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,41B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,0B,0B,0B,0B,30B,0B,64B,64B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fScar-L"}}
scoreboard players remove @a[tag=ByScar-L] money 15
scoreboard players set @a[tag=ByScar-L] MainW 16
tellraw @a[tag=ByScar-L] {"text":"§aSuccessfully purchased §fScar-L§a§l!"}
scoreboard players tag @a[tag=ByScar-L] remove ByScar-L

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_assaultRP_min=17,score_assaultRP=17,tag=InGame,score_money_min=15,score_S-Shop=2,score_S-Shop_min=2] add ByAK-101
replaceitem entity @a[tag=ByAK-101] slot.hotbar.0 mwc:ak101 1 0 {IUuidLeast:-5979928231831137249L,Ammo:30,IUuidMost:5823497974735848671L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,80B,-47B,56B,-115B,-58B,86B,68B,-33B,-83B,3B,6B,-12B,-57B,96B,20B,31B,0B,0B,19B,98B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,15B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-50B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,102B,0B,0B,17B,81B,0B,0B,17B,55B,0B,0B,17B,40B,0B,0B,0B,0B,0B,0B,17B,-87B,0B,0B,18B,69B,0B,0B,0B,0B,0B,0B,18B,-125B,0B,0B,0B,0B,0B,0B,18B,-126B,0B,0B,18B,123B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,0B,0B,0B,0B,30B,0B,64B,64B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fAK-101"}}
scoreboard players remove @a[tag=ByAK-101] money 15
scoreboard players set @a[tag=ByAK-101] MainW 17
tellraw @a[tag=ByAK-101] {"text":"§aSuccessfully purchased §fAK-101§a§l!"}
scoreboard players tag @a[tag=ByAK-101] remove ByAK-101

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_assaultRP_min=18,score_assaultRP=18,tag=InGame,score_money_min=18,score_S-Shop=2,score_S-Shop_min=2] add ByCZ-805
replaceitem entity @a[tag=ByCZ-805] slot.hotbar.0 mwc:cz805_bren 1 0 {IUuidLeast:-6680931563283792037L,Ammo:30,IUuidMost:7754458803720767497L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,107B,-99B,95B,50B,117B,45B,72B,9B,-93B,72B,-112B,35B,-23B,-58B,63B,91B,0B,0B,19B,105B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,15B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-71B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-70B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,67B,0B,0B,0B,0B,0B,0B,16B,-1B,0B,0B,17B,118B,0B,0B,0B,0B,0B,0B,18B,120B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,30B,0B,64B,64B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fCZ-805"}}
scoreboard players remove @a[tag=ByCZ-805] money 18
scoreboard players set @a[tag=ByCZ-805] MainW 18
tellraw @a[tag=ByCZ-805] {"text":"§aSuccessfully purchased §fCZ-805§a§l!"}
scoreboard players tag @a[tag=ByCZ-805] remove ByCZ-805

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_assaultRP_min=19,score_assaultRP=19,tag=InGame,score_money_min=18,score_S-Shop=2,score_S-Shop_min=2] add ByARX-160
replaceitem entity @a[tag=ByARX-160] slot.hotbar.0 mwc:arx160 1 0 {IUuidLeast:-8353918310610692186L,Ammo:30,IUuidMost:5806340343048456396L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,80B,-108B,67B,-57B,88B,108B,72B,-52B,-116B,16B,-21B,-114B,-75B,107B,23B,-90B,0B,0B,19B,106B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,16B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-72B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-70B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,4B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,83B,0B,0B,17B,119B,0B,0B,18B,6B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,124B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,30B,0B,64B,32B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fARX-160"}}
scoreboard players remove @a[tag=ByARX-160] money 18
scoreboard players set @a[tag=ByARX-160] MainW 19
tellraw @a[tag=ByARX-160] {"text":"§aSuccessfully purchased §fARX-160§a§l!"}
scoreboard players tag @a[tag=ByARX-160] remove ByARX-160

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_assaultRP_min=20,score_assaultRP=20,tag=InGame,score_money_min=18,score_S-Shop=2,score_S-Shop_min=2] add ByHKG11
replaceitem entity @a[tag=ByHKG11] slot.hotbar.0 mwc:g11 1 0 {IUuidLeast:-7106329440988596957L,AtId:[I;4477,0,0,0,0,0,0,4356,4152,0,0,0,0,0,4579,0,0,0,0,0,0,0,0,0,0,4096,0],Ammo:50,IUuidMost:5446940351899846970L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,75B,-105B,107B,100B,19B,-69B,73B,58B,-99B,97B,63B,6B,60B,-7B,117B,35B,0B,0B,19B,113B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,32B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,125B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,19B,26B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,4B,0B,0B,16B,56B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,-29B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,50B,0B,63B,-128B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fHK G11"}}
scoreboard players remove @a[tag=ByHKG11] money 18
scoreboard players set @a[tag=ByHKG11] MainW 20
tellraw @a[tag=ByHKG11] {"text":"§aSuccessfully purchased §fHK G11§a§l!"}
scoreboard players tag @a[tag=ByHKG11] remove ByHKG11

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_assaultRP_min=21,score_assaultRP=21,tag=InGame,score_money_min=17,score_S-Shop=2,score_S-Shop_min=2] add ByK2C1
replaceitem entity @a[tag=ByK2C1] slot.hotbar.0 mwc:k2c1 1 0 {IUuidLeast:-5989902998187926001L,Ammo:30,IUuidMost:-7496194521731872727L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-105B,-8B,42B,-52B,-116B,-15B,72B,41B,-84B,-33B,-106B,-11B,-127B,-10B,30B,15B,0B,0B,19B,111B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,13B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-68B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-70B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,4B,0B,0B,17B,28B,0B,0B,17B,64B,0B,0B,17B,38B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,116B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,124B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,0B,0B,0B,0B,30B,0B,64B,64B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fK2C1"}}
scoreboard players remove @a[tag=ByK2C1] money 17
scoreboard players set @a[tag=ByK2C1] MainW 21
tellraw @a[tag=ByK2C1] {"text":"§aSuccessfully purchased §fK2C1§a§l!"}
scoreboard players tag @a[tag=ByK2C1] remove ByK2C1

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_assaultRP_min=22,score_assaultRP=22,tag=InGame,score_money_min=17,score_S-Shop=2,score_S-Shop_min=2] add ByMalyuk
replaceitem entity @a[tag=ByMalyuk] slot.hotbar.0 mwc:malyuk 1 0 {IUuidLeast:-5943148442416822575L,Ammo:30,IUuidMost:-3520154050309701092L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-49B,37B,-26B,-118B,-76B,-93B,66B,28B,-83B,-123B,-79B,-6B,-46B,84B,70B,-47B,0B,0B,19B,101B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,15B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-72B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-46B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,4B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,119B,0B,0B,18B,68B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,30B,0B,64B,96B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fMalyuk"}}
scoreboard players remove @a[tag=ByMalyuk] money 17
scoreboard players set @a[tag=ByMalyuk] MainW 22
tellraw @a[tag=ByMalyuk] {"text":"§aSuccessfully purchased §fMalyuk§a§l!"}
scoreboard players tag @a[tag=ByMalyuk] remove ByMalyuk

#execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_assaultRP_min=23,score_assaultRP=23,tag=InGame,score_money_min=17,score_S-Shop=2,score_S-Shop_min=2] add ByAK-103
#replaceitem entity @a[tag=ByAK-103] slot.hotbar.0 mwc:ak103_bullpup 1 0 {IUuidLeast:-4781744458854334463L,Ammo:30,IUuidMost:8066877173228523048L,Instance:[B;-32B,83B,21B,-112B,-126B,43B,-31B,45B,117B,49B,126B,79B,17B,126B,62B,-127B,0B,0B,0B,9B,111B,-13B,78B,12B,-124B,-2B,78B,40B,-67B,-93B,-44B,-65B,-37B,75B,-128B,1B,0B,0B,20B,26B,0B,0B,0B,5B,0B,0B,0B,0B,0B,0B,0B,45B,75B,99B,82B,108B,-118B,-87B,-71B,14B,-97B,-92B,100B,-74B,-111B,106B,61B,-40B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,19B,-126B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,21B,-81B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,24B,0B,0B,18B,-44B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,111B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-99B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,30B,0B,64B,0B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fAK-103"}}
#scoreboard players remove @a[tag=ByAK-103] money 17
#scoreboard players set @a[tag=ByAK-103] MainW 23
#tellraw @a[tag=ByAK-103] {"text":"§aSuccessfully purchased §fAK-103§a§l!"}
#scoreboard players tag @a[tag=ByAK-103] remove ByAK-103

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_assaultRP_min=24,score_assaultRP=24,tag=InGame,score_money_min=16,score_S-Shop=2,score_S-Shop_min=2] add ByNGSW-R
replaceitem entity @a[tag=ByNGSW-R] slot.hotbar.0 mwc:sig_xm7 1 0 {IUuidLeast:-5919528227367978730L,Ammo:20,IUuidMost:5911968295016615430L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,82B,11B,-121B,-41B,99B,-42B,78B,6B,-83B,-39B,-100B,112B,-79B,-43B,121B,22B,0B,0B,20B,86B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,17B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-71B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-69B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,4B,0B,0B,0B,0B,0B,0B,17B,75B,0B,0B,17B,35B,0B,0B,0B,0B,0B,0B,17B,118B,0B,0B,18B,111B,0B,0B,18B,108B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,20B,0B,64B,96B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fNGSW-R"}}
scoreboard players remove @a[tag=ByNGSW-R] money 16
scoreboard players set @a[tag=ByNGSW-R] MainW 24
tellraw @a[tag=ByNGSW-R] {"text":"§aSuccessfully purchased §fNGSW-R§a§l!"}
scoreboard players tag @a[tag=ByNGSW-R] remove ByNGSW-R

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_assaultRP_min=25,score_assaultRP=25,tag=InGame,score_money_min=18,score_S-Shop=0] add BySIG-556
replaceitem entity @a[tag=BySIG-556] slot.hotbar.0 mwc:sig556 1 0 {IUuidLeast:-8372138869692255297L,Ammo:30,AtId:[I;4537,0,0,0,4794,0,0,0,4164,4418,4166,0,0,4718,0,0,0,0,4731,0,0,0,0,0,0,4096,0],IUuidMost:-6218574790491945297L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-87B,-77B,47B,44B,-21B,-121B,70B,-81B,-117B,-48B,48B,14B,53B,-64B,-77B,-65B,0B,0B,19B,112B,0B,0B,0B,2B,0B,0B,0B,0B,0B,0B,0B,22B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-71B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-70B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,68B,0B,0B,17B,66B,0B,0B,16B,70B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,110B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,123B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,30B,0B,64B,64B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fSIG-556"}}
scoreboard players remove @a[tag=BySIG-556] money 18
scoreboard players set @a[tag=BySIG-556] MainW 66
tellraw @a[tag=BySIG-556] {"text":"§aSuccessfully purchased §fSIG-556§a§l!"}
scoreboard players tag @a[tag=BySIG-556] remove BySIG-556

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_assaultRP_min=26,score_assaultRP=26,tag=InGame,score_money_min=14,score_S-Shop=1,score_S-Shop_min=1] add ByAK-74
replaceitem entity @a[tag=ByAK-74] slot.hotbar.0 mwc:ak74 1 0 {IUuidLeast:-6741609165649423365L,AtId:[I;0,0,0,0,0,0,0,4454,4430,4403,4392,0,4521,4677,0,4739,0,4738,4731,0,0,0,0,0,0,4096,0],Ammo:30,IUuidMost:-92057244041002957L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-2B,-72B,-14B,108B,-99B,-17B,64B,51B,-94B,112B,-2B,46B,-78B,-14B,-45B,-5B,0B,0B,19B,99B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,49B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-45B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,102B,0B,0B,17B,78B,0B,0B,17B,51B,0B,0B,17B,40B,0B,0B,0B,0B,0B,0B,17B,-87B,0B,0B,18B,69B,0B,0B,0B,0B,0B,0B,18B,-125B,0B,0B,0B,0B,0B,0B,18B,-126B,0B,0B,18B,123B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,30B,0B,64B,64B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fAK-74"}}
scoreboard players remove @a[tag=ByAK-74] money 14
scoreboard players set @a[tag=ByAK-74] MainW 67
tellraw @a[tag=ByAK-74] {"text":"§aSuccessfully purchased §fAK-74§a§l!"}
scoreboard players tag @a[tag=ByAK-74] remove ByAK-74

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_assaultRP_min=27,score_assaultRP=27,tag=InGame,score_money_min=15,score_S-Shop=2,score_S-Shop_min=2] add ByType-20
replaceitem entity @a[tag=ByType-20] slot.hotbar.0 mwc:type20 1 0 {IUuidLeast:-7049800265273297524L,Ammo:30,IUuidMost:6873003113088043382L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,95B,97B,-49B,-22B,-89B,-60B,73B,118B,-98B,42B,20B,2B,-102B,-18B,53B,-116B,0B,0B,19B,104B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,12B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-72B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-70B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,4B,0B,0B,16B,104B,0B,0B,0B,0B,0B,0B,17B,30B,0B,0B,0B,0B,0B,0B,17B,119B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,0B,0B,0B,0B,30B,0B,64B,64B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fType-20"}}
scoreboard players remove @a[tag=ByType-20] money 15
scoreboard players set @a[tag=ByType-20] MainW 68
tellraw @a[tag=ByType-20] {"text":"§aSuccessfully purchased §fType-20§a§l!"}
scoreboard players tag @a[tag=ByType-20] remove ByType-20

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_assaultRP_min=28,score_assaultRP=28,tag=InGame,score_money_min=20,score_S-Shop=2,score_S-Shop_min=2] add ByHoneyBadger
replaceitem entity @a[tag=ByHoneyBadger] slot.hotbar.0 mwc:aac_honey_badger 1 0 {IUuidLeast:-7266481543041971754L,AtId:[I;4536,0,4553,0,0,0,0,4356,4201,4398,4383,4352,4471,0,4716,0,0,0,0,0,0,0,0,0,0,4096,0],Ammo:30,IUuidMost:-1738375030918394167L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-25B,-32B,13B,30B,-93B,-77B,78B,-55B,-101B,40B,69B,-119B,60B,13B,9B,-42B,0B,0B,19B,-125B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,50B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-72B,0B,0B,0B,0B,0B,0B,17B,-55B,0B,0B,0B,0B,0B,0B,18B,-59B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,4B,0B,0B,16B,105B,0B,0B,17B,46B,0B,0B,17B,31B,0B,0B,17B,0B,0B,0B,17B,119B,0B,0B,0B,0B,0B,0B,18B,108B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,30B,0B,64B,64B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fHoney Badger"}}
scoreboard players remove @a[tag=ByHoneyBadger] money 20
scoreboard players set @a[tag=ByHoneyBadger] MainW 41
tellraw @a[tag=ByHoneyBadger] {"text":"§aSuccessfully purchased §fHoney Badger§a§l!"}
scoreboard players tag @a[tag=ByHoneyBadger] remove ByHoneyBadger

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_assaultRP_min=29,score_assaultRP=29,tag=InGame,score_money_min=19,score_S-Shop=0] add ByF2000
replaceitem entity @a[tag=ByF2000] slot.hotbar.0 mwc:f2000 1 0 {IUuidLeast:-6350252504368271991L,AtId:[I;5210,0,0,0,0,0,0,4356,5190,0,0,0,5191,0,0,4612,0,4732,0,0,0,0,0,0,0,4096,0],Ammo:30,IUuidMost:1272366650905938208L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,17B,-88B,90B,-70B,75B,77B,73B,32B,-89B,-33B,94B,-2B,11B,24B,45B,-119B,0B,0B,19B,107B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,37B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,20B,90B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-58B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,4B,0B,0B,20B,70B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,20B,71B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,4B,0B,0B,0B,0B,0B,0B,18B,124B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,30B,0B,63B,-64B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fFN F2000"}}
scoreboard players remove @a[tag=ByF2000] money 19
scoreboard players set @a[tag=ByF2000] MainW 73
tellraw @a[tag=ByF2000] {"text":"§aSuccessfully purchased §fFN F2000§a§l!"}
scoreboard players tag @a[tag=ByF2000] remove ByF2000

scoreboard players reset @a[score_assaultRP_min=1] assaultRP



scoreboard players enable @a S&DMRP

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_S&DMRP_min=1,score_S&DMRP=1,tag=InGame,score_money_min=33,score_S-Shop=1,score_S-Shop_min=1] add ByM200
replaceitem entity @a[tag=ByM200] slot.hotbar.0 mwc:m200_intervention 1 0 {IUuidLeast:-9213853574444397262L,Ammo:10,AtId:[I;4493,0,0,0,5238,0,0,4356,4097,5226,0,5192,-1,4713,4702,5218,0,0,0,0,0,0,0,0,0,4096,0],IUuidMost:3791147645435594746L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,52B,-100B,-36B,-78B,121B,63B,71B,-6B,-128B,33B,-48B,-3B,-70B,-57B,77B,50B,0B,0B,19B,-104B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,38B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-115B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,20B,118B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,4B,0B,0B,16B,1B,0B,0B,20B,106B,0B,0B,0B,0B,0B,0B,20B,72B,-1B,-1B,-1B,-1B,0B,0B,18B,105B,0B,0B,18B,94B,0B,0B,20B,98B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,10B,0B,65B,-128B,0B,0B,0B,0B,0B,1B,62B,15B,92B,41B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fM200"}}
scoreboard players remove @a[tag=ByM200] money 33
scoreboard players set @a[tag=ByM200] MainW 25
tellraw @a[tag=ByM200] {"text":"§aSuccessfully purchased §fM200§a§l!"}
scoreboard players tag @a[tag=ByM200] remove ByM200

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_S&DMRP_min=2,score_S&DMRP=2,tag=InGame,score_money_min=28,score_S-Shop=0] add ByDSR1
replaceitem entity @a[tag=ByDSR1] slot.hotbar.0 mwc:dsr1 1 0 {IUuidLeast:-4702545960033560097L,AtId:[I;4493,0,0,0,0,0,0,0,4224,0,0,4227,-1,0,4700,4701,0,0,0,0,0,0,0,0,0,4096,0],Ammo:10,IUuidMost:4543435030718530762L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,63B,13B,-122B,22B,-102B,11B,68B,-54B,-66B,-67B,51B,93B,80B,64B,89B,-33B,0B,0B,19B,-106B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,47B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-115B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-5B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,-125B,-1B,-1B,-1B,-1B,0B,0B,0B,0B,0B,0B,18B,92B,0B,0B,18B,93B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,10B,0B,65B,0B,0B,0B,0B,0B,0B,1B,62B,15B,92B,41B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fDSR1"}}
scoreboard players remove @a[tag=ByDSR1] money 28
scoreboard players set @a[tag=ByDSR1] MainW 26
tellraw @a[tag=ByDSR1] {"text":"§aSuccessfully purchased §fDSR1§a§l!"}
scoreboard players tag @a[tag=ByDSR1] remove ByDSR1

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_S&DMRP_min=3,score_S&DMRP=3,tag=InGame,score_money_min=27,score_S-Shop=0] add ByM40A6
replaceitem entity @a[tag=ByM40A6] slot.hotbar.0 mwc:m40a6 1 0 {IUuidLeast:-7267100874488985559L,AtId:[I;4493,0,0,0,0,0,0,4356,0,0,4362,0,-1,4691,4692,0,0,0,0,0,0,0,0,0,0,4096,0],Ammo:7,IUuidMost:6021423242944269396L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,83B,-112B,100B,-119B,93B,-7B,76B,84B,-101B,38B,18B,65B,-27B,39B,72B,41B,0B,0B,19B,38B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,21B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-115B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-3B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,4B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,10B,0B,0B,0B,0B,-1B,-1B,-1B,-1B,0B,0B,18B,83B,0B,0B,18B,84B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,7B,0B,65B,16B,0B,0B,0B,0B,0B,1B,62B,15B,92B,41B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fM40A6"}}
scoreboard players remove @a[tag=ByM40A6] money 27
scoreboard players set @a[tag=ByM40A6] MainW 27
tellraw @a[tag=ByM40A6] {"text":"§aSuccessfully purchased §fM40A6§a§l!"}
scoreboard players tag @a[tag=ByM40A6] remove ByM40A6

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_S&DMRP_min=4,score_S&DMRP=4,tag=InGame,score_money_min=24,score_S-Shop=0] add ByM14DMR
replaceitem entity @a[tag=ByM14DMR] slot.hotbar.0 mwc:mk14_ebr 1 0 {IUuidLeast:-7983727144844238694L,AtId:[I;4493,0,0,0,0,0,0,4235,-1,0,4232,0,0,0,4652,0,4651,0,4731,0,0,0,0,0,0,4096,0],Ammo:20,IUuidMost:3965229476866572778L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,55B,7B,83B,51B,85B,-118B,65B,-22B,-111B,52B,26B,118B,27B,-22B,96B,-102B,0B,0B,19B,-117B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,42B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-115B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,19B,11B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,-117B,-1B,-1B,-1B,-1B,0B,0B,0B,0B,0B,0B,16B,-120B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,44B,0B,0B,0B,0B,0B,0B,18B,43B,0B,0B,0B,0B,0B,0B,18B,123B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,20B,0B,64B,-112B,0B,0B,0B,0B,0B,1B,62B,15B,92B,41B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fM14"}}
scoreboard players remove @a[tag=ByM14DMR] money 24
scoreboard players set @a[tag=ByM14DMR] MainW 28
tellraw @a[tag=ByM14DMR] {"text":"§aSuccessfully purchased §fM14§a§l!"}
scoreboard players tag @a[tag=ByM14DMR] remove ByM14DMR

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_S&DMRP_min=5,score_S&DMRP=5,tag=InGame,score_money_min=18,score_S-Shop=0] add ByAR-10
replaceitem entity @a[tag=ByAR-10] slot.hotbar.0 mwc:ar10_super_sass 1 0 {IUuidLeast:-7408256676942429954L,Ammo:10,AtId:[I;4493,0,0,0,4865,0,0,0,4373,4429,4382,4340,-1,0,4716,0,0,0,0,0,0,0,0,0,0,4096,0],IUuidMost:7344822522525011620L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,101B,-18B,13B,43B,113B,100B,78B,-92B,-103B,48B,-107B,-51B,-115B,-18B,64B,-2B,0B,0B,19B,41B,0B,0B,0B,2B,0B,0B,0B,0B,0B,0B,0B,25B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-115B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,19B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,21B,0B,0B,17B,77B,0B,0B,17B,30B,0B,0B,16B,-12B,-1B,-1B,-1B,-1B,0B,0B,0B,0B,0B,0B,18B,108B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,10B,0B,64B,-96B,0B,0B,0B,0B,0B,1B,62B,15B,92B,41B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fAR-10"}}
scoreboard players remove @a[tag=ByAR-10] money 18
scoreboard players set @a[tag=ByAR-10] MainW 29
tellraw @a[tag=ByAR-10] {"text":"§aSuccessfully purchased §fAR-10§a§l!"}
scoreboard players tag @a[tag=ByAR-10] remove ByAR-10

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_S&DMRP_min=6,score_S&DMRP=6,tag=InGame,score_money_min=17,score_S-Shop=0] add ByM110
replaceitem entity @a[tag=ByM110] slot.hotbar.0 mwc:m110_sass 1 0 {IUuidLeast:-4642280492762686269L,AtId:[I;4493,0,0,0,0,0,0,0,4371,4428,4388,4347,-1,4720,4729,0,0,0,0,0,0,0,0,0,0,4096,0],Ammo:10,IUuidMost:-7010384928318992582L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-98B,-74B,28B,12B,-32B,-53B,79B,58B,-65B,-109B,78B,124B,-39B,39B,-100B,-61B,0B,0B,19B,40B,0B,0B,0B,2B,0B,0B,0B,0B,0B,0B,0B,24B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-115B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,19B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,19B,0B,0B,17B,76B,0B,0B,17B,36B,0B,0B,16B,-5B,-1B,-1B,-1B,-1B,0B,0B,18B,112B,0B,0B,18B,121B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,10B,0B,64B,-64B,0B,0B,0B,0B,0B,1B,62B,15B,92B,41B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fM110"}}
scoreboard players remove @a[tag=ByM110] money 17
scoreboard players set @a[tag=ByM110] MainW 30
tellraw @a[tag=ByM110] {"text":"§aSuccessfully purchased §fM110§a§l!"}
scoreboard players tag @a[tag=ByM110] remove ByM110

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_S&DMRP_min=7,score_S&DMRP=7,tag=InGame,score_money_min=35,score_S-Shop=1,score_S-Shop_min=1] add ByM82Barrett
replaceitem entity @a[tag=ByM82Barrett] slot.hotbar.0 mwc:m82_barrett 1 0 {IUuidLeast:-8600154551071994327L,AtId:[I;4493,0,0,0,0,0,0,4356,0,0,4382,0,4361,0,4623,0,0,0,0,0,0,0,0,0,0,4096,0],Ammo:10,IUuidMost:-2362780672235912177L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-33B,53B,-73B,127B,69B,56B,68B,15B,-120B,-90B,29B,0B,89B,-27B,14B,41B,0B,0B,19B,-102B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,19B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-115B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-11B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,4B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,30B,0B,0B,0B,0B,0B,0B,17B,9B,0B,0B,0B,0B,0B,0B,18B,15B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,10B,0B,65B,112B,0B,0B,0B,0B,0B,1B,62B,15B,92B,41B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fM82 Barrett"}}
scoreboard players remove @a[tag=ByM82Barrett] money 35
scoreboard players set @a[tag=ByM82Barrett] MainW 31
tellraw @a[tag=ByM82Barrett] {"text":"§aSuccessfully purchased §fM82 Barrett§a§l!"}
scoreboard players tag @a[tag=ByM82Barrett] remove ByM82Barrett

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_S&DMRP_min=8,score_S&DMRP=8,tag=InGame,score_money_min=28,score_S-Shop=1,score_S-Shop_min=1] add BySV-98
replaceitem entity @a[tag=BySV-98] slot.hotbar.0 mwc:sv98 1 0 {IUuidLeast:-8952383709748354851L,AtId:[I;4493,0,0,0,0,0,0,4356,0,0,0,0,0,4697,0,0,0,0,0,0,0,0,0,0,0,4096,0],Ammo:10,IUuidMost:7730166122406234677L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,107B,71B,17B,33B,-44B,-56B,74B,53B,-125B,-62B,-66B,114B,-97B,116B,-96B,-35B,0B,0B,19B,68B,0B,0B,0B,4B,0B,0B,0B,0B,0B,0B,0B,24B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-115B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,19B,34B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,4B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,89B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,10B,0B,65B,16B,0B,0B,0B,0B,0B,1B,62B,97B,71B,-82B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fSV-98"}}
scoreboard players remove @a[tag=BySV-98] money 28
scoreboard players set @a[tag=BySV-98] MainW 32
tellraw @a[tag=BySV-98] {"text":"§aSuccessfully purchased §fSV-98§a§l!"}
scoreboard players tag @a[tag=BySV-98] remove BySV-98

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_S&DMRP_min=9,score_S&DMRP=9,tag=InGame,score_money_min=24,score_S-Shop=1,score_S-Shop_min=1] add ByFNFAL
replaceitem entity @a[tag=ByFNFAL] slot.hotbar.0 mwc:fnfal 1 0 {IUuidLeast:-7060305099617186498L,AtId:[I;4493,0,0,0,0,0,0,4462,4466,4464,4463,0,0,4679,4680,0,0,0,4731,0,0,0,0,0,0,4096,0],Ammo:20,IUuidMost:1760347745401260966L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,24B,110B,2B,-14B,-99B,-51B,75B,-90B,-98B,4B,-63B,-21B,67B,112B,77B,62B,0B,0B,19B,-118B,0B,0B,0B,2B,0B,0B,0B,0B,0B,0B,0B,42B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-115B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,19B,9B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,110B,0B,0B,17B,114B,0B,0B,17B,112B,0B,0B,17B,111B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,71B,0B,0B,18B,72B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,123B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,20B,0B,64B,-96B,0B,0B,0B,0B,0B,1B,62B,15B,92B,41B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fFN FAL"}}
scoreboard players remove @a[tag=ByFNFAL] money 24
scoreboard players set @a[tag=ByFNFAL] MainW 33
tellraw @a[tag=ByFNFAL] {"text":"§aSuccessfully purchased §fFN FAL§a§l!"}
scoreboard players tag @a[tag=ByFNFAL] remove ByFNFAL

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_S&DMRP_min=10,score_S&DMRP=10,tag=InGame,score_money_min=23,score_S-Shop=1,score_S-Shop_min=1] add ByG3
replaceitem entity @a[tag=ByG3] slot.hotbar.0 mwc:g3 1 0 {IUuidLeast:-5456371751374251198L,AtId:[I;4493,0,0,0,0,0,0,4268,4222,4400,0,0,0,4629,4630,0,0,0,4731,0,0,0,0,0,0,4096,0],Ammo:20,IUuidMost:-5996746198853334086L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-84B,-57B,71B,26B,-79B,44B,75B,-70B,-76B,71B,18B,-51B,28B,-36B,-101B,66B,0B,0B,19B,-116B,0B,0B,0B,2B,0B,0B,0B,0B,0B,0B,0B,83B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-115B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,19B,10B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,-84B,0B,0B,16B,126B,0B,0B,17B,48B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,21B,0B,0B,18B,22B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,123B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,20B,0B,64B,64B,0B,0B,0B,0B,0B,1B,62B,15B,92B,41B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fG3"}}
scoreboard players remove @a[tag=ByG3] money 23
scoreboard players set @a[tag=ByG3] MainW 34
tellraw @a[tag=ByG3] {"text":"§aSuccessfully purchased §fG3§a§l!"}
scoreboard players tag @a[tag=ByG3] remove ByG3

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_S&DMRP_min=11,score_S&DMRP=11,tag=InGame,score_money_min=17,score_S-Shop=1,score_S-Shop_min=1] add ByBeowulf
replaceitem entity @a[tag=ByBeowulf] slot.hotbar.0 mwc:beowulf_50_cal 1 0 {IUuidLeast:-7915993359378917845L,AtId:[I;4493,0,0,0,4797,0,0,0,4328,4418,4382,4349,-1,4721,4716,0,0,0,0,0,0,0,0,0,0,4096,0],Ammo:13,IUuidMost:-4826131307130631816L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-67B,6B,35B,37B,103B,22B,73B,120B,-110B,36B,-67B,-6B,-7B,-34B,86B,43B,0B,0B,19B,39B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,126B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-115B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-67B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,-24B,0B,0B,17B,66B,0B,0B,17B,30B,0B,0B,16B,-3B,-1B,-1B,-1B,-1B,0B,0B,18B,113B,0B,0B,18B,108B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,13B,0B,64B,-32B,0B,0B,0B,0B,0B,1B,62B,15B,92B,41B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fBeowulf"}}
scoreboard players remove @a[tag=ByBeowulf] money 17
scoreboard players set @a[tag=ByBeowulf] MainW 35
tellraw @a[tag=ByBeowulf] {"text":"§aSuccessfully purchased §fBeowulf§a§l!"}
scoreboard players tag @a[tag=ByBeowulf] remove ByBeowulf

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_S&DMRP_min=12,score_S&DMRP=12,tag=InGame,score_money_min=35,score_S-Shop=2,score_S-Shop_min=2] add ByAS50
replaceitem entity @a[tag=ByAS50] slot.hotbar.0 mwc:as50 1 0 {IUuidLeast:-5073504178520082721L,AtId:[I;4493,0,0,0,0,0,0,4356,0,0,0,4363,-1,4685,0,0,0,4732,0,0,0,0,0,0,0,4096,0],Ammo:10,IUuidMost:-2211313720604014615L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-31B,79B,-43B,-29B,28B,115B,71B,-23B,-71B,-105B,74B,-44B,-120B,-39B,-74B,-33B,0B,0B,19B,-103B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,19B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-115B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-12B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,4B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,11B,-1B,-1B,-1B,-1B,0B,0B,18B,77B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,124B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,10B,0B,65B,96B,0B,0B,0B,0B,0B,1B,62B,15B,92B,41B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fAS50"}}
scoreboard players remove @a[tag=ByAS50] money 35
scoreboard players set @a[tag=ByAS50] MainW 36
tellraw @a[tag=ByAS50] {"text":"§aSuccessfully purchased §fAS50§a§l!"}
scoreboard players tag @a[tag=ByAS50] remove ByAS50

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_S&DMRP_min=13,score_S&DMRP=13,tag=InGame,score_money_min=28,score_S-Shop=2,score_S-Shop_min=2] add ByL96A1
replaceitem entity @a[tag=ByL96A1] slot.hotbar.0 mwc:l96a1 1 0 {IUuidLeast:-6157286602719469555L,AtId:[I;4493,0,0,0,0,0,0,4356,0,0,0,0,-1,4713,4698,4699,0,4732,0,0,0,0,0,0,0,4096,0],Ammo:10,IUuidMost:-5056325566698207958L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-71B,-44B,82B,-81B,-56B,58B,69B,42B,-86B,-116B,-20B,117B,32B,-94B,96B,13B,0B,0B,19B,-105B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,22B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-115B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-7B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,4B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,-1B,-1B,-1B,-1B,0B,0B,18B,105B,0B,0B,18B,90B,0B,0B,18B,91B,0B,0B,0B,0B,0B,0B,18B,124B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,10B,0B,65B,0B,0B,0B,0B,0B,0B,1B,62B,15B,92B,41B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fL96A1"}}
scoreboard players remove @a[tag=ByL96A1] money 28
scoreboard players set @a[tag=ByL96A1] MainW 37
tellraw @a[tag=ByL96A1] {"text":"§aSuccessfully purchased §fL96A1§a§l!"}
scoreboard players tag @a[tag=ByL96A1] remove ByL96A1

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_S&DMRP_min=14,score_S&DMRP=14,tag=InGame,score_money_min=25,score_S-Shop=2,score_S-Shop_min=2] add ByRemington-700
replaceitem entity @a[tag=ByRemington-700] slot.hotbar.0 mwc:remington_700 1 0 {IUuidLeast:-8259354084519634208L,AtId:[I;4493,0,0,0,4862,0,0,0,0,0,4177,0,0,0,4696,4695,0,0,0,0,0,0,0,0,0,4096,0],Ammo:5,IUuidMost:6105873396778812909L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,84B,-68B,107B,-127B,10B,-126B,69B,-19B,-115B,96B,-31B,56B,86B,9B,26B,-32B,0B,0B,19B,83B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,118B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-115B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-2B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,81B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,88B,0B,0B,18B,87B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,5B,0B,65B,32B,0B,0B,0B,0B,0B,1B,62B,97B,71B,-82B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fRemington-700"}}
scoreboard players remove @a[tag=ByRemington-700] money 25
scoreboard players set @a[tag=ByRemington-700] MainW 38
tellraw @a[tag=ByRemington-700] {"text":"§aSuccessfully purchased §fRemington-700§a§l!"}
scoreboard players tag @a[tag=ByRemington-700] remove ByRemington-700

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_S&DMRP_min=15,score_S&DMRP=15,tag=InGame,score_money_min=24,score_S-Shop=2,score_S-Shop_min=2] add ByHK417
replaceitem entity @a[tag=ByHK417] slot.hotbar.0 mwc:hk_417 1 0 {IUuidLeast:-4737777854683743474L,AtId:[I;4493,0,0,0,0,0,0,0,4332,4424,4386,4345,-1,0,4716,0,0,0,4731,0,0,0,0,0,0,4096,0],Ammo:20,IUuidMost:-4018022232072895826L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-56B,61B,30B,17B,125B,-84B,66B,-82B,-66B,64B,8B,36B,-102B,-36B,-5B,14B,0B,0B,19B,45B,0B,0B,0B,2B,0B,0B,0B,0B,0B,0B,0B,19B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-115B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-56B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,-20B,0B,0B,17B,72B,0B,0B,17B,34B,0B,0B,16B,-7B,-1B,-1B,-1B,-1B,0B,0B,0B,0B,0B,0B,18B,108B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,123B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,20B,0B,64B,-96B,0B,0B,0B,0B,0B,1B,62B,15B,92B,41B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fHK417"}}
scoreboard players remove @a[tag=ByHK417] money 24
scoreboard players set @a[tag=ByHK417] MainW 39
tellraw @a[tag=ByHK417] {"text":"§aSuccessfully purchased §fHK 417§a§l!"}
scoreboard players tag @a[tag=ByHK417] remove ByHK417

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_S&DMRP_min=16,score_S&DMRP=16,tag=InGame,score_money_min=17,score_S-Shop=2,score_S-Shop_min=2] add ByZ10
replaceitem entity @a[tag=ByZ10] slot.hotbar.0 mwc:zbroyar_z10 1 0 {IUuidLeast:-7006729836744774167L,AtId:[I;4493,0,0,0,0,0,0,0,4372,0,4386,4348,-1,0,4716,0,0,0,0,0,0,0,0,0,0,4096,0],Ammo:10,IUuidMost:3500069121669153840L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,48B,-110B,-66B,82B,110B,103B,68B,48B,-98B,-61B,24B,86B,51B,-78B,109B,-23B,0B,0B,19B,42B,0B,0B,0B,2B,0B,0B,0B,0B,0B,0B,0B,24B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-115B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,19B,2B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,20B,0B,0B,0B,0B,0B,0B,17B,34B,0B,0B,16B,-4B,-1B,-1B,-1B,-1B,0B,0B,0B,0B,0B,0B,18B,108B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,10B,0B,64B,-64B,0B,0B,0B,0B,0B,1B,62B,15B,92B,41B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fZ10"}}
scoreboard players remove @a[tag=ByZ10] money 17
scoreboard players set @a[tag=ByZ10] MainW 40
tellraw @a[tag=ByZ10] {"text":"§aSuccessfully purchased §fZ10§a§l!"}
scoreboard players tag @a[tag=ByZ10] remove ByZ10

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_S&DMRP_min=17,score_S&DMRP=17,tag=InGame,score_money_min=32,score_S-Shop=0] add ByPGMHecate
replaceitem entity @a[tag=ByPGMHecate] slot.hotbar.0 mwc:pgm_hecate_ii 1 0 {IUuidLeast:-7814653290609986721L,AtId:[I;4493,0,0,0,0,0,0,4356,0,0,0,0,0,0,5200,0,0,4732,0,0,0,0,0,0,0,4096,0],Ammo:7,IUuidMost:7578421538169504446L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,105B,43B,-10B,60B,-100B,-61B,66B,-66B,-109B,-116B,-58B,60B,106B,90B,-77B,95B,0B,0B,20B,58B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,22B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-115B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,20B,55B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,4B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,20B,80B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,124B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,7B,0B,65B,64B,0B,0B,0B,0B,0B,1B,62B,15B,92B,41B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fPGM Hecate"}}
scoreboard players remove @a[tag=ByPGMHecate] money 32
scoreboard players set @a[tag=ByPGMHecate] MainW 65
tellraw @a[tag=ByPGMHecate] {"text":"§aSuccessfully purchased §fPGM Hecate§a§l!"}
scoreboard players tag @a[tag=ByPGMHecate] remove ByPGMHecate

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_S&DMRP_min=18,score_S&DMRP=18,tag=InGame,score_money_min=34,score_S-Shop=0] add BySVD
replaceitem entity @a[tag=BySVD] slot.hotbar.0 mwc:svd_dragunov 1 0 {IUuidLeast:-7519338191134423540L,AtId:[I;4473,0,0,0,0,0,0,4452,4431,4404,0,0,0,4675,0,0,0,0,0,0,0,0,0,0,0,4096,0],Ammo:10,IUuidMost:-1150069385637836924L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-16B,10B,33B,-4B,-78B,1B,71B,-124B,-105B,-91B,-15B,-63B,27B,103B,-122B,12B,0B,0B,19B,66B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,26B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,121B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-37B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,100B,0B,0B,17B,79B,0B,0B,17B,52B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,67B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,10B,0B,65B,32B,0B,0B,0B,0B,0B,1B,62B,15B,92B,41B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fSVD"}}
scoreboard players remove @a[tag=BySVD] money 34
scoreboard players set @a[tag=BySVD] MainW 69
tellraw @a[tag=BySVD] {"text":"§aSuccessfully purchased §fSVD§a§l!"}
scoreboard players tag @a[tag=BySVD] remove BySVD

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_S&DMRP_min=19,score_S&DMRP=19,tag=InGame,score_money_min=34,score_S-Shop=2,score_S-Shop_min=2] add BySSG-08
replaceitem entity @a[tag=BySSG-08] slot.hotbar.0 mwc:ssg_08 1 0 {IUuidLeast:-7962852169594754774L,AtId:[I;4493,0,0,0,0,0,0,0,4178,0,0,0,0,0,4694,4693,0,0,0,0,0,0,0,0,0,4096,0],Ammo:8,IUuidMost:-6385736461343701618L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-89B,97B,78B,-123B,-128B,89B,69B,-114B,-111B,126B,68B,36B,8B,91B,41B,42B,0B,0B,19B,-107B,0B,0B,0B,2B,0B,0B,0B,0B,0B,0B,0B,16B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-115B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,19B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,82B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,86B,0B,0B,18B,85B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,8B,0B,65B,32B,0B,0B,0B,0B,0B,1B,62B,15B,92B,41B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fSSG-08"}}
scoreboard players remove @a[tag=BySSG-08] money 34
scoreboard players set @a[tag=BySSG-08] MainW 70
tellraw @a[tag=BySSG-08] {"text":"§aSuccessfully purchased §fSSG-08§a§l!"}
scoreboard players tag @a[tag=BySSG-08] remove BySSG-08

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_S&DMRP_min=20,score_S&DMRP=20,tag=InGame,score_money_min=30,score_S-Shop=1,score_S-Shop_min=1] add ByAX50
replaceitem entity @a[tag=ByAX50] slot.hotbar.0 mwc:ax50 1 0 {IUuidLeast:-6412135845193157127L,AtId:[I;4493,0,0,0,0,0,0,4356,0,0,4362,0,-1,4574,5228,0,0,4732,0,0,0,0,0,0,0,4096,0],Ammo:5,IUuidMost:-6429737159450212062L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-90B,-60B,-4B,30B,-93B,-41B,73B,34B,-89B,3B,-124B,107B,-9B,-74B,117B,-7B,0B,0B,20B,102B,0B,0B,0B,4B,0B,0B,0B,0B,0B,0B,0B,21B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-115B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,20B,65B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,4B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,10B,0B,0B,0B,0B,-1B,-1B,-1B,-1B,0B,0B,17B,-34B,0B,0B,20B,108B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,124B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,5B,0B,65B,112B,0B,0B,0B,0B,0B,1B,62B,15B,92B,41B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fAX-50"}}
scoreboard players remove @a[tag=ByAX50] money 30
scoreboard players set @a[tag=ByAX50] MainW 74
tellraw @a[tag=ByAX50] {"text":"§aSuccessfully purchased §fAX-50§a§l!"}
scoreboard players tag @a[tag=ByAX50] remove ByAX50

scoreboard players reset @a[score_S&DMRP_min=1] S&DMRP



scoreboard players enable @a SMGP

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_SMGP_min=1,score_SMGP=1,tag=InGame,score_money_min=17,score_S-Shop=0] add ByFMG-9
replaceitem entity @a[tag=ByFMG-9] slot.hotbar.0 mwc:fmg9 1 0 {IUuidLeast:-8150991747020309455L,Ammo:50,IUuidMost:1983679872391726784L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,27B,-121B,114B,85B,126B,0B,70B,-64B,-114B,-31B,-36B,49B,31B,-74B,-68B,49B,0B,0B,19B,97B,0B,0B,0B,2B,0B,0B,0B,0B,0B,0B,0B,24B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,123B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-13B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,50B,0B,63B,-128B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fFMG-9"}}
scoreboard players remove @a[tag=ByFMG-9] money 17
scoreboard players set @a[tag=ByFMG-9] MainW 71
tellraw @a[tag=ByFMG-9] {"text":"§aSuccessfully purchased §fFMG-9§a§l!"}
scoreboard players tag @a[tag=ByFMG-9] remove ByFMG-9

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_SMGP_min=2,score_SMGP=2,tag=InGame,score_money_min=17,score_S-Shop=0] add ByKrissVector
replaceitem entity @a[tag=ByKrissVector] slot.hotbar.0 mwc:kriss_vector 1 0 {IUuidLeast:-7456109238719143185L,AtId:[I;4535,0,0,0,0,0,0,0,0,4240,4172,4169,4471,0,0,0,0,0,0,0,0,0,0,0,0,4096,0],Ammo:30,IUuidMost:8283260365471106957L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,114B,-12B,13B,106B,113B,-6B,71B,-115B,-104B,-122B,-108B,38B,-53B,-93B,34B,-17B,0B,0B,19B,96B,0B,0B,0B,2B,0B,0B,0B,0B,0B,0B,0B,33B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-73B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-68B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,-112B,0B,0B,16B,76B,0B,0B,16B,73B,0B,0B,17B,119B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,30B,0B,64B,32B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fKriss Vector"}}
scoreboard players remove @a[tag=ByKrissVector] money 17
scoreboard players set @a[tag=ByKrissVector] MainW 42
tellraw @a[tag=ByKrissVector] {"text":"§aSuccessfully purchased §fKriss Vector§a§l!"}
scoreboard players tag @a[tag=ByKrissVector] remove ByKrissVector

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_SMGP_min=3,score_SMGP=3,tag=InGame,score_money_min=16,score_S-Shop=0] add ByMAC-10
replaceitem entity @a[tag=ByMAC-10] slot.hotbar.0 mwc:mac10 1 0 {IUuidLeast:-5659362121651530793L,Ammo:30,IUuidMost:-7705777692699767903L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-107B,15B,-108B,3B,-12B,-128B,75B,-95B,-79B,117B,-24B,34B,-117B,-88B,-45B,-41B,0B,0B,19B,74B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,15B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,19B,25B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,-107B,0B,0B,16B,-29B,0B,0B,16B,-39B,0B,0B,16B,-38B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,30B,0B,63B,-128B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fMAC-10"}}
scoreboard players remove @a[tag=ByMAC-10] money 16
scoreboard players set @a[tag=ByMAC-10] MainW 43
tellraw @a[tag=ByMAC-10] {"text":"§aSuccessfully purchased §fMAC-10§a§l!"}
scoreboard players tag @a[tag=ByMAC-10] remove ByMAC-10

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_SMGP_min=4,score_SMGP=4,tag=InGame,score_money_min=14,score_S-Shop=0] add ByHKMP5
replaceitem entity @a[tag=ByHKMP5] slot.hotbar.0 mwc:mp5a5 1 0 {IUuidLeast:-5947069529144436922L,AtId:[I;0,0,0,0,4878,0,0,4268,4264,4325,4318,0,0,0,4625,4627,0,0,4731,0,0,0,0,0,0,4096,0],Ammo:30,IUuidMost:-8979962496157661341L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-125B,96B,-61B,-80B,8B,49B,71B,99B,-83B,119B,-61B,-59B,-84B,-53B,-41B,70B,0B,0B,19B,69B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,97B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,19B,14B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,-84B,0B,0B,16B,-88B,0B,0B,16B,-27B,0B,0B,16B,-34B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,17B,0B,0B,18B,19B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,123B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,30B,0B,63B,-64B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fHK MP5"}}
scoreboard players remove @a[tag=ByHKMP5] money 14
scoreboard players set @a[tag=ByHKMP5] MainW 44
tellraw @a[tag=ByHKMP5] {"text":"§aSuccessfully purchased §fHK MP5§a§l!"}
scoreboard players tag @a[tag=ByHKMP5] remove ByHKMP5

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_SMGP_min=5,score_SMGP=5,tag=InGame,score_money_min=13,score_S-Shop=0] add ByUMP45
replaceitem entity @a[tag=ByUMP45] slot.hotbar.0 mwc:ump_45 1 0 {IUuidLeast:-8716880898063688977L,Ammo:25,IUuidMost:8322212988169833231L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,115B,126B,112B,-98B,-87B,1B,75B,15B,-121B,7B,107B,1B,-39B,-122B,-102B,-17B,0B,0B,19B,71B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,11B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,19B,18B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,-108B,0B,0B,0B,0B,0B,0B,16B,-110B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,18B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,123B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,0B,0B,0B,0B,25B,0B,64B,0B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fUMP45"}}
scoreboard players remove @a[tag=ByUMP45] money 13
scoreboard players set @a[tag=ByUMP45] MainW 45
tellraw @a[tag=ByUMP45] {"text":"§aSuccessfully purchased §fUMP45§a§l!"}
scoreboard players tag @a[tag=ByUMP45] remove ByUMP45

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_SMGP_min=6,score_SMGP=6,tag=InGame,score_money_min=18,score_S-Shop=1,score_S-Shop_min=1] add ByHKMP7
replaceitem entity @a[tag=ByHKMP7] slot.hotbar.0 mwc:mp7 1 0 {IUuidLeast:-6369814933787399743L,AtId:[I;0,0,0,0,0,0,0,4356,0,4401,0,4363,4543,4618,0,4628,0,0,0,0,0,0,0,0,0,4096,0],Ammo:40,IUuidMost:8543809977599413643L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,118B,-111B,-75B,-24B,87B,64B,77B,-117B,-89B,-103B,-33B,17B,2B,-97B,-87B,-63B,0B,0B,19B,70B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,18B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,19B,16B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,4B,0B,0B,0B,0B,0B,0B,17B,49B,0B,0B,0B,0B,0B,0B,17B,11B,0B,0B,17B,-65B,0B,0B,18B,10B,0B,0B,0B,0B,0B,0B,18B,20B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,40B,0B,63B,-128B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fHK MP7"}}
scoreboard players remove @a[tag=ByHKMP7] money 18
scoreboard players set @a[tag=ByHKMP7] MainW 46
tellraw @a[tag=ByHKMP7] {"text":"§aSuccessfully purchased §fHK MP7§a§l!"}
scoreboard players tag @a[tag=ByHKMP7] remove ByHKMP7

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_SMGP_min=7,score_SMGP=7,tag=InGame,score_money_min=17,score_S-Shop=1,score_S-Shop_min=1] add ByEVO3A1
replaceitem entity @a[tag=ByEVO3A1] slot.hotbar.0 mwc:scorpion_evo3_a1 1 0 {IUuidLeast:-6273350484618825417L,Ammo:30,IUuidMost:3079067859732547682L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,42B,-69B,11B,-25B,-94B,-82B,72B,98B,-88B,-16B,-108B,-8B,-52B,-59B,49B,55B,0B,0B,19B,75B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,9B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-67B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,19B,22B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,4B,0B,0B,16B,-86B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,-66B,0B,0B,0B,0B,0B,0B,18B,117B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,124B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,0B,0B,0B,0B,30B,0B,63B,-64B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fEVO3 A1"}}
scoreboard players remove @a[tag=ByEVO3A1] money 17
scoreboard players set @a[tag=ByEVO3A1] MainW 47
tellraw @a[tag=ByEVO3A1] {"text":"§aSuccessfully purchased §fEVO3 A1§a§l!"}
scoreboard players tag @a[tag=ByEVO3A1] remove ByEVO3A1

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_SMGP_min=8,score_SMGP=8,tag=InGame,score_money_min=16,score_S-Shop=1,score_S-Shop_min=1] add ByAPC9
replaceitem entity @a[tag=ByAPC9] slot.hotbar.0 mwc:apc9 1 0 {IUuidLeast:-6818567854021482270L,Ammo:30,IUuidMost:8060666051150106470L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,111B,-35B,61B,16B,-9B,-38B,79B,102B,-95B,95B,-108B,-87B,-64B,38B,-24B,-30B,0B,0B,19B,76B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,13B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-72B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,19B,21B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,4B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,6B,0B,0B,17B,119B,0B,0B,0B,0B,0B,0B,18B,118B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,124B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,30B,0B,64B,0B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fAPC9"}}
scoreboard players remove @a[tag=ByAPC9] money 16
scoreboard players set @a[tag=ByAPC9] MainW 48
tellraw @a[tag=ByAPC9] {"text":"§aSuccessfully purchased §fAPC9§a§l!"}
scoreboard players tag @a[tag=ByAPC9] remove ByAPC9

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_SMGP_min=9,score_SMGP=9,tag=InGame,score_money_min=10,score_S-Shop=1,score_S-Shop_min=1] add ByPP-91
replaceitem entity @a[tag=ByPP-91] slot.hotbar.0 mwc:pp91_kedr 1 0 {IUuidLeast:-4720302943062026154L,Ammo:20,IUuidMost:-6529360097055584277L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-91B,99B,13B,-107B,-12B,100B,79B,-21B,-66B,126B,29B,123B,-122B,-114B,-104B,86B,0B,0B,19B,64B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,14B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-8B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,9B,0B,0B,18B,8B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,20B,0B,64B,0B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,1B,0B,0B,0B,0B,1B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fPP-91"}}
scoreboard players remove @a[tag=ByPP-91] money 10
scoreboard players set @a[tag=ByPP-91] MainW 49
tellraw @a[tag=ByPP-91] {"text":"§aSuccessfully purchased §fPP-91§a§l!"}
scoreboard players tag @a[tag=ByPP-91] remove ByPP-91

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_SMGP_min=10,score_SMGP=10,tag=InGame,score_money_min=18,score_S-Shop=2,score_S-Shop_min=2] add ByFNP90
replaceitem entity @a[tag=ByFNP90] slot.hotbar.0 mwc:p90 1 0 {IUuidLeast:-6756024936624115932L,Ammo:50,IUuidMost:2477860599545413906L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,34B,99B,33B,22B,70B,-41B,65B,18B,-94B,61B,-57B,29B,118B,-42B,-81B,36B,0B,0B,19B,73B,0B,0B,0B,2B,0B,0B,0B,0B,0B,0B,0B,11B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-74B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,19B,23B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,7B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,61B,0B,0B,17B,-31B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,124B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,0B,0B,0B,0B,50B,0B,63B,-64B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fFN P90"}}
scoreboard players remove @a[tag=ByFNP90] money 18
scoreboard players set @a[tag=ByFNP90] MainW 50
tellraw @a[tag=ByFNP90] {"text":"§aSuccessfully purchased §fFN P90§a§l!"}
scoreboard players tag @a[tag=ByFNP90] remove ByFNP90

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_SMGP_min=11,score_SMGP=11,tag=InGame,score_money_min=17,score_S-Shop=2,score_S-Shop_min=2] add ByS7-10Tricun
replaceitem entity @a[tag=ByS7-10Tricun] slot.hotbar.0 mwc:s7_10_tricun 1 0 {IUuidLeast:-7292966059444737451L,AtId:[I;4535,0,0,0,0,0,0,0,4374,4424,4389,4350,4471,0,4722,4723,0,4732,0,0,0,0,0,0,0,4096,0],Ammo:30,IUuidMost:8619973238262285246L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,119B,-96B,75B,-3B,87B,-1B,67B,-66B,-102B,-54B,46B,2B,59B,-48B,-22B,85B,0B,0B,19B,77B,0B,0B,0B,2B,0B,0B,0B,0B,0B,0B,0B,21B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-73B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-64B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,22B,0B,0B,17B,72B,0B,0B,17B,37B,0B,0B,16B,-2B,0B,0B,17B,119B,0B,0B,0B,0B,0B,0B,18B,114B,0B,0B,18B,115B,0B,0B,0B,0B,0B,0B,18B,124B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,30B,0B,63B,-64B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fS7-10 Tricun"}}
scoreboard players remove @a[tag=ByS7-10Tricun] money 17
scoreboard players set @a[tag=ByS7-10Tricun] MainW 51
tellraw @a[tag=ByS7-10Tricun] {"text":"§aSuccessfully purchased §fS7-10 Tricun§a§l!"}
scoreboard players tag @a[tag=ByS7-10Tricun] remove ByS7-10Tricun

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_SMGP_min=12,score_SMGP=12,tag=InGame,score_money_min=16,score_S-Shop=2,score_S-Shop_min=2] add BySIGMPX
replaceitem entity @a[tag=BySIGMPX] slot.hotbar.0 mwc:sig_mpx 1 0 {IUuidLeast:-5386339646053695138L,Ammo:30,AtId:[I;4535,0,0,0,4884,0,0,4356,4379,0,4382,0,4470,0,4716,0,0,4732,0,0,0,0,0,0,0,4096,0],IUuidMost:-2751164513004598604L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-39B,-47B,-26B,115B,-93B,-77B,74B,-76B,-75B,63B,-32B,-95B,69B,93B,-63B,94B,0B,0B,19B,72B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,29B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-73B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,19B,20B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,4B,0B,0B,17B,27B,0B,0B,0B,0B,0B,0B,17B,30B,0B,0B,0B,0B,0B,0B,17B,118B,0B,0B,0B,0B,0B,0B,18B,108B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,124B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,30B,0B,63B,-64B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fSIG MPX"}}
scoreboard players remove @a[tag=BySIGMPX] money 16
scoreboard players set @a[tag=BySIGMPX] MainW 52
tellraw @a[tag=BySIGMPX] {"text":"§aSuccessfully purchased §fSIG MPX§a§l!"}
scoreboard players tag @a[tag=BySIGMPX] remove BySIGMPX

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_SMGP_min=13,score_SMGP=13,tag=InGame,score_money_min=14,score_S-Shop=2,score_S-Shop_min=2] add ByUzi
replaceitem entity @a[tag=ByUzi] slot.hotbar.0 mwc:uzi 1 0 {IUuidLeast:-9039682457717428042L,Ammo:32,IUuidMost:166886706606919252L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,2B,80B,-26B,-109B,81B,10B,78B,84B,-126B,-116B,-104B,-78B,-15B,108B,48B,-74B,0B,0B,19B,-126B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,15B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,19B,35B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,79B,0B,0B,18B,80B,0B,0B,0B,0B,0B,0B,18B,81B,0B,0B,0B,0B,0B,0B,18B,123B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,32B,0B,64B,0B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fUzi"}}
scoreboard players remove @a[tag=ByUzi] money 14
scoreboard players set @a[tag=ByUzi] MainW 53
tellraw @a[tag=ByUzi] {"text":"§aSuccessfully purchased §fUzi§a§l!"}
scoreboard players tag @a[tag=ByUzi] remove ByUzi

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_SMGP_min=14,score_SMGP=14,tag=InGame,score_money_min=14,score_S-Shop=2,score_S-Shop_min=2] add ByPP19
replaceitem entity @a[tag=ByPP19] slot.hotbar.0 mwc:pp19vityaz 1 0 {IUuidLeast:-8351289981746104828L,AtId:[I;0,0,0,0,0,0,0,0,5211,5225,5216,0,0,5242,0,0,0,0,0,0,0,0,0,0,0,4096,0],Ammo:30,IUuidMost:-8238554343017527502L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-115B,-86B,-58B,121B,-119B,-80B,71B,50B,-116B,26B,66B,2B,53B,-66B,-74B,4B,0B,0B,20B,123B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,43B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,8B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,20B,91B,0B,0B,20B,105B,0B,0B,20B,96B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,20B,122B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,30B,0B,64B,0B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fPP-19"}}
scoreboard players remove @a[tag=ByPP19] money 14
scoreboard players set @a[tag=ByPP19] MainW 75
tellraw @a[tag=ByPP19] {"text":"§aSuccessfully purchased §fPP-19§a§l!"}
scoreboard players tag @a[tag=ByPP19] remove ByPP19

scoreboard players reset @a[score_SMGP_min=1] SMGP



scoreboard players enable @a shotGunP

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_shotGunP_min=1,score_shotGunP=1,tag=InGame,score_money_min=25,score_S-Shop=0] add ByM1014
replaceitem entity @a[tag=ByM1014] slot.hotbar.0 mwc:m1014 1 0 {IUuidLeast:-5100956449941880470L,Ammo:7,IUuidMost:-2074987703778195900L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-29B,52B,41B,-83B,90B,-1B,70B,68B,-71B,53B,-61B,34B,-126B,122B,1B,106B,0B,0B,19B,43B,0B,0B,0B,2B,0B,0B,0B,0B,0B,0B,0B,26B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,4B,0B,0B,0B,0B,0B,0B,16B,-97B,0B,0B,16B,-96B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,102B,0B,0B,17B,-11B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,124B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,7B,0B,65B,0B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fM1014"}}
scoreboard players remove @a[tag=ByM1014] money 25
scoreboard players set @a[tag=ByM1014] MainW 54
tellraw @a[tag=ByM1014] {"text":"§aSuccessfully purchased §fM1014§a§l!"}
scoreboard players tag @a[tag=ByM1014] remove ByM1014

#execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_shotGunP_min=2,score_shotGunP=2,tag=InGame,score_money_min=19,score_S-Shop=0] add ByKS-23
#replaceitem entity @a[tag=ByKS-23] slot.hotbar.0 mwc:ks23 1 0 {IUuidLeast:-6304014676566215756L,Ammo:4,IUuidMost:-1028429530334934828L,Instance:[B;-32B,83B,21B,-112B,-126B,43B,-31B,45B,117B,49B,126B,79B,17B,126B,62B,-127B,0B,0B,0B,9B,-15B,-70B,72B,-54B,127B,-35B,72B,-44B,-88B,-125B,-92B,13B,64B,107B,-13B,-76B,0B,0B,19B,-19B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,57B,75B,99B,82B,108B,-118B,-87B,-71B,14B,-97B,-92B,100B,-74B,-111B,106B,61B,-40B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,19B,105B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,35B,0B,0B,19B,0B,0B,0B,21B,64B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,111B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-99B,0B,0B,0B,0B,0B,0B,0B,0B,4B,0B,65B,16B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fKS-23"}}
#scoreboard players remove @a[tag=ByKS-23] money 19
#scoreboard players set @a[tag=ByKS-23] MainW 55
#tellraw @a[tag=ByKS-23] {"text":"§aSuccessfully purchased §fKS-23§a§l!"}
#scoreboard players tag @a[tag=ByKS-23] remove ByKS-23

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_shotGunP_min=3,score_shotGunP=3,tag=InGame,score_money_min=14,score_S-Shop=0] add ByRemington-870
replaceitem entity @a[tag=ByRemington-870] slot.hotbar.0 mwc:remington870 1 0 {IUuidLeast:-5912394206176092211L,AtId:[I;0,0,0,0,0,0,0,4270,4506,4509,0,4512,0,4710,0,0,0,0,0,0,0,0,0,0,0,4096,0],Ammo:4,IUuidMost:-7828650694173507168L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-109B,91B,11B,-85B,-17B,44B,65B,-96B,-83B,-14B,-12B,-53B,112B,-53B,-33B,-51B,0B,0B,19B,118B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,70B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,-82B,0B,0B,17B,-102B,0B,0B,17B,-99B,0B,0B,0B,0B,0B,0B,17B,-96B,0B,0B,0B,0B,0B,0B,18B,102B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,4B,0B,65B,112B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fRemington-870"}}
scoreboard players remove @a[tag=ByRemington-870] money 14
scoreboard players set @a[tag=ByRemington-870] MainW 56
tellraw @a[tag=ByRemington-870] {"text":"§aSuccessfully purchased §fRemington-870§a§l!"}
scoreboard players tag @a[tag=ByRemington-870] remove ByRemington-870

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_shotGunP_min=4,score_shotGunP=4,tag=InGame,score_money_min=25,score_S-Shop=1,score_S-Shop_min=1] add BySpas-12
replaceitem entity @a[tag=BySpas-12] slot.hotbar.0 mwc:spas_12 1 0 {IUuidLeast:-6822353459049369778L,AtId:[I;0,0,0,0,0,0,0,4270,0,4255,0,0,0,4710,4597,4598,0,0,4731,0,0,0,0,0,0,4096,0],Ammo:7,IUuidMost:-1019703951384426231L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-15B,-39B,72B,-88B,-87B,-85B,73B,9B,-95B,82B,33B,-84B,-27B,52B,111B,78B,0B,0B,19B,-123B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,32B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,-82B,0B,0B,0B,0B,0B,0B,16B,-97B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,102B,0B,0B,17B,-11B,0B,0B,17B,-10B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,123B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,7B,0B,64B,-32B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fSpas-12"}}
scoreboard players remove @a[tag=BySpas-12] money 25
scoreboard players set @a[tag=BySpas-12] MainW 57
tellraw @a[tag=BySpas-12] {"text":"§aSuccessfully purchased §fSpas-12§a§l!"}
scoreboard players tag @a[tag=BySpas-12] remove BySpas-12

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_shotGunP_min=5,score_shotGunP=5,tag=InGame,score_money_min=18,score_S-Shop=1,score_S-Shop_min=1] add ByBenelli
replaceitem entity @a[tag=ByBenelli] slot.hotbar.0 mwc:supernova 1 0 {IUuidLeast:-7631250576300085084L,AtId:[I;0,0,0,0,0,0,0,4270,0,4255,4256,0,0,4710,0,4599,0,0,0,0,0,0,0,0,0,4096,0],Ammo:7,IUuidMost:-5564507254728015829L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-78B,-58B,-26B,34B,67B,-38B,64B,43B,-106B,24B,90B,8B,111B,-93B,112B,-92B,0B,0B,19B,44B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,35B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,-82B,0B,0B,0B,0B,0B,0B,16B,-97B,0B,0B,16B,-96B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,102B,0B,0B,0B,0B,0B,0B,17B,-9B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,7B,0B,65B,48B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fSupernova"}}
scoreboard players remove @a[tag=ByBenelli] money 18
scoreboard players set @a[tag=ByBenelli] MainW 58
tellraw @a[tag=ByBenelli] {"text":"§aSuccessfully purchased §fSupernova§a§l!"}
scoreboard players tag @a[tag=ByBenelli] remove ByBenelli

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_shotGunP_min=6,score_shotGunP=6,tag=InGame,score_money_min=40,score_S-Shop=2,score_S-Shop_min=2] add ByOrigin-12
replaceitem entity @a[tag=ByOrigin-12] slot.hotbar.0 mwc:origin12 1 0 {IUuidLeast:-7328131934878527904L,Ammo:12,IUuidMost:-4452940498445188074L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-62B,51B,-6B,53B,-104B,57B,68B,22B,-102B,77B,62B,-44B,-46B,94B,-114B,96B,0B,0B,19B,-120B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,14B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-72B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-34B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,77B,0B,0B,16B,90B,0B,0B,16B,88B,0B,0B,0B,0B,0B,0B,17B,119B,0B,0B,17B,-32B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,124B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,12B,0B,65B,16B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fOrigin-12"}}
scoreboard players remove @a[tag=ByOrigin-12] money 40
scoreboard players set @a[tag=ByOrigin-12] MainW 59
tellraw @a[tag=ByOrigin-12] {"text":"§aSuccessfully purchased §fOrigin-12§a§l!"}
scoreboard players tag @a[tag=ByOrigin-12] remove ByOrigin-12

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_shotGunP_min=7,score_shotGunP=7,tag=InGame,score_money_min=20,score_S-Shop=2,score_S-Shop_min=2] add BySaiga12
replaceitem entity @a[tag=BySaiga12] slot.hotbar.0 mwc:saiga12 1 0 {IUuidLeast:-7329432454202202158L,AtId:[I;0,0,0,0,0,0,0,0,5195,5202,5241,0,0,4684,4683,0,0,0,0,0,0,0,0,0,0,4096,0],Ammo:5,IUuidMost:-5151813209826376781L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-72B,-127B,21B,46B,95B,34B,67B,-77B,-102B,72B,-96B,4B,18B,14B,-25B,-46B,0B,0B,19B,-124B,0B,0B,0B,2B,0B,0B,0B,0B,0B,0B,0B,45B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-36B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,20B,75B,0B,0B,20B,82B,0B,0B,20B,121B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,76B,0B,0B,18B,75B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,5B,0B,65B,16B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fSaiga 12"}}
scoreboard players remove @a[tag=BySaiga12] money 20
scoreboard players set @a[tag=BySaiga12] MainW 60
tellraw @a[tag=BySaiga12] {"text":"§aSuccessfully purchased §fSaiga 12§a§l!"}
scoreboard players tag @a[tag=BySaiga12] remove BySaiga12

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_shotGunP_min=8,score_shotGunP=8,tag=InGame,score_money_min=17,score_S-Shop=0] add ByHS-12
replaceitem entity @a[tag=ByHS-12] slot.hotbar.0 mwc:hs12 1 0 {IUuidLeast:-7231647298778175104L,Ammo:2,IUuidMost:4898900808714504615L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,67B,-4B,100B,84B,125B,77B,73B,-89B,-101B,-92B,7B,24B,-65B,105B,-23B,-128B,0B,0B,19B,-121B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,11B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,4B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,2B,0B,0B,18B,103B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,2B,0B,65B,16B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fHS-12"}}
scoreboard players remove @a[tag=ByHS-12] money 17
scoreboard players set @a[tag=ByHS-12] MainW 61
tellraw @a[tag=ByHS-12] {"text":"§aSuccessfully purchased §fHS-12§a§l!"}
scoreboard players tag @a[tag=ByHS-12] remove ByHS-12

scoreboard players reset @a[score_shotGunP_min=1] shotGunP



scoreboard players enable @a heavyP

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_heavyP_min=1,score_heavyP=1,tag=InGame,score_money_min=28,score_S-Shop=0] add ByM249
replaceitem entity @a[tag=ByM249] slot.hotbar.0 mwc:m249 1 0 {IUuidLeast:-6492234188110390079L,Ammo:100,IUuidMost:823147108016934909L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,11B,108B,103B,-18B,-5B,61B,79B,-3B,-91B,-26B,-13B,103B,59B,8B,-100B,-63B,0B,0B,19B,37B,0B,0B,0B,2B,0B,0B,0B,0B,0B,0B,0B,8B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-61B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,4B,0B,0B,16B,109B,0B,0B,16B,-93B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,111B,0B,0B,0B,0B,0B,0B,18B,37B,0B,0B,18B,38B,0B,0B,18B,39B,0B,0B,0B,0B,0B,0B,18B,123B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,0B,0B,0B,0B,100B,0B,64B,0B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fM249"}}
scoreboard players remove @a[tag=ByM249] money 28
scoreboard players set @a[tag=ByM249] MainW 62
tellraw @a[tag=ByM249] {"text":"§aSuccessfully purchased §fM249§a§l!"}
scoreboard players tag @a[tag=ByM249] remove ByM249

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_heavyP_min=2,score_heavyP=2,tag=InGame,score_money_min=30,score_S-Shop=1,score_S-Shop_min=1] add ByStonerA1
replaceitem entity @a[tag=ByStonerA1] slot.hotbar.0 mwc:m60e4 1 0 {IUuidLeast:-6404782372020131635L,Ammo:100,AtId:[I;0,0,0,0,4802,0,0,5244,5223,0,0,0,4468,5198,4634,4644,0,0,0,0,0,0,0,0,0,4096,0],IUuidMost:8481142300183186102L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,117B,-77B,17B,-4B,-85B,-11B,74B,-74B,-89B,29B,-92B,93B,-36B,14B,104B,-51B,0B,0B,19B,-109B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,32B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-62B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,20B,124B,0B,0B,20B,103B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,116B,0B,0B,20B,78B,0B,0B,18B,26B,0B,0B,18B,36B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,100B,0B,64B,64B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fM60E4"}}
scoreboard players remove @a[tag=ByStonerA1] money 30
scoreboard players set @a[tag=ByStonerA1] MainW 63
tellraw @a[tag=ByStonerA1] {"text":"§aSuccessfully purchased §fM60E4§a§l!"}
scoreboard players tag @a[tag=ByStonerA1] remove ByStonerA1

scoreboard players reset @a[score_heavyP_min=1] heavyP



scoreboard players enable @a pistolP

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_pistolP_min=1,score_pistolP=1,tag=InGame,score_money_min=10,score_S-Shop=0] add ByAPS
replaceitem entity @a[tag=ByAPS] slot.hotbar.1 mwc:aps 1 0 {IUuidLeast:-7140461638995232592L,Ammo:20,IUuidMost:-7559611536820909413L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-105B,22B,-35B,92B,27B,-40B,74B,-101B,-100B,-25B,-5B,-8B,-101B,98B,-72B,-80B,0B,0B,19B,-128B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,11B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-16B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,-31B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,53B,0B,0B,18B,54B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,0B,0B,0B,0B,20B,0B,64B,64B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fAPS"}}
scoreboard players remove @a[tag=ByAPS] money 10
scoreboard players set @a[tag=ByAPS] SecondaryW 1
tellraw @a[tag=ByAPS] {"text":"§aSuccessfully purchased §fAPS§a§l!"}
scoreboard players tag @a[tag=ByAPS] remove ByAPS

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_pistolP_min=2,score_pistolP=2,tag=InGame,score_money_min=8,score_S-Shop=0] add ByS&W.500
replaceitem entity @a[tag=ByS&W.500] slot.hotbar.1 mwc:sw_500_magnum 1 0 {IUuidLeast:-8539460014452569777L,Ammo:6,IUuidMost:-6812140194918021160L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-95B,118B,106B,-107B,-63B,-64B,71B,-40B,-119B,125B,-66B,92B,96B,-25B,9B,79B,0B,0B,19B,92B,0B,0B,0B,2B,0B,0B,0B,0B,0B,0B,0B,5B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,4B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,-16B,0B,0B,17B,-15B,0B,0B,17B,-14B,0B,0B,0B,0B,0B,0B,18B,126B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,0B,0B,0B,0B,6B,0B,65B,48B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fS&W .500"}}
scoreboard players remove @a[tag=ByS&W.500] money 8
scoreboard players set @a[tag=ByS&W.500] SecondaryW 2
tellraw @a[tag=ByS&W.500] {"text":"§aSuccessfully purchased §fS&W .500§a§l!"}
scoreboard players tag @a[tag=ByS&W.500] remove ByS&W.500

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_pistolP_min=3,score_pistolP=3,tag=InGame,score_money_min=8,score_S-Shop=0] add ByMAS-21
replaceitem entity @a[tag=ByMAS-21] slot.hotbar.1 mwc:mas_21 1 0 {IUuidLeast:-7126980639896892225L,Ammo:15,IUuidMost:-4427430446090204922L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-62B,-114B,-101B,119B,-127B,11B,73B,6B,-99B,23B,-32B,-34B,77B,-36B,12B,-65B,0B,0B,19B,56B,0B,0B,0B,2B,0B,0B,0B,0B,0B,0B,0B,12B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-33B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,-68B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,-27B,0B,0B,17B,-26B,0B,0B,17B,-25B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,15B,0B,64B,0B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fMAS-21"}}
scoreboard players remove @a[tag=ByMAS-21] money 8
scoreboard players set @a[tag=ByMAS-21] SecondaryW 3
tellraw @a[tag=ByMAS-21] {"text":"§aSuccessfully purchased §fMAS-21§a§l!"}
scoreboard players tag @a[tag=ByMAS-21] remove ByMAS-21

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_pistolP_min=4,score_pistolP=4,tag=InGame,score_money_min=7,score_S-Shop=0] add BySIGP226
replaceitem entity @a[tag=BySIGP226] slot.hotbar.1 mwc:p226 1 0 {IUuidLeast:-4923898922594741715L,Ammo:15,IUuidMost:5079198205727359032L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,70B,124B,-17B,-37B,124B,46B,64B,56B,-69B,-86B,-52B,4B,-112B,-49B,-46B,45B,0B,0B,19B,53B,0B,0B,0B,4B,0B,0B,0B,0B,0B,0B,0B,10B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-33B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,8B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,-46B,0B,0B,0B,0B,0B,0B,18B,56B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,0B,0B,0B,0B,15B,0B,64B,0B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fSIG P226"}}
scoreboard players remove @a[tag=BySIGP226] money 7
scoreboard players set @a[tag=BySIGP226] SecondaryW 4
tellraw @a[tag=BySIGP226] {"text":"§aSuccessfully purchased §fSIG P226§a§l!"}
scoreboard players tag @a[tag=BySIGP226] remove BySIGP226

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_pistolP_min=5,score_pistolP=5,tag=InGame,score_money_min=4,score_S-Shop=0] add ByHKP12
replaceitem entity @a[tag=ByHKP12] slot.hotbar.1 mwc:hk_p12 1 0 {IUuidLeast:-7984625428159484800L,Ammo:8,IUuidMost:-8818720879475343136L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-123B,-99B,-100B,21B,109B,-115B,64B,-32B,-111B,48B,-23B,122B,58B,0B,-84B,-128B,0B,0B,19B,81B,0B,0B,0B,4B,0B,0B,0B,0B,0B,0B,0B,10B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-19B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,8B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,63B,0B,0B,18B,55B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,0B,0B,0B,0B,8B,0B,64B,-128B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fHK P12"}}
scoreboard players remove @a[tag=ByHKP12] money 4
scoreboard players set @a[tag=ByHKP12] SecondaryW 5
tellraw @a[tag=ByHKP12] {"text":"§aSuccessfully purchased §fHK P12§a§l!"}
scoreboard players tag @a[tag=ByHKP12] remove ByHKP12

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_pistolP_min=6,score_pistolP=6,tag=InGame,score_money_min=0,score_S-Shop=0] add ByHunter
replaceitem entity @a[tag=ByHunter] slot.hotbar.1 mwc:taurus_raging_hunter 1 0 {IUuidLeast:-5688055440932467152L,Ammo:6,IUuidMost:-1620633660333732644L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-23B,-126B,90B,69B,-68B,-60B,76B,-36B,-79B,15B,-9B,-74B,-116B,126B,14B,48B,0B,0B,19B,90B,0B,0B,0B,2B,0B,0B,0B,0B,0B,0B,0B,9B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,4B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,-16B,0B,0B,17B,-15B,0B,0B,17B,-14B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,0B,0B,0B,0B,6B,0B,64B,-32B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fRaging Hunter"}}
scoreboard players remove @a[tag=ByHunter] money 0
scoreboard players set @a[tag=ByHunter] SecondaryW 6
tellraw @a[tag=ByHunter] {"text":"§aSuccessfully purchased §fRaging Hunter§a§l!"}
scoreboard players tag @a[tag=ByHunter] remove ByHunter

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_pistolP_min=7,score_pistolP=7,tag=InGame,score_money_min=10,score_S-Shop=1,score_S-Shop_min=1] add ByGlock-18C
replaceitem entity @a[tag=ByGlock-18C] slot.hotbar.1 mwc:glock_18c 1 0 {IUuidLeast:-5330394761193420738L,Ammo:20,IUuidMost:-1190295328237859009L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-17B,123B,56B,-76B,-106B,-109B,79B,63B,-74B,6B,-94B,52B,-46B,118B,-120B,62B,0B,0B,19B,126B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,11B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-14B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,8B,0B,0B,0B,0B,0B,0B,16B,-60B,0B,0B,0B,0B,0B,0B,16B,-57B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,0B,0B,0B,0B,20B,0B,64B,64B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fGlock-18C"}}
scoreboard players remove @a[tag=ByGlock-18C] money 10
scoreboard players set @a[tag=ByGlock-18C] SecondaryW 7
tellraw @a[tag=ByGlock-18C] {"text":"§aSuccessfully purchased §fGlock-18C§a§l!"}
scoreboard players tag @a[tag=ByGlock-18C] remove ByGlock-18C

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_pistolP_min=8,score_pistolP=8,tag=InGame,score_money_min=8,score_S-Shop=1,score_S-Shop_min=1] add ByVP-70
replaceitem entity @a[tag=ByVP-70] slot.hotbar.1 mwc:vp70 1 0 {IUuidLeast:-6752349885728540126L,Ammo:18,IUuidMost:562501555906101591L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,7B,-50B,104B,47B,81B,99B,65B,87B,-94B,74B,-43B,-115B,-18B,0B,58B,34B,0B,0B,19B,84B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,10B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,19B,36B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,52B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,0B,64B,0B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fVP-70"}}
scoreboard players remove @a[tag=ByVP-70] money 8
scoreboard players set @a[tag=ByVP-70] SecondaryW 8
tellraw @a[tag=ByVP-70] {"text":"§aSuccessfully purchased §fVP-70§a§l!"}
scoreboard players tag @a[tag=ByVP-70] remove ByVP-70

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_pistolP_min=9,score_pistolP=9,tag=InGame,score_money_min=7,score_S-Shop=1,score_S-Shop_min=1] add ByM9A1
replaceitem entity @a[tag=ByM9A1] slot.hotbar.1 mwc:m9a1 1 0 {IUuidLeast:-5220919450969740303L,Ammo:15,IUuidMost:-2041975163527607540L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-29B,-87B,114B,104B,89B,-60B,75B,12B,-73B,-117B,-111B,107B,-60B,5B,107B,-15B,0B,0B,19B,55B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,10B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-33B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,-68B,0B,0B,0B,0B,0B,0B,16B,-69B,0B,0B,0B,0B,0B,0B,18B,57B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,0B,0B,0B,0B,15B,0B,64B,0B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fM9A1"}}
scoreboard players remove @a[tag=ByM9A1] money 7
scoreboard players set @a[tag=ByM9A1] SecondaryW 9
tellraw @a[tag=ByM9A1] {"text":"§aSuccessfully purchased §fM9A1§a§l!"}
scoreboard players tag @a[tag=ByM9A1] remove ByM9A1

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_pistolP_min=10,score_pistolP=10,tag=InGame,score_money_min=5,score_S-Shop=1,score_S-Shop_min=1] add ByGlock-19
replaceitem entity @a[tag=ByGlock-19] slot.hotbar.1 mwc:glock_19 1 0 {IUuidLeast:-6821557444815563363L,Ammo:13,IUuidMost:-4739488970969035761L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-66B,57B,-13B,-28B,76B,-126B,76B,15B,-95B,84B,-11B,-91B,102B,-40B,-43B,-99B,0B,0B,19B,85B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,10B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-15B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,8B,0B,0B,0B,0B,0B,0B,16B,-61B,0B,0B,0B,0B,0B,0B,16B,-58B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,0B,0B,0B,0B,13B,0B,64B,0B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fGlock-19"}}
scoreboard players remove @a[tag=ByGlock-19] money 5
scoreboard players set @a[tag=ByGlock-19] SecondaryW 10
tellraw @a[tag=ByGlock-19] {"text":"§aSuccessfully purchased §fGlock-19§a§l!"}
scoreboard players tag @a[tag=ByGlock-19] remove ByGlock-19

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_pistolP_min=11,score_pistolP=11,tag=InGame,score_money_min=0,score_S-Shop=1,score_S-Shop_min=1] add ByColtPython
replaceitem entity @a[tag=ByColtPython] slot.hotbar.1 mwc:python 1 0 {IUuidLeast:-7610011293500917292L,Ammo:6,IUuidMost:3658739933296283149L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,50B,-58B,116B,-107B,-95B,-87B,78B,13B,-106B,99B,-49B,12B,82B,42B,-71B,-44B,0B,0B,19B,89B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,9B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,-16B,0B,0B,17B,-15B,0B,0B,17B,-17B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,0B,0B,0B,0B,6B,0B,64B,-64B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fColt Python"}}
scoreboard players remove @a[tag=ByColtPython] money 0
scoreboard players set @a[tag=ByColtPython] SecondaryW 11
tellraw @a[tag=ByColtPython] {"text":"§aSuccessfully purchased §fColt Python§a§l!"}
scoreboard players tag @a[tag=ByColtPython] remove ByColtPython

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_pistolP_min=12,score_pistolP=12,tag=InGame,score_money_min=10,score_S-Shop=2,score_S-Shop_min=2] add ByDesertEagle
replaceitem entity @a[tag=ByDesertEagle] slot.hotbar.1 mwc:desert_eagle 1 0 {IUuidLeast:-7750586171040179190L,Ammo:7,IUuidMost:4962461930415735978L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,68B,-34B,52B,-43B,93B,-44B,68B,-86B,-108B,112B,98B,-15B,26B,24B,92B,10B,0B,0B,19B,93B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,14B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-28B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,8B,0B,0B,0B,0B,0B,0B,16B,-63B,0B,0B,0B,0B,0B,0B,16B,-64B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,7B,0B,65B,112B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fDesertEagle"}}
scoreboard players remove @a[tag=ByDesertEagle] money 10
scoreboard players set @a[tag=ByDesertEagle] SecondaryW 12
tellraw @a[tag=ByDesertEagle] {"text":"§aSuccessfully purchased §fDesertEagle§a§l!"}
scoreboard players tag @a[tag=ByDesertEagle] remove ByDesertEagle

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_pistolP_min=13,score_pistolP=13,tag=InGame,score_money_min=8,score_S-Shop=2,score_S-Shop_min=2] add ByMP443
replaceitem entity @a[tag=ByMP443] slot.hotbar.1 mwc:mp443 1 0 {IUuidLeast:-4837783484294237366L,Ammo:18,IUuidMost:1443766133844492371L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,20B,9B,73B,-90B,58B,-118B,64B,83B,-68B,-36B,-67B,-115B,126B,99B,-13B,74B,0B,0B,19B,60B,0B,0B,0B,2B,0B,0B,0B,0B,0B,0B,0B,10B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-25B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,8B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,-41B,0B,0B,0B,0B,0B,0B,18B,58B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,0B,64B,0B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fMP443"}}
scoreboard players remove @a[tag=ByMP443] money 8
scoreboard players set @a[tag=ByMP443] SecondaryW 13
tellraw @a[tag=ByMP443] {"text":"§aSuccessfully purchased §fMP443§a§l!"}
scoreboard players tag @a[tag=ByMP443] remove ByMP443

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_pistolP_min=14,score_pistolP=14,tag=InGame,score_money_min=8,score_S-Shop=2,score_S-Shop_min=2] add ByM17
replaceitem entity @a[tag=ByM17] slot.hotbar.1 mwc:m17 1 0 {IUuidLeast:-5276484159348670858L,Ammo:17,IUuidMost:1805463229925180345L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,25B,14B,75B,61B,-22B,-72B,67B,-71B,-74B,-58B,41B,-100B,-13B,11B,-2B,118B,0B,0B,19B,80B,0B,0B,0B,2B,0B,0B,0B,0B,0B,0B,0B,10B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-21B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,8B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,6B,0B,0B,0B,0B,0B,0B,18B,61B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,0B,64B,64B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fM17"}}
scoreboard players remove @a[tag=ByM17] money 8
scoreboard players set @a[tag=ByM17] SecondaryW 14
tellraw @a[tag=ByM17] {"text":"§aSuccessfully purchased §fM17§a§l!"}
scoreboard players tag @a[tag=ByM17] remove ByM17

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_pistolP_min=15,score_pistolP=15,tag=InGame,score_money_min=5,score_S-Shop=2,score_S-Shop_min=2] add ByCPX-2
replaceitem entity @a[tag=ByCPX-2] slot.hotbar.1 mwc:sccy_cpx_2 1 0 {IUuidLeast:-8813820404859603493L,Ammo:10,IUuidMost:-6396891021922907281L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-89B,57B,-83B,-127B,-5B,102B,75B,111B,-123B,-81B,5B,10B,22B,64B,-11B,-37B,0B,0B,19B,86B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,10B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-30B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,-51B,0B,0B,0B,0B,0B,0B,16B,-48B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,0B,0B,0B,0B,10B,0B,64B,0B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fCPX-2"}}
scoreboard players remove @a[tag=ByCPX-2] money 5
scoreboard players set @a[tag=ByCPX-2] SecondaryW 15
tellraw @a[tag=ByCPX-2] {"text":"§aSuccessfully purchased §fCPX-2§a§l!"}
scoreboard players tag @a[tag=ByCPX-2] remove ByCPX-2

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_pistolP_min=16,score_pistolP=16,tag=InGame,score_money_min=0,score_S-Shop=2,score_S-Shop_min=2] add ByChiappa
replaceitem entity @a[tag=ByChiappa] slot.hotbar.1 mwc:chiappa_rhino 1 0 {IUuidLeast:-7496963292837938762L,Ammo:6,IUuidMost:-7816745184766767513L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-109B,-123B,87B,-85B,90B,59B,78B,103B,-105B,-11B,111B,-101B,20B,64B,121B,-74B,0B,0B,19B,91B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,7B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,-16B,0B,0B,17B,-15B,0B,0B,17B,-13B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,0B,0B,0B,0B,6B,0B,64B,-64B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fChiappa Rhino"}}
scoreboard players remove @a[tag=ByChiappa] money 0
scoreboard players set @a[tag=ByChiappa] SecondaryW 16
tellraw @a[tag=ByChiappa] {"text":"§aSuccessfully purchased §fChiappa Rhino§a§l!"}
scoreboard players tag @a[tag=ByChiappa] remove ByChiappa

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_pistolP_min=17,score_pistolP=17,tag=InGame,score_money_min=9,score_S-Shop=2,score_S-Shop_min=2] add ByFN57
replaceitem entity @a[tag=ByFN57] slot.hotbar.1 mwc:fiveseven 1 0 {IUuidLeast:-7599737842716806060L,Ammo:20,IUuidMost:4756006844498920861L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,66B,0B,-69B,6B,-45B,-81B,69B,-99B,-106B,-120B,78B,-78B,122B,-59B,116B,84B,0B,0B,19B,54B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,10B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-32B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,8B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,-45B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,0B,0B,0B,0B,20B,0B,64B,0B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fFN57"}}
scoreboard players remove @a[tag=ByFN57] money 9
scoreboard players set @a[tag=ByFN57] SecondaryW 17
tellraw @a[tag=ByFN57] {"text":"§aSuccessfully purchased §fFN57§a§l!"}
scoreboard players tag @a[tag=ByFN57] remove ByFN57

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_pistolP_min=18,score_pistolP=18,tag=InGame,score_money_min=8,score_S-Shop=1,score_S-Shop_min=1] add ByM1911
replaceitem entity @a[tag=ByM1911] slot.hotbar.1 mwc:m1911 1 0 {IUuidLeast:-5293492200443398088L,AtId:[I;0,0,0,0,0,0,0,0,0,0,4103,0,5227,0,0,0,0,0,0,0,0,0,0,0,0,4096,0],Ammo:15,IUuidMost:-3953501036077824633L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-55B,34B,87B,-63B,21B,113B,69B,-121B,-74B,-119B,-68B,-29B,-53B,69B,56B,56B,0B,0B,19B,88B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,31B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,20B,93B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,7B,0B,0B,0B,0B,0B,0B,20B,107B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,15B,0B,64B,-56B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fM1911"}}
scoreboard players remove @a[tag=ByM1911] money 8
scoreboard players set @a[tag=ByM1911] SecondaryW 18
tellraw @a[tag=ByM1911] {"text":"§aSuccessfully purchased §fM1911§a§l!"}
scoreboard players tag @a[tag=ByM1911] remove ByM1911

scoreboard players reset @a[score_pistolP_min=1] pistolP



scoreboard players enable @a ultimateWP

execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_ultimateWP_min=1,score_ultimateWP=1,tag=InGame,score_money_min=100] add BuyUltimateW
replaceitem entity @a[tag=BuyUltimateW] slot.enderchest.13 mwc:russian_weapons_case 1 0 {ench:[{lvl:1s,id:71s}],HideFlags:1,display:{Name:"§4Ultimate weapon box"},tag:["UltimateW"]}
scoreboard players remove @a[tag=BuyUltimateW] money 100
execute @a[tag=BuyUltimateW] ~ ~ ~ tellraw @a[tag=!PVE-IG] [{"selector":"@a[tag=BuyUltimateW]"},{"text":"§f's §4Ultimate weapon box§c has been released to ender Chest"}]
execute @a[tag=BuyUltimateW] ~ ~ ~ playsound minecraft:entity.enderdragon.death ambient @a[tag=!PVE-IG] ~ ~ ~ 100000000000000 0
scoreboard players tag @a[tag=BuyUltimateW] remove BuyUltimateW

scoreboard players reset @a[score_ultimateWP_min=1] ultimateWP
