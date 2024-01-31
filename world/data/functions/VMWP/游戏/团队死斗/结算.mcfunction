#换边
execute @s[tag=VMW,score_爆破-T比分_min=30] ~ ~ ~ execute @s[tag=!换边] ~ ~ ~ tellraw @a[tag=!PVE-游戏中] {"text":"§e重生点已交换!"}
execute @s[tag=VMW,score_爆破-T比分_min=30] ~ ~ ~ execute @s[tag=!换边] ~ ~ ~ playsound minecraft:block.note.pling ambient @a[tag=!PVE-游戏中] ~ ~ ~ 1000000000 2
execute @s[tag=VMW,score_爆破-地图=0,score_爆破-T比分_min=30] ~ ~ ~ execute @s[tag=!换边] ~ ~ ~ spawnpoint @a[tag=游戏中,team=T] -265 68 1289
execute @s[tag=VMW,score_爆破-地图=0,score_爆破-T比分_min=30] ~ ~ ~ execute @s[tag=!换边] ~ ~ ~ spawnpoint @a[tag=游戏中,team=CT] -176 76 1313
execute @s[tag=VMW,score_爆破-地图=1,score_爆破-地图_min=1,score_爆破-T比分_min=30] ~ ~ ~ execute @s[tag=!换边] ~ ~ ~ spawnpoint @a[tag=游戏中,team=T] -366 78 1233
execute @s[tag=VMW,score_爆破-地图=1,score_爆破-地图_min=1,score_爆破-T比分_min=30] ~ ~ ~ execute @s[tag=!换边] ~ ~ ~ spawnpoint @a[tag=游戏中,team=CT] -295 75 1198
execute @s[tag=VMW,score_爆破-地图=2,score_爆破-地图_min=2,score_爆破-T比分_min=30] ~ ~ ~ execute @s[tag=!换边] ~ ~ ~ spawnpoint @a[tag=游戏中,team=T] -375 76 1302
execute @s[tag=VMW,score_爆破-地图=2,score_爆破-地图_min=2,score_爆破-T比分_min=30] ~ ~ ~ execute @s[tag=!换边] ~ ~ ~ spawnpoint @a[tag=游戏中,team=CT] -301 76 1386
execute @s[tag=VMW,score_爆破-地图=3,score_爆破-地图_min=3,score_爆破-T比分_min=30] ~ ~ ~ execute @s[tag=!换边] ~ ~ ~ spawnpoint @a[tag=游戏中,team=T] -388 78 1213
execute @s[tag=VMW,score_爆破-地图=3,score_爆破-地图_min=3,score_爆破-T比分_min=30] ~ ~ ~ execute @s[tag=!换边] ~ ~ ~ spawnpoint @a[tag=游戏中,team=CT] -460 73 1184
execute @s[tag=VMW,score_爆破-地图=4,score_爆破-地图_min=4,score_爆破-T比分_min=30] ~ ~ ~ execute @s[tag=!换边] ~ ~ ~ spawnpoint @a[tag=游戏中,team=T] -476 73 1581
execute @s[tag=VMW,score_爆破-地图=4,score_爆破-地图_min=4,score_爆破-T比分_min=30] ~ ~ ~ execute @s[tag=!换边] ~ ~ ~ spawnpoint @a[tag=游戏中,team=CT] -394 72 1568
execute @s[tag=VMW,score_爆破-地图=5,score_爆破-地图_min=5,score_爆破-T比分_min=30] ~ ~ ~ execute @s[tag=!换边] ~ ~ ~ spawnpoint @a[tag=游戏中,team=T] -171 73 1596
execute @s[tag=VMW,score_爆破-地图=5,score_爆破-地图_min=5,score_爆破-T比分_min=30] ~ ~ ~ execute @s[tag=!换边] ~ ~ ~ spawnpoint @a[tag=游戏中,team=CT] -282 73 1462
execute @s[tag=VMW,score_爆破-T比分_min=30] ~ ~ ~ execute @s[tag=!换边] ~ ~ ~ scoreboard players tag @s add 换边

