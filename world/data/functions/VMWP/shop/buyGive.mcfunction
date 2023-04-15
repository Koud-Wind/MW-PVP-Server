#给予的物品
#Camo
replaceitem entity @a[score_S-Painting_min=1,score_S-Painting=1,tag=Camo] slot.inventory.0 mw:diamondcamo 1 0
replaceitem entity @a[score_S-Painting_min=2,score_S-Painting=2,tag=Camo] slot.inventory.0 mw:goldcamo 1 0
replaceitem entity @a[score_S-Painting_min=3,score_S-Painting=3,tag=Camo] slot.inventory.0 mw:arcticcamo 1 0
replaceitem entity @a[score_S-Painting_min=4,score_S-Painting=4,tag=Camo] slot.inventory.0 mw:woodlandcamo 1 0
replaceitem entity @a[score_S-Painting_min=5,score_S-Painting=5,tag=Camo] slot.inventory.0 mw:bloodforestcamo 1 0
replaceitem entity @a[score_S-Painting_min=6,score_S-Painting=6,tag=Camo] slot.inventory.0 mw:pinkcamo 1 0
replaceitem entity @a[score_S-Painting_min=7,score_S-Painting=7,tag=Camo] slot.inventory.0 mw:bluecamo 1 0
replaceitem entity @a[score_S-Painting_min=8,score_S-Painting=8,tag=Camo] slot.inventory.0 mw:unit01camo 1 0
scoreboard players tag @a[tag=Camo] remove Camo
#Melee
replaceitem entity @a[score_S-MeleeW_min=1,score_S-MeleeW=1,tag=Melee] slot.hotbar.2 mw:tactical_tomahawk 1 0
replaceitem entity @a[score_S-MeleeW_min=2,score_S-MeleeW=2,tag=Melee] slot.hotbar.2 mw:baseball_bat_nails 1 0
replaceitem entity @a[score_S-MeleeW_min=0,score_S-MeleeW=0,tag=Melee] slot.hotbar.2 mw:baseball_bat 1 0 
replaceitem entity @a[score_S-Shop=0,tag=Melee,score_SecondaryW=0] slot.hotbar.1 mw:taurus_raging_hunter 1 0 {IUuidLeast:-8482439236828077079L,AtId:[I;-1,0,0,0,0,0,0,5568,0,0,0,0,0,5239,4714,5669,0,5673,0,0,0,0,0,0,0,4765,0],Ammo:6,IUuidMost:-8545070236647338513L,Instance:[B;-32B,83B,21B,-112B,-126B,43B,-31B,45B,117B,49B,126B,79B,17B,126B,62B,-127B,0B,0B,0B,9B,-119B,105B,-49B,-28B,-69B,-33B,77B,-17B,-118B,72B,82B,116B,-68B,6B,-29B,-23B,0B,0B,20B,17B,0B,0B,0B,5B,0B,0B,0B,0B,0B,0B,0B,109B,75B,99B,82B,108B,-118B,-87B,-71B,14B,-97B,-92B,100B,-74B,-111B,106B,61B,-40B,0B,0B,0B,1B,27B,-1B,-1B,-1B,-1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,21B,-64B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,20B,119B,0B,0B,18B,106B,0B,0B,22B,37B,0B,0B,0B,0B,0B,0B,22B,41B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-99B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,6B,0B,64B,-32B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fHunter"}}
scoreboard players set @a[score_S-Shop=0,tag=Melee,score_SecondaryW=0] SecondaryW 6
replaceitem entity @a[score_S-Shop=1,score_S-Shop_min=1,tag=Melee,score_SecondaryW=0] slot.hotbar.1 mw:python 1 0 {IUuidLeast:-7517548101102585053L,Ammo:6,IUuidMost:7852654752170200237L,Instance:[B;-32B,83B,21B,-112B,-126B,43B,-31B,45B,117B,49B,126B,79B,17B,126B,62B,-127B,0B,0B,0B,9B,108B,-6B,59B,-28B,86B,-29B,76B,-83B,-105B,-84B,77B,-44B,-21B,-34B,59B,35B,0B,0B,17B,-85B,0B,0B,0B,4B,0B,0B,0B,0B,0B,0B,0B,57B,75B,99B,82B,108B,-118B,-87B,-71B,14B,-97B,-92B,100B,-74B,-111B,106B,61B,-40B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,20B,119B,0B,0B,18B,106B,0B,0B,16B,-66B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-99B,0B,0B,0B,0B,0B,0B,0B,0B,6B,0B,64B,-64B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fColt Python"}}
scoreboard players set @a[score_S-Shop=1,score_S-Shop_min=1,tag=Melee,score_SecondaryW=0] SecondaryW 11
replaceitem entity @a[score_S-Shop=2,score_S-Shop_min=2,tag=Melee,score_SecondaryW=0] slot.hotbar.1 mw:chiappa_rhino 1 0 {IUuidLeast:-5349812293087486848L,Ammo:6,IUuidMost:-7177349486224715897L,Instance:[B;-32B,83B,21B,-112B,-126B,43B,-31B,45B,117B,49B,126B,79B,17B,126B,62B,-127B,0B,0B,0B,9B,-100B,100B,-18B,-85B,100B,-66B,79B,-121B,-75B,-63B,-90B,16B,95B,-128B,-100B,-128B,0B,0B,20B,18B,0B,0B,0B,4B,0B,0B,0B,0B,0B,0B,0B,36B,75B,99B,82B,108B,-118B,-87B,-71B,14B,-97B,-92B,100B,-74B,-111B,106B,61B,-40B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,20B,119B,0B,0B,18B,106B,0B,0B,19B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-99B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,6B,0B,64B,-64B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fChiappa"}}
scoreboard players set @a[score_S-Shop=2,score_S-Shop_min=2,tag=Melee,score_SecondaryW=0] SecondaryW 16
scoreboard players tag @a[tag=Melee] remove Melee
#武器弹药
replaceitem entity @a[tag=InGame,score_MainW_min=1,score_MainW=1] slot.inventory.1 mw:m4a1mag_2 6 0 {Ammo:40}
replaceitem entity @a[tag=InGame,score_MainW_min=2,score_MainW=2] slot.inventory.1 mw:m4a1mag_2 6 0 {Ammo:30}
replaceitem entity @a[tag=InGame,score_MainW_min=3,score_MainW=3] slot.inventory.1 mw:m4a1mag_2 6 0 {Ammo:30}
replaceitem entity @a[tag=InGame,score_MainW_min=4,score_MainW=4] slot.inventory.1 mw:m4a1mag_2 6 0 {Ammo:30}
#replaceitem entity @a[tag=InGame,score_MainW_min=4,score_MainW=4] slot.inventory.3 mw:aug9mmmag 6 0 {Ammo:30}
replaceitem entity @a[tag=InGame,score_MainW_min=5,score_MainW=5] slot.inventory.1 mw:g36cmag_2 6 0 {Ammo:30}
replaceitem entity @a[tag=InGame,score_MainW_min=6,score_MainW=6] slot.inventory.1 mw:ak12mag 6 0 {Ammo:31}
replaceitem entity @a[tag=InGame,score_MainW_min=7,score_MainW=7] slot.inventory.1 mw:ak15mag_2 6 0 {Ammo:30}
replaceitem entity @a[tag=InGame,score_MainW_min=8,score_MainW=8] slot.inventory.1 mw:kbp9a91mag_2 6 0 {Ammo:20}
replaceitem entity @a[tag=InGame,score_MainW_min=9,score_MainW=9] slot.inventory.1 mw:scar40mag 6 0 {Ammo:40}
replaceitem entity @a[tag=InGame,score_MainW_min=10,score_MainW=10] slot.inventory.1 mw:m4a1mag_2 6 0 {Ammo:30}
replaceitem entity @a[tag=InGame,score_MainW_min=11,score_MainW=11] slot.inventory.1 mw:m4a1mag_2 6 0 {Ammo:30}
replaceitem entity @a[tag=InGame,score_MainW_min=12,score_MainW=12] slot.inventory.1 mw:m4a1mag_2 6 0 {Ammo:30}
replaceitem entity @a[tag=InGame,score_MainW_min=13,score_MainW=13] slot.inventory.1 mw:famasf1mag 6 0 {Ammo:30}
replaceitem entity @a[tag=InGame,score_MainW_min=14,score_MainW=14] slot.inventory.1 mw:ak15mag_2 6 0 {Ammo:30}
replaceitem entity @a[tag=InGame,score_MainW_min=15,score_MainW=15] slot.inventory.1 mw:m4a1mag_2 6 0 {Ammo:30}
replaceitem entity @a[tag=InGame,score_MainW_min=16,score_MainW=16] slot.inventory.1 mw:m4a1mag_2 6 0 {Ammo:30}
replaceitem entity @a[tag=InGame,score_MainW_min=17,score_MainW=17] slot.inventory.1 mw:ak101mag_2 6 0 {Ammo:30}
replaceitem entity @a[tag=InGame,score_MainW_min=18,score_MainW=18] slot.inventory.1 mw:m4a1mag_2 6 0 {Ammo:30}
replaceitem entity @a[tag=InGame,score_MainW_min=19,score_MainW=19] slot.inventory.1 mw:m4a1mag_2 6 0 {Ammo:30}
replaceitem entity @a[tag=InGame,score_MainW_min=20,score_MainW=20] slot.inventory.1 mw:g11mag 6 0 {Ammo:50}
replaceitem entity @a[tag=InGame,score_MainW_min=21,score_MainW=21] slot.inventory.1 mw:m4a1mag_2 6 0 {Ammo:30}
replaceitem entity @a[tag=InGame,score_MainW_min=22,score_MainW=22] slot.inventory.1 mw:ak15mag_2 6 0 {Ammo:30}
replaceitem entity @a[tag=InGame,score_MainW_min=23,score_MainW=23] slot.inventory.1 mw:ak15mag_2 6 0 {Ammo:30}
replaceitem entity @a[tag=InGame,score_MainW_min=24,score_MainW=24] slot.inventory.1 mw:ngswr_mag 6 0 {Ammo:30}
replaceitem entity @a[tag=InGame,score_MainW_min=25,score_MainW=25] slot.inventory.1 mw:interventionmag 6 0 {Ammo:7}
replaceitem entity @a[tag=InGame,score_MainW_min=26,score_MainW=26] slot.inventory.1 mw:dsr1magext 6 0 {Ammo:10}
replaceitem entity @a[tag=InGame,score_MainW_min=27,score_MainW=27] slot.inventory.1 mw:m40a6mag_2 6 0 {Ammo:7}
replaceitem entity @a[tag=InGame,score_MainW_min=28,score_MainW=28] slot.inventory.1 mw:mk14ebrmag_2 6 0 {Ammo:20}
replaceitem entity @a[tag=InGame,score_MainW_min=29,score_MainW=29] slot.inventory.1 mw:m110mag_2 6 0 {Ammo:10}
replaceitem entity @a[tag=InGame,score_MainW_min=30,score_MainW=30] slot.inventory.1 mw:m110mag_2 6 0 {Ammo:10}
replaceitem entity @a[tag=InGame,score_MainW_min=31,score_MainW=31] slot.inventory.1 mw:m82mag_2 6 0 {Ammo:10}
replaceitem entity @a[tag=InGame,score_MainW_min=32,score_MainW=32] slot.inventory.1 mw:sv98mag_2 6 0 {Ammo:10}
replaceitem entity @a[tag=InGame,score_MainW_min=33,score_MainW=33] slot.inventory.1 mw:fnfalmag 6 0 {Ammo:20}
replaceitem entity @a[tag=InGame,score_MainW_min=34,score_MainW=34] slot.inventory.1 mw:g3mag 6 0 {Ammo:20}
replaceitem entity @a[tag=InGame,score_MainW_min=35,score_MainW=35] slot.inventory.1 mw:beowulfmag 6 0 {Ammo:13}
replaceitem entity @a[tag=InGame,score_MainW_min=36,score_MainW=36] slot.inventory.1 mw:as50mag_2 6 0 {Ammo:10}
replaceitem entity @a[tag=InGame,score_MainW_min=37,score_MainW=37] slot.inventory.1 mw:l96a1mag_2 6 0 {Ammo:10}
replaceitem entity @a[tag=InGame,score_MainW_min=38,score_MainW=38] slot.inventory.1 mw:r700mag 6 0 {Ammo:5}
replaceitem entity @a[tag=InGame,score_MainW_min=39,score_MainW=39] slot.inventory.1 mw:hk417_mag 6 0 {Ammo:20}
replaceitem entity @a[tag=InGame,score_MainW_min=40,score_MainW=40] slot.inventory.1 mw:z10mag 6 0 {Ammo:10}
replaceitem entity @a[tag=InGame,score_MainW_min=41,score_MainW=41] slot.inventory.1 mw:honeybadgermag_2 6 0 {Ammo:30}
#replaceitem entity @a[tag=InGame,score_MainW_min=42,score_MainW=42] slot.inventory.1 mw:vectormag 5 0 {Ammo:25}
replaceitem entity @a[tag=InGame,score_MainW_min=42,score_MainW=42] slot.inventory.1 mw:famasf1mag 6 0 {Ammo:30}
replaceitem entity @a[tag=InGame,score_MainW_min=43,score_MainW=43] slot.inventory.1 mw:mac10mag 6 0 {Ammo:30}
replaceitem entity @a[tag=InGame,score_MainW_min=44,score_MainW=44] slot.inventory.1 mw:mp5a5mag 6 0 {Ammo:30}
replaceitem entity @a[tag=InGame,score_MainW_min=45,score_MainW=45] slot.inventory.1 mw:ump45mag 6 0 {Ammo:25}
#replaceitem entity @a[tag=InGame,score_MainW_min=45,score_MainW=45] slot.inventory.3 mw:ump9mag 6 0 {Ammo:30}
replaceitem entity @a[tag=InGame,score_MainW_min=46,score_MainW=46] slot.inventory.1 mw:mp7mag 6 0 {Ammo:40}
replaceitem entity @a[tag=InGame,score_MainW_min=47,score_MainW=47] slot.inventory.1 mw:scorpionmag 6 0 {Ammo:30}
replaceitem entity @a[tag=InGame,score_MainW_min=48,score_MainW=48] slot.inventory.1 mw:apc9mag 6 0 {Ammo:30}
replaceitem entity @a[tag=InGame,score_MainW_min=49,score_MainW=49] slot.inventory.1 mw:kedrmag_2 6 0 {Ammo:20}
replaceitem entity @a[tag=InGame,score_MainW_min=50,score_MainW=50] slot.inventory.1 mw:p90mag 6 0 {Ammo:50}
replaceitem entity @a[tag=InGame,score_MainW_min=51,score_MainW=51] slot.inventory.1 mw:s710tricunmag 6 0 {Ammo:30}
replaceitem entity @a[tag=InGame,score_MainW_min=52,score_MainW=52] slot.inventory.1 mw:mpxmag 6 0 {Ammo:30}
replaceitem entity @a[tag=InGame,score_MainW_min=53,score_MainW=53] slot.inventory.1 mw:uzimag_2 6 0 {Ammo:32}
replaceitem entity @a[tag=InGame,score_MainW_min=54,score_MainW=54] slot.inventory.1 mw:shotgun12gauge 64 0
replaceitem entity @a[tag=InGame,score_MainW_min=55,score_MainW=55] slot.inventory.1 mw:shotgun4g 64 0
replaceitem entity @a[tag=InGame,score_MainW_min=56,score_MainW=56] slot.inventory.1 mw:shotgun12gauge 64 0
replaceitem entity @a[tag=InGame,score_MainW_min=57,score_MainW=57] slot.inventory.1 mw:shotgun12gauge 64 0
replaceitem entity @a[tag=InGame,score_MainW_min=58,score_MainW=58] slot.inventory.1 mw:shotgun12gauge 64 0
replaceitem entity @a[tag=InGame,score_MainW_min=59,score_MainW=59] slot.inventory.1 mw:origin12drummag 6 0 {Ammo:12}
replaceitem entity @a[tag=InGame,score_MainW_min=60,score_MainW=60] slot.inventory.1 mw:saigamag_2 6 0 {Ammo:4}
replaceitem entity @a[tag=InGame,score_MainW_min=61,score_MainW=61] slot.inventory.1 mw:shotgun12gauge 64 0
replaceitem entity @a[tag=InGame,score_MainW_min=62,score_MainW=62] slot.inventory.1 mw:m249mag 6 0 {Ammo:100}
replaceitem entity @a[tag=InGame,score_MainW_min=63,score_MainW=63] slot.inventory.1 mw:stonermag 6 0 {Ammo:100}

replaceitem entity @a[tag=InGame,score_MainW_min=65,score_MainW=65] slot.inventory.1 mw:hecateiimag 6 0 {Ammo:7}
replaceitem entity @a[tag=InGame,score_MainW_min=66,score_MainW=66] slot.inventory.1 mw:m4a1mag_2 6 0 {Ammo:30}
replaceitem entity @a[tag=InGame,score_MainW_min=67,score_MainW=67] slot.inventory.1 mw:ak12mag_2 6 0 {Ammo:30}
replaceitem entity @a[tag=InGame,score_MainW_min=68,score_MainW=68] slot.inventory.1 mw:m38mag_2 6 0 {Ammo:30}
replaceitem entity @a[tag=InGame,score_MainW_min=69,score_MainW=69] slot.inventory.1 mw:dragunovmag 6 0 {Ammo:10}
replaceitem entity @a[tag=InGame,score_MainW_min=70,score_MainW=70] slot.inventory.1 mw:ssg08mag 6 0 {Ammo:8}
replaceitem entity @a[tag=InGame,score_MainW_min=71,score_MainW=71] slot.inventory.1 mw:glockmag50 6 0 {Ammo:50}

replaceitem entity @a[tag=InGame,score_MainW_min=100,score_MainW=100] slot.inventory.1 mw:grenade40mm 64 0
replaceitem entity @a[tag=InGame,score_MainW_min=101,score_MainW=101] slot.inventory.1 mw:rpg7_rocket 64 0
replaceitem entity @a[tag=InGame,score_MainW_min=102,score_MainW=102] slot.inventory.1 mw:plasmacapsule 64 0
replaceitem entity @a[tag=InGame,score_MainW_min=103,score_MainW=103] slot.inventory.1 mw:asvalmag 6 0 {Ammo:20}
replaceitem entity @a[tag=InGame,score_MainW_min=104,score_MainW=104] slot.inventory.1 mw:m202rocket 64 0
replaceitem entity @a[tag=InGame,score_MainW_min=105,score_MainW=105] slot.inventory.1 mw:grenade40mm 64 0
replaceitem entity @a[tag=InGame,score_MainW_min=106,score_MainW=106] slot.inventory.1 mw:m134mag 6 0 {Ammo:60}
replaceitem entity @a[tag=InGame,score_MainW_min=107,score_MainW=107] slot.inventory.1 mw:mininuke 64 0

replaceitem entity @a[tag=InGame,score_SecondaryW_min=1,score_SecondaryW=1] slot.inventory.2 mw:apsmag_2 6 0 {Ammo:20}
replaceitem entity @a[tag=InGame,score_SecondaryW_min=2,score_SecondaryW=2] slot.inventory.2 mw:bullet500 64 0
replaceitem entity @a[tag=InGame,score_SecondaryW_min=3,score_SecondaryW=3] slot.inventory.2 mw:m9mag_2 6 0 {Ammo:15}
replaceitem entity @a[tag=InGame,score_SecondaryW_min=4,score_SecondaryW=4] slot.inventory.2 mw:m9mag_2 6 0 {Ammo:15}
replaceitem entity @a[tag=InGame,score_SecondaryW_min=5,score_SecondaryW=5] slot.inventory.2 mw:usp45mag 6 0 {Ammo:8}
replaceitem entity @a[tag=InGame,score_SecondaryW_min=6,score_SecondaryW=6] slot.inventory.2 mw:bullet44 64 0
replaceitem entity @a[tag=InGame,score_SecondaryW_min=7,score_SecondaryW=7] slot.inventory.2 mw:glock18cmag_2 6 0 {Ammo:20}
replaceitem entity @a[tag=InGame,score_SecondaryW_min=8,score_SecondaryW=8] slot.inventory.2 mw:vp70mag_2 6 0 {Ammo:18}
replaceitem entity @a[tag=InGame,score_SecondaryW_min=9,score_SecondaryW=9] slot.inventory.2 mw:m9mag_2 6 0 {Ammo:15}
replaceitem entity @a[tag=InGame,score_SecondaryW_min=9,score_SecondaryW=9] slot.inventory.4 mw:samuraiedgemag 6 0 {Ammo:15}
replaceitem entity @a[tag=InGame,score_SecondaryW_min=10,score_SecondaryW=10] slot.inventory.2 mw:glockmag13 6 0 {Ammo:13}
replaceitem entity @a[tag=InGame,score_SecondaryW_min=11,score_SecondaryW=11] slot.inventory.2 mw:bullet357 64 0
replaceitem entity @a[tag=InGame,score_SecondaryW_min=12,score_SecondaryW=12] slot.inventory.2 mw:deserteaglemag 6 0 {Ammo:7}
replaceitem entity @a[tag=InGame,score_SecondaryW_min=13,score_SecondaryW=13] slot.inventory.2 mw:mp443mag_2 6 0 {Ammo:18}
replaceitem entity @a[tag=InGame,score_SecondaryW_min=14,score_SecondaryW=14] slot.inventory.2 mw:m17mag 6 0 {Ammo:17}
replaceitem entity @a[tag=InGame,score_SecondaryW_min=15,score_SecondaryW=15] slot.inventory.2 mw:sccycpx2mag 6 0 {Ammo:10}
replaceitem entity @a[tag=InGame,score_SecondaryW_min=16,score_SecondaryW=16] slot.inventory.2 mw:bullet357 64 0
replaceitem entity @a[tag=InGame,score_SecondaryW_min=17,score_SecondaryW=17] slot.inventory.2 mw:fivesevenmag 6 0 {Ammo:20}























