
scoreboard players enable @a[score_PVE-map_min=1] moduleP
scoreboard players tag @a[score_moduleP_min=1,score_moduleP=1,score_PVE-map_min=1,score_money_min=1] add BySight
scoreboard players tag @a[score_moduleP_min=2,score_moduleP=2,score_PVE-map_min=1,score_money_min=2] add ByGrip
scoreboard players tag @a[score_moduleP_min=3,score_moduleP=3,score_PVE-map_min=1,score_money_min=2] add BySilencer
scoreboard players tag @a[score_moduleP_min=4,score_moduleP=4,score_PVE-map_min=1,score_money_min=2] add ByLaser
function vmwp:shop/weaponShop if @a[score_PVE-map_min=1,score_moduleP_min=1]

scoreboard players enable @a[score_PVE-map_min=1] grenadeP
tellraw @a[score_grenadeP_min=1,score_PVE-map_min=1] [{"text":"§cPurchase of grenades is not supported!"}]
scoreboard players reset @a[score_grenadeP_min=1,score_PVE-map_min=1] grenadeP

scoreboard players enable @a[score_PVE-map_min=1] assaultRP
scoreboard players tag @a[score_assaultRP_min=1,score_assaultRP=1,score_PVE-map_min=1,score_money_min=20,score_S-Shop=0] add ByAR-15
scoreboard players tag @a[score_assaultRP_min=2,score_assaultRP=2,score_PVE-map_min=1,score_money_min=18,score_S-Shop=0] add ByM4A1
scoreboard players tag @a[score_assaultRP_min=3,score_assaultRP=3,score_PVE-map_min=1,score_money_min=18,score_S-Shop=0] add BySIGMCX
scoreboard players tag @a[score_assaultRP_min=4,score_assaultRP=4,score_PVE-map_min=1,score_money_min=18,score_S-Shop=0] add ByAUG
scoreboard players tag @a[score_assaultRP_min=5,score_assaultRP=5,score_PVE-map_min=1,score_money_min=18,score_S-Shop=0] add ByHKG36C
scoreboard players tag @a[score_assaultRP_min=6,score_assaultRP=6,score_PVE-map_min=1,score_money_min=16,score_S-Shop=0] add ByAK-12
scoreboard players tag @a[score_assaultRP_min=7,score_assaultRP=7,score_PVE-map_min=1,score_money_min=16,score_S-Shop=0] add ByAK-47
scoreboard players tag @a[score_assaultRP_min=8,score_assaultRP=8,score_PVE-map_min=1,score_money_min=15,score_S-Shop=0] add By9A-91
scoreboard players tag @a[score_assaultRP_min=9,score_assaultRP=9,score_PVE-map_min=1,score_money_min=20,score_S-Shop=1,score_S-Shop_min=1] add ByScar-H
scoreboard players tag @a[score_assaultRP_min=11,score_assaultRP=11,score_PVE-map_min=1,score_money_min=18,score_S-Shop=1,score_S-Shop_min=1] add ByM16A1
scoreboard players tag @a[score_assaultRP_min=12,score_assaultRP=12,score_PVE-map_min=1,score_money_min=18,score_S-Shop=1,score_S-Shop_min=1] add ByHK416
scoreboard players tag @a[score_assaultRP_min=13,score_assaultRP=13,score_PVE-map_min=1,score_money_min=17,score_S-Shop=1,score_S-Shop_min=1] add ByM16A4
scoreboard players tag @a[score_assaultRP_min=10,score_assaultRP=10,score_PVE-map_min=1,score_money_min=18,score_S-Shop=1,score_S-Shop_min=1] add ByFamasF1
scoreboard players tag @a[score_assaultRP_min=14,score_assaultRP=14,score_PVE-map_min=1,score_money_min=17,score_S-Shop=1,score_S-Shop_min=1] add ByAK-15
scoreboard players tag @a[score_assaultRP_min=15,score_assaultRP=15,score_PVE-map_min=1,score_money_min=15,score_S-Shop=1,score_S-Shop_min=1] add ByACR
scoreboard players tag @a[score_assaultRP_min=16,score_assaultRP=16,score_PVE-map_min=1,score_money_min=15,score_S-Shop=1,score_S-Shop_min=1] add ByScar-L
scoreboard players tag @a[score_assaultRP_min=17,score_assaultRP=17,score_PVE-map_min=1,score_money_min=15,score_S-Shop=2,score_S-Shop_min=2] add ByAK-101
scoreboard players tag @a[score_assaultRP_min=18,score_assaultRP=18,score_PVE-map_min=1,score_money_min=18,score_S-Shop=2,score_S-Shop_min=2] add ByCZ-805
scoreboard players tag @a[score_assaultRP_min=19,score_assaultRP=19,score_PVE-map_min=1,score_money_min=18,score_S-Shop=2,score_S-Shop_min=2] add ByARX-160
scoreboard players tag @a[score_assaultRP_min=20,score_assaultRP=20,score_PVE-map_min=1,score_money_min=18,score_S-Shop=2,score_S-Shop_min=2] add ByHKG11
scoreboard players tag @a[score_assaultRP_min=21,score_assaultRP=21,score_PVE-map_min=1,score_money_min=17,score_S-Shop=2,score_S-Shop_min=2] add ByK2C1
scoreboard players tag @a[score_assaultRP_min=22,score_assaultRP=22,score_PVE-map_min=1,score_money_min=17,score_S-Shop=2,score_S-Shop_min=2] add ByMalyuk
scoreboard players tag @a[score_assaultRP_min=24,score_assaultRP=24,score_PVE-map_min=1,score_money_min=16,score_S-Shop=2,score_S-Shop_min=2] add ByNGSW-R
scoreboard players tag @a[score_assaultRP_min=25,score_assaultRP=25,score_PVE-map_min=1,score_money_min=18,score_S-Shop=0] add BySIG-556
scoreboard players tag @a[score_assaultRP_min=26,score_assaultRP=26,score_PVE-map_min=1,score_money_min=14,score_S-Shop=1,score_S-Shop_min=1] add ByAK-74
scoreboard players tag @a[score_assaultRP_min=27,score_assaultRP=27,score_PVE-map_min=1,score_money_min=15,score_S-Shop=2,score_S-Shop_min=2] add ByType-20
scoreboard players tag @a[score_assaultRP_min=28,score_assaultRP=28,score_PVE-map_min=1,score_money_min=18,score_S-Shop=2,score_S-Shop_min=2] add ByHoneyBadger
function vmwp:shop/weaponShop if @a[score_PVE-map_min=1,score_assaultRP_min=1]

