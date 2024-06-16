#近战商店
scoreboard players enable @a 选择近战武器页面

scoreboard players set @a[score_选择近战武器页面_min=1,score_选择近战武器页面=1,tag=!游戏中] 选择的近战武器 0
tellraw @a[score_选择近战武器页面_min=1,score_选择近战武器页面=1] {"text":"§5§l近战武器切换成功"}

execute @a[score_选择近战武器页面_min=2,score_选择近战武器页面=2,tag=!游戏中] ~ ~ ~ scoreboard players tag @s[score_钞票_min=1000,tag=!Tomahawk] add 购买Tomahawk
tellraw @a[tag=购买Tomahawk] {"text":"§a§l购买近战武器成功!"}
scoreboard players tag @a[tag=购买Tomahawk] add Tomahawk
scoreboard players remove @a[tag=购买Tomahawk] 钞票 1000
scoreboard players tag @a[tag=购买Tomahawk] remove 购买Tomahawk

scoreboard players set @a[score_选择近战武器页面_min=3,score_选择近战武器页面=3,tag=Tomahawk] 选择的近战武器 1
tellraw @a[score_选择近战武器页面_min=3,score_选择近战武器页面=3,tag=Tomahawk] {"text":"§5§l近战武器切换成功"}

execute @a[score_选择近战武器页面_min=4,score_选择近战武器页面=4,tag=!游戏中] ~ ~ ~ scoreboard players tag @s[score_钞票_min=5000,tag=!BatwNails] add 购买BatwNails
tellraw @a[tag=购买BatwNails] {"text":"§a§l购买近战武器成功!"}
scoreboard players tag @a[tag=购买BatwNails] add BatwNails
scoreboard players remove @a[tag=购买BatwNails] 钞票 5000
scoreboard players tag @a[tag=购买BatwNails] remove 购买BatwNails

scoreboard players set @a[score_选择近战武器页面_min=5,score_选择近战武器页面=5,tag=BatwNails] 选择的近战武器 2
tellraw @a[score_选择近战武器页面_min=5,score_选择近战武器页面=5,tag=BatwNails] {"text":"§5§l近战武器切换成功"}

scoreboard players reset @a[score_选择近战武器页面_min=1] 选择近战武器页面

#终极武器商店
scoreboard players enable @a 选择特殊武器页面

scoreboard players set @a[score_选择特殊武器页面_min=1,score_选择特殊武器页面=1,tag=!游戏中] 选择的特殊武器 0
tellraw @a[score_选择特殊武器页面_min=1,score_选择特殊武器页面=1] {"text":"§5§l特殊武器切换成功"}

execute @a[score_选择特殊武器页面_min=2,score_选择特殊武器页面=2,tag=!游戏中] ~ ~ ~ scoreboard players tag @s[score_钞票_min=500,tag=!RPG-7] add 购买RPG-7
tellraw @a[tag=购买RPG-7] {"text":"§a§l购买特殊武器成功!"}
scoreboard players tag @a[tag=购买RPG-7] add RPG-7
scoreboard players remove @a[tag=购买RPG-7] 钞票 500
scoreboard players tag @a[tag=购买RPG-7] remove 购买RPG-7

scoreboard players set @a[score_选择特殊武器页面_min=3,score_选择特殊武器页面=3,tag=RPG-7] 选择的特殊武器 1
tellraw @a[score_选择特殊武器页面_min=3,score_选择特殊武器页面=3,tag=RPG-7] {"text":"§5§l特殊武器切换成功"}

execute @a[score_选择特殊武器页面_min=4,score_选择特殊武器页面=4,tag=!游戏中] ~ ~ ~ scoreboard players tag @s[score_钞票_min=600,tag=!PKM] add 购买PKM
tellraw @a[tag=购买PKM] {"text":"§a§l购买特殊武器成功!"}
scoreboard players tag @a[tag=购买PKM] add PKM
scoreboard players remove @a[tag=购买PKM] 钞票 600
scoreboard players tag @a[tag=购买PKM] remove 购买PKM

scoreboard players tag @a[tag=GPC-A1] add PKM
scoreboard players tag @a[tag=GPC-A1] remove GPC-A1

scoreboard players set @a[score_选择特殊武器页面_min=5,score_选择特殊武器页面=5,tag=PKM] 选择的特殊武器 2
tellraw @a[score_选择特殊武器页面_min=5,score_选择特殊武器页面=5,tag=PKM] {"text":"§5§l特殊武器切换成功"}

