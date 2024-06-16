#近战shop
scoreboard players enable @a S-MeleeWP

scoreboard players set @a[score_S-MeleeWP_min=1,score_S-MeleeWP=1,tag=!InGame] S-MeleeW 0
tellraw @a[score_S-MeleeWP_min=1,score_S-MeleeWP=1] {"text":"§5Successfully switched melee weapons!"}

execute @a[score_S-MeleeWP_min=2,score_S-MeleeWP=2,tag=!InGame] ~ ~ ~ scoreboard players tag @s[score_note_min=1000,tag=!Tomahawk] add ByTomahawk
tellraw @a[tag=ByTomahawk] {"text":"§aPurchase of melee weapons succeeded!"}
scoreboard players tag @a[tag=ByTomahawk] add Tomahawk
scoreboard players remove @a[tag=ByTomahawk] note 1000
scoreboard players tag @a[tag=ByTomahawk] remove ByTomahawk

scoreboard players set @a[score_S-MeleeWP_min=3,score_S-MeleeWP=3,tag=Tomahawk] S-MeleeW 1
tellraw @a[score_S-MeleeWP_min=3,score_S-MeleeWP=3,tag=Tomahawk] {"text":"§5Successfully switched melee weapons!"}

execute @a[score_S-MeleeWP_min=4,score_S-MeleeWP=4,tag=!InGame] ~ ~ ~ scoreboard players tag @s[score_note_min=5000,tag=!BatwNails] add ByBatwNails
tellraw @a[tag=ByBatwNails] {"text":"§aPurchase of melee weapons succeeded!"}
scoreboard players tag @a[tag=ByBatwNails] add BatwNails
scoreboard players remove @a[tag=ByBatwNails] note 5000
scoreboard players tag @a[tag=ByBatwNails] remove ByBatwNails

scoreboard players set @a[score_S-MeleeWP_min=5,score_S-MeleeWP=5,tag=BatwNails] S-MeleeW 2
tellraw @a[score_S-MeleeWP_min=5,score_S-MeleeWP=5,tag=BatwNails] {"text":"§5Successfully switched melee weapons!"}

scoreboard players reset @a[score_S-MeleeWP_min=1] S-MeleeWP

#终极武器shop
scoreboard players enable @a S-UltimateWP

scoreboard players set @a[score_S-UltimateWP_min=1,score_S-UltimateWP=1,tag=!InGame] S-UltimateW 0
tellraw @a[score_S-UltimateWP_min=1,score_S-UltimateWP=1] {"text":"§5Ultimate weapon switch succeeded!"}

execute @a[score_S-UltimateWP_min=2,score_S-UltimateWP=2,tag=!InGame] ~ ~ ~ scoreboard players tag @s[score_note_min=500,tag=!RPG-7] add ByRPG-7
tellraw @a[tag=ByRPG-7] {"text":"§aSuccessfully purchased the ultimate weapon!"}
scoreboard players tag @a[tag=ByRPG-7] add RPG-7
scoreboard players remove @a[tag=ByRPG-7] note 500
scoreboard players tag @a[tag=ByRPG-7] remove ByRPG-7

scoreboard players set @a[score_S-UltimateWP_min=3,score_S-UltimateWP=3,tag=RPG-7] S-UltimateW 1
tellraw @a[score_S-UltimateWP_min=3,score_S-UltimateWP=3,tag=RPG-7] {"text":"§5Ultimate weapon switch succeeded!"}

execute @a[score_S-UltimateWP_min=4,score_S-UltimateWP=4,tag=!InGame] ~ ~ ~ scoreboard players tag @s[score_note_min=600,tag=!PKM] add ByPKM
tellraw @a[tag=ByPKM] {"text":"§aSuccessfully purchased the ultimate weapon!"}
scoreboard players tag @a[tag=ByPKM] add PKM
scoreboard players remove @a[tag=ByPKM] note 600
scoreboard players tag @a[tag=ByPKM] remove ByPKM

scoreboard players tag @a[tag=GPC-A1] add PKM
scoreboard players tag @a[tag=GPC-A1] remove GPC-A1