scoreboard players enable @a[score_PVE-map_min=1] S&DMRP
scoreboard players tag @a[score_S&DMRP_min=1,score_S&DMRP=1,score_PVE-map_min=1,score_money_min=30,score_S-Shop=1,score_S-Shop_min=1] add ByM200
scoreboard players tag @a[score_S&DMRP_min=2,score_S&DMRP=2,score_PVE-map_min=1,score_money_min=28,score_S-Shop=0] add ByDSR1
scoreboard players tag @a[score_S&DMRP_min=3,score_S&DMRP=3,score_PVE-map_min=1,score_money_min=27,score_S-Shop=0] add ByM40A6
scoreboard players tag @a[score_S&DMRP_min=4,score_S&DMRP=4,score_PVE-map_min=1,score_money_min=24,score_S-Shop=0] add ByM14DMR
scoreboard players tag @a[score_S&DMRP_min=5,score_S&DMRP=5,score_PVE-map_min=1,score_money_min=18,score_S-Shop=0] add ByAR-10
scoreboard players tag @a[score_S&DMRP_min=6,score_S&DMRP=6,score_PVE-map_min=1,score_money_min=17,score_S-Shop=0] add ByM110
scoreboard players tag @a[score_S&DMRP_min=7,score_S&DMRP=7,score_PVE-map_min=1,score_money_min=35,score_S-Shop=1,score_S-Shop_min=1] add ByM82Barrett
scoreboard players tag @a[score_S&DMRP_min=8,score_S&DMRP=8,score_PVE-map_min=1,score_money_min=28,score_S-Shop=1,score_S-Shop_min=1] add BySV-98
scoreboard players tag @a[score_S&DMRP_min=9,score_S&DMRP=9,score_PVE-map_min=1,score_money_min=24,score_S-Shop=1,score_S-Shop_min=1] add ByFNFAL
scoreboard players tag @a[score_S&DMRP_min=10,score_S&DMRP=10,score_PVE-map_min=1,score_money_min=23,score_S-Shop=1,score_S-Shop_min=1] add ByG3
scoreboard players tag @a[score_S&DMRP_min=11,score_S&DMRP=11,score_PVE-map_min=1,score_money_min=17,score_S-Shop=1,score_S-Shop_min=1] add ByBeowulf
scoreboard players tag @a[score_S&DMRP_min=12,score_S&DMRP=12,score_PVE-map_min=1,score_money_min=35,score_S-Shop=2,score_S-Shop_min=2] add ByAS50
scoreboard players tag @a[score_S&DMRP_min=13,score_S&DMRP=13,score_PVE-map_min=1,score_money_min=28,score_S-Shop=2,score_S-Shop_min=2] add ByL96A1
scoreboard players tag @a[score_S&DMRP_min=14,score_S&DMRP=14,score_PVE-map_min=1,score_money_min=25,score_S-Shop=2,score_S-Shop_min=2] add ByRemington-700
scoreboard players tag @a[score_S&DMRP_min=15,score_S&DMRP=15,score_PVE-map_min=1,score_money_min=24,score_S-Shop=2,score_S-Shop_min=2] add ByHK417
scoreboard players tag @a[score_S&DMRP_min=16,score_S&DMRP=16,score_PVE-map_min=1,score_money_min=17,score_S-Shop=2,score_S-Shop_min=2] add ByZ10
scoreboard players tag @a[score_S&DMRP_min=17,score_S&DMRP=17,score_PVE-map_min=1,score_money_min=32,score_S-Shop=0] add ByPGMHecate
scoreboard players tag @a[score_S&DMRP_min=18,score_S&DMRP=18,score_PVE-map_min=1,score_money_min=34,score_S-Shop=0] add BySVD
scoreboard players tag @a[score_S&DMRP_min=19,score_S&DMRP=19,score_PVE-map_min=1,score_money_min=34,score_S-Shop=2,score_S-Shop_min=2] add BySSG-08
function vmwp:shop/weaponShop if @a[score_PVE-map_min=1,score_S&DMRP_min=1]