execute @s[tag=VMW,score_爆破-CT比分_min=30] ~ ~ ~ execute @s[tag=!换边] ~ ~ ~ tellraw @a[tag=!PVE-游戏中] {"text":"§e重生点已交换!"}
execute @s[tag=VMW,score_爆破-CT比分_min=30] ~ ~ ~ execute @s[tag=!换边] ~ ~ ~ playsound minecraft:block.note.pling ambient @a[tag=!PVE-游戏中] ~ ~ ~ 1000000000 2
execute @s[tag=VMW,score_爆破-地图=0,score_爆破-CT比分_min=30] ~ ~ ~ execute @s[tag=!换边] ~ ~ ~ spawnpoint @a[tag=游戏中,team=T] -265 68 1289
execute @s[tag=VMW,score_爆破-地图=0,score_爆破-CT比分_min=30] ~ ~ ~ execute @s[tag=!换边] ~ ~ ~ spawnpoint @a[tag=游戏中,team=CT] -176 76 1313
execute @s[tag=VMW,score_爆破-地图=1,score_爆破-地图_min=1,score_爆破-CT比分_min=30] ~ ~ ~ execute @s[tag=!换边] ~ ~ ~ spawnpoint @a[tag=游戏中,team=T] -366 78 1233
execute @s[tag=VMW,score_爆破-地图=1,score_爆破-地图_min=1,score_爆破-CT比分_min=30] ~ ~ ~ execute @s[tag=!换边] ~ ~ ~ spawnpoint @a[tag=游戏中,team=CT] -295 75 1198
execute @s[tag=VMW,score_爆破-地图=2,score_爆破-地图_min=2,score_爆破-CT比分_min=30] ~ ~ ~ execute @s[tag=!换边] ~ ~ ~ spawnpoint @a[tag=游戏中,team=T] -375 76 1302
execute @s[tag=VMW,score_爆破-地图=2,score_爆破-地图_min=2,score_爆破-CT比分_min=30] ~ ~ ~ execute @s[tag=!换边] ~ ~ ~ spawnpoint @a[tag=游戏中,team=CT] -301 76 1386
execute @s[tag=VMW,score_爆破-地图=3,score_爆破-地图_min=3,score_爆破-CT比分_min=30] ~ ~ ~ execute @s[tag=!换边] ~ ~ ~ spawnpoint @a[tag=游戏中,team=T] -388 78 1213
execute @s[tag=VMW,score_爆破-地图=3,score_爆破-地图_min=3,score_爆破-CT比分_min=30] ~ ~ ~ execute @s[tag=!换边] ~ ~ ~ spawnpoint @a[tag=游戏中,team=CT] -460 73 1184
execute @s[tag=VMW,score_爆破-地图=4,score_爆破-地图_min=4,score_爆破-CT比分_min=30] ~ ~ ~ execute @s[tag=!换边] ~ ~ ~ spawnpoint @a[tag=游戏中,team=T] -476 73 1581
execute @s[tag=VMW,score_爆破-地图=4,score_爆破-地图_min=4,score_爆破-CT比分_min=30] ~ ~ ~ execute @s[tag=!换边] ~ ~ ~ spawnpoint @a[tag=游戏中,team=CT] -394 72 1568
execute @s[tag=VMW,score_爆破-地图=5,score_爆破-地图_min=5,score_爆破-CT比分_min=30] ~ ~ ~ execute @s[tag=!换边] ~ ~ ~ spawnpoint @a[tag=游戏中,team=T] -171 73 1596
execute @s[tag=VMW,score_爆破-地图=5,score_爆破-地图_min=5,score_爆破-CT比分_min=30] ~ ~ ~ execute @s[tag=!换边] ~ ~ ~ spawnpoint @a[tag=游戏中,team=CT] -282 73 1462
execute @s[tag=VMW,score_爆破-CT比分_min=30] ~ ~ ~ execute @s[tag=!换边] ~ ~ ~ scoreboard players tag @s add 换边

