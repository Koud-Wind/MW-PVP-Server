
scoreboard players enable @a[score_PVE-map_min=1] 配件页面
scoreboard players tag @a[score_配件页面_min=1,score_配件页面=1,score_PVE-map_min=1,score_爆破-金钱_min=1] add 购买瞄准器
scoreboard players tag @a[score_配件页面_min=2,score_配件页面=2,score_PVE-map_min=1,score_爆破-金钱_min=2] add 购买握把
scoreboard players tag @a[score_配件页面_min=3,score_配件页面=3,score_PVE-map_min=1,score_爆破-金钱_min=2] add 购买消音器
scoreboard players tag @a[score_配件页面_min=4,score_配件页面=4,score_PVE-map_min=1,score_爆破-金钱_min=2] add 购买激光
function vmwp:商店/武器商店 if @a[score_PVE-map_min=1,score_配件页面_min=1]

scoreboard players enable @a[score_PVE-map_min=1] 投掷物页面
tellraw @a[score_投掷物页面_min=1,score_PVE-map_min=1] [{"text":"§c此模式不支持购买投掷物"}]
scoreboard players reset @a[score_投掷物页面_min=1,score_PVE-map_min=1] 投掷物页面

scoreboard players enable @a[score_PVE-map_min=1] 突击步枪页面
scoreboard players tag @a[score_突击步枪页面_min=1,score_突击步枪页面=1,score_PVE-map_min=1,score_爆破-金钱_min=20,score_选择的商店=0] add 购买AR-15
scoreboard players tag @a[score_突击步枪页面_min=2,score_突击步枪页面=2,score_PVE-map_min=1,score_爆破-金钱_min=18,score_选择的商店=0] add 购买M4A1
scoreboard players tag @a[score_突击步枪页面_min=3,score_突击步枪页面=3,score_PVE-map_min=1,score_爆破-金钱_min=18,score_选择的商店=0] add 购买SIGMCX
scoreboard players tag @a[score_突击步枪页面_min=4,score_突击步枪页面=4,score_PVE-map_min=1,score_爆破-金钱_min=18,score_选择的商店=0] add 购买AUG
scoreboard players tag @a[score_突击步枪页面_min=5,score_突击步枪页面=5,score_PVE-map_min=1,score_爆破-金钱_min=18,score_选择的商店=0] add 购买HKG36C
scoreboard players tag @a[score_突击步枪页面_min=6,score_突击步枪页面=6,score_PVE-map_min=1,score_爆破-金钱_min=16,score_选择的商店=0] add 购买AK-12
scoreboard players tag @a[score_突击步枪页面_min=7,score_突击步枪页面=7,score_PVE-map_min=1,score_爆破-金钱_min=16,score_选择的商店=0] add 购买AK-47
scoreboard players tag @a[score_突击步枪页面_min=8,score_突击步枪页面=8,score_PVE-map_min=1,score_爆破-金钱_min=15,score_选择的商店=0] add 购买9A-91
scoreboard players tag @a[score_突击步枪页面_min=9,score_突击步枪页面=9,score_PVE-map_min=1,score_爆破-金钱_min=20,score_选择的商店=1,score_选择的商店_min=1] add 购买Scar-H
scoreboard players tag @a[score_突击步枪页面_min=11,score_突击步枪页面=11,score_PVE-map_min=1,score_爆破-金钱_min=18,score_选择的商店=1,score_选择的商店_min=1] add 购买M16A1
scoreboard players tag @a[score_突击步枪页面_min=12,score_突击步枪页面=12,score_PVE-map_min=1,score_爆破-金钱_min=18,score_选择的商店=1,score_选择的商店_min=1] add 购买HK416
scoreboard players tag @a[score_突击步枪页面_min=13,score_突击步枪页面=13,score_PVE-map_min=1,score_爆破-金钱_min=17,score_选择的商店=1,score_选择的商店_min=1] add 购买M16A4
scoreboard players tag @a[score_突击步枪页面_min=10,score_突击步枪页面=10,score_PVE-map_min=1,score_爆破-金钱_min=18,score_选择的商店=1,score_选择的商店_min=1] add 购买FamasF1
scoreboard players tag @a[score_突击步枪页面_min=14,score_突击步枪页面=14,score_PVE-map_min=1,score_爆破-金钱_min=17,score_选择的商店=1,score_选择的商店_min=1] add 购买AK-15
scoreboard players tag @a[score_突击步枪页面_min=15,score_突击步枪页面=15,score_PVE-map_min=1,score_爆破-金钱_min=15,score_选择的商店=1,score_选择的商店_min=1] add 购买ACR
scoreboard players tag @a[score_突击步枪页面_min=16,score_突击步枪页面=16,score_PVE-map_min=1,score_爆破-金钱_min=15,score_选择的商店=1,score_选择的商店_min=1] add 购买Scar-L
scoreboard players tag @a[score_突击步枪页面_min=17,score_突击步枪页面=17,score_PVE-map_min=1,score_爆破-金钱_min=15,score_选择的商店=2,score_选择的商店_min=2] add 购买AK-101
scoreboard players tag @a[score_突击步枪页面_min=18,score_突击步枪页面=18,score_PVE-map_min=1,score_爆破-金钱_min=18,score_选择的商店=2,score_选择的商店_min=2] add 购买CZ-805
scoreboard players tag @a[score_突击步枪页面_min=19,score_突击步枪页面=19,score_PVE-map_min=1,score_爆破-金钱_min=18,score_选择的商店=2,score_选择的商店_min=2] add 购买ARX-160
scoreboard players tag @a[score_突击步枪页面_min=20,score_突击步枪页面=20,score_PVE-map_min=1,score_爆破-金钱_min=18,score_选择的商店=2,score_选择的商店_min=2] add 购买HKG11
scoreboard players tag @a[score_突击步枪页面_min=21,score_突击步枪页面=21,score_PVE-map_min=1,score_爆破-金钱_min=17,score_选择的商店=2,score_选择的商店_min=2] add 购买K2C1
scoreboard players tag @a[score_突击步枪页面_min=22,score_突击步枪页面=22,score_PVE-map_min=1,score_爆破-金钱_min=17,score_选择的商店=2,score_选择的商店_min=2] add 购买Malyuk
scoreboard players tag @a[score_突击步枪页面_min=24,score_突击步枪页面=24,score_PVE-map_min=1,score_爆破-金钱_min=16,score_选择的商店=2,score_选择的商店_min=2] add 购买NGSW-R
scoreboard players tag @a[score_突击步枪页面_min=25,score_突击步枪页面=25,score_PVE-map_min=1,score_爆破-金钱_min=18,score_选择的商店=0] add 购买SIG-556
scoreboard players tag @a[score_突击步枪页面_min=26,score_突击步枪页面=26,score_PVE-map_min=1,score_爆破-金钱_min=14,score_选择的商店=1,score_选择的商店_min=1] add 购买AK-74
scoreboard players tag @a[score_突击步枪页面_min=27,score_突击步枪页面=27,score_PVE-map_min=1,score_爆破-金钱_min=15,score_选择的商店=2,score_选择的商店_min=2] add 购买Type-20
scoreboard players tag @a[score_突击步枪页面_min=28,score_突击步枪页面=28,score_PVE-map_min=1,score_爆破-金钱_min=20,score_选择的商店=2,score_选择的商店_min=2] add 购买HoneyBadger
scoreboard players tag @a[score_突击步枪页面_min=29,score_突击步枪页面=29,score_PVE-map_min=1,score_爆破-金钱_min=19,score_选择的商店=0] add 购买F2000
function vmwp:商店/武器商店 if @a[score_PVE-map_min=1,score_突击步枪页面_min=1]