scoreboard players enable @a[score_PVE-map_min=1] SMGP
scoreboard players tag @a[score_SMGP_min=1,score_SMGP=1,score_PVE-map_min=1,score_money_min=17,score_S-Shop=0] add ByFMG-9
scoreboard players tag @a[score_SMGP_min=2,score_SMGP=2,score_PVE-map_min=1,score_money_min=17,score_S-Shop=0] add ByKrissVector
scoreboard players tag @a[score_SMGP_min=3,score_SMGP=3,score_PVE-map_min=1,score_money_min=16,score_S-Shop=0] add ByMAC-10
scoreboard players tag @a[score_SMGP_min=4,score_SMGP=4,score_PVE-map_min=1,score_money_min=14,score_S-Shop=0] add ByHKMP5
scoreboard players tag @a[score_SMGP_min=5,score_SMGP=5,score_PVE-map_min=1,score_money_min=13,score_S-Shop=0] add ByUMP45
scoreboard players tag @a[score_SMGP_min=6,score_SMGP=6,score_PVE-map_min=1,score_money_min=18,score_S-Shop=1,score_S-Shop_min=1] add ByHKMP7
scoreboard players tag @a[score_SMGP_min=7,score_SMGP=7,score_PVE-map_min=1,score_money_min=17,score_S-Shop=1,score_S-Shop_min=1] add ByEVO3A1
scoreboard players tag @a[score_SMGP_min=8,score_SMGP=8,score_PVE-map_min=1,score_money_min=16,score_S-Shop=1,score_S-Shop_min=1] add ByAPC9
scoreboard players tag @a[score_SMGP_min=9,score_SMGP=9,score_PVE-map_min=1,score_money_min=10,score_S-Shop=1,score_S-Shop_min=1] add ByPP-91
scoreboard players tag @a[score_SMGP_min=10,score_SMGP=10,score_PVE-map_min=1,score_money_min=18,score_S-Shop=2,score_S-Shop_min=2] add ByFNP90
scoreboard players tag @a[score_SMGP_min=11,score_SMGP=11,score_PVE-map_min=1,score_money_min=17,score_S-Shop=2,score_S-Shop_min=2] add ByS7-10Tricun
scoreboard players tag @a[score_SMGP_min=12,score_SMGP=12,score_PVE-map_min=1,score_money_min=16,score_S-Shop=2,score_S-Shop_min=2] add BySIGMPX
scoreboard players tag @a[score_SMGP_min=13,score_SMGP=13,score_PVE-map_min=1,score_money_min=14,score_S-Shop=2,score_S-Shop_min=2] add ByUzi
function vmwp:shop/weaponShop if @a[score_PVE-map_min=1,score_SMGP_min=1]