scoreboard players set @a[score_S-UltimateWP_min=5,score_S-UltimateWP=5,tag=PKM] S-UltimateW 2
tellraw @a[score_S-UltimateWP_min=5,score_S-UltimateWP=5,tag=PKM] {"text":"§5Ultimate weapon switch succeeded!"}

execute @a[score_S-UltimateWP_min=6,score_S-UltimateWP=6,tag=!InGame] ~ ~ ~ scoreboard players tag @s[score_note_min=1000,tag=!VSS] add ByVSS
tellraw @a[tag=ByVSS] {"text":"§aSuccessfully purchased the ultimate weapon!"}
scoreboard players tag @a[tag=ByVSS] add VSS
scoreboard players remove @a[tag=ByVSS] note 1000
scoreboard players tag @a[tag=ByVSS] remove ByVSS

scoreboard players set @a[score_S-UltimateWP_min=7,score_S-UltimateWP=7,tag=VSS] S-UltimateW 3
tellraw @a[score_S-UltimateWP_min=7,score_S-UltimateWP=7,tag=VSS] {"text":"§5Ultimate weapon switch succeeded!"}

execute @a[score_S-UltimateWP_min=8,score_S-UltimateWP=8,tag=!InGame] ~ ~ ~ scoreboard players tag @s[score_note_min=1500,tag=!M202] add ByM202
tellraw @a[tag=ByM202] {"text":"§aSuccessfully purchased the ultimate weapon!"}
scoreboard players tag @a[tag=ByM202] add M202
scoreboard players remove @a[tag=ByM202] note 1500
scoreboard players tag @a[tag=ByM202] remove ByM202

scoreboard players set @a[score_S-UltimateWP_min=9,score_S-UltimateWP=9,tag=M202] S-UltimateW 4
tellraw @a[score_S-UltimateWP_min=9,score_S-UltimateWP=9,tag=M202] {"text":"§5Ultimate weapon switch succeeded!"}

execute @a[score_S-UltimateWP_min=10,score_S-UltimateWP=10,tag=!InGame] ~ ~ ~ scoreboard players tag @s[score_note_min=2000,tag=!M32MGL] add ByM32MGL
tellraw @a[tag=ByM32MGL] {"text":"§aSuccessfully purchased the ultimate weapon!"}
scoreboard players tag @a[tag=ByM32MGL] add M32MGL
scoreboard players remove @a[tag=ByM32MGL] note 2000
scoreboard players tag @a[tag=ByM32MGL] remove ByM32MGL

scoreboard players set @a[score_S-UltimateWP_min=11,score_S-UltimateWP=11,tag=M32MGL] S-UltimateW 5
tellraw @a[score_S-UltimateWP_min=11,score_S-UltimateWP=11,tag=M32MGL] {"text":"§5Ultimate weapon switch succeeded!"}

execute @a[score_S-UltimateWP_min=12,score_S-UltimateWP=12,tag=!InGame] ~ ~ ~ scoreboard players tag @s[score_note_min=3000,tag=!M134] add ByM134
tellraw @a[tag=ByM134] {"text":"§aSuccessfully purchased the ultimate weapon!"}
scoreboard players tag @a[tag=ByM134] add M134
scoreboard players remove @a[tag=ByM134] note 3000
scoreboard players tag @a[tag=ByM134] remove ByM134

scoreboard players set @a[score_S-UltimateWP_min=13,score_S-UltimateWP=13,tag=M134] S-UltimateW 6
tellraw @a[score_S-UltimateWP_min=13,score_S-UltimateWP=13,tag=M134] {"text":"§5Ultimate weapon switch succeeded!"}

execute @a[score_S-UltimateWP_min=14,score_S-UltimateWP=14,tag=!InGame] ~ ~ ~ scoreboard players tag @s[score_note_min=5000,tag=!fatman] add Byfatman
tellraw @a[tag=Byfatman] {"text":"§aSuccessfully purchased the ultimate weapon!"}
scoreboard players tag @a[tag=Byfatman] add fatman
scoreboard players remove @a[tag=Byfatman] note 5000
scoreboard players tag @a[tag=Byfatman] remove Byfatman