scoreboard players enable @a[score_PVE-map_min=1] 狙击枪&射手步枪页面
scoreboard players tag @a[score_狙击枪&射手步枪页面_min=1,score_狙击枪&射手步枪页面=1,score_PVE-map_min=1,score_爆破-金钱_min=33,score_选择的商店=1,score_选择的商店_min=1] add 购买M200
scoreboard players tag @a[score_狙击枪&射手步枪页面_min=2,score_狙击枪&射手步枪页面=2,score_PVE-map_min=1,score_爆破-金钱_min=28,score_选择的商店=0] add 购买DSR1
scoreboard players tag @a[score_狙击枪&射手步枪页面_min=3,score_狙击枪&射手步枪页面=3,score_PVE-map_min=1,score_爆破-金钱_min=27,score_选择的商店=0] add 购买M40A6
scoreboard players tag @a[score_狙击枪&射手步枪页面_min=4,score_狙击枪&射手步枪页面=4,score_PVE-map_min=1,score_爆破-金钱_min=24,score_选择的商店=0] add 购买M14DMR
scoreboard players tag @a[score_狙击枪&射手步枪页面_min=5,score_狙击枪&射手步枪页面=5,score_PVE-map_min=1,score_爆破-金钱_min=18,score_选择的商店=0] add 购买AR-10
scoreboard players tag @a[score_狙击枪&射手步枪页面_min=6,score_狙击枪&射手步枪页面=6,score_PVE-map_min=1,score_爆破-金钱_min=17,score_选择的商店=0] add 购买M110
scoreboard players tag @a[score_狙击枪&射手步枪页面_min=7,score_狙击枪&射手步枪页面=7,score_PVE-map_min=1,score_爆破-金钱_min=35,score_选择的商店=1,score_选择的商店_min=1] add 购买M82Barrett
scoreboard players tag @a[score_狙击枪&射手步枪页面_min=8,score_狙击枪&射手步枪页面=8,score_PVE-map_min=1,score_爆破-金钱_min=28,score_选择的商店=1,score_选择的商店_min=1] add 购买SV-98
scoreboard players tag @a[score_狙击枪&射手步枪页面_min=9,score_狙击枪&射手步枪页面=9,score_PVE-map_min=1,score_爆破-金钱_min=24,score_选择的商店=1,score_选择的商店_min=1] add 购买FNFAL
scoreboard players tag @a[score_狙击枪&射手步枪页面_min=10,score_狙击枪&射手步枪页面=10,score_PVE-map_min=1,score_爆破-金钱_min=23,score_选择的商店=1,score_选择的商店_min=1] add 购买G3
scoreboard players tag @a[score_狙击枪&射手步枪页面_min=11,score_狙击枪&射手步枪页面=11,score_PVE-map_min=1,score_爆破-金钱_min=17,score_选择的商店=1,score_选择的商店_min=1] add 购买Beowulf
scoreboard players tag @a[score_狙击枪&射手步枪页面_min=12,score_狙击枪&射手步枪页面=12,score_PVE-map_min=1,score_爆破-金钱_min=35,score_选择的商店=2,score_选择的商店_min=2] add 购买AS50
scoreboard players tag @a[score_狙击枪&射手步枪页面_min=13,score_狙击枪&射手步枪页面=13,score_PVE-map_min=1,score_爆破-金钱_min=28,score_选择的商店=2,score_选择的商店_min=2] add 购买L96A1
scoreboard players tag @a[score_狙击枪&射手步枪页面_min=14,score_狙击枪&射手步枪页面=14,score_PVE-map_min=1,score_爆破-金钱_min=25,score_选择的商店=2,score_选择的商店_min=2] add 购买Remington-700
scoreboard players tag @a[score_狙击枪&射手步枪页面_min=15,score_狙击枪&射手步枪页面=15,score_PVE-map_min=1,score_爆破-金钱_min=24,score_选择的商店=2,score_选择的商店_min=2] add 购买HK417
scoreboard players tag @a[score_狙击枪&射手步枪页面_min=16,score_狙击枪&射手步枪页面=16,score_PVE-map_min=1,score_爆破-金钱_min=17,score_选择的商店=2,score_选择的商店_min=2] add 购买Z10
scoreboard players tag @a[score_狙击枪&射手步枪页面_min=17,score_狙击枪&射手步枪页面=17,score_PVE-map_min=1,score_爆破-金钱_min=32,score_选择的商店=0] add 购买PGMHecate
scoreboard players tag @a[score_狙击枪&射手步枪页面_min=18,score_狙击枪&射手步枪页面=18,score_PVE-map_min=1,score_爆破-金钱_min=34,score_选择的商店=0] add 购买SVD
scoreboard players tag @a[score_狙击枪&射手步枪页面_min=19,score_狙击枪&射手步枪页面=19,score_PVE-map_min=1,score_爆破-金钱_min=34,score_选择的商店=2,score_选择的商店_min=2] add 购买SSG-08
scoreboard players tag @a[score_狙击枪&射手步枪页面_min=20,score_狙击枪&射手步枪页面=20,score_PVE-map_min=1,score_爆破-金钱_min=30,score_选择的商店=1,score_选择的商店_min=1] add 购买AX50
function vmwp:商店/武器商店 if @a[score_PVE-map_min=1,score_狙击枪&射手步枪页面_min=1]

