#世界重生点**
#setworldspawn 267 66 1231
#worldborder center 267 1231
setworldspawn -49 74 1054
worldborder center -49 1054
worldborder set 60000000
worldborder damage amount 0

defaultgamemode adventure
gamerule commandBlockOutput false
gamerule logAdminCommands false
gamerule doMobSpawning false
gamerule doFireTick false
gamerule mobGriefing false
gamerule keepInventory true
gamerule spawnRadius 0
#拓展计分板
scoreboard objectives add 生命 health
scoreboard objectives setdisplay list 生命
scoreboard objectives setdisplay belowName 生命

scoreboard objectives add 饥饿 food

scoreboard objectives add 疾跑 stat.sprintOneCm
scoreboard objectives add 跳跃 stat.jump

scoreboard objectives add 投掷物时间 dummy

scoreboard objectives add 开始-选择模式 dummy
scoreboard players add @e[tag=VMW] 开始-选择模式 0

#商店计分板
scoreboard objectives add 配件页面 trigger
scoreboard objectives add 投掷物页面 trigger
scoreboard objectives add 突击步枪页面 trigger
scoreboard objectives add 狙击枪&射手步枪页面 trigger
scoreboard objectives add 冲锋枪页面 trigger
scoreboard objectives add 霰弹枪页面 trigger
scoreboard objectives add 机枪页面 trigger
scoreboard objectives add 手枪页面 trigger
scoreboard objectives add 特殊武器页面 trigger

#僵尸末日
scoreboard objectives add PVE-map dummy
scoreboard objectives add PVE-击杀 totalKillCount
scoreboard teams add MW_PVE
scoreboard teams option MW_PVE nametagVisibility hideForOtherTeams
scoreboard teams option MW_PVE friendlyfire false
scoreboard teams option MW_PVE seeFriendlyInvisibles true

#玩家数据计分板
scoreboard objectives add 钞票 dummy
scoreboard objectives add 胜场数 dummy
scoreboard objectives add 选择的涂装 dummy
scoreboard objectives add 选择的近战武器 dummy
scoreboard objectives add 选择的商店 dummy
scoreboard objectives add 选择的特殊武器 dummy
scoreboard objectives add 选择的瞄具 dummy
scoreboard objectives add 选择的消音器 dummy
#scoreboard objectives add 选择的头盔 dummy

scoreboard objectives add 钞票 dummy

#道具商店计分板
scoreboard objectives add 选择近战武器页面 trigger
scoreboard objectives add 选择特殊武器页面 trigger
scoreboard objectives add 选择商店页面 trigger
scoreboard objectives add 选择涂装页面 trigger
scoreboard objectives add 选择瞄具页面 trigger
scoreboard objectives add 选择消音器页面 trigger
#scoreboard objectives add 选择头盔页面 trigger

#离开游戏
scoreboard objectives add 离开游戏 stat.leaveGame

#开始环节计分板
scoreboard objectives add 开始-剩余时间 dummy
scoreboard players set @e[tag=VMW] 开始-剩余时间 1200

scoreboard objectives add 开始-剩余时间换算 dummy
scoreboard players set §f除 开始-剩余时间换算 20

scoreboard objectives add 背景音乐 dummy
#需要规定绑定命令块坐标**
scoreboard objectives add 开始-准备人数 dummy
scoreboard players set §f准备人数 开始-准备人数 1
#stats block 269 51 1232 set AffectedEntities §f准备人数 开始-准备人数
stats block -48 52 1050 set AffectedEntities §f准备人数 开始-准备人数

#准备队伍
scoreboard teams add 5-准备
scoreboard teams option 5-准备 color green
scoreboard teams add 4-准备
scoreboard teams option 4-准备 color aqua
scoreboard teams add 3-准备
scoreboard teams option 3-准备 color dark_purple
scoreboard teams add 2-准备
scoreboard teams option 2-准备 color gold
scoreboard teams add 1-准备
scoreboard teams option 1-准备 color dark_red
scoreboard teams add Watch
scoreboard teams option Watch color gray