scoreboard players set @a[score_S-UltimateWP_min=15,score_S-UltimateWP=15,tag=fatman] S-UltimateW 7
tellraw @a[score_S-UltimateWP_min=15,score_S-UltimateWP=15,tag=fatman] {"text":"§5Ultimate weapon switch succeeded!"}

scoreboard players reset @a[score_S-UltimateWP_min=1] S-UltimateWP








#选择shop
scoreboard players enable @a S-ShopP

scoreboard players set @a[score_S-ShopP_min=1,score_S-ShopP=1,tag=!InGame] S-Shop 0
tellraw @a[score_S-ShopP_min=1,score_S-ShopP=1] {"text":"§5Shop switching succeeded!"}

execute @a[score_S-ShopP_min=2,score_S-ShopP=2,tag=!InGame] ~ ~ ~ scoreboard players tag @s[score_note_min=1000,tag=!WeaponsStone2] add ByWeaponsStone2
tellraw @a[tag=ByWeaponsStone2] {"text":"§aPurchase succeeded!"}
scoreboard players tag @a[tag=ByWeaponsStone2] add WeaponsStone2
scoreboard players remove @a[tag=ByWeaponsStone2] note 1000
scoreboard players tag @a[tag=ByWeaponsStone2] remove ByWeaponsStone2

scoreboard players set @a[score_S-ShopP_min=3,score_S-ShopP=3,tag=WeaponsStone2] S-Shop 1
tellraw @a[score_S-ShopP_min=3,score_S-ShopP=3,tag=WeaponsStone2] {"text":"§5Shop switching succeeded!"}

execute @a[score_S-ShopP_min=4,score_S-ShopP=4,tag=!InGame] ~ ~ ~ scoreboard players tag @s[score_note_min=2000,tag=!WeaponsStone3] add ByWeaponsStone3
tellraw @a[tag=ByWeaponsStone3] {"text":"§aPurchase succeeded!"}
scoreboard players tag @a[tag=ByWeaponsStone3] add WeaponsStone3
scoreboard players remove @a[tag=ByWeaponsStone3] note 2000
scoreboard players tag @a[tag=ByWeaponsStone3] remove ByWeaponsStone3

scoreboard players set @a[score_S-ShopP_min=5,score_S-ShopP=5,tag=WeaponsStone3] S-Shop 2
tellraw @a[score_S-ShopP_min=5,score_S-ShopP=5,tag=WeaponsStone3] {"text":"§5Shop switching succeeded!"}

scoreboard players reset @a[score_S-ShopP_min=1] S-ShopP

#Camoshop
scoreboard players enable @a S-PaintingP

execute @a[score_S-PaintingP_min=1,score_S-PaintingP=1,tag=!InGame] ~ ~ ~ scoreboard players tag @s[score_note_min=5000,tag=!DiamondCamo] add ByDiamondCamo
tellraw @a[tag=ByDiamondCamo] {"text":"§aSuccessfully purchased Camo!"}
scoreboard players tag @a[tag=ByDiamondCamo] add DiamondCamo
scoreboard players remove @a[tag=ByDiamondCamo] note 5000
scoreboard players tag @a[tag=ByDiamondCamo] remove ByDiamondCamo

scoreboard players set @a[score_S-PaintingP_min=2,score_S-PaintingP=2,tag=DiamondCamo] S-Painting 1
tellraw @a[score_S-PaintingP_min=2,score_S-PaintingP=2,tag=DiamondCamo] {"text":"§5Camo switch succeeded!"}

execute @a[score_S-PaintingP_min=3,score_S-PaintingP=3,tag=!InGame] ~ ~ ~ scoreboard players tag @s[score_note_min=4000,tag=!GoldCamo] add ByGoldCamo
tellraw @a[tag=ByGoldCamo] {"text":"§aSuccessfully purchased Camo!"}
scoreboard players tag @a[tag=ByGoldCamo] add GoldCamo
scoreboard players remove @a[tag=ByGoldCamo] note 4000
scoreboard players tag @a[tag=ByGoldCamo] remove ByGoldCamo

scoreboard players set @a[score_S-PaintingP_min=4,score_S-PaintingP=4,tag=GoldCamo] S-Painting 2
tellraw @a[score_S-PaintingP_min=4,score_S-PaintingP=4,tag=GoldCamo] {"text":"§5Camo switch succeeded!"}