scoreboard players enable @a[score_PVE-map_min=1] 冲锋枪页面
scoreboard players tag @a[score_冲锋枪页面_min=1,score_冲锋枪页面=1,score_PVE-map_min=1,score_爆破-金钱_min=17,score_选择的商店=0] add 购买FMG-9
scoreboard players tag @a[score_冲锋枪页面_min=2,score_冲锋枪页面=2,score_PVE-map_min=1,score_爆破-金钱_min=17,score_选择的商店=0] add 购买KrissVector
scoreboard players tag @a[score_冲锋枪页面_min=3,score_冲锋枪页面=3,score_PVE-map_min=1,score_爆破-金钱_min=16,score_选择的商店=0] add 购买MAC-10
scoreboard players tag @a[score_冲锋枪页面_min=4,score_冲锋枪页面=4,score_PVE-map_min=1,score_爆破-金钱_min=14,score_选择的商店=0] add 购买HKMP5
scoreboard players tag @a[score_冲锋枪页面_min=5,score_冲锋枪页面=5,score_PVE-map_min=1,score_爆破-金钱_min=13,score_选择的商店=0] add 购买UMP45
scoreboard players tag @a[score_冲锋枪页面_min=6,score_冲锋枪页面=6,score_PVE-map_min=1,score_爆破-金钱_min=18,score_选择的商店=1,score_选择的商店_min=1] add 购买HKMP7
scoreboard players tag @a[score_冲锋枪页面_min=7,score_冲锋枪页面=7,score_PVE-map_min=1,score_爆破-金钱_min=17,score_选择的商店=1,score_选择的商店_min=1] add 购买EVO3A1
scoreboard players tag @a[score_冲锋枪页面_min=8,score_冲锋枪页面=8,score_PVE-map_min=1,score_爆破-金钱_min=16,score_选择的商店=1,score_选择的商店_min=1] add 购买APC9
scoreboard players tag @a[score_冲锋枪页面_min=9,score_冲锋枪页面=9,score_PVE-map_min=1,score_爆破-金钱_min=10,score_选择的商店=1,score_选择的商店_min=1] add 购买PP-91
scoreboard players tag @a[score_冲锋枪页面_min=10,score_冲锋枪页面=10,score_PVE-map_min=1,score_爆破-金钱_min=18,score_选择的商店=2,score_选择的商店_min=2] add 购买FNP90
scoreboard players tag @a[score_冲锋枪页面_min=11,score_冲锋枪页面=11,score_PVE-map_min=1,score_爆破-金钱_min=17,score_选择的商店=2,score_选择的商店_min=2] add 购买S7-10Tricun
scoreboard players tag @a[score_冲锋枪页面_min=12,score_冲锋枪页面=12,score_PVE-map_min=1,score_爆破-金钱_min=16,score_选择的商店=2,score_选择的商店_min=2] add 购买SIGMPX
scoreboard players tag @a[score_冲锋枪页面_min=13,score_冲锋枪页面=13,score_PVE-map_min=1,score_爆破-金钱_min=14,score_选择的商店=2,score_选择的商店_min=2] add 购买Uzi
scoreboard players tag @a[score_冲锋枪页面_min=14,score_冲锋枪页面=14,score_PVE-map_min=1,score_爆破-金钱_min=14,score_选择的商店=2,score_选择的商店_min=2] add 购买PP19
function vmwp:商店/武器商店 if @a[score_PVE-map_min=1,score_冲锋枪页面_min=1]