scoreboard players enable @a[score_PVE-map_min=1] shotGunP
scoreboard players tag @a[score_shotGunP_min=1,score_shotGunP=1,score_PVE-map_min=1,score_money_min=25,score_S-Shop=0] add ByM1014
#scoreboard players tag @a[score_shotGunP_min=2,score_shotGunP=2,score_PVE-map_min=1,score_money_min=19,score_S-Shop=0] add ByKS-23
scoreboard players tag @a[score_shotGunP_min=3,score_shotGunP=3,score_PVE-map_min=1,score_money_min=14,score_S-Shop=0] add ByRemington-870
scoreboard players tag @a[score_shotGunP_min=4,score_shotGunP=4,score_PVE-map_min=1,score_money_min=25,score_S-Shop=1,score_S-Shop_min=1] add BySpas-12
scoreboard players tag @a[score_shotGunP_min=5,score_shotGunP=5,score_PVE-map_min=1,score_money_min=18,score_S-Shop=1,score_S-Shop_min=1] add ByBenelli
scoreboard players tag @a[score_shotGunP_min=6,score_shotGunP=6,score_PVE-map_min=1,score_money_min=40,score_S-Shop=2,score_S-Shop_min=2] add ByOrigin-12
scoreboard players tag @a[score_shotGunP_min=7,score_shotGunP=7,score_PVE-map_min=1,score_money_min=20,score_S-Shop=2,score_S-Shop_min=2] add BySaiga12
scoreboard players tag @a[score_shotGunP_min=8,score_shotGunP=8,score_PVE-map_min=1,score_money_min=17,score_S-Shop=0] add ByHS-12
function vmwp:shop/weaponShop if @a[score_PVE-map_min=1,score_shotGunP_min=1]

scoreboard players enable @a[score_PVE-map_min=1] heavyP
scoreboard players tag @a[score_heavyP_min=1,score_heavyP=1,score_PVE-map_min=1,score_money_min=25,score_S-Shop=0] add ByM249
scoreboard players tag @a[score_heavyP_min=2,score_heavyP=2,score_PVE-map_min=1,score_money_min=25,score_S-Shop=1,score_S-Shop_min=1] add ByStonerA1
function vmwp:shop/weaponShop if @a[score_PVE-map_min=1,score_heavyP_min=1]