execute @a[score_S-PaintingP_min=5,score_S-PaintingP=5,tag=!InGame] ~ ~ ~ scoreboard players tag @s[score_note_min=3000,tag=!ArcticCamo] add ByArcticCamo
tellraw @a[tag=ByArcticCamo] {"text":"§aSuccessfully purchased Camo!"}
scoreboard players tag @a[tag=ByArcticCamo] add ArcticCamo
scoreboard players remove @a[tag=ByArcticCamo] note 3000
scoreboard players tag @a[tag=ByArcticCamo] remove ByArcticCamo

scoreboard players set @a[score_S-PaintingP_min=6,score_S-PaintingP=6,tag=ArcticCamo] S-Painting 3
tellraw @a[score_S-PaintingP_min=6,score_S-PaintingP=6,tag=ArcticCamo] {"text":"§5Camo switch succeeded!"}

execute @a[score_S-PaintingP_min=7,score_S-PaintingP=7,tag=!InGame] ~ ~ ~ scoreboard players tag @s[score_note_min=3000,tag=!WoodlandCamo] add ByWoodlandCamo
tellraw @a[tag=ByWoodlandCamo] {"text":"§aSuccessfully purchased Camo!"}
scoreboard players tag @a[tag=ByWoodlandCamo] add WoodlandCamo
scoreboard players remove @a[tag=ByWoodlandCamo] note 3000
scoreboard players tag @a[tag=ByWoodlandCamo] remove ByWoodlandCamo

scoreboard players set @a[score_S-PaintingP_min=8,score_S-PaintingP=8,tag=DiamondCamo] S-Painting 4
tellraw @a[score_S-PaintingP_min=8,score_S-PaintingP=8,tag=WoodlandCamo] {"text":"§5Camo switch succeeded!"}

execute @a[score_S-PaintingP_min=9,score_S-PaintingP=9,tag=!InGame] ~ ~ ~ scoreboard players tag @s[score_note_min=2000,tag=!BloodForestCamo] add ByBloodForestCamo
tellraw @a[tag=ByBloodForestCamo] {"text":"§aSuccessfully purchased Camo!"}
scoreboard players tag @a[tag=ByBloodForestCamo] add BloodForestCamo
scoreboard players remove @a[tag=ByBloodForestCamo] note 2000
scoreboard players tag @a[tag=ByBloodForestCamo] remove ByBloodForestCamo

scoreboard players set @a[score_S-PaintingP_min=10,score_S-PaintingP=10,tag=BloodForestCamo] S-Painting 5
tellraw @a[score_S-PaintingP_min=10,score_S-PaintingP=10,tag=BloodForestCamo] {"text":"§5Camo switch succeeded!"}

execute @a[score_S-PaintingP_min=11,score_S-PaintingP=11,tag=!InGame] ~ ~ ~ scoreboard players tag @s[score_note_min=2000,tag=!PinkCamo] add ByPinkCamo
tellraw @a[tag=ByPinkCamo] {"text":"§aSuccessfully purchased Camo!"}
scoreboard players tag @a[tag=ByPinkCamo] add PinkCamo
scoreboard players remove @a[tag=ByPinkCamo] note 2000
scoreboard players tag @a[tag=ByPinkCamo] remove ByPinkCamo

scoreboard players set @a[score_S-PaintingP_min=12,score_S-PaintingP=12,tag=PinkCamo] S-Painting 6
tellraw @a[score_S-PaintingP_min=12,score_S-PaintingP=12,tag=PinkCamo] {"text":"§5Camo switch succeeded!"}

execute @a[score_S-PaintingP_min=13,score_S-PaintingP=13,tag=!InGame] ~ ~ ~ scoreboard players tag @s[score_note_min=2000,tag=!BlueCamo] add ByBlueCamo
tellraw @a[tag=ByBlueCamo] {"text":"§aSuccessfully purchased Camo!"}
scoreboard players tag @a[tag=ByBlueCamo] add BlueCamo
scoreboard players remove @a[tag=ByBlueCamo] note 2000
scoreboard players tag @a[tag=ByBlueCamo] remove ByBlueCamo