scoreboard players enable @a[score_PVE-map_min=1] 霰弹枪页面
scoreboard players tag @a[score_霰弹枪页面_min=1,score_霰弹枪页面=1,score_PVE-map_min=1,score_爆破-金钱_min=25,score_选择的商店=0] add 购买M1014
#scoreboard players tag @a[score_霰弹枪页面_min=2,score_霰弹枪页面=2,score_PVE-map_min=1,score_爆破-金钱_min=19,score_选择的商店=0] add 购买KS-23
scoreboard players tag @a[score_霰弹枪页面_min=3,score_霰弹枪页面=3,score_PVE-map_min=1,score_爆破-金钱_min=14,score_选择的商店=0] add 购买Remington-870
scoreboard players tag @a[score_霰弹枪页面_min=4,score_霰弹枪页面=4,score_PVE-map_min=1,score_爆破-金钱_min=25,score_选择的商店=1,score_选择的商店_min=1] add 购买Spas-12
scoreboard players tag @a[score_霰弹枪页面_min=5,score_霰弹枪页面=5,score_PVE-map_min=1,score_爆破-金钱_min=18,score_选择的商店=1,score_选择的商店_min=1] add 购买Benelli
scoreboard players tag @a[score_霰弹枪页面_min=6,score_霰弹枪页面=6,score_PVE-map_min=1,score_爆破-金钱_min=40,score_选择的商店=2,score_选择的商店_min=2] add 购买Origin-12
scoreboard players tag @a[score_霰弹枪页面_min=7,score_霰弹枪页面=7,score_PVE-map_min=1,score_爆破-金钱_min=20,score_选择的商店=2,score_选择的商店_min=2] add 购买Saiga12
scoreboard players tag @a[score_霰弹枪页面_min=8,score_霰弹枪页面=8,score_PVE-map_min=1,score_爆破-金钱_min=17,score_选择的商店=0] add 购买HS-12
function vmwp:商店/武器商店 if @a[score_PVE-map_min=1,score_霰弹枪页面_min=1]

scoreboard players enable @a[score_PVE-map_min=1] 机枪页面
scoreboard players tag @a[score_机枪页面_min=1,score_机枪页面=1,score_PVE-map_min=1,score_爆破-金钱_min=25,score_选择的商店=0] add 购买M249
scoreboard players tag @a[score_机枪页面_min=2,score_机枪页面=2,score_PVE-map_min=1,score_爆破-金钱_min=30,score_选择的商店=1,score_选择的商店_min=1] add 购买StonerA1
function vmwp:商店/武器商店 if @a[score_PVE-map_min=1,score_机枪页面_min=1]