#完胜
execute @s[tag=VMW,score_爆破-CT比分_min=65] ~ ~ ~ execute @a[tag=!中途加入] ~ ~ ~ scoreboard players add @s[team=CT,tag=游戏中] 钞票 150
execute @s[tag=VMW,score_爆破-CT比分_min=65] ~ ~ ~ execute @a[tag=!中途加入] ~ ~ ~ scoreboard players add @s[team=CT,tag=游戏中] 胜场数 1
execute @s[tag=VMW,score_爆破-CT比分_min=65] ~ ~ ~ execute @a[tag=!中途加入] ~ ~ ~ scoreboard players operation @s[team=CT,tag=游戏中] 爆破-金钱 /= §f除 爆破-金钱
execute @s[tag=VMW,score_爆破-CT比分_min=65] ~ ~ ~ execute @a[tag=!中途加入] ~ ~ ~ execute @s[team=CT,tag=游戏中] ~ ~ ~ scoreboard players operation @s 钞票 += @s 爆破-金钱
execute @s[tag=VMW,score_爆破-CT比分_min=65] ~ ~ ~ execute @a[tag=!中途加入] ~ ~ ~ scoreboard players add @s[team=T,tag=游戏中] 钞票 100
execute @s[tag=VMW,score_爆破-CT比分_min=65] ~ ~ ~ execute @a[tag=!中途加入] ~ ~ ~ scoreboard players remove @s[team=T,tag=游戏中,score_胜场数_min=1] 胜场数 1
execute @s[tag=VMW,score_爆破-CT比分_min=65] ~ ~ ~ execute @a[tag=!中途加入] ~ ~ ~ execute @s[team=CT,tag=游戏中] ~ ~ ~ tellraw @s [{"text":"§e完胜! +150钞票 +"},{"score":{"objective":"爆破-金钱","name":"@s"},"color":"yellow"},{"text":"§e钞票"}]
execute @s[tag=VMW,score_爆破-CT比分_min=65] ~ ~ ~ execute @a[tag=!中途加入] ~ ~ ~ tellraw @s[team=T,tag=游戏中] [{"text":"§e对局结束! +100钞票"}]
execute @s[tag=VMW,score_爆破-CT比分_min=65] ~ ~ ~ scoreboard players reset @a[tag=!PVE-游戏中] 爆破-金钱 0

execute @s[tag=VMW,score_爆破-CT比分_min=65] ~ ~ ~ playsound minecraft:entity.firework.twinkle ambient @a[tag=!PVE-游戏中] ~ ~ ~ 100000000
execute @s[tag=VMW,score_爆破-CT比分_min=65] ~ ~ ~ title @a[tag=!PVE-游戏中] title {"text":"§9§lCT 阵营§6§l大获全胜!"}
execute @s[tag=VMW,score_爆破-CT比分_min=65] ~ ~ ~ title @a[tag=!PVE-游戏中] subtitle {"text":"§6§l钞票已发放给已参与游戏玩家"}
execute @s[tag=VMW,score_爆破-CT比分_min=65] ~ ~ ~ function vmwp:游戏/团队死斗/重置

execute @s[tag=VMW,score_爆破-CT比分_min=65] ~ ~ ~ scoreboard players reset @s 爆破-T比分
execute @s[tag=VMW,score_爆破-CT比分_min=65] ~ ~ ~ scoreboard players reset @s 爆破-CT比分


execute @s[tag=VMW,score_爆破-T比分_min=65] ~ ~ ~ execute @a[tag=!中途加入] ~ ~ ~ scoreboard players add @s[team=T,tag=游戏中] 钞票 150
execute @s[tag=VMW,score_爆破-T比分_min=65] ~ ~ ~ execute @a[tag=!中途加入] ~ ~ ~ scoreboard players add @s[team=T,tag=游戏中] 胜场数 1
execute @s[tag=VMW,score_爆破-T比分_min=65] ~ ~ ~ execute @a[tag=!中途加入] ~ ~ ~ scoreboard players operation @s[team=T,tag=游戏中] 爆破-金钱 /= §f除 爆破-金钱
execute @s[tag=VMW,score_爆破-T比分_min=65] ~ ~ ~ execute @a[tag=!中途加入] ~ ~ ~ execute @s[team=T,tag=游戏中] ~ ~ ~ scoreboard players operation @s 钞票 += @s 爆破-金钱
execute @s[tag=VMW,score_爆破-T比分_min=65] ~ ~ ~ execute @a[tag=!中途加入] ~ ~ ~ scoreboard players add @s[team=CT,tag=游戏中] 钞票 100
execute @s[tag=VMW,score_爆破-T比分_min=65] ~ ~ ~ execute @a[tag=!中途加入] ~ ~ ~ scoreboard players remove @s[team=CT,tag=游戏中,score_胜场数_min=1] 胜场数 1
execute @s[tag=VMW,score_爆破-T比分_min=65] ~ ~ ~ execute @a[tag=!中途加入] ~ ~ ~ execute @s[team=T,tag=游戏中] ~ ~ ~ tellraw @s [{"text":"§e完胜! +150钞票 +"},{"score":{"objective":"爆破-金钱","name":"@s"},"color":"yellow"},{"text":"§e钞票"}]
execute @s[tag=VMW,score_爆破-T比分_min=65] ~ ~ ~ execute @a[tag=!中途加入] ~ ~ ~ tellraw @s[team=CT,tag=游戏中] [{"text":"§e对局结束! +100钞票"}]
execute @s[tag=VMW,score_爆破-T比分_min=65] ~ ~ ~ scoreboard players reset @a[tag=!PVE-游戏中] 爆破-金钱 0