scoreboard players enable @a[score_PVE-map_min=1] pistolP
scoreboard players tag @a[score_pistolP_min=1,score_pistolP=1,score_PVE-map_min=1,score_money_min=10,score_S-Shop=0] add ByAPS
scoreboard players tag @a[score_pistolP_min=2,score_pistolP=2,score_PVE-map_min=1,score_money_min=8,score_S-Shop=0] add ByS&W.500
scoreboard players tag @a[score_pistolP_min=3,score_pistolP=3,score_PVE-map_min=1,score_money_min=8,score_S-Shop=0] add ByMAS-21
scoreboard players tag @a[score_pistolP_min=4,score_pistolP=4,score_PVE-map_min=1,score_money_min=7,score_S-Shop=0] add BySIGP226
scoreboard players tag @a[score_pistolP_min=5,score_pistolP=5,score_PVE-map_min=1,score_money_min=4,score_S-Shop=0] add ByHKP12
scoreboard players tag @a[score_pistolP_min=6,score_pistolP=6,score_PVE-map_min=1,score_money_min=0,score_S-Shop=0] add ByHunter
scoreboard players tag @a[score_pistolP_min=7,score_pistolP=7,score_PVE-map_min=1,score_money_min=10,score_S-Shop=1,score_S-Shop_min=1] add ByGlock-18C
scoreboard players tag @a[score_pistolP_min=8,score_pistolP=8,score_PVE-map_min=1,score_money_min=8,score_S-Shop=1,score_S-Shop_min=1] add ByVP-70
scoreboard players tag @a[score_pistolP_min=9,score_pistolP=9,score_PVE-map_min=1,score_money_min=7,score_S-Shop=1,score_S-Shop_min=1] add ByM9A1
scoreboard players tag @a[score_pistolP_min=10,score_pistolP=10,score_PVE-map_min=1,score_money_min=5,score_S-Shop=1,score_S-Shop_min=1] add ByGlock-19
scoreboard players tag @a[score_pistolP_min=11,score_pistolP=11,score_PVE-map_min=1,score_money_min=0,score_S-Shop=1,score_S-Shop_min=1] add ByColtPython
scoreboard players tag @a[score_pistolP_min=12,score_pistolP=12,score_PVE-map_min=1,score_money_min=10,score_S-Shop=2,score_S-Shop_min=2] add ByDesertEagle
scoreboard players tag @a[score_pistolP_min=13,score_pistolP=13,score_PVE-map_min=1,score_money_min=8,score_S-Shop=2,score_S-Shop_min=2] add ByMP443
scoreboard players tag @a[score_pistolP_min=14,score_pistolP=14,score_PVE-map_min=1,score_money_min=8,score_S-Shop=2,score_S-Shop_min=2] add ByM17
scoreboard players tag @a[score_pistolP_min=15,score_pistolP=15,score_PVE-map_min=1,score_money_min=5,score_S-Shop=2,score_S-Shop_min=2] add ByCPX-2
scoreboard players tag @a[score_pistolP_min=16,score_pistolP=16,score_PVE-map_min=1,score_money_min=0,score_S-Shop=2,score_S-Shop_min=2] add ByChiappa
scoreboard players tag @a[score_pistolP_min=17,score_pistolP=17,score_PVE-map_min=1,score_money_min=9,score_S-Shop=2,score_S-Shop_min=2] add ByFN57
function vmwp:shop/weaponShop if @a[score_PVE-map_min=1,score_pistolP_min=1]

scoreboard players enable @a[score_PVE-map_min=1] ultimateWP
tellraw @a[score_ultimateWP_min=1,score_PVE-map_min=1] [{"text":"§cPlease go to the ultimate weapon box to draw the ultimate weapon!"}]
scoreboard players reset @a[score_ultimateWP_min=1,score_PVE-map_min=1] ultimateWP