scoreboard players enable @a[score_PVE-map_min=1] 手枪页面
scoreboard players tag @a[score_手枪页面_min=1,score_手枪页面=1,score_PVE-map_min=1,score_爆破-金钱_min=10,score_选择的商店=0] add 购买APS
scoreboard players tag @a[score_手枪页面_min=2,score_手枪页面=2,score_PVE-map_min=1,score_爆破-金钱_min=8,score_选择的商店=0] add 购买S&W.500
scoreboard players tag @a[score_手枪页面_min=3,score_手枪页面=3,score_PVE-map_min=1,score_爆破-金钱_min=8,score_选择的商店=0] add 购买MAS-21
scoreboard players tag @a[score_手枪页面_min=4,score_手枪页面=4,score_PVE-map_min=1,score_爆破-金钱_min=7,score_选择的商店=0] add 购买SIGP226
scoreboard players tag @a[score_手枪页面_min=5,score_手枪页面=5,score_PVE-map_min=1,score_爆破-金钱_min=4,score_选择的商店=0] add 购买HKP12
scoreboard players tag @a[score_手枪页面_min=6,score_手枪页面=6,score_PVE-map_min=1,score_爆破-金钱_min=0,score_选择的商店=0] add 购买Hunter
scoreboard players tag @a[score_手枪页面_min=7,score_手枪页面=7,score_PVE-map_min=1,score_爆破-金钱_min=10,score_选择的商店=1,score_选择的商店_min=1] add 购买Glock-18C
scoreboard players tag @a[score_手枪页面_min=8,score_手枪页面=8,score_PVE-map_min=1,score_爆破-金钱_min=8,score_选择的商店=1,score_选择的商店_min=1] add 购买VP-70
scoreboard players tag @a[score_手枪页面_min=9,score_手枪页面=9,score_PVE-map_min=1,score_爆破-金钱_min=7,score_选择的商店=1,score_选择的商店_min=1] add 购买M9A1
scoreboard players tag @a[score_手枪页面_min=10,score_手枪页面=10,score_PVE-map_min=1,score_爆破-金钱_min=5,score_选择的商店=1,score_选择的商店_min=1] add 购买Glock-19
scoreboard players tag @a[score_手枪页面_min=11,score_手枪页面=11,score_PVE-map_min=1,score_爆破-金钱_min=0,score_选择的商店=1,score_选择的商店_min=1] add 购买ColtPython
scoreboard players tag @a[score_手枪页面_min=12,score_手枪页面=12,score_PVE-map_min=1,score_爆破-金钱_min=10,score_选择的商店=2,score_选择的商店_min=2] add 购买DesertEagle
scoreboard players tag @a[score_手枪页面_min=13,score_手枪页面=13,score_PVE-map_min=1,score_爆破-金钱_min=8,score_选择的商店=2,score_选择的商店_min=2] add 购买MP443
scoreboard players tag @a[score_手枪页面_min=14,score_手枪页面=14,score_PVE-map_min=1,score_爆破-金钱_min=8,score_选择的商店=2,score_选择的商店_min=2] add 购买M17
scoreboard players tag @a[score_手枪页面_min=15,score_手枪页面=15,score_PVE-map_min=1,score_爆破-金钱_min=5,score_选择的商店=2,score_选择的商店_min=2] add 购买CPX-2
scoreboard players tag @a[score_手枪页面_min=16,score_手枪页面=16,score_PVE-map_min=1,score_爆破-金钱_min=0,score_选择的商店=2,score_选择的商店_min=2] add 购买Chiappa
scoreboard players tag @a[score_手枪页面_min=17,score_手枪页面=17,score_PVE-map_min=1,score_爆破-金钱_min=9,score_选择的商店=2,score_选择的商店_min=2] add 购买FN57
scoreboard players tag @a[score_手枪页面_min=18,score_手枪页面=18,score_PVE-map_min=1,score_爆破-金钱_min=8,score_选择的商店=1,score_选择的商店_min=1] add 购买M1911
function vmwp:商店/武器商店 if @a[score_PVE-map_min=1,score_手枪页面_min=1]

scoreboard players enable @a[score_PVE-map_min=1] 特殊武器页面
tellraw @a[score_特殊武器页面_min=1,score_PVE-map_min=1] [{"text":"§c请前往终极武器箱抽取终极武器"}]
scoreboard players reset @a[score_特殊武器页面_min=1,score_PVE-map_min=1] 特殊武器页面

