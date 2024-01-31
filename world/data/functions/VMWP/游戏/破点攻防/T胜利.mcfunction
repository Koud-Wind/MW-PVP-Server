title @a[tag=!PVE-游戏中] title {"text":"§4§lT 阵营§6§l胜利!"}
tellraw @a[team=T,tag=游戏中] [{"text":"§6本局获得胜利 +23金钱"}]
tellraw @a[team=CT,tag=游戏中] [{"text":"§6本局结束 +15金钱"}]
gamemode 2 @a[m=!2,tag=游戏中]

scoreboard players add @a[team=T,tag=游戏中] 爆破-金钱 23
scoreboard players add @a[team=CT,tag=游戏中] 爆破-金钱 15
scoreboard players add @e[tag=VMW] 爆破-T比分 1
scoreboard players add @e[tag=VMW] 爆破-游戏数 1
scoreboard players set @e[tag=VMW] 爆破-等待时间 100

scoreboard players tag @e[tag=VMW] add 爆破-等待