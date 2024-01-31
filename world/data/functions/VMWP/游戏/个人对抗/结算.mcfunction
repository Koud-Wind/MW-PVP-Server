tellraw @a[tag=!PVE-游戏中] [{"text":"§b§l个人对抗前三名排行:\n"},{"text":"§a1rd: "},{"selector":"@a[tag=1rd]"},{"text":" §c击杀数: "},{"score":{"objective":"个人-第一击杀数","name":"@e[tag=VMW]"}}]
execute @p[tag=2rd] ~ ~ ~ tellraw @a[tag=!PVE-游戏中] [{"text":"§a2rd: "},{"selector":"@a[tag=2rd]"},{"text":" §c击杀数: "},{"score":{"objective":"个人-第二击杀数","name":"@e[tag=VMW]"}}]
execute @p[tag=3rd] ~ ~ ~ tellraw @a[tag=!PVE-游戏中] [{"text":"§a3rd: "},{"selector":"@a[tag=3rd]"},{"text":" §c击杀数: "},{"score":{"objective":"个人-第三击杀数","name":"@e[tag=VMW]"}}]

execute @a[team=CTT,tag=游戏中] ~ ~ ~ scoreboard players add @s[tag=!中途加入] 钞票 50
execute @a[team=CTT,tag=游戏中] ~ ~ ~ execute @s[tag=!1rd] ~ ~ ~ execute @s[tag=!2rd] ~ ~ ~ tellraw @s[tag=!中途加入] [{"text":"§e对局结束! +50钞票"}]
execute @a[team=CTT,tag=游戏中] ~ ~ ~ execute @s[tag=!1rd] ~ ~ ~ execute @s[tag=!2rd] ~ ~ ~ scoreboard players remove @s[score_胜场数_min=1] 胜场数 1

title @a[tag=!PVE-游戏中] title [{"text":"§b§l全场最佳: "},{"selector":"@a[tag=1rd]"}]
title @a[tag=!PVE-游戏中] subtitle {"text":"§6§l钞票已发放给已参与游戏玩家"}
scoreboard players add @a[team=CTT,tag=1rd] 钞票 50
scoreboard players add @a[team=CTT,tag=1rd] 胜场数 1
scoreboard players operation @a[team=CTT,tag=1rd] 爆破-金钱 /= §f除 爆破-金钱
execute @a[team=CTT,tag=1rd] ~ ~ ~ scoreboard players operation @s 钞票 += @s 爆破-金钱
execute @a[team=CTT,tag=1rd] ~ ~ ~ tellraw @s [{"text":"§e完胜! +100钞票 +"},{"score":{"objective":"爆破-金钱","name":"@s"},"color":"yellow"},{"text":"§e钞票"}]
scoreboard players tag @a[tag=1rd] remove 1rd
scoreboard players add @a[team=CTT,tag=2rd] 钞票 30
scoreboard players add @a[team=CTT,tag=2rd] 胜场数 1
scoreboard players operation @a[team=CTT,tag=2rd] 爆破-金钱 /= §f除 爆破-金钱
execute @a[team=CTT,tag=2rd] ~ ~ ~ scoreboard players operation @s 钞票 += @s 爆破-金钱
execute @a[team=CTT,tag=2rd] ~ ~ ~ tellraw @s [{"text":"§e胜利! +80钞票 +"},{"score":{"objective":"爆破-金钱","name":"@s"},"color":"yellow"},{"text":"§e钞票"}]
scoreboard players tag @a[tag=2rd] remove 2rd
scoreboard players reset @a[tag=!PVE-游戏中] 爆破-金钱 0

playsound minecraft:entity.firework.twinkle ambient @a[tag=!PVE-游戏中] ~ ~ ~ 100000000

function vmwp:游戏/个人对抗/重置
