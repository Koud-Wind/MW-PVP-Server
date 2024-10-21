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
scoreboard objectives add health health
scoreboard objectives setdisplay list health
scoreboard objectives setdisplay belowName health

scoreboard objectives add hunger food

scoreboard objectives add sprint stat.sprintOneCm
scoreboard objectives add jump stat.jump

scoreboard objectives add ThrowingT dummy

scoreboard objectives add Start-SMode dummy
scoreboard players add @e[tag=VMW] Start-SMode 0

#shop计分板
scoreboard objectives add moduleP trigger
scoreboard objectives add grenadeP trigger
scoreboard objectives add assaultRP trigger
scoreboard objectives add S&DMRP trigger
scoreboard objectives add SMGP trigger
scoreboard objectives add shotGunP trigger
scoreboard objectives add heavyP trigger
scoreboard objectives add pistolP trigger
scoreboard objectives add ultimateWP trigger

#僵尸末日
scoreboard objectives add PVE-map dummy
scoreboard objectives add PVE-kill totalKillCount
scoreboard teams add MW_PVE
scoreboard teams option MW_PVE nametagVisibility hideForOtherTeams
scoreboard teams option MW_PVE friendlyfire false
scoreboard teams option MW_PVE seeFriendlyInvisibles true

#玩家数据计分板
scoreboard objectives add note dummy
scoreboard objectives add wins dummy
scoreboard objectives add S-Painting dummy
scoreboard objectives add S-MeleeW dummy
scoreboard objectives add S-Shop dummy
scoreboard objectives add S-UltimateW dummy
scoreboard objectives add S-Sight dummy
scoreboard objectives add S-Silencer dummy
#scoreboard objectives add 选择的头盔 dummy

scoreboard objectives add note dummy

#Item Shop计分板
scoreboard objectives add S-MeleeWP trigger
scoreboard objectives add S-UltimateWP trigger
scoreboard objectives add S-ShopP trigger
scoreboard objectives add S-PaintingP trigger
scoreboard objectives add S-SightP trigger
scoreboard objectives add S-SilencerP trigger
#scoreboard objectives add 选择头盔页面 trigger

#leave
scoreboard objectives add leave stat.leaveGame

#开始环节计分板
scoreboard objectives add start-TR dummy
scoreboard players set @e[tag=VMW] start-TR 1200

scoreboard objectives add start-RTC dummy
scoreboard players set §fdivision start-RTC 20

scoreboard objectives add music dummy
#需要规定绑定命令块坐标**
scoreboard objectives add start-RP dummy
scoreboard players set §fRP start-RP 1
#stats block 269 51 1232 set AffectedEntities §fRP start-RP
stats block -48 52 1050 set AffectedEntities §fRP start-RP

#ready队伍
scoreboard teams add 5-ready
scoreboard teams option 5-ready color green
scoreboard teams add 4-ready
scoreboard teams option 4-ready color aqua
scoreboard teams add 3-ready
scoreboard teams option 3-ready color dark_purple
scoreboard teams add 2-ready
scoreboard teams option 2-ready color gold
scoreboard teams add 1-ready
scoreboard teams option 1-ready color dark_red
scoreboard teams add Watch
scoreboard teams option Watch color gray

#游戏(赏金爆破)
scoreboard objectives add CT-STime dummy

scoreboard teams add CT
scoreboard teams add T
scoreboard teams option CT nametagVisibility hideForOtherTeams
scoreboard teams option T nametagVisibility hideForOtherTeams
scoreboard teams option CT friendlyfire false
scoreboard teams option T friendlyfire false
scoreboard teams option CT seeFriendlyInvisibles true
scoreboard teams option T seeFriendlyInvisibles true

scoreboard objectives add CT-CTN dummy
scoreboard objectives add CT-TN dummy
scoreboard players set §fCT-CTN CT-CTN 1
scoreboard players set §fCT-TN CT-TN 1
scoreboard objectives add CT-Assign dummy
scoreboard players set §fdivision CT-Assign 2
scoreboard objectives add CT-Join trigger
scoreboard objectives add CT-BP dummy

#需要规定绑定命令块坐标
#stats block 269 51 1230 set AffectedEntities §fCT-CTN CT-CTN
#stats block 269 51 1234 set AffectedEntities §fCT-TN CT-TN
stats block -50 52 1050 set AffectedEntities §fCT-CTN CT-CTN
stats block -46 52 1050 set AffectedEntities §fCT-TN CT-TN

scoreboard objectives add S-Map trigger
scoreboard objectives add CT-Map dummy
scoreboard players add @e[tag=VMW] CT-Map 0

scoreboard objectives add CT-TR dummy
scoreboard objectives add CT-RTC dummy
scoreboard players set §fdivision CT-RTC 20
scoreboard objectives add CT-CTScore dummy
scoreboard objectives add CT-TScore dummy
scoreboard objectives add CT-Games dummy
scoreboard objectives add CT-WaitT dummy

scoreboard objectives add money dummy
scoreboard players set §fdivision money 3
scoreboard objectives add MainW dummy
scoreboard objectives add SecondaryW dummy

scoreboard objectives add CT-RunC4 dummy
scoreboard objectives add CT-C4T dummy
scoreboard objectives add CT-C4TC dummy
scoreboard players set §fdivision CT-C4TC 20

#游戏(破点攻防)
scoreboard objectives add CT-Occupy dummy
scoreboard objectives add CT-Prompt dummy
scoreboard objectives add CT-CTLife dummy
scoreboard objectives add CT-TLife dummy
scoreboard objectives add CT-lifeC dummy §eRemaining Life

#游戏(个人对抗)
scoreboard objectives add PC-STime dummy

scoreboard objectives add PC-Map dummy
scoreboard players add @e[tag=VMW] PC-Map 0

scoreboard teams add CTT
scoreboard teams option CTT nametagVisibility never
scoreboard objectives add PC-TR dummy
scoreboard objectives add PC-RTC dummy
scoreboard players set §fdivision PC-RTC 20

scoreboard objectives add PC-KCC dummy
scoreboard objectives add PC-1stK dummy
scoreboard objectives add PC-2ndK dummy
scoreboard objectives add PC-3rdK dummy
scoreboard objectives add PC-Glow dummy
scoreboard objectives add PC-Join trigger

#游戏(军火之王)
scoreboard objectives add PC-CrownT dummy
scoreboard objectives add PC-Score dummy

#游戏(求生对抗)
scoreboard objectives add PC-Games dummy
scoreboard objectives add PC-WaitT dummy
scoreboard objectives add PC-N dummy

#
gamerule gameLoopFunction vmwp:run