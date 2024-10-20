#给予的物品
#涂装
replaceitem entity @a[score_选择的涂装_min=1,score_选择的涂装=1,tag=涂装] slot.inventory.0 mwc:diamondcamo 1 0
replaceitem entity @a[score_选择的涂装_min=2,score_选择的涂装=2,tag=涂装] slot.inventory.0 mwc:goldcamo 1 0
replaceitem entity @a[score_选择的涂装_min=3,score_选择的涂装=3,tag=涂装] slot.inventory.0 mwc:arcticcamo 1 0
replaceitem entity @a[score_选择的涂装_min=4,score_选择的涂装=4,tag=涂装] slot.inventory.0 mwc:woodlandcamo 1 0
replaceitem entity @a[score_选择的涂装_min=5,score_选择的涂装=5,tag=涂装] slot.inventory.0 mwc:bloodforestcamo 1 0
replaceitem entity @a[score_选择的涂装_min=6,score_选择的涂装=6,tag=涂装] slot.inventory.0 mwc:pinkcamo 1 0
replaceitem entity @a[score_选择的涂装_min=7,score_选择的涂装=7,tag=涂装] slot.inventory.0 mwc:bluecamo 1 0
replaceitem entity @a[score_选择的涂装_min=8,score_选择的涂装=8,tag=涂装] slot.inventory.0 mwc:unit01camo 1 0
scoreboard players tag @a[tag=涂装] remove 涂装
#近战武器
replaceitem entity @a[score_选择的近战武器_min=1,score_选择的近战武器=1,tag=近战武器] slot.hotbar.2 mwc:tactical_tomahawk 1 0
replaceitem entity @a[score_选择的近战武器_min=2,score_选择的近战武器=2,tag=近战武器] slot.hotbar.2 mwc:baseball_bat_nails 1 0
replaceitem entity @a[score_选择的近战武器_min=0,score_选择的近战武器=0,tag=近战武器] slot.hotbar.2 mwc:baseball_bat 1 0 
replaceitem entity @a[score_选择的商店=0,tag=近战武器,score_爆破-选择的副武器=0] slot.hotbar.1 mwc:taurus_raging_hunter 1 0 {IUuidLeast:-5688055440932467152L,Ammo:6,IUuidMost:-1620633660333732644L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-23B,-126B,90B,69B,-68B,-60B,76B,-36B,-79B,15B,-9B,-74B,-116B,126B,14B,48B,0B,0B,19B,90B,0B,0B,0B,2B,0B,0B,0B,0B,0B,0B,0B,9B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,4B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,-16B,0B,0B,17B,-15B,0B,0B,17B,-14B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,0B,0B,0B,0B,6B,0B,64B,-32B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fRaging Hunter"}}
scoreboard players set @a[score_选择的商店=0,tag=近战武器,score_爆破-选择的副武器=0] 爆破-选择的副武器 6
replaceitem entity @a[score_选择的商店=1,score_选择的商店_min=1,tag=近战武器,score_爆破-选择的副武器=0] slot.hotbar.1 mwc:python 1 0 {IUuidLeast:-7610011293500917292L,Ammo:6,IUuidMost:3658739933296283149L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,50B,-58B,116B,-107B,-95B,-87B,78B,13B,-106B,99B,-49B,12B,82B,42B,-71B,-44B,0B,0B,19B,89B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,9B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,-16B,0B,0B,17B,-15B,0B,0B,17B,-17B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,0B,0B,0B,0B,6B,0B,64B,-64B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fColt Python"}}
scoreboard players set @a[score_选择的商店=1,score_选择的商店_min=1,tag=近战武器,score_爆破-选择的副武器=0] 爆破-选择的副武器 11
replaceitem entity @a[score_选择的商店=2,score_选择的商店_min=2,tag=近战武器,score_爆破-选择的副武器=0] slot.hotbar.1 mwc:chiappa_rhino 1 0 {IUuidLeast:-7496963292837938762L,Ammo:6,IUuidMost:-7816745184766767513L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-109B,-123B,87B,-85B,90B,59B,78B,103B,-105B,-11B,111B,-101B,20B,64B,121B,-74B,0B,0B,19B,91B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,7B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,-16B,0B,0B,17B,-15B,0B,0B,17B,-13B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,0B,0B,0B,0B,6B,0B,64B,-64B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fChiappa Rhino"}}
scoreboard players set @a[score_选择的商店=2,score_选择的商店_min=2,tag=近战武器,score_爆破-选择的副武器=0] 爆破-选择的副武器 16
scoreboard players tag @a[tag=近战武器] remove 近战武器
#武器弹药
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=1,score_爆破-选择的主武器=1] slot.inventory.1 mwc:m4a1mag_2 6 0 {Ammo:40}
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=2,score_爆破-选择的主武器=2] slot.inventory.1 mwc:m4a1mag_2 6 0 {Ammo:30}
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=3,score_爆破-选择的主武器=3] slot.inventory.1 mwc:m4a1mag_2 6 0 {Ammo:30}
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=4,score_爆破-选择的主武器=4] slot.inventory.1 mwc:m4a1mag_2 6 0 {Ammo:30}
#replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=4,score_爆破-选择的主武器=4] slot.inventory.3 mwc:aug9mmmag 6 0 {Ammo:30}
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=5,score_爆破-选择的主武器=5] slot.inventory.1 mwc:g36cmag_2 6 0 {Ammo:30}
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=6,score_爆破-选择的主武器=6] slot.inventory.1 mwc:ak12mag 6 0 {Ammo:31}
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=7,score_爆破-选择的主武器=7] slot.inventory.1 mwc:ak15mag_2 6 0 {Ammo:30}
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=8,score_爆破-选择的主武器=8] slot.inventory.1 mwc:kbp9a91mag_2 6 0 {Ammo:20}
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=9,score_爆破-选择的主武器=9] slot.inventory.1 mwc:scar40mag 6 0 {Ammo:40}
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=10,score_爆破-选择的主武器=10] slot.inventory.1 mwc:m4a1mag_2 6 0 {Ammo:30}
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=11,score_爆破-选择的主武器=11] slot.inventory.1 mwc:m4a1mag_2 6 0 {Ammo:30}
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=12,score_爆破-选择的主武器=12] slot.inventory.1 mwc:m4a1mag_2 6 0 {Ammo:30}
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=13,score_爆破-选择的主武器=13] slot.inventory.1 mwc:famasf1mag 6 0 {Ammo:30}
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=14,score_爆破-选择的主武器=14] slot.inventory.1 mwc:ak15mag_2 6 0 {Ammo:30}
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=15,score_爆破-选择的主武器=15] slot.inventory.1 mwc:m4a1mag_2 6 0 {Ammo:30}
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=16,score_爆破-选择的主武器=16] slot.inventory.1 mwc:m4a1mag_2 6 0 {Ammo:30}
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=17,score_爆破-选择的主武器=17] slot.inventory.1 mwc:ak101mag_2 6 0 {Ammo:30}
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=18,score_爆破-选择的主武器=18] slot.inventory.1 mwc:m4a1mag_2 6 0 {Ammo:30}
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=19,score_爆破-选择的主武器=19] slot.inventory.1 mwc:m4a1mag_2 6 0 {Ammo:30}
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=20,score_爆破-选择的主武器=20] slot.inventory.1 mwc:g11mag 6 0 {Ammo:50}
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=21,score_爆破-选择的主武器=21] slot.inventory.1 mwc:m4a1mag_2 6 0 {Ammo:30}
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=22,score_爆破-选择的主武器=22] slot.inventory.1 mwc:ak15mag_2 6 0 {Ammo:30}
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=23,score_爆破-选择的主武器=23] slot.inventory.1 mwc:ak15mag_2 6 0 {Ammo:30}
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=24,score_爆破-选择的主武器=24] slot.inventory.1 mwc:ngswr_mag 6 0 {Ammo:20}
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=25,score_爆破-选择的主武器=25] slot.inventory.1 mwc:interventionmagextend 6 0 {Ammo:10}
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=26,score_爆破-选择的主武器=26] slot.inventory.1 mwc:dsr1magext 6 0 {Ammo:10}
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=27,score_爆破-选择的主武器=27] slot.inventory.1 mwc:m40a6mag_2 6 0 {Ammo:7}
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=28,score_爆破-选择的主武器=28] slot.inventory.1 mwc:mk14ebrmag_2 6 0 {Ammo:20}
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=29,score_爆破-选择的主武器=29] slot.inventory.1 mwc:m110mag_2 6 0 {Ammo:10}
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=30,score_爆破-选择的主武器=30] slot.inventory.1 mwc:m110mag_2 6 0 {Ammo:10}
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=31,score_爆破-选择的主武器=31] slot.inventory.1 mwc:m82mag_2 6 0 {Ammo:10}
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=32,score_爆破-选择的主武器=32] slot.inventory.1 mwc:sv98mag_2 6 0 {Ammo:10}
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=33,score_爆破-选择的主武器=33] slot.inventory.1 mwc:fnfalmag 6 0 {Ammo:20}
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=34,score_爆破-选择的主武器=34] slot.inventory.1 mwc:g3mag 6 0 {Ammo:20}
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=35,score_爆破-选择的主武器=35] slot.inventory.1 mwc:beowulfmag 6 0 {Ammo:13}
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=36,score_爆破-选择的主武器=36] slot.inventory.1 mwc:as50mag_2 6 0 {Ammo:10}
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=37,score_爆破-选择的主武器=37] slot.inventory.1 mwc:l96a1mag_2 6 0 {Ammo:10}
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=38,score_爆破-选择的主武器=38] slot.inventory.1 mwc:r700mag 6 0 {Ammo:5}
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=39,score_爆破-选择的主武器=39] slot.inventory.1 mwc:hk417_mag 6 0 {Ammo:20}
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=40,score_爆破-选择的主武器=40] slot.inventory.1 mwc:z10mag 6 0 {Ammo:10}
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=41,score_爆破-选择的主武器=41] slot.inventory.1 mwc:honeybadgermag_2 6 0 {Ammo:30}
#replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=42,score_爆破-选择的主武器=42] slot.inventory.1 mwc:vectormag 5 0 {Ammo:25}
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=42,score_爆破-选择的主武器=42] slot.inventory.1 mwc:famasf1mag 6 0 {Ammo:30}
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=43,score_爆破-选择的主武器=43] slot.inventory.1 mwc:mac10mag 6 0 {Ammo:30}
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=44,score_爆破-选择的主武器=44] slot.inventory.1 mwc:mp5a5mag 6 0 {Ammo:30}
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=45,score_爆破-选择的主武器=45] slot.inventory.1 mwc:ump45mag 6 0 {Ammo:25}
#replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=45,score_爆破-选择的主武器=45] slot.inventory.3 mwc:ump9mag 6 0 {Ammo:30}
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=46,score_爆破-选择的主武器=46] slot.inventory.1 mwc:mp7mag 6 0 {Ammo:40}
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=47,score_爆破-选择的主武器=47] slot.inventory.1 mwc:scorpionmag 6 0 {Ammo:30}
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=48,score_爆破-选择的主武器=48] slot.inventory.1 mwc:apc9mag 6 0 {Ammo:30}
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=49,score_爆破-选择的主武器=49] slot.inventory.1 mwc:kedrmag_2 6 0 {Ammo:20}
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=50,score_爆破-选择的主武器=50] slot.inventory.1 mwc:p90mag 6 0 {Ammo:50}
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=51,score_爆破-选择的主武器=51] slot.inventory.1 mwc:s710tricunmag 6 0 {Ammo:30}
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=52,score_爆破-选择的主武器=52] slot.inventory.1 mwc:mpxmag 6 0 {Ammo:30}
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=53,score_爆破-选择的主武器=53] slot.inventory.1 mwc:uzimag_2 6 0 {Ammo:32}
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=54,score_爆破-选择的主武器=54] slot.inventory.1 mwc:shotgun12gauge 64 0
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=55,score_爆破-选择的主武器=55] slot.inventory.1 mwc:shotgun4g 64 0
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=56,score_爆破-选择的主武器=56] slot.inventory.1 mwc:shotgun12gauge 64 0
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=57,score_爆破-选择的主武器=57] slot.inventory.1 mwc:shotgun12gauge 64 0
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=58,score_爆破-选择的主武器=58] slot.inventory.1 mwc:shotgun12gauge 64 0
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=59,score_爆破-选择的主武器=59] slot.inventory.1 mwc:origin12drummag 6 0 {Ammo:12}
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=60,score_爆破-选择的主武器=60] slot.inventory.1 mwc:saigamag_2 6 0 {Ammo:5}
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=61,score_爆破-选择的主武器=61] slot.inventory.1 mwc:shotgun12gauge 64 0
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=62,score_爆破-选择的主武器=62] slot.inventory.1 mwc:m249mag 6 0 {Ammo:100}
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=63,score_爆破-选择的主武器=63] slot.inventory.1 mwc:m60mag 6 0 {Ammo:100}

replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=65,score_爆破-选择的主武器=65] slot.inventory.1 mwc:hecateiimag 6 0 {Ammo:7}
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=66,score_爆破-选择的主武器=66] slot.inventory.1 mwc:m4a1mag_2 6 0 {Ammo:30}
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=67,score_爆破-选择的主武器=67] slot.inventory.1 mwc:ak12mag_2 6 0 {Ammo:30}
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=68,score_爆破-选择的主武器=68] slot.inventory.1 mwc:m38mag_2 6 0 {Ammo:30}
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=69,score_爆破-选择的主武器=69] slot.inventory.1 mwc:dragunovmag 6 0 {Ammo:10}
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=70,score_爆破-选择的主武器=70] slot.inventory.1 mwc:ssg08mag 6 0 {Ammo:8}
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=71,score_爆破-选择的主武器=71] slot.inventory.1 mwc:glockmag50 6 0 {Ammo:50}

replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=73,score_爆破-选择的主武器=73] slot.inventory.1 mwc:m4a1mag_2 6 0 {Ammo:30}
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=74,score_爆破-选择的主武器=74] slot.inventory.1 mwc:ax50mag 6 0 {Ammo:5}
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=75,score_爆破-选择的主武器=75] slot.inventory.1 mwc:pp1901mag 6 0 {Ammo:30}

replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=100,score_爆破-选择的主武器=100] slot.inventory.1 mwc:grenade40mm 16 0
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=101,score_爆破-选择的主武器=101] slot.inventory.1 mwc:rpg7_rocket 2 0
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=102,score_爆破-选择的主武器=102] slot.inventory.1 mwc:pkmmag 6 0 {Ammo:120}
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=103,score_爆破-选择的主武器=103] slot.inventory.1 mwc:asvalmag 6 0 {Ammo:20}
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=104,score_爆破-选择的主武器=104] slot.inventory.1 mwc:m202rocket 4 0
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=105,score_爆破-选择的主武器=105] slot.inventory.1 mwc:grenade40mm 16 0
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=106,score_爆破-选择的主武器=106] slot.inventory.1 mwc:m134mag 6 0 {Ammo:100}
replaceitem entity @a[tag=游戏中,score_爆破-选择的主武器_min=107,score_爆破-选择的主武器=107] slot.inventory.1 mwc:mininuke 64 0

replaceitem entity @a[tag=游戏中,score_爆破-选择的副武器_min=1,score_爆破-选择的副武器=1] slot.inventory.2 mwc:apsmag_2 6 0 {Ammo:20}
replaceitem entity @a[tag=游戏中,score_爆破-选择的副武器_min=2,score_爆破-选择的副武器=2] slot.inventory.2 mwc:bullet500 64 0
replaceitem entity @a[tag=游戏中,score_爆破-选择的副武器_min=3,score_爆破-选择的副武器=3] slot.inventory.2 mwc:m9mag_2 6 0 {Ammo:15}
replaceitem entity @a[tag=游戏中,score_爆破-选择的副武器_min=4,score_爆破-选择的副武器=4] slot.inventory.2 mwc:m9mag_2 6 0 {Ammo:15}
replaceitem entity @a[tag=游戏中,score_爆破-选择的副武器_min=5,score_爆破-选择的副武器=5] slot.inventory.2 mwc:usp45mag 6 0 {Ammo:8}
replaceitem entity @a[tag=游戏中,score_爆破-选择的副武器_min=6,score_爆破-选择的副武器=6] slot.inventory.2 mwc:bullet44 64 0
replaceitem entity @a[tag=游戏中,score_爆破-选择的副武器_min=7,score_爆破-选择的副武器=7] slot.inventory.2 mwc:glock18cmag_2 6 0 {Ammo:20}
replaceitem entity @a[tag=游戏中,score_爆破-选择的副武器_min=8,score_爆破-选择的副武器=8] slot.inventory.2 mwc:vp70mag_2 6 0 {Ammo:18}
replaceitem entity @a[tag=游戏中,score_爆破-选择的副武器_min=9,score_爆破-选择的副武器=9] slot.inventory.2 mwc:m9mag_2 6 0 {Ammo:15}
replaceitem entity @a[tag=游戏中,score_爆破-选择的副武器_min=9,score_爆破-选择的副武器=9] slot.inventory.4 mwc:samuraiedgemag 6 0 {Ammo:15}
replaceitem entity @a[tag=游戏中,score_爆破-选择的副武器_min=10,score_爆破-选择的副武器=10] slot.inventory.2 mwc:glockmag13 6 0 {Ammo:13}
replaceitem entity @a[tag=游戏中,score_爆破-选择的副武器_min=11,score_爆破-选择的副武器=11] slot.inventory.2 mwc:bullet357 64 0
replaceitem entity @a[tag=游戏中,score_爆破-选择的副武器_min=12,score_爆破-选择的副武器=12] slot.inventory.2 mwc:deserteaglemag 6 0 {Ammo:7}
replaceitem entity @a[tag=游戏中,score_爆破-选择的副武器_min=13,score_爆破-选择的副武器=13] slot.inventory.2 mwc:mp443mag_2 6 0 {Ammo:18}
replaceitem entity @a[tag=游戏中,score_爆破-选择的副武器_min=14,score_爆破-选择的副武器=14] slot.inventory.2 mwc:m17mag 6 0 {Ammo:17}
replaceitem entity @a[tag=游戏中,score_爆破-选择的副武器_min=15,score_爆破-选择的副武器=15] slot.inventory.2 mwc:sccycpx2mag 6 0 {Ammo:10}
replaceitem entity @a[tag=游戏中,score_爆破-选择的副武器_min=16,score_爆破-选择的副武器=16] slot.inventory.2 mwc:bullet357 64 0
replaceitem entity @a[tag=游戏中,score_爆破-选择的副武器_min=17,score_爆破-选择的副武器=17] slot.inventory.2 mwc:fivesevenmag 6 0 {Ammo:20}
replaceitem entity @a[tag=游戏中,score_爆破-选择的副武器_min=18,score_爆破-选择的副武器=18] slot.inventory.2 mwc:m1911mag_2 6 0 {Ammo:15}
