scoreboard players set @a[score_S-PaintingP_min=14,score_S-PaintingP=14,tag=BlueCamo] S-Painting 7
tellraw @a[score_S-PaintingP_min=14,score_S-PaintingP=14,tag=BlueCamo] {"text":"§5Camo switch succeeded!"}

execute @a[score_S-PaintingP_min=15,score_S-PaintingP=15,tag=!InGame] ~ ~ ~ scoreboard players tag @s[score_note_min=100,tag=!Unit01Camo] add ByUnit01Camo
tellraw @a[tag=ByUnit01Camo] {"text":"§aSuccessfully purchased Camo!"}
scoreboard players tag @a[tag=ByUnit01Camo] add Unit01Camo
scoreboard players remove @a[tag=ByUnit01Camo] note 100
scoreboard players tag @a[tag=ByUnit01Camo] remove ByUnit01Camo

scoreboard players set @a[score_S-PaintingP_min=16,score_S-PaintingP=16,tag=Unit01Camo] S-Painting 8
tellraw @a[score_S-PaintingP_min=16,score_S-PaintingP=16,tag=Unit01Camo] {"text":"§5Camo switch succeeded!"}

scoreboard players set @a[score_S-PaintingP_min=21,score_S-PaintingP=21] S-Painting 0
tellraw @a[score_S-PaintingP_min=21,score_S-PaintingP=21] {"text":"§bCamo has been canceled"}
scoreboard players reset @a[score_S-PaintingP_min=1] S-PaintingP



#瞄具shop

scoreboard players enable @a S-SightP

scoreboard players set @a[score_S-SightP_min=1,score_S-SightP=1,tag=!InGame] S-Sight 0
tellraw @a[score_S-SightP_min=1,score_S-SightP=1] {"text":"§5Sight switch succeeded!"}

execute @a[score_S-SightP_min=2,score_S-SightP=2,tag=!InGame] ~ ~ ~ scoreboard players tag @s[score_note_min=500,tag=!RMR] add ByRMR
tellraw @a[tag=ByRMR] {"text":"§aSuccessfully purchased the sight!"}
scoreboard players tag @a[tag=ByRMR] add RMR
scoreboard players remove @a[tag=ByRMR] note 500
scoreboard players tag @a[tag=ByRMR] remove ByRMR

scoreboard players set @a[score_S-SightP_min=3,score_S-SightP=3,tag=RMR] S-Sight 1
tellraw @a[score_S-SightP_min=3,score_S-SightP=3,tag=RMR] {"text":"§5Sight switch succeeded!"}

execute @a[score_S-SightP_min=4,score_S-SightP=4,tag=!InGame] ~ ~ ~ scoreboard players tag @s[score_note_min=500,tag=!OKP-7] add ByOKP-7
tellraw @a[tag=ByOKP-7] {"text":"§aSuccessfully purchased the sight!"}
scoreboard players tag @a[tag=ByOKP-7] add OKP-7
scoreboard players remove @a[tag=ByOKP-7] note 500
scoreboard players tag @a[tag=ByOKP-7] remove ByOKP-7

scoreboard players set @a[score_S-SightP_min=5,score_S-SightP=5,tag=OKP-7] S-Sight 2
tellraw @a[score_S-SightP_min=5,score_S-SightP=5,tag=OKP-7] {"text":"§5Sight switch succeeded!"}

execute @a[score_S-SightP_min=6,score_S-SightP=6,tag=!InGame] ~ ~ ~ scoreboard players tag @s[score_note_min=700,tag=!8-18] add By8-18
tellraw @a[tag=By8-18] {"text":"§aSuccessfully purchased the sight!"}
scoreboard players tag @a[tag=By8-18] add 8-18
scoreboard players remove @a[tag=By8-18] note 700
scoreboard players tag @a[tag=By8-18] remove By8-18

scoreboard players set @a[score_S-SightP_min=7,score_S-SightP=7,tag=8-18] S-Sight 3
tellraw @a[score_S-SightP_min=7,score_S-SightP=7,tag=8-18] {"text":"§5Sight switch succeeded!"}