execute @a[score_选择特殊武器页面_min=6,score_选择特殊武器页面=6,tag=!游戏中] ~ ~ ~ scoreboard players tag @s[score_钞票_min=1000,tag=!VSS] add 购买VSS
tellraw @a[tag=购买VSS] {"text":"§a§l购买特殊武器成功!"}
scoreboard players tag @a[tag=购买VSS] add VSS
scoreboard players remove @a[tag=购买VSS] 钞票 1000
scoreboard players tag @a[tag=购买VSS] remove 购买VSS

scoreboard players set @a[score_选择特殊武器页面_min=7,score_选择特殊武器页面=7,tag=VSS] 选择的特殊武器 3
tellraw @a[score_选择特殊武器页面_min=7,score_选择特殊武器页面=7,tag=VSS] {"text":"§5§l特殊武器切换成功"}

execute @a[score_选择特殊武器页面_min=8,score_选择特殊武器页面=8,tag=!游戏中] ~ ~ ~ scoreboard players tag @s[score_钞票_min=1500,tag=!M202] add 购买M202
tellraw @a[tag=购买M202] {"text":"§a§l购买特殊武器成功!"}
scoreboard players tag @a[tag=购买M202] add M202
scoreboard players remove @a[tag=购买M202] 钞票 1500
scoreboard players tag @a[tag=购买M202] remove 购买M202

scoreboard players set @a[score_选择特殊武器页面_min=9,score_选择特殊武器页面=9,tag=M202] 选择的特殊武器 4
tellraw @a[score_选择特殊武器页面_min=9,score_选择特殊武器页面=9,tag=M202] {"text":"§5§l特殊武器切换成功"}

execute @a[score_选择特殊武器页面_min=10,score_选择特殊武器页面=10,tag=!游戏中] ~ ~ ~ scoreboard players tag @s[score_钞票_min=2000,tag=!M32MGL] add 购买M32MGL
tellraw @a[tag=购买M32MGL] {"text":"§a§l购买特殊武器成功!"}
scoreboard players tag @a[tag=购买M32MGL] add M32MGL
scoreboard players remove @a[tag=购买M32MGL] 钞票 2000
scoreboard players tag @a[tag=购买M32MGL] remove 购买M32MGL

scoreboard players set @a[score_选择特殊武器页面_min=11,score_选择特殊武器页面=11,tag=M32MGL] 选择的特殊武器 5
tellraw @a[score_选择特殊武器页面_min=11,score_选择特殊武器页面=11,tag=M32MGL] {"text":"§5§l特殊武器切换成功"}

execute @a[score_选择特殊武器页面_min=12,score_选择特殊武器页面=12,tag=!游戏中] ~ ~ ~ scoreboard players tag @s[score_钞票_min=3000,tag=!M134] add 购买M134
tellraw @a[tag=购买M134] {"text":"§a§l购买特殊武器成功!"}
scoreboard players tag @a[tag=购买M134] add M134
scoreboard players remove @a[tag=购买M134] 钞票 3000
scoreboard players tag @a[tag=购买M134] remove 购买M134

scoreboard players set @a[score_选择特殊武器页面_min=13,score_选择特殊武器页面=13,tag=M134] 选择的特殊武器 6
tellraw @a[score_选择特殊武器页面_min=13,score_选择特殊武器页面=13,tag=M134] {"text":"§5§l特殊武器切换成功"}

execute @a[score_选择特殊武器页面_min=14,score_选择特殊武器页面=14,tag=!游戏中] ~ ~ ~ scoreboard players tag @s[score_钞票_min=5000,tag=!fatman] add 购买fatman
tellraw @a[tag=购买fatman] {"text":"§a§l购买特殊武器成功!"}
scoreboard players tag @a[tag=购买fatman] add fatman
scoreboard players remove @a[tag=购买fatman] 钞票 5000
scoreboard players tag @a[tag=购买fatman] remove 购买fatman

scoreboard players set @a[score_选择特殊武器页面_min=15,score_选择特殊武器页面=15,tag=fatman] 选择的特殊武器 7
tellraw @a[score_选择特殊武器页面_min=15,score_选择特殊武器页面=15,tag=fatman] {"text":"§5§l特殊武器切换成功"}