#弹药
replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=1,score_MainW=1] slot.inventory.1 mw:m4a1mag_2 6 0 {Ammo:40}
replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=2,score_MainW=2] slot.inventory.1 mw:m4a1mag_2 6 0 {Ammo:30}
replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=3,score_MainW=3] slot.inventory.1 mw:m4a1mag_2 6 0 {Ammo:30}
replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=4,score_MainW=4] slot.inventory.1 mw:m4a1mag_2 6 0 {Ammo:30}
#replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=4,score_MainW=4] slot.inventory.3 mw:aug9mmmag 6 0 {Ammo:30}
replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=5,score_MainW=5] slot.inventory.1 mw:g36cmag_2 6 0 {Ammo:30}
replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=6,score_MainW=6] slot.inventory.1 mw:ak12mag 6 0 {Ammo:31}
replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=7,score_MainW=7] slot.inventory.1 mw:ak15mag_2 6 0 {Ammo:30}
replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=8,score_MainW=8] slot.inventory.1 mw:kbp9a91mag_2 6 0 {Ammo:20}
replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=9,score_MainW=9] slot.inventory.1 mw:scar40mag 6 0 {Ammo:40}
replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=10,score_MainW=10] slot.inventory.1 mw:m4a1mag_2 6 0 {Ammo:30}
replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=11,score_MainW=11] slot.inventory.1 mw:m4a1mag_2 6 0 {Ammo:30}
replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=12,score_MainW=12] slot.inventory.1 mw:m4a1mag_2 6 0 {Ammo:30}
replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=13,score_MainW=13] slot.inventory.1 mw:famasf1mag 6 0 {Ammo:30}
replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=14,score_MainW=14] slot.inventory.1 mw:ak15mag_2 6 0 {Ammo:30}
replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=15,score_MainW=15] slot.inventory.1 mw:m4a1mag_2 6 0 {Ammo:30}
replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=16,score_MainW=16] slot.inventory.1 mw:m4a1mag_2 6 0 {Ammo:30}
replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=17,score_MainW=17] slot.inventory.1 mw:ak101mag_2 6 0 {Ammo:30}
replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=18,score_MainW=18] slot.inventory.1 mw:m4a1mag_2 6 0 {Ammo:30}
replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=19,score_MainW=19] slot.inventory.1 mw:m4a1mag_2 6 0 {Ammo:30}
replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=20,score_MainW=20] slot.inventory.1 mw:g11mag 6 0 {Ammo:50}
replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=21,score_MainW=21] slot.inventory.1 mw:m4a1mag_2 6 0 {Ammo:30}
replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=22,score_MainW=22] slot.inventory.1 mw:ak15mag_2 6 0 {Ammo:30}
replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=23,score_MainW=23] slot.inventory.1 mw:ak15mag_2 6 0 {Ammo:30}
replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=24,score_MainW=24] slot.inventory.1 mw:ngswr_mag 6 0 {Ammo:30}
replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=25,score_MainW=25] slot.inventory.1 mw:interventionmag 6 0 {Ammo:7}
replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=26,score_MainW=26] slot.inventory.1 mw:dsr1magext 6 0 {Ammo:10}
replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=27,score_MainW=27] slot.inventory.1 mw:m40a6mag_2 6 0 {Ammo:7}
replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=28,score_MainW=28] slot.inventory.1 mw:mk14ebrmag_2 6 0 {Ammo:20}
replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=29,score_MainW=29] slot.inventory.1 mw:m110mag_2 6 0 {Ammo:10}
replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=30,score_MainW=30] slot.inventory.1 mw:m110mag_2 6 0 {Ammo:10}
replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=31,score_MainW=31] slot.inventory.1 mw:m82mag_2 6 0 {Ammo:10}
replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=32,score_MainW=32] slot.inventory.1 mw:sv98mag_2 6 0 {Ammo:10}
replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=33,score_MainW=33] slot.inventory.1 mw:fnfalmag 6 0 {Ammo:20}
replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=34,score_MainW=34] slot.inventory.1 mw:g3mag 6 0 {Ammo:20}
replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=35,score_MainW=35] slot.inventory.1 mw:beowulfmag 6 0 {Ammo:13}
replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=36,score_MainW=36] slot.inventory.1 mw:as50mag_2 6 0 {Ammo:10}
replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=37,score_MainW=37] slot.inventory.1 mw:l96a1mag_2 6 0 {Ammo:10}
replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=38,score_MainW=38] slot.inventory.1 mw:r700mag 6 0 {Ammo:5}
replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=39,score_MainW=39] slot.inventory.1 mw:hk417_mag 6 0 {Ammo:20}
replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=40,score_MainW=40] slot.inventory.1 mw:z10mag 6 0 {Ammo:10}
replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=41,score_MainW=41] slot.inventory.1 mw:honeybadgermag_2 6 0 {Ammo:30}
#replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=42,score_MainW=42] slot.inventory.3 mw:vectormag 5 0 {Ammo:25}
replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=42,score_MainW=42] slot.inventory.1 mw:famasf1mag 6 0 {Ammo:30}
replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=43,score_MainW=43] slot.inventory.1 mw:mac10mag 6 0 {Ammo:30}
replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=44,score_MainW=44] slot.inventory.1 mw:mp5a5mag 6 0 {Ammo:30}
replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=45,score_MainW=45] slot.inventory.1 mw:ump45mag 6 0 {Ammo:25}
#replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=45,score_MainW=45] slot.inventory.3 mw:ump9mag 6 0 {Ammo:30}
replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=46,score_MainW=46] slot.inventory.1 mw:mp7mag 6 0 {Ammo:40}
replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=47,score_MainW=47] slot.inventory.1 mw:scorpionmag 6 0 {Ammo:30}
replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=48,score_MainW=48] slot.inventory.1 mw:apc9mag 6 0 {Ammo:30}
replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=49,score_MainW=49] slot.inventory.1 mw:kedrmag_2 6 0 {Ammo:20}
replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=50,score_MainW=50] slot.inventory.1 mw:p90mag 6 0 {Ammo:50}
replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=51,score_MainW=51] slot.inventory.1 mw:s710tricunmag 6 0 {Ammo:30}
replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=52,score_MainW=52] slot.inventory.1 mw:mpxmag 6 0 {Ammo:30}
replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=53,score_MainW=53] slot.inventory.1 mw:uzimag_2 6 0 {Ammo:32}
replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=54,score_MainW=54] slot.inventory.1 mw:shotgun12gauge 64 0
replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=55,score_MainW=55] slot.inventory.1 mw:shotgun4g 64 0
replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=56,score_MainW=56] slot.inventory.1 mw:shotgun12gauge 64 0
replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=57,score_MainW=57] slot.inventory.1 mw:shotgun12gauge 64 0
replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=58,score_MainW=58] slot.inventory.1 mw:shotgun12gauge 64 0
replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=59,score_MainW=59] slot.inventory.1 mw:origin12drummag 6 0 {Ammo:20}
replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=60,score_MainW=60] slot.inventory.1 mw:saigamag_2 6 0 {Ammo:5}
replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=61,score_MainW=61] slot.inventory.1 mw:shotgun12gauge 64 0
replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=62,score_MainW=62] slot.inventory.1 mw:m249mag 6 0 {Ammo:100}
replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=63,score_MainW=63] slot.inventory.1 mw:stonermag 6 0 {Ammo:100}

replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=65,score_MainW=65] slot.inventory.1 mw:hecateiimag 6 0 {Ammo:7}
replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=66,score_MainW=66] slot.inventory.1 mw:m4a1mag_2 6 0 {Ammo:30}
replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=67,score_MainW=67] slot.inventory.1 mw:ak12mag_2 6 0 {Ammo:30}
replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=68,score_MainW=68] slot.inventory.1 mw:m38mag_2 6 0 {Ammo:30}
replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=69,score_MainW=69] slot.inventory.1 mw:dragunovmag 6 0 {Ammo:10}
replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=70,score_MainW=70] slot.inventory.1 mw:ssg08mag 6 0 {Ammo:8}
replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=71,score_MainW=71] slot.inventory.1 mw:glockmag50 6 0 {Ammo:50}

replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=100,score_MainW=100] slot.inventory.1 mw:grenade40mm 64 0
replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=101,score_MainW=101] slot.inventory.1 mw:rpg7_rocket 64 0
replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=102,score_MainW=102] slot.inventory.1 mw:plasmacapsule 64 0
replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=103,score_MainW=103] slot.inventory.1 mw:asvalmag 6 0 {Ammo:40}
replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=104,score_MainW=104] slot.inventory.1 mw:m202rocket 64 0
replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=105,score_MainW=105] slot.inventory.1 mw:grenade40mm 64 0
replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=106,score_MainW=106] slot.inventory.1 mw:m134mag 6 0 {Ammo:200}
replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=107,score_MainW=107] slot.inventory.1 mw:mininuke 64 0
replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=108,score_MainW=108] slot.inventory.1 mw:origin12drummag 6 0 {Ammo:25}
replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=109,score_MainW=109] slot.inventory.1 mw:m134mag 6 0 {Ammo:1000}
replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=110,score_MainW=110] slot.inventory.1 mw:ssg08mag 6 0 {Ammo:38}
replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=111,score_MainW=111] slot.inventory.1 mw:glock18cmag_2 6 0 {Ammo:1.E99}
replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=112,score_MainW=112] slot.inventory.1 mw:p2022mag 6 0 {Ammo:1.E99}
replaceitem entity @a[score_PVE-map_min=1,score_MainW_min=113,score_MainW=113] slot.inventory.1 mw:ak100mag 6 0 {Ammo:120}