execute @a[score_S-SightP_min=8,score_S-SightP=8,tag=!InGame] ~ ~ ~ scoreboard players tag @s[score_note_min=700,tag=!KobraGen-3] add ByKobraGen-3
tellraw @a[tag=ByKobraGen-3] {"text":"§aSuccessfully purchased the sight!"}
scoreboard players tag @a[tag=ByKobraGen-3] add KobraGen-3
scoreboard players remove @a[tag=ByKobraGen-3] note 700
scoreboard players tag @a[tag=ByKobraGen-3] remove ByKobraGen-3

scoreboard players set @a[score_S-SightP_min=9,score_S-SightP=9,tag=KobraGen-3] S-Sight 4
tellraw @a[score_S-SightP_min=9,score_S-SightP=9,tag=KobraGen-3] {"text":"§5Sight switch succeeded!"}

execute @a[score_S-SightP_min=10,score_S-SightP=10,tag=!InGame] ~ ~ ~ scoreboard players tag @s[score_note_min=700,tag=!EOTech] add ByEOTech
tellraw @a[tag=ByEOTech] {"text":"§aSuccessfully purchased the sight!"}
scoreboard players tag @a[tag=ByEOTech] add EOTech
scoreboard players remove @a[tag=ByEOTech] note 700
scoreboard players tag @a[tag=ByEOTech] remove ByEOTech

scoreboard players set @a[score_S-SightP_min=11,score_S-SightP=11,tag=EOTech] S-Sight 5
tellraw @a[score_S-SightP_min=11,score_S-SightP=11,tag=EOTech] {"text":"§5Sight switch succeeded!"}

execute @a[score_S-SightP_min=12,score_S-SightP=12,tag=!InGame] ~ ~ ~ scoreboard players tag @s[score_note_min=800,tag=!Vortex] add ByVortex
tellraw @a[tag=ByVortex] {"text":"§aSuccessfully purchased the sight!"}
scoreboard players tag @a[tag=ByVortex] add Vortex
scoreboard players remove @a[tag=ByVortex] note 800
scoreboard players tag @a[tag=ByVortex] remove ByVortex

scoreboard players set @a[score_S-SightP_min=13,score_S-SightP=13,tag=Vortex] S-Sight 6
tellraw @a[score_S-SightP_min=13,score_S-SightP=13,tag=Vortex] {"text":"§5Sight switch succeeded!"}

execute @a[score_S-SightP_min=14,score_S-SightP=14,tag=!InGame] ~ ~ ~ scoreboard players tag @s[score_note_min=1000,tag=!Bijia] add ByBijia
tellraw @a[tag=ByBijia] {"text":"§aSuccessfully purchased the sight!"}
scoreboard players tag @a[tag=ByBijia] add Bijia
scoreboard players remove @a[tag=ByBijia] note 1000
scoreboard players tag @a[tag=ByBijia] remove ByBijia

scoreboard players set @a[score_S-SightP_min=15,score_S-SightP=15,tag=Bijia] S-Sight 7
tellraw @a[score_S-SightP_min=15,score_S-SightP=15,tag=Bijia] {"text":"§5Sight switch succeeded!"}

#execute @a[score_S-SightP_min=16,score_S-SightP=16,tag=!InGame] ~ ~ ~ scoreboard players tag @s[score_note_min=1000,tag=!Hybrid] add ByHybrid
#tellraw @a[tag=ByHybrid] {"text":"§aSuccessfully purchased the sight!"}
#scoreboard players tag @a[tag=ByHybrid] add Hybrid
#scoreboard players remove @a[tag=ByHybrid] note 1000
#scoreboard players tag @a[tag=ByHybrid] remove ByHybrid
#
#scoreboard players set @a[score_S-SightP_min=17,score_S-SightP=17,tag=Hybrid] S-Sight 8
#tellraw @a[score_S-SightP_min=17,score_S-SightP=17,tag=Hybrid] {"text":"§5Sight switch succeeded!"}

execute @a[score_S-SightP_min=18,score_S-SightP=18,tag=!InGame] ~ ~ ~ scoreboard players tag @s[score_note_min=1100,tag=!Specter] add BySpecter
tellraw @a[tag=BySpecter] {"text":"§aSuccessfully purchased the sight!"}
scoreboard players tag @a[tag=BySpecter] add Specter
scoreboard players remove @a[tag=BySpecter] note 1100
scoreboard players tag @a[tag=BySpecter] remove BySpecter

scoreboard players set @a[score_S-SightP_min=19,score_S-SightP=19,tag=Specter] S-Sight 9
tellraw @a[score_S-SightP_min=19,score_S-SightP=19,tag=Specter] {"text":"§5Sight switch succeeded!"}

execute @a[score_S-SightP_min=20,score_S-SightP=20,tag=!InGame] ~ ~ ~ scoreboard players tag @s[score_note_min=1200,tag=!ACOG] add ByACOG
tellraw @a[tag=ByACOG] {"text":"§aSuccessfully purchased the sight!"}
scoreboard players tag @a[tag=ByACOG] add ACOG
scoreboard players remove @a[tag=ByACOG] note 1200
scoreboard players tag @a[tag=ByACOG] remove ByACOG

scoreboard players set @a[score_S-SightP_min=21,score_S-SightP=21,tag=ACOG] S-Sight 10
tellraw @a[score_S-SightP_min=21,score_S-SightP=21,tag=ACOG] {"text":"§5Sight switch succeeded!"}

execute @a[score_S-SightP_min=22,score_S-SightP=22,tag=!InGame] ~ ~ ~ scoreboard players tag @s[score_note_min=1500,tag=!NightRaider] add ByNightRaider
tellraw @a[tag=ByNightRaider] {"text":"§aSuccessfully purchased the sight!"}
scoreboard players tag @a[tag=ByNightRaider] add NightRaider
scoreboard players remove @a[tag=ByNightRaider] note 1500
scoreboard players tag @a[tag=ByNightRaider] remove ByNightRaider

scoreboard players set @a[score_S-SightP_min=23,score_S-SightP=23,tag=NightRaider] S-Sight 11
tellraw @a[score_S-SightP_min=23,score_S-SightP=23,tag=NightRaider] {"text":"§5Sight switch succeeded!"}

scoreboard players reset @a[score_S-SightP_min=1] S-SightP







#Silencershop

scoreboard players enable @a S-SilencerP

scoreboard players set @a[score_S-SilencerP_min=1,score_S-SilencerP=1,tag=!InGame] S-Silencer 0
tellraw @a[score_S-SilencerP_min=1,score_S-SilencerP=1] {"text":"§5Silencer switch succeeded!"}

execute @a[score_S-SilencerP_min=2,score_S-SilencerP=2,tag=!InGame] ~ ~ ~ scoreboard players tag @s[score_note_min=100,tag=!7.62x54mm] add By7.62x54mm
tellraw @a[tag=By7.62x54mm] {"text":"§aSuccessfully purchased Silencer!"}
scoreboard players tag @a[tag=By7.62x54mm] add 7.62x54mm
scoreboard players remove @a[tag=By7.62x54mm] note 100
scoreboard players tag @a[tag=By7.62x54mm] remove By7.62x54mm

scoreboard players set @a[score_S-SilencerP_min=3,score_S-SilencerP=3,tag=7.62x54mm] S-Silencer 1
tellraw @a[score_S-SilencerP_min=3,score_S-SilencerP=3,tag=7.62x54mm] {"text":"§5Silencer switch succeeded!"}

execute @a[score_S-SilencerP_min=4,score_S-SilencerP=4,tag=!InGame] ~ ~ ~ scoreboard players tag @s[score_note_min=100,tag=!.50BMG] add By.50BMG
tellraw @a[tag=By.50BMG] {"text":"§aSuccessfully purchased Silencer!"}
scoreboard players tag @a[tag=By.50BMG] add .50BMG
scoreboard players remove @a[tag=By.50BMG] note 100
scoreboard players tag @a[tag=By.50BMG] remove By.50BMG

scoreboard players set @a[score_S-SilencerP_min=5,score_S-SilencerP=5,tag=.50BMG] S-Silencer 2
tellraw @a[score_S-SilencerP_min=5,score_S-SilencerP=5,tag=.50BMG] {"text":"§5Silencer switch succeeded!"}

execute @a[score_S-SilencerP_min=6,score_S-SilencerP=6,tag=!InGame] ~ ~ ~ scoreboard players tag @s[score_note_min=200,tag=!7.62x51mm] add By7.62x51mm
tellraw @a[tag=By7.62x51mm] {"text":"§aSuccessfully purchased Silencer!"}
scoreboard players tag @a[tag=By7.62x51mm] add 7.62x51mm
scoreboard players remove @a[tag=By7.62x51mm] note 200
scoreboard players tag @a[tag=By7.62x51mm] remove By7.62x51mm

scoreboard players set @a[score_S-SilencerP_min=7,score_S-SilencerP=7,tag=7.62x51mm] S-Silencer 3
tellraw @a[score_S-SilencerP_min=7,score_S-SilencerP=7,tag=7.62x51mm] {"text":"§5Silencer switch succeeded!"}

execute @a[score_S-SilencerP_min=8,score_S-SilencerP=8,tag=!InGame] ~ ~ ~ scoreboard players tag @s[score_note_min=500,tag=!12Gauge] add By12Gauge
tellraw @a[tag=By12Gauge] {"text":"§aSuccessfully purchased Silencer!"}
scoreboard players tag @a[tag=By12Gauge] add 12Gauge
scoreboard players remove @a[tag=By12Gauge] note 500
scoreboard players tag @a[tag=By12Gauge] remove By12Gauge

scoreboard players set @a[score_S-SilencerP_min=9,score_S-SilencerP=9,tag=12Gauge] S-Silencer 4
tellraw @a[score_S-SilencerP_min=9,score_S-SilencerP=9,tag=12Gauge] {"text":"§5Silencer switch succeeded!"}

execute @a[score_S-SilencerP_min=10,score_S-SilencerP=10,tag=!InGame] ~ ~ ~ scoreboard players tag @s[score_note_min=500,tag=!.45ACP] add By.45ACP
tellraw @a[tag=By.45ACP] {"text":"§aSuccessfully purchased Silencer!"}
scoreboard players tag @a[tag=By.45ACP] add .45ACP
scoreboard players remove @a[tag=By.45ACP] note 500
scoreboard players tag @a[tag=By.45ACP] remove By.45ACP

scoreboard players set @a[score_S-SilencerP_min=11,score_S-SilencerP=11,tag=.45ACP] S-Silencer 5
tellraw @a[score_S-SilencerP_min=11,score_S-SilencerP=11,tag=.45ACP] {"text":"§5Silencer switch succeeded!"}

execute @a[score_S-SilencerP_min=12,score_S-SilencerP=12,tag=!InGame] ~ ~ ~ scoreboard players tag @s[score_note_min=600,tag=!9mm] add By9mm
tellraw @a[tag=By9mm] {"text":"§aSuccessfully purchased Silencer!"}
scoreboard players tag @a[tag=By9mm] add 9mm
scoreboard players remove @a[tag=By9mm] note 600
scoreboard players tag @a[tag=By9mm] remove By9mm

scoreboard players set @a[score_S-SilencerP_min=13,score_S-SilencerP=13,tag=9mm] S-Silencer 6
tellraw @a[score_S-SilencerP_min=13,score_S-SilencerP=13,tag=9mm] {"text":"§5Silencer switch succeeded!"}

execute @a[score_S-SilencerP_min=14,score_S-SilencerP=14,tag=!InGame] ~ ~ ~ scoreboard players tag @s[score_note_min=600,tag=!5.56x45mm] add By5.56x45mm
tellraw @a[tag=By5.56x45mm] {"text":"§aSuccessfully purchased Silencer!"}
scoreboard players tag @a[tag=By5.56x45mm] add 5.56x45mm
scoreboard players remove @a[tag=By5.56x45mm] note 600
scoreboard players tag @a[tag=By5.56x45mm] remove By5.56x45mm

scoreboard players set @a[score_S-SilencerP_min=15,score_S-SilencerP=15,tag=5.56x45mm] S-Silencer 7
tellraw @a[score_S-SilencerP_min=15,score_S-SilencerP=15,tag=5.56x45mm] {"text":"§5Silencer switch succeeded!"}

scoreboard players reset @a[score_S-SilencerP_min=1] S-SilencerP