scoreboard players reset @a[score_选择特殊武器页面_min=1] 选择特殊武器页面








#选择商店
scoreboard players enable @a 选择商店页面

scoreboard players set @a[score_选择商店页面_min=1,score_选择商店页面=1,tag=!游戏中] 选择的商店 0
tellraw @a[score_选择商店页面_min=1,score_选择商店页面=1] {"text":"§5§l商店切换成功"}

execute @a[score_选择商店页面_min=2,score_选择商店页面=2,tag=!游戏中] ~ ~ ~ scoreboard players tag @s[score_钞票_min=1000,tag=!WeaponsStone2] add 购买WeaponsStone2
tellraw @a[tag=购买WeaponsStone2] {"text":"§a§l购买成功!"}
scoreboard players tag @a[tag=购买WeaponsStone2] add WeaponsStone2
scoreboard players remove @a[tag=购买WeaponsStone2] 钞票 1000
scoreboard players tag @a[tag=购买WeaponsStone2] remove 购买WeaponsStone2

scoreboard players set @a[score_选择商店页面_min=3,score_选择商店页面=3,tag=WeaponsStone2] 选择的商店 1
tellraw @a[score_选择商店页面_min=3,score_选择商店页面=3,tag=WeaponsStone2] {"text":"§5§l商店切换成功"}

execute @a[score_选择商店页面_min=4,score_选择商店页面=4,tag=!游戏中] ~ ~ ~ scoreboard players tag @s[score_钞票_min=2000,tag=!WeaponsStone3] add 购买WeaponsStone3
tellraw @a[tag=购买WeaponsStone3] {"text":"§a§l购买成功!"}
scoreboard players tag @a[tag=购买WeaponsStone3] add WeaponsStone3
scoreboard players remove @a[tag=购买WeaponsStone3] 钞票 2000
scoreboard players tag @a[tag=购买WeaponsStone3] remove 购买WeaponsStone3

scoreboard players set @a[score_选择商店页面_min=5,score_选择商店页面=5,tag=WeaponsStone3] 选择的商店 2
tellraw @a[score_选择商店页面_min=5,score_选择商店页面=5,tag=WeaponsStone3] {"text":"§5§l商店切换成功"}

scoreboard players reset @a[score_选择商店页面_min=1] 选择商店页面

#涂装商店
scoreboard players enable @a 选择涂装页面

execute @a[score_选择涂装页面_min=1,score_选择涂装页面=1,tag=!游戏中] ~ ~ ~ scoreboard players tag @s[score_钞票_min=5000,tag=!DiamondCamo] add 购买DiamondCamo
tellraw @a[tag=购买DiamondCamo] {"text":"§a§l购买涂装成功!"}
scoreboard players tag @a[tag=购买DiamondCamo] add DiamondCamo
scoreboard players remove @a[tag=购买DiamondCamo] 钞票 5000
scoreboard players tag @a[tag=购买DiamondCamo] remove 购买DiamondCamo

scoreboard players set @a[score_选择涂装页面_min=2,score_选择涂装页面=2,tag=DiamondCamo] 选择的涂装 1
tellraw @a[score_选择涂装页面_min=2,score_选择涂装页面=2,tag=DiamondCamo] {"text":"§5§l涂装切换成功"}

execute @a[score_选择涂装页面_min=3,score_选择涂装页面=3,tag=!游戏中] ~ ~ ~ scoreboard players tag @s[score_钞票_min=4000,tag=!GoldCamo] add 购买GoldCamo
tellraw @a[tag=购买GoldCamo] {"text":"§a§l购买涂装成功!"}
scoreboard players tag @a[tag=购买GoldCamo] add GoldCamo
scoreboard players remove @a[tag=购买GoldCamo] 钞票 4000
scoreboard players tag @a[tag=购买GoldCamo] remove 购买GoldCamo

scoreboard players set @a[score_选择涂装页面_min=4,score_选择涂装页面=4,tag=GoldCamo] 选择的涂装 2
tellraw @a[score_选择涂装页面_min=4,score_选择涂装页面=4,tag=GoldCamo] {"text":"§5§l涂装切换成功"}