execute @s[tag=VMW,score_爆破-T比分_min=65] ~ ~ ~ playsound minecraft:entity.firework.twinkle ambient @a[tag=!PVE-游戏中] ~ ~ ~ 100000000
execute @s[tag=VMW,score_爆破-T比分_min=65] ~ ~ ~ title @a[tag=!PVE-游戏中] title {"text":"§4§lT 阵营§6§l大获全胜!"}
execute @s[tag=VMW,score_爆破-T比分_min=65] ~ ~ ~ title @a[tag=!PVE-游戏中] subtitle {"text":"§6§l钞票已发放给已参与游戏玩家"}
execute @s[tag=VMW,score_爆破-T比分_min=65] ~ ~ ~ function vmwp:游戏/团队死斗/重置

execute @s[tag=VMW,score_爆破-T比分_min=65] ~ ~ ~ scoreboard players reset @s 爆破-CT比分
execute @s[tag=VMW,score_爆破-T比分_min=65] ~ ~ ~ scoreboard players reset @s 爆破-T比分


execute @s[tag=VMW,score_爆破-剩余时间=0] ~ ~ ~ scoreboard players operation @s 爆破-CT比分 -= @s 爆破-T比分

execute @s[tag=VMW,score_爆破-剩余时间=0,score_爆破-CT比分_min=1] ~ ~ ~ execute @a[tag=!中途加入] ~ ~ ~ scoreboard players add @s[team=CT,tag=游戏中] 钞票 150
execute @s[tag=VMW,score_爆破-剩余时间=0,score_爆破-CT比分_min=1] ~ ~ ~ execute @a[tag=!中途加入] ~ ~ ~ scoreboard players add @s[team=CT,tag=游戏中] 胜场数 1
execute @s[tag=VMW,score_爆破-剩余时间=0,score_爆破-CT比分_min=1] ~ ~ ~ execute @a[tag=!中途加入] ~ ~ ~ scoreboard players operation @s[team=CT,tag=游戏中] 爆破-金钱 /= §f除 爆破-金钱
execute @s[tag=VMW,score_爆破-剩余时间=0,score_爆破-CT比分_min=1] ~ ~ ~ execute @a[tag=!中途加入] ~ ~ ~ execute @s[team=CT,tag=游戏中] ~ ~ ~ scoreboard players operation @s 钞票 += @s 爆破-金钱
execute @s[tag=VMW,score_爆破-剩余时间=0,score_爆破-CT比分_min=1] ~ ~ ~ execute @a[tag=!中途加入] ~ ~ ~ scoreboard players add @s[team=T,tag=游戏中] 钞票 100
execute @s[tag=VMW,score_爆破-剩余时间=0,score_爆破-CT比分_min=1] ~ ~ ~ execute @a[tag=!中途加入] ~ ~ ~ scoreboard players remove @s[team=T,tag=游戏中,score_胜场数_min=1] 胜场数 1
execute @s[tag=VMW,score_爆破-剩余时间=0,score_爆破-CT比分_min=1] ~ ~ ~ execute @a[tag=!中途加入] ~ ~ ~ execute @s[team=CT,tag=游戏中] ~ ~ ~ tellraw @s [{"text":"§e完胜! +150钞票 +"},{"score":{"objective":"爆破-金钱","name":"@s"},"color":"yellow"},{"text":"§e钞票"}]
execute @s[tag=VMW,score_爆破-剩余时间=0,score_爆破-CT比分_min=1] ~ ~ ~ execute @a[tag=!中途加入] ~ ~ ~ tellraw @s[team=T,tag=游戏中] [{"text":"§e对局结束! +100钞票"}]
execute @s[tag=VMW,score_爆破-剩余时间=0,score_爆破-CT比分_min=1] ~ ~ ~ scoreboard players reset @a[tag=!PVE-游戏中] 爆破-金钱 0