#游戏(赏金爆破)
scoreboard objectives add 爆破-选择时间 dummy

scoreboard teams add CT
scoreboard teams add T
scoreboard teams option CT nametagVisibility hideForOtherTeams
scoreboard teams option T nametagVisibility hideForOtherTeams
scoreboard teams option CT friendlyfire false
scoreboard teams option T friendlyfire false
scoreboard teams option CT seeFriendlyInvisibles true
scoreboard teams option T seeFriendlyInvisibles true

scoreboard objectives add 爆破-CT人数 dummy
scoreboard objectives add 爆破-T人数 dummy
scoreboard players set §f爆破-CT人数 爆破-CT人数 1
scoreboard players set §f爆破-T人数 爆破-T人数 1
scoreboard objectives add 爆破-分配人数 dummy
scoreboard players set §f除 爆破-分配人数 2
scoreboard objectives add 爆破-中途加入 trigger
scoreboard objectives add 爆破-均衡人数 dummy

#需要规定绑定命令块坐标
#stats block 269 51 1230 set AffectedEntities §f爆破-CT人数 爆破-CT人数
#stats block 269 51 1234 set AffectedEntities §f爆破-T人数 爆破-T人数
stats block -50 52 1050 set AffectedEntities §f爆破-CT人数 爆破-CT人数
stats block -46 52 1050 set AffectedEntities §f爆破-T人数 爆破-T人数

scoreboard objectives add 选择地图 trigger
scoreboard objectives add 爆破-地图 dummy
scoreboard players add @e[tag=VMW] 爆破-地图 0

scoreboard objectives add 爆破-剩余时间 dummy
scoreboard objectives add 爆破-剩余时间换算 dummy
scoreboard players set §f除 爆破-剩余时间换算 20
scoreboard objectives add 爆破-CT比分 dummy
scoreboard objectives add 爆破-T比分 dummy
scoreboard objectives add 爆破-游戏数 dummy
scoreboard objectives add 爆破-等待时间 dummy

scoreboard objectives add 爆破-金钱 dummy
scoreboard players set §f除 爆破-金钱 3
scoreboard objectives add 爆破-选择的主武器 dummy
scoreboard objectives add 爆破-选择的副武器 dummy

scoreboard objectives add 爆破-操作C4 dummy
scoreboard objectives add 爆破-C4引爆时间 dummy
scoreboard objectives add 爆破-C4引爆时间换算 dummy
scoreboard players set §f除 爆破-C4引爆时间换算 20

#游戏(破点攻防)
scoreboard objectives add 爆破-占领分数 dummy
scoreboard objectives add 爆破-提示冷却 dummy
scoreboard objectives add 爆破-CT生命数 dummy
scoreboard objectives add 爆破-T生命数 dummy
scoreboard objectives add 爆破-生命数显示 dummy §e剩余生命数

#游戏(个人对抗)
scoreboard objectives add 个人-选择时间 dummy

scoreboard objectives add 个人-地图 dummy
scoreboard players add @e[tag=VMW] 个人-地图 0

scoreboard teams add CTT
scoreboard teams option CTT nametagVisibility never
scoreboard objectives add 个人-剩余时间 dummy
scoreboard objectives add 个人-剩余时间换算 dummy
scoreboard players set §f除 个人-剩余时间换算 20

scoreboard objectives add 个人-击杀数计算 dummy
scoreboard objectives add 个人-第一击杀数 dummy
scoreboard objectives add 个人-第二击杀数 dummy
scoreboard objectives add 个人-第三击杀数 dummy
scoreboard objectives add 个人-不击杀发光 dummy
scoreboard objectives add 个人-中途加入 trigger

#游戏(军火之王)
scoreboard objectives add 个人-王冠计时器 dummy
scoreboard objectives add 个人-分数 dummy

#游戏(求生对抗)
scoreboard objectives add 个人-游戏数 dummy
scoreboard objectives add 个人-等待时间 dummy
scoreboard objectives add 个人-人数 dummy

#
gamerule gameLoopFunction vmwp:运行