execute @a[score_选择涂装页面_min=5,score_选择涂装页面=5,tag=!游戏中] ~ ~ ~ scoreboard players tag @s[score_钞票_min=3000,tag=!ArcticCamo] add 购买ArcticCamo
tellraw @a[tag=购买ArcticCamo] {"text":"§a§l购买涂装成功!"}
scoreboard players tag @a[tag=购买ArcticCamo] add ArcticCamo
scoreboard players remove @a[tag=购买ArcticCamo] 钞票 3000
scoreboard players tag @a[tag=购买ArcticCamo] remove 购买ArcticCamo

scoreboard players set @a[score_选择涂装页面_min=6,score_选择涂装页面=6,tag=ArcticCamo] 选择的涂装 3
tellraw @a[score_选择涂装页面_min=6,score_选择涂装页面=6,tag=ArcticCamo] {"text":"§5§l涂装切换成功"}

execute @a[score_选择涂装页面_min=7,score_选择涂装页面=7,tag=!游戏中] ~ ~ ~ scoreboard players tag @s[score_钞票_min=3000,tag=!WoodlandCamo] add 购买WoodlandCamo
tellraw @a[tag=购买WoodlandCamo] {"text":"§a§l购买涂装成功!"}
scoreboard players tag @a[tag=购买WoodlandCamo] add WoodlandCamo
scoreboard players remove @a[tag=购买WoodlandCamo] 钞票 3000
scoreboard players tag @a[tag=购买WoodlandCamo] remove 购买WoodlandCamo

scoreboard players set @a[score_选择涂装页面_min=8,score_选择涂装页面=8,tag=DiamondCamo] 选择的涂装 4
tellraw @a[score_选择涂装页面_min=8,score_选择涂装页面=8,tag=WoodlandCamo] {"text":"§5§l涂装切换成功"}

execute @a[score_选择涂装页面_min=9,score_选择涂装页面=9,tag=!游戏中] ~ ~ ~ scoreboard players tag @s[score_钞票_min=2000,tag=!BloodForestCamo] add 购买BloodForestCamo
tellraw @a[tag=购买BloodForestCamo] {"text":"§a§l购买涂装成功!"}
scoreboard players tag @a[tag=购买BloodForestCamo] add BloodForestCamo
scoreboard players remove @a[tag=购买BloodForestCamo] 钞票 2000
scoreboard players tag @a[tag=购买BloodForestCamo] remove 购买BloodForestCamo

scoreboard players set @a[score_选择涂装页面_min=10,score_选择涂装页面=10,tag=BloodForestCamo] 选择的涂装 5
tellraw @a[score_选择涂装页面_min=10,score_选择涂装页面=10,tag=BloodForestCamo] {"text":"§5§l涂装切换成功"}

execute @a[score_选择涂装页面_min=11,score_选择涂装页面=11,tag=!游戏中] ~ ~ ~ scoreboard players tag @s[score_钞票_min=2000,tag=!PinkCamo] add 购买PinkCamo
tellraw @a[tag=购买PinkCamo] {"text":"§a§l购买涂装成功!"}
scoreboard players tag @a[tag=购买PinkCamo] add PinkCamo
scoreboard players remove @a[tag=购买PinkCamo] 钞票 2000
scoreboard players tag @a[tag=购买PinkCamo] remove 购买PinkCamo

scoreboard players set @a[score_选择涂装页面_min=12,score_选择涂装页面=12,tag=PinkCamo] 选择的涂装 6
tellraw @a[score_选择涂装页面_min=12,score_选择涂装页面=12,tag=PinkCamo] {"text":"§5§l涂装切换成功"}

execute @a[score_选择涂装页面_min=13,score_选择涂装页面=13,tag=!游戏中] ~ ~ ~ scoreboard players tag @s[score_钞票_min=2000,tag=!BlueCamo] add 购买BlueCamo
tellraw @a[tag=购买BlueCamo] {"text":"§a§l购买涂装成功!"}
scoreboard players tag @a[tag=购买BlueCamo] add BlueCamo
scoreboard players remove @a[tag=购买BlueCamo] 钞票 2000
scoreboard players tag @a[tag=购买BlueCamo] remove 购买BlueCamo

scoreboard players set @a[score_选择涂装页面_min=14,score_选择涂装页面=14,tag=BlueCamo] 选择的涂装 7
tellraw @a[score_选择涂装页面_min=14,score_选择涂装页面=14,tag=BlueCamo] {"text":"§5§l涂装切换成功"}