#弹药
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=1,score_爆破-选择的主武器=1] slot.inventory.1 mwc:m4a1mag_2 6 0 {Ammo:40}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=2,score_爆破-选择的主武器=2] slot.inventory.1 mwc:m4a1mag_2 6 0 {Ammo:30}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=3,score_爆破-选择的主武器=3] slot.inventory.1 mwc:m4a1mag_2 6 0 {Ammo:30}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=4,score_爆破-选择的主武器=4] slot.inventory.1 mwc:m4a1mag_2 6 0 {Ammo:30}
#replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=4,score_爆破-选择的主武器=4] slot.inventory.3 mwc:aug9mmmag 6 0 {Ammo:30}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=5,score_爆破-选择的主武器=5] slot.inventory.1 mwc:g36cmag_2 6 0 {Ammo:30}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=6,score_爆破-选择的主武器=6] slot.inventory.1 mwc:ak12mag 6 0 {Ammo:31}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=7,score_爆破-选择的主武器=7] slot.inventory.1 mwc:ak15mag_2 6 0 {Ammo:30}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=8,score_爆破-选择的主武器=8] slot.inventory.1 mwc:kbp9a91mag_2 6 0 {Ammo:20}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=9,score_爆破-选择的主武器=9] slot.inventory.1 mwc:scar40mag 6 0 {Ammo:40}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=10,score_爆破-选择的主武器=10] slot.inventory.1 mwc:m4a1mag_2 6 0 {Ammo:30}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=11,score_爆破-选择的主武器=11] slot.inventory.1 mwc:m4a1mag_2 6 0 {Ammo:30}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=12,score_爆破-选择的主武器=12] slot.inventory.1 mwc:m4a1mag_2 6 0 {Ammo:30}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=13,score_爆破-选择的主武器=13] slot.inventory.1 mwc:famasf1mag 6 0 {Ammo:30}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=14,score_爆破-选择的主武器=14] slot.inventory.1 mwc:ak15mag_2 6 0 {Ammo:30}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=15,score_爆破-选择的主武器=15] slot.inventory.1 mwc:m4a1mag_2 6 0 {Ammo:30}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=16,score_爆破-选择的主武器=16] slot.inventory.1 mwc:m4a1mag_2 6 0 {Ammo:30}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=17,score_爆破-选择的主武器=17] slot.inventory.1 mwc:ak101mag_2 6 0 {Ammo:30}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=18,score_爆破-选择的主武器=18] slot.inventory.1 mwc:m4a1mag_2 6 0 {Ammo:30}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=19,score_爆破-选择的主武器=19] slot.inventory.1 mwc:m4a1mag_2 6 0 {Ammo:30}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=20,score_爆破-选择的主武器=20] slot.inventory.1 mwc:g11mag 6 0 {Ammo:50}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=21,score_爆破-选择的主武器=21] slot.inventory.1 mwc:m4a1mag_2 6 0 {Ammo:30}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=22,score_爆破-选择的主武器=22] slot.inventory.1 mwc:ak15mag_2 6 0 {Ammo:30}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=23,score_爆破-选择的主武器=23] slot.inventory.1 mwc:ak15mag_2 6 0 {Ammo:30}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=24,score_爆破-选择的主武器=24] slot.inventory.1 mwc:ngswr_mag 6 0 {Ammo:30}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=25,score_爆破-选择的主武器=25] slot.inventory.1 mwc:interventionmagextend 6 0 {Ammo:10}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=26,score_爆破-选择的主武器=26] slot.inventory.1 mwc:dsr1magext 6 0 {Ammo:10}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=27,score_爆破-选择的主武器=27] slot.inventory.1 mwc:m40a6mag_2 6 0 {Ammo:7}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=28,score_爆破-选择的主武器=28] slot.inventory.1 mwc:mk14ebrmag_2 6 0 {Ammo:20}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=29,score_爆破-选择的主武器=29] slot.inventory.1 mwc:m110mag_2 6 0 {Ammo:10}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=30,score_爆破-选择的主武器=30] slot.inventory.1 mwc:m110mag_2 6 0 {Ammo:10}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=31,score_爆破-选择的主武器=31] slot.inventory.1 mwc:m82mag_2 6 0 {Ammo:10}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=32,score_爆破-选择的主武器=32] slot.inventory.1 mwc:sv98mag_2 6 0 {Ammo:10}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=33,score_爆破-选择的主武器=33] slot.inventory.1 mwc:fnfalmag 6 0 {Ammo:20}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=34,score_爆破-选择的主武器=34] slot.inventory.1 mwc:g3mag 6 0 {Ammo:20}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=35,score_爆破-选择的主武器=35] slot.inventory.1 mwc:beowulfmag 6 0 {Ammo:13}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=36,score_爆破-选择的主武器=36] slot.inventory.1 mwc:as50mag_2 6 0 {Ammo:10}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=37,score_爆破-选择的主武器=37] slot.inventory.1 mwc:l96a1mag_2 6 0 {Ammo:10}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=38,score_爆破-选择的主武器=38] slot.inventory.1 mwc:r700mag 6 0 {Ammo:5}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=39,score_爆破-选择的主武器=39] slot.inventory.1 mwc:hk417_mag 6 0 {Ammo:20}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=40,score_爆破-选择的主武器=40] slot.inventory.1 mwc:z10mag 6 0 {Ammo:10}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=41,score_爆破-选择的主武器=41] slot.inventory.1 mwc:honeybadgermag_2 6 0 {Ammo:30}
#replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=42,score_爆破-选择的主武器=42] slot.inventory.3 mwc:vectormag 5 0 {Ammo:25}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=42,score_爆破-选择的主武器=42] slot.inventory.1 mwc:famasf1mag 6 0 {Ammo:30}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=43,score_爆破-选择的主武器=43] slot.inventory.1 mwc:mac10mag 6 0 {Ammo:30}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=44,score_爆破-选择的主武器=44] slot.inventory.1 mwc:mp5a5mag 6 0 {Ammo:30}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=45,score_爆破-选择的主武器=45] slot.inventory.1 mwc:ump45mag 6 0 {Ammo:25}
#replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=45,score_爆破-选择的主武器=45] slot.inventory.3 mwc:ump9mag 6 0 {Ammo:30}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=46,score_爆破-选择的主武器=46] slot.inventory.1 mwc:mp7mag 6 0 {Ammo:40}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=47,score_爆破-选择的主武器=47] slot.inventory.1 mwc:scorpionmag 6 0 {Ammo:30}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=48,score_爆破-选择的主武器=48] slot.inventory.1 mwc:apc9mag 6 0 {Ammo:30}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=49,score_爆破-选择的主武器=49] slot.inventory.1 mwc:kedrmag_2 6 0 {Ammo:20}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=50,score_爆破-选择的主武器=50] slot.inventory.1 mwc:p90mag 6 0 {Ammo:50}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=51,score_爆破-选择的主武器=51] slot.inventory.1 mwc:s710tricunmag 6 0 {Ammo:30}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=52,score_爆破-选择的主武器=52] slot.inventory.1 mwc:mpxmag 6 0 {Ammo:30}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=53,score_爆破-选择的主武器=53] slot.inventory.1 mwc:uzimag_2 6 0 {Ammo:32}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=54,score_爆破-选择的主武器=54] slot.inventory.1 mwc:shotgun12gauge 64 0
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=55,score_爆破-选择的主武器=55] slot.inventory.1 mwc:shotgun4g 64 0
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=56,score_爆破-选择的主武器=56] slot.inventory.1 mwc:shotgun12gauge 64 0
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=57,score_爆破-选择的主武器=57] slot.inventory.1 mwc:shotgun12gauge 64 0
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=58,score_爆破-选择的主武器=58] slot.inventory.1 mwc:shotgun12gauge 64 0
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=59,score_爆破-选择的主武器=59] slot.inventory.1 mwc:origin12drummag 6 0 {Ammo:20}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=60,score_爆破-选择的主武器=60] slot.inventory.1 mwc:saigamag_3 6 0 {Ammo:12}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=61,score_爆破-选择的主武器=61] slot.inventory.1 mwc:shotgun12gauge 64 0
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=62,score_爆破-选择的主武器=62] slot.inventory.1 mwc:m249mag 6 0 {Ammo:100}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=63,score_爆破-选择的主武器=63] slot.inventory.1 mwc:m60mag 6 0 {Ammo:100}

replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=65,score_爆破-选择的主武器=65] slot.inventory.1 mwc:hecateiimag 6 0 {Ammo:7}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=66,score_爆破-选择的主武器=66] slot.inventory.1 mwc:m4a1mag_2 6 0 {Ammo:30}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=67,score_爆破-选择的主武器=67] slot.inventory.1 mwc:ak12mag_2 6 0 {Ammo:30}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=68,score_爆破-选择的主武器=68] slot.inventory.1 mwc:m38mag_2 6 0 {Ammo:30}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=69,score_爆破-选择的主武器=69] slot.inventory.1 mwc:dragunovmag 6 0 {Ammo:10}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=70,score_爆破-选择的主武器=70] slot.inventory.1 mwc:ssg08mag 6 0 {Ammo:8}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=71,score_爆破-选择的主武器=71] slot.inventory.1 mwc:glockmag50 6 0 {Ammo:50}

replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=73,score_爆破-选择的主武器=73] slot.inventory.1 mwc:m4a1mag_2 6 0 {Ammo:30}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=74,score_爆破-选择的主武器=74] slot.inventory.1 mwc:ax50mag 6 0 {Ammo:5}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=75,score_爆破-选择的主武器=75] slot.inventory.1 mwc:pp1901mag 6 0 {Ammo:30}

replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=100,score_爆破-选择的主武器=100] slot.inventory.1 mwc:grenade40mm 16 0
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=101,score_爆破-选择的主武器=101] slot.inventory.1 mwc:rpg7_rocket 2 0
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=102,score_爆破-选择的主武器=102] slot.inventory.1 mwc:pkmmag 6 0 {Ammo:480}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=103,score_爆破-选择的主武器=103] slot.inventory.1 mwc:asvalmag 6 0 {Ammo:40}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=104,score_爆破-选择的主武器=104] slot.inventory.1 mwc:m202rocket 4 0
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=105,score_爆破-选择的主武器=105] slot.inventory.1 mwc:grenade40mm 16 0
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=106,score_爆破-选择的主武器=106] slot.inventory.1 mwc:m134mag 6 0 {Ammo:200}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=107,score_爆破-选择的主武器=107] slot.inventory.1 mwc:mininuke 64 0
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=108,score_爆破-选择的主武器=108] slot.inventory.1 mwc:origin12drummag 6 0 {Ammo:25}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=109,score_爆破-选择的主武器=109] slot.inventory.1 mwc:pkmmag 6 0 {Ammo:1200}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=109,score_爆破-选择的主武器=109] slot.inventory.2 mwc:m134mag 1 0 {Ammo:1000}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=110,score_爆破-选择的主武器=110] slot.inventory.1 mwc:ssg08mag 6 0 {Ammo:38}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=111,score_爆破-选择的主武器=111] slot.inventory.1 mwc:glock18cmag_2 6 0 {Ammo:1.E99}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的主武器_min=112,score_爆破-选择的主武器=112] slot.inventory.1 mwc:makarovmag 6 0 {Ammo:1.E99}

replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的副武器_min=1,score_爆破-选择的副武器=1] slot.inventory.2 mwc:apsmag_2 6 0 {Ammo:20}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的副武器_min=2,score_爆破-选择的副武器=2] slot.inventory.2 mwc:bullet500 64 0
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的副武器_min=3,score_爆破-选择的副武器=3] slot.inventory.2 mwc:m9mag_2 6 0 {Ammo:15}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的副武器_min=4,score_爆破-选择的副武器=4] slot.inventory.2 mwc:m9mag_2 6 0 {Ammo:15}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的副武器_min=5,score_爆破-选择的副武器=5] slot.inventory.2 mwc:usp45mag 6 0 {Ammo:8}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的副武器_min=6,score_爆破-选择的副武器=6] slot.inventory.2 mwc:bullet44 64 0
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的副武器_min=7,score_爆破-选择的副武器=7] slot.inventory.2 mwc:glock18cmag_2 6 0 {Ammo:20}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的副武器_min=8,score_爆破-选择的副武器=8] slot.inventory.2 mwc:vp70mag_2 6 0 {Ammo:18}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的副武器_min=9,score_爆破-选择的副武器=9] slot.inventory.2 mwc:m9mag_2 6 0 {Ammo:15}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的副武器_min=9,score_爆破-选择的副武器=9] slot.inventory.4 mwc:samuraiedgemag 6 0 {Ammo:15}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的副武器_min=10,score_爆破-选择的副武器=10] slot.inventory.2 mwc:glockmag13 6 0 {Ammo:13}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的副武器_min=11,score_爆破-选择的副武器=11] slot.inventory.2 mwc:bullet357 64 0
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的副武器_min=12,score_爆破-选择的副武器=12] slot.inventory.2 mwc:deserteaglemag 6 0 {Ammo:7}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的副武器_min=13,score_爆破-选择的副武器=13] slot.inventory.2 mwc:mp443mag_2 6 0 {Ammo:18}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的副武器_min=14,score_爆破-选择的副武器=14] slot.inventory.2 mwc:m17mag 6 0 {Ammo:17}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的副武器_min=15,score_爆破-选择的副武器=15] slot.inventory.2 mwc:sccycpx2mag 6 0 {Ammo:10}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的副武器_min=16,score_爆破-选择的副武器=16] slot.inventory.2 mwc:bullet357 64 0
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的副武器_min=17,score_爆破-选择的副武器=17] slot.inventory.2 mwc:fivesevenmag 6 0 {Ammo:20}
replaceitem entity @a[score_PVE-map_min=1,score_爆破-选择的副武器_min=18,score_爆破-选择的副武器=18] slot.inventory.2 mwc:m1911mag_2 6 0 {Ammo:15}

#涂装
replaceitem entity @a[score_选择的涂装_min=1,score_选择的涂装=1,score_PVE-map_min=1] slot.inventory.0 mwc:diamondcamo 1 0
replaceitem entity @a[score_选择的涂装_min=2,score_选择的涂装=2,score_PVE-map_min=1] slot.inventory.0 mwc:goldcamo 1 0
replaceitem entity @a[score_选择的涂装_min=3,score_选择的涂装=3,score_PVE-map_min=1] slot.inventory.0 mwc:arcticcamo 1 0
replaceitem entity @a[score_选择的涂装_min=4,score_选择的涂装=4,score_PVE-map_min=1] slot.inventory.0 mwc:woodlandcamo 1 0
replaceitem entity @a[score_选择的涂装_min=5,score_选择的涂装=5,score_PVE-map_min=1] slot.inventory.0 mwc:bloodforestcamo 1 0
replaceitem entity @a[score_选择的涂装_min=6,score_选择的涂装=6,score_PVE-map_min=1] slot.inventory.0 mwc:pinkcamo 1 0
replaceitem entity @a[score_选择的涂装_min=7,score_选择的涂装=7,score_PVE-map_min=1] slot.inventory.0 mwc:bluecamo 1 0
replaceitem entity @a[score_选择的涂装_min=8,score_选择的涂装=8,score_PVE-map_min=1] slot.inventory.0 mwc:unit01camo 1 0