execute @s[tag=VMW,score_爆破-剩余时间=0,score_爆破-CT比分_min=1] ~ ~ ~ playsound minecraft:entity.firework.twinkle ambient @a[tag=!PVE-游戏中] ~ ~ ~ 100000000
execute @s[tag=VMW,score_爆破-剩余时间=0,score_爆破-CT比分_min=1] ~ ~ ~ title @a[tag=!PVE-游戏中] title {"text":"§9§lCT 阵营§6§l大获全胜!"}
execute @s[tag=VMW,score_爆破-剩余时间=0,score_爆破-CT比分_min=1] ~ ~ ~ title @a[tag=!PVE-游戏中] subtitle {"text":"§6§l钞票已发放给已参与游戏玩家"}
execute @s[tag=VMW,score_爆破-剩余时间=0,score_爆破-CT比分_min=1] ~ ~ ~ function vmwp:游戏/团队死斗/重置

execute @s[tag=VMW,score_爆破-剩余时间=0,score_爆破-CT比分_min=1] ~ ~ ~ scoreboard players reset @s 爆破-T比分
execute @s[tag=VMW,score_爆破-剩余时间=0,score_爆破-CT比分_min=1] ~ ~ ~ scoreboard players reset @s 爆破-CT比分

execute @s[tag=VMW,score_爆破-剩余时间=0,score_爆破-CT比分=-1] ~ ~ ~ execute @a[tag=!中途加入] ~ ~ ~ scoreboard players add @s[team=T,tag=游戏中] 钞票 150
execute @s[tag=VMW,score_爆破-剩余时间=0,score_爆破-CT比分=-1] ~ ~ ~ execute @a[tag=!中途加入] ~ ~ ~ scoreboard players add @s[team=T,tag=游戏中] 胜场数 1
execute @s[tag=VMW,score_爆破-剩余时间=0,score_爆破-CT比分=-1] ~ ~ ~ execute @a[tag=!中途加入] ~ ~ ~ scoreboard players operation @s[team=T,tag=游戏中] 爆破-金钱 /= §f除 爆破-金钱
execute @s[tag=VMW,score_爆破-剩余时间=0,score_爆破-CT比分=-1] ~ ~ ~ execute @a[tag=!中途加入] ~ ~ ~ execute @s[team=T,tag=游戏中] ~ ~ ~ scoreboard players operation @s 钞票 += @s 爆破-金钱
execute @s[tag=VMW,score_爆破-剩余时间=0,score_爆破-CT比分=-1] ~ ~ ~ execute @a[tag=!中途加入] ~ ~ ~ scoreboard players add @s[team=CT,tag=游戏中] 钞票 100
execute @s[tag=VMW,score_爆破-剩余时间=0,score_爆破-CT比分=-1] ~ ~ ~ execute @a[tag=!中途加入] ~ ~ ~ scoreboard players remove @s[team=CT,tag=游戏中,score_胜场数_min=1] 胜场数 1
execute @s[tag=VMW,score_爆破-剩余时间=0,score_爆破-CT比分=-1] ~ ~ ~ execute @a[tag=!中途加入] ~ ~ ~ execute @s[team=T,tag=游戏中] ~ ~ ~ tellraw @s [{"text":"§e完胜! +150钞票 +"},{"score":{"objective":"爆破-金钱","name":"@s"},"color":"yellow"},{"text":"§e钞票"}]
execute @s[tag=VMW,score_爆破-剩余时间=0,score_爆破-CT比分=-1] ~ ~ ~ execute @a[tag=!中途加入] ~ ~ ~ tellraw @s[team=CT,tag=游戏中] [{"text":"§e对局结束! +100钞票"}]
execute @s[tag=VMW,score_爆破-剩余时间=0,score_爆破-CT比分=-1] ~ ~ ~ scoreboard players reset @a[tag=!PVE-游戏中] 爆破-金钱 0