execute @a[score_选择涂装页面_min=15,score_选择涂装页面=15,tag=!游戏中] ~ ~ ~ scoreboard players tag @s[score_钞票_min=100,tag=!Unit01Camo] add 购买Unit01Camo
tellraw @a[tag=购买Unit01Camo] {"text":"§a§l购买涂装成功!"}
scoreboard players tag @a[tag=购买Unit01Camo] add Unit01Camo
scoreboard players remove @a[tag=购买Unit01Camo] 钞票 100
scoreboard players tag @a[tag=购买Unit01Camo] remove 购买Unit01Camo

scoreboard players set @a[score_选择涂装页面_min=16,score_选择涂装页面=16,tag=Unit01Camo] 选择的涂装 8
tellraw @a[score_选择涂装页面_min=16,score_选择涂装页面=16,tag=Unit01Camo] {"text":"§5§l涂装切换成功"}

scoreboard players set @a[score_选择涂装页面_min=21,score_选择涂装页面=21] 选择的涂装 0
tellraw @a[score_选择涂装页面_min=21,score_选择涂装页面=21] {"text":"§b§l涂装已取消使用"}
scoreboard players reset @a[score_选择涂装页面_min=1] 选择涂装页面



#瞄具商店

scoreboard players enable @a 选择瞄具页面

scoreboard players set @a[score_选择瞄具页面_min=1,score_选择瞄具页面=1,tag=!游戏中] 选择的瞄具 0
tellraw @a[score_选择瞄具页面_min=1,score_选择瞄具页面=1] {"text":"§5§l瞄具切换成功"}

execute @a[score_选择瞄具页面_min=2,score_选择瞄具页面=2,tag=!游戏中] ~ ~ ~ scoreboard players tag @s[score_钞票_min=500,tag=!RMR] add 购买RMR
tellraw @a[tag=购买RMR] {"text":"§a§l购买瞄具成功!"}
scoreboard players tag @a[tag=购买RMR] add RMR
scoreboard players remove @a[tag=购买RMR] 钞票 500
scoreboard players tag @a[tag=购买RMR] remove 购买RMR

scoreboard players set @a[score_选择瞄具页面_min=3,score_选择瞄具页面=3,tag=RMR] 选择的瞄具 1
tellraw @a[score_选择瞄具页面_min=3,score_选择瞄具页面=3,tag=RMR] {"text":"§5§l瞄具切换成功"}

execute @a[score_选择瞄具页面_min=4,score_选择瞄具页面=4,tag=!游戏中] ~ ~ ~ scoreboard players tag @s[score_钞票_min=500,tag=!OKP-7] add 购买OKP-7
tellraw @a[tag=购买OKP-7] {"text":"§a§l购买瞄具成功!"}
scoreboard players tag @a[tag=购买OKP-7] add OKP-7
scoreboard players remove @a[tag=购买OKP-7] 钞票 500
scoreboard players tag @a[tag=购买OKP-7] remove 购买OKP-7

scoreboard players set @a[score_选择瞄具页面_min=5,score_选择瞄具页面=5,tag=OKP-7] 选择的瞄具 2
tellraw @a[score_选择瞄具页面_min=5,score_选择瞄具页面=5,tag=OKP-7] {"text":"§5§l瞄具切换成功"}

execute @a[score_选择瞄具页面_min=6,score_选择瞄具页面=6,tag=!游戏中] ~ ~ ~ scoreboard players tag @s[score_钞票_min=700,tag=!8-18] add 购买8-18
tellraw @a[tag=购买8-18] {"text":"§a§l购买瞄具成功!"}
scoreboard players tag @a[tag=购买8-18] add 8-18
scoreboard players remove @a[tag=购买8-18] 钞票 700
scoreboard players tag @a[tag=购买8-18] remove 购买8-18

scoreboard players set @a[score_选择瞄具页面_min=7,score_选择瞄具页面=7,tag=8-18] 选择的瞄具 3
tellraw @a[score_选择瞄具页面_min=7,score_选择瞄具页面=7,tag=8-18] {"text":"§5§l瞄具切换成功"}

execute @a[score_选择瞄具页面_min=8,score_选择瞄具页面=8,tag=!游戏中] ~ ~ ~ scoreboard players tag @s[score_钞票_min=700,tag=!KobraGen-3] add 购买KobraGen-3
tellraw @a[tag=购买KobraGen-3] {"text":"§a§l购买瞄具成功!"}
scoreboard players tag @a[tag=购买KobraGen-3] add KobraGen-3
scoreboard players remove @a[tag=购买KobraGen-3] 钞票 700
scoreboard players tag @a[tag=购买KobraGen-3] remove 购买KobraGen-3

