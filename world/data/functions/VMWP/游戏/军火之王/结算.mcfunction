tellraw @a[tag=!PVE-游戏中] [{"text":"§b§l军火之王前三名排行:\n"},{"text":"§a1st: "},{"selector":"@a[tag=1st]"},{"text":" §e分数: "},{"score":{"objective":"个人-第一击杀数","name":"@e[tag=VMW]"}}]
execute @p[tag=2nd] ~ ~ ~ tellraw @a[tag=!PVE-游戏中] [{"text":"§a2nd: "},{"selector":"@a[tag=2nd]"},{"text":" §e分数: "},{"score":{"objective":"个人-第二击杀数","name":"@e[tag=VMW]"}}]
execute @p[tag=3rd] ~ ~ ~ tellraw @a[tag=!PVE-游戏中] [{"text":"§a3rd: "},{"selector":"@a[tag=3rd]"},{"text":" §e分数: "},{"score":{"objective":"个人-第三击杀数","name":"@e[tag=VMW]"}}]

execute @a[team=CTT,tag=游戏中] ~ ~ ~ scoreboard players add @s[tag=!中途加入] 钞票 60
execute @a[team=CTT,tag=游戏中] ~ ~ ~ execute @s[tag=!1st] ~ ~ ~ execute @s[tag=!2nd] ~ ~ ~ tellraw @s[tag=!中途加入] [{"text":"§e对局结束! +60钞票"}]
execute @a[team=CTT,tag=游戏中] ~ ~ ~ execute @s[tag=!1st] ~ ~ ~ execute @s[tag=!2nd] ~ ~ ~ scoreboard players remove @s[score_胜场数_min=1] 胜场数 1

title @a[tag=!PVE-游戏中] title [{"text":"§b§l全场最佳: "},{"selector":"@a[tag=1st]"}]
title @a[tag=!PVE-游戏中] subtitle {"text":"§6§l钞票已发放给已参与游戏玩家"}
scoreboard players add @a[team=CTT,tag=1st] 钞票 70
scoreboard players add @a[team=CTT,tag=1st] 胜场数 1
execute @a[team=CTT,tag=1st] ~ ~ ~ tellraw @s [{"text":"§e完胜! +130钞票"}]
scoreboard players tag @a[tag=1st] remove 1st
scoreboard players add @a[team=CTT,tag=2nd] 钞票 40
scoreboard players add @a[team=CTT,tag=2nd] 胜场数 1
execute @a[team=CTT,tag=2nd] ~ ~ ~ tellraw @s [{"text":"§e胜利! +100钞票"}]
scoreboard players tag @a[tag=2nd] remove 2nd
scoreboard players reset @a[tag=!PVE-游戏中] 爆破-金钱

playsound minecraft:entity.firework.twinkle ambient @a[tag=!PVE-游戏中] ~ ~ ~ 100000000

function vmwp:游戏/军火之王/重置