replaceitem entity @a[score_PVE-map_min=1,score_SecondaryW_min=1,score_SecondaryW=1] slot.inventory.2 mw:apsmag_2 6 0 {Ammo:20}
replaceitem entity @a[score_PVE-map_min=1,score_SecondaryW_min=2,score_SecondaryW=2] slot.inventory.2 mw:bullet500 64 0
replaceitem entity @a[score_PVE-map_min=1,score_SecondaryW_min=3,score_SecondaryW=3] slot.inventory.2 mw:m9mag_2 6 0 {Ammo:15}
replaceitem entity @a[score_PVE-map_min=1,score_SecondaryW_min=4,score_SecondaryW=4] slot.inventory.2 mw:m9mag_2 6 0 {Ammo:15}
replaceitem entity @a[score_PVE-map_min=1,score_SecondaryW_min=5,score_SecondaryW=5] slot.inventory.2 mw:usp45mag 6 0 {Ammo:8}
replaceitem entity @a[score_PVE-map_min=1,score_SecondaryW_min=6,score_SecondaryW=6] slot.inventory.2 mw:bullet44 64 0
replaceitem entity @a[score_PVE-map_min=1,score_SecondaryW_min=7,score_SecondaryW=7] slot.inventory.2 mw:glock18cmag_2 6 0 {Ammo:20}
replaceitem entity @a[score_PVE-map_min=1,score_SecondaryW_min=8,score_SecondaryW=8] slot.inventory.2 mw:vp70mag_2 6 0 {Ammo:18}
replaceitem entity @a[score_PVE-map_min=1,score_SecondaryW_min=9,score_SecondaryW=9] slot.inventory.2 mw:m9mag_2 6 0 {Ammo:15}
replaceitem entity @a[score_PVE-map_min=1,score_SecondaryW_min=9,score_SecondaryW=9] slot.inventory.4 mw:samuraiedgemag 6 0 {Ammo:15}
replaceitem entity @a[score_PVE-map_min=1,score_SecondaryW_min=10,score_SecondaryW=10] slot.inventory.2 mw:glockmag13 6 0 {Ammo:13}
replaceitem entity @a[score_PVE-map_min=1,score_SecondaryW_min=11,score_SecondaryW=11] slot.inventory.2 mw:bullet357 64 0
replaceitem entity @a[score_PVE-map_min=1,score_SecondaryW_min=12,score_SecondaryW=12] slot.inventory.2 mw:deserteaglemag 6 0 {Ammo:7}
replaceitem entity @a[score_PVE-map_min=1,score_SecondaryW_min=13,score_SecondaryW=13] slot.inventory.2 mw:mp443mag_2 6 0 {Ammo:18}
replaceitem entity @a[score_PVE-map_min=1,score_SecondaryW_min=14,score_SecondaryW=14] slot.inventory.2 mw:m17mag 6 0 {Ammo:17}
replaceitem entity @a[score_PVE-map_min=1,score_SecondaryW_min=15,score_SecondaryW=15] slot.inventory.2 mw:sccycpx2mag 6 0 {Ammo:10}
replaceitem entity @a[score_PVE-map_min=1,score_SecondaryW_min=16,score_SecondaryW=16] slot.inventory.2 mw:bullet357 64 0
replaceitem entity @a[score_PVE-map_min=1,score_SecondaryW_min=17,score_SecondaryW=17] slot.inventory.2 mw:fivesevenmag 6 0 {Ammo:20}

#Camo
replaceitem entity @a[score_S-Painting_min=1,score_S-Painting=1,score_PVE-map_min=1] slot.inventory.0 mw:diamondcamo 1 0
replaceitem entity @a[score_S-Painting_min=2,score_S-Painting=2,score_PVE-map_min=1] slot.inventory.0 mw:goldcamo 1 0
replaceitem entity @a[score_S-Painting_min=3,score_S-Painting=3,score_PVE-map_min=1] slot.inventory.0 mw:arcticcamo 1 0
replaceitem entity @a[score_S-Painting_min=4,score_S-Painting=4,score_PVE-map_min=1] slot.inventory.0 mw:woodlandcamo 1 0
replaceitem entity @a[score_S-Painting_min=5,score_S-Painting=5,score_PVE-map_min=1] slot.inventory.0 mw:bloodforestcamo 1 0
replaceitem entity @a[score_S-Painting_min=6,score_S-Painting=6,score_PVE-map_min=1] slot.inventory.0 mw:pinkcamo 1 0
replaceitem entity @a[score_S-Painting_min=7,score_S-Painting=7,score_PVE-map_min=1] slot.inventory.0 mw:bluecamo 1 0
replaceitem entity @a[score_S-Painting_min=8,score_S-Painting=8,score_PVE-map_min=1] slot.inventory.0 mw:unit01camo 1 0