scoreboard players set @a[score_选择瞄具页面_min=9,score_选择瞄具页面=9,tag=KobraGen-3] 选择的瞄具 4
tellraw @a[score_选择瞄具页面_min=9,score_选择瞄具页面=9,tag=KobraGen-3] {"text":"§5§l瞄具切换成功"}

execute @a[score_选择瞄具页面_min=10,score_选择瞄具页面=10,tag=!游戏中] ~ ~ ~ scoreboard players tag @s[score_钞票_min=700,tag=!EOTech] add 购买EOTech
tellraw @a[tag=购买EOTech] {"text":"§a§l购买瞄具成功!"}
scoreboard players tag @a[tag=购买EOTech] add EOTech
scoreboard players remove @a[tag=购买EOTech] 钞票 700
scoreboard players tag @a[tag=购买EOTech] remove 购买EOTech

scoreboard players set @a[score_选择瞄具页面_min=11,score_选择瞄具页面=11,tag=EOTech] 选择的瞄具 5
tellraw @a[score_选择瞄具页面_min=11,score_选择瞄具页面=11,tag=EOTech] {"text":"§5§l瞄具切换成功"}

execute @a[score_选择瞄具页面_min=12,score_选择瞄具页面=12,tag=!游戏中] ~ ~ ~ scoreboard players tag @s[score_钞票_min=800,tag=!Vortex] add 购买Vortex
tellraw @a[tag=购买Vortex] {"text":"§a§l购买瞄具成功!"}
scoreboard players tag @a[tag=购买Vortex] add Vortex
scoreboard players remove @a[tag=购买Vortex] 钞票 800
scoreboard players tag @a[tag=购买Vortex] remove 购买Vortex

scoreboard players set @a[score_选择瞄具页面_min=13,score_选择瞄具页面=13,tag=Vortex] 选择的瞄具 6
tellraw @a[score_选择瞄具页面_min=13,score_选择瞄具页面=13,tag=Vortex] {"text":"§5§l瞄具切换成功"}

execute @a[score_选择瞄具页面_min=14,score_选择瞄具页面=14,tag=!游戏中] ~ ~ ~ scoreboard players tag @s[score_钞票_min=1000,tag=!Bijia] add 购买Bijia
tellraw @a[tag=购买Bijia] {"text":"§a§l购买瞄具成功!"}
scoreboard players tag @a[tag=购买Bijia] add Bijia
scoreboard players remove @a[tag=购买Bijia] 钞票 1000
scoreboard players tag @a[tag=购买Bijia] remove 购买Bijia

scoreboard players set @a[score_选择瞄具页面_min=15,score_选择瞄具页面=15,tag=Bijia] 选择的瞄具 7
tellraw @a[score_选择瞄具页面_min=15,score_选择瞄具页面=15,tag=Bijia] {"text":"§5§l瞄具切换成功"}

#execute @a[score_选择瞄具页面_min=16,score_选择瞄具页面=16,tag=!游戏中] ~ ~ ~ scoreboard players tag @s[score_钞票_min=1000,tag=!Hybrid] add 购买Hybrid
#tellraw @a[tag=购买Hybrid] {"text":"§a§l购买瞄具成功!"}
#scoreboard players tag @a[tag=购买Hybrid] add Hybrid
#scoreboard players remove @a[tag=购买Hybrid] 钞票 1000
#scoreboard players tag @a[tag=购买Hybrid] remove 购买Hybrid
#
#scoreboard players set @a[score_选择瞄具页面_min=17,score_选择瞄具页面=17,tag=Hybrid] 选择的瞄具 8
#tellraw @a[score_选择瞄具页面_min=17,score_选择瞄具页面=17,tag=Hybrid] {"text":"§5§l瞄具切换成功"}

execute @a[score_选择瞄具页面_min=18,score_选择瞄具页面=18,tag=!游戏中] ~ ~ ~ scoreboard players tag @s[score_钞票_min=1100,tag=!Specter] add 购买Specter
tellraw @a[tag=购买Specter] {"text":"§a§l购买瞄具成功!"}
scoreboard players tag @a[tag=购买Specter] add Specter
scoreboard players remove @a[tag=购买Specter] 钞票 1100
scoreboard players tag @a[tag=购买Specter] remove 购买Specter