execute @s[tag=VMW,score_爆破-剩余时间=0,score_爆破-CT比分=-1] ~ ~ ~ playsound minecraft:entity.firework.twinkle ambient @a[tag=!PVE-游戏中] ~ ~ ~ 100000000
execute @s[tag=VMW,score_爆破-剩余时间=0,score_爆破-CT比分=-1] ~ ~ ~ title @a[tag=!PVE-游戏中] title {"text":"§4§lT 阵营§6§l大获全胜!"}
execute @s[tag=VMW,score_爆破-剩余时间=0,score_爆破-CT比分=-1] ~ ~ ~ title @a[tag=!PVE-游戏中] subtitle {"text":"§6§l钞票已发放给已参与游戏玩家"}
execute @s[tag=VMW,score_爆破-剩余时间=0,score_爆破-CT比分=-1] ~ ~ ~ function vmwp:游戏/团队死斗/重置

execute @s[tag=VMW,score_爆破-剩余时间=0,score_爆破-CT比分=-1] ~ ~ ~ scoreboard players reset @s 爆破-CT比分
execute @s[tag=VMW,score_爆破-剩余时间=0,score_爆破-CT比分=-1] ~ ~ ~ scoreboard players reset @s 爆破-T比分

execute @s[tag=VMW,score_爆破-剩余时间=0,score_爆破-CT比分=0,score_爆破-CT比分_min=0] ~ ~ ~ execute @a[tag=!中途加入] ~ ~ ~ scoreboard players add @s[team=CT,tag=游戏中] 钞票 130
execute @s[tag=VMW,score_爆破-剩余时间=0,score_爆破-CT比分=0,score_爆破-CT比分_min=0] ~ ~ ~ execute @a[tag=!中途加入] ~ ~ ~ scoreboard players add @s[team=T,tag=游戏中] 钞票 130
execute @s[tag=VMW,score_爆破-剩余时间=0,score_爆破-CT比分=0,score_爆破-CT比分_min=0] ~ ~ ~ execute @a[tag=!中途加入] ~ ~ ~ execute @s[tag=游戏中] ~ ~ ~ tellraw @s [{"text":"§e不相上下! +130钞票"}]
execute @s[tag=VMW,score_爆破-剩余时间=0,score_爆破-CT比分=0,score_爆破-CT比分_min=0] ~ ~ ~ scoreboard players reset @a[tag=!PVE-游戏中] 爆破-金钱

execute @s[tag=VMW,score_爆破-剩余时间=0,score_爆破-CT比分=0,score_爆破-CT比分_min=0] ~ ~ ~ playsound minecraft:entity.firework.twinkle ambient @a[tag=!PVE-游戏中] ~ ~ ~ 100000000
execute @s[tag=VMW,score_爆破-剩余时间=0,score_爆破-CT比分=0,score_爆破-CT比分_min=0] ~ ~ ~ title @a[tag=!PVE-游戏中] title {"text":"§5§l平局!"}
execute @s[tag=VMW,score_爆破-剩余时间=0,score_爆破-CT比分=0,score_爆破-CT比分_min=0] ~ ~ ~ title @a[tag=!PVE-游戏中] subtitle {"text":"§6§l钞票已发放给已参与游戏玩家"}
execute @s[tag=VMW,score_爆破-剩余时间=0,score_爆破-CT比分=0,score_爆破-CT比分_min=0] ~ ~ ~ function vmwp:游戏/团队死斗/重置

execute @s[tag=VMW,score_爆破-剩余时间=0,score_爆破-CT比分=0,score_爆破-CT比分_min=0] ~ ~ ~ scoreboard players reset @s 爆破-T比分
execute @s[tag=VMW,score_爆破-剩余时间=0,score_爆破-CT比分=0,score_爆破-CT比分_min=0] ~ ~ ~ scoreboard players reset @s 爆破-CT比分