scoreboard players set @a[score_选择瞄具页面_min=19,score_选择瞄具页面=19,tag=Specter] 选择的瞄具 9
tellraw @a[score_选择瞄具页面_min=19,score_选择瞄具页面=19,tag=Specter] {"text":"§5§l瞄具切换成功"}

execute @a[score_选择瞄具页面_min=20,score_选择瞄具页面=20,tag=!游戏中] ~ ~ ~ scoreboard players tag @s[score_钞票_min=1200,tag=!ACOG] add 购买ACOG
tellraw @a[tag=购买ACOG] {"text":"§a§l购买瞄具成功!"}
scoreboard players tag @a[tag=购买ACOG] add ACOG
scoreboard players remove @a[tag=购买ACOG] 钞票 1200
scoreboard players tag @a[tag=购买ACOG] remove 购买ACOG

scoreboard players set @a[score_选择瞄具页面_min=21,score_选择瞄具页面=21,tag=ACOG] 选择的瞄具 10
tellraw @a[score_选择瞄具页面_min=21,score_选择瞄具页面=21,tag=ACOG] {"text":"§5§l瞄具切换成功"}

execute @a[score_选择瞄具页面_min=22,score_选择瞄具页面=22,tag=!游戏中] ~ ~ ~ scoreboard players tag @s[score_钞票_min=1500,tag=!NightRaider] add 购买NightRaider
tellraw @a[tag=购买NightRaider] {"text":"§a§l购买瞄具成功!"}
scoreboard players tag @a[tag=购买NightRaider] add NightRaider
scoreboard players remove @a[tag=购买NightRaider] 钞票 1500
scoreboard players tag @a[tag=购买NightRaider] remove 购买NightRaider

scoreboard players set @a[score_选择瞄具页面_min=23,score_选择瞄具页面=23,tag=NightRaider] 选择的瞄具 11
tellraw @a[score_选择瞄具页面_min=23,score_选择瞄具页面=23,tag=NightRaider] {"text":"§5§l瞄具切换成功"}

scoreboard players reset @a[score_选择瞄具页面_min=1] 选择瞄具页面







#消音器商店

scoreboard players enable @a 选择消音器页面

scoreboard players set @a[score_选择消音器页面_min=1,score_选择消音器页面=1,tag=!游戏中] 选择的消音器 0
tellraw @a[score_选择消音器页面_min=1,score_选择消音器页面=1] {"text":"§5§l消音器切换成功"}

execute @a[score_选择消音器页面_min=2,score_选择消音器页面=2,tag=!游戏中] ~ ~ ~ scoreboard players tag @s[score_钞票_min=100,tag=!7.62x54mm] add 购买7.62x54mm
tellraw @a[tag=购买7.62x54mm] {"text":"§a§l购买消音器成功!"}
scoreboard players tag @a[tag=购买7.62x54mm] add 7.62x54mm
scoreboard players remove @a[tag=购买7.62x54mm] 钞票 100
scoreboard players tag @a[tag=购买7.62x54mm] remove 购买7.62x54mm

scoreboard players set @a[score_选择消音器页面_min=3,score_选择消音器页面=3,tag=7.62x54mm] 选择的消音器 1
tellraw @a[score_选择消音器页面_min=3,score_选择消音器页面=3,tag=7.62x54mm] {"text":"§5§l消音器切换成功"}

execute @a[score_选择消音器页面_min=4,score_选择消音器页面=4,tag=!游戏中] ~ ~ ~ scoreboard players tag @s[score_钞票_min=100,tag=!.50BMG] add 购买.50BMG
tellraw @a[tag=购买.50BMG] {"text":"§a§l购买消音器成功!"}
scoreboard players tag @a[tag=购买.50BMG] add .50BMG
scoreboard players remove @a[tag=购买.50BMG] 钞票 100
scoreboard players tag @a[tag=购买.50BMG] remove 购买.50BMG

scoreboard players set @a[score_选择消音器页面_min=5,score_选择消音器页面=5,tag=.50BMG] 选择的消音器 2
tellraw @a[score_选择消音器页面_min=5,score_选择消音器页面=5,tag=.50BMG] {"text":"§5§l消音器切换成功"}

execute @a[score_选择消音器页面_min=6,score_选择消音器页面=6,tag=!游戏中] ~ ~ ~ scoreboard players tag @s[score_钞票_min=200,tag=!7.62x51mm] add 购买7.62x51mm
tellraw @a[tag=购买7.62x51mm] {"text":"§a§l购买消音器成功!"}
scoreboard players tag @a[tag=购买7.62x51mm] add 7.62x51mm
scoreboard players remove @a[tag=购买7.62x51mm] 钞票 200
scoreboard players tag @a[tag=购买7.62x51mm] remove 购买7.62x51mm

scoreboard players set @a[score_选择消音器页面_min=7,score_选择消音器页面=7,tag=7.62x51mm] 选择的消音器 3
tellraw @a[score_选择消音器页面_min=7,score_选择消音器页面=7,tag=7.62x51mm] {"text":"§5§l消音器切换成功"}

execute @a[score_选择消音器页面_min=8,score_选择消音器页面=8,tag=!游戏中] ~ ~ ~ scoreboard players tag @s[score_钞票_min=500,tag=!12Gauge] add 购买12Gauge
tellraw @a[tag=购买12Gauge] {"text":"§a§l购买消音器成功!"}
scoreboard players tag @a[tag=购买12Gauge] add 12Gauge
scoreboard players remove @a[tag=购买12Gauge] 钞票 500
scoreboard players tag @a[tag=购买12Gauge] remove 购买12Gauge

scoreboard players set @a[score_选择消音器页面_min=9,score_选择消音器页面=9,tag=12Gauge] 选择的消音器 4
tellraw @a[score_选择消音器页面_min=9,score_选择消音器页面=9,tag=12Gauge] {"text":"§5§l消音器切换成功"}

execute @a[score_选择消音器页面_min=10,score_选择消音器页面=10,tag=!游戏中] ~ ~ ~ scoreboard players tag @s[score_钞票_min=500,tag=!.45ACP] add 购买.45ACP
tellraw @a[tag=购买.45ACP] {"text":"§a§l购买消音器成功!"}
scoreboard players tag @a[tag=购买.45ACP] add .45ACP
scoreboard players remove @a[tag=购买.45ACP] 钞票 500
scoreboard players tag @a[tag=购买.45ACP] remove 购买.45ACP

scoreboard players set @a[score_选择消音器页面_min=11,score_选择消音器页面=11,tag=.45ACP] 选择的消音器 5
tellraw @a[score_选择消音器页面_min=11,score_选择消音器页面=11,tag=.45ACP] {"text":"§5§l消音器切换成功"}

execute @a[score_选择消音器页面_min=12,score_选择消音器页面=12,tag=!游戏中] ~ ~ ~ scoreboard players tag @s[score_钞票_min=600,tag=!9mm] add 购买9mm
tellraw @a[tag=购买9mm] {"text":"§a§l购买消音器成功!"}
scoreboard players tag @a[tag=购买9mm] add 9mm
scoreboard players remove @a[tag=购买9mm] 钞票 600
scoreboard players tag @a[tag=购买9mm] remove 购买9mm

scoreboard players set @a[score_选择消音器页面_min=13,score_选择消音器页面=13,tag=9mm] 选择的消音器 6
tellraw @a[score_选择消音器页面_min=13,score_选择消音器页面=13,tag=9mm] {"text":"§5§l消音器切换成功"}

execute @a[score_选择消音器页面_min=14,score_选择消音器页面=14,tag=!游戏中] ~ ~ ~ scoreboard players tag @s[score_钞票_min=600,tag=!5.56x45mm] add 购买5.56x45mm
tellraw @a[tag=购买5.56x45mm] {"text":"§a§l购买消音器成功!"}
scoreboard players tag @a[tag=购买5.56x45mm] add 5.56x45mm
scoreboard players remove @a[tag=购买5.56x45mm] 钞票 600
scoreboard players tag @a[tag=购买5.56x45mm] remove 购买5.56x45mm

scoreboard players set @a[score_选择消音器页面_min=15,score_选择消音器页面=15,tag=5.56x45mm] 选择的消音器 7
tellraw @a[score_选择消音器页面_min=15,score_选择消音器页面=15,tag=5.56x45mm] {"text":"§5§l消音器切换成功"}

scoreboard players reset @a[score_选择消音器页面_min=1] 选择消音器页面


