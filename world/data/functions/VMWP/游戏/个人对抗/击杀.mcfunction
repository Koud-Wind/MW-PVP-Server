scoreboard players tag @a[tag=1st] remove 1st
scoreboard players tag @a[tag=2nd] remove 2nd
scoreboard players tag @a[tag=3rd] remove 3rd

execute @a[tag=游戏中,team=CTT] ~ ~ ~ scoreboard players reset @e[tag=VMW] 个人-第一击杀数

execute @a[tag=游戏中,team=CTT] ~ ~ ~ scoreboard players operation @e[tag=VMW] 个人-第一击杀数 > @s 个人-击杀数
execute @a[tag=游戏中,team=CTT] ~ ~ ~ scoreboard players operation @s 个人-击杀数计算 = @s 个人-击杀数
execute @a[tag=游戏中,team=CTT] ~ ~ ~ scoreboard players operation @s 个人-击杀数计算 -= @e[tag=VMW] 个人-第一击杀数
scoreboard players tag @a[tag=游戏中,team=CTT,score_个人-击杀数计算_min=0,score_个人-击杀数计算=0] add 1st

execute @a[tag=!1st,team=CTT] ~ ~ ~ scoreboard players reset @e[tag=VMW] 个人-第二击杀数

execute @a[tag=!1st,team=CTT] ~ ~ ~ scoreboard players operation @e[tag=VMW] 个人-第二击杀数 > @s 个人-击杀数
execute @a[tag=游戏中,team=CTT] ~ ~ ~ scoreboard players operation @s 个人-击杀数计算 = @s 个人-击杀数
execute @a[tag=游戏中,team=CTT] ~ ~ ~ scoreboard players operation @s 个人-击杀数计算 -= @e[tag=VMW] 个人-第二击杀数
scoreboard players tag @a[tag=游戏中,team=CTT,score_个人-击杀数计算_min=0,score_个人-击杀数计算=0] add 2nd

execute @a[tag=!1st,team=CTT] ~ ~ ~ execute @s[tag=!2nd] ~ ~ ~ scoreboard players reset @e[tag=VMW] 个人-第三击杀数

execute @a[tag=!1st,team=CTT] ~ ~ ~ execute @s[tag=!2nd] ~ ~ ~ scoreboard players operation @e[tag=VMW] 个人-第三击杀数 > @s 个人-击杀数
execute @a[tag=游戏中,team=CTT] ~ ~ ~ scoreboard players operation @s 个人-击杀数计算 = @s 个人-击杀数
execute @a[tag=游戏中,team=CTT] ~ ~ ~ scoreboard players operation @s 个人-击杀数计算 -= @e[tag=VMW] 个人-第三击杀数
scoreboard players tag @a[tag=游戏中,team=CTT,score_个人-击杀数计算_min=0,score_个人-击杀数计算=0] add 3rd

scoreboard players reset @a 个人-击杀数计算

title @s title {"text":""}
title @s subtitle {"text":"                            §e§l+6金钱"}
playsound minecraft:entity.arrow.hit_player ambient @s ~ ~ ~ 100000000000
xp 1L @s
playsound minecraft:entity.player.death ambient @s ~ ~ ~ 10000000000

scoreboard players set @e[tag=VMW] 个人-不击杀发光 0
scoreboard players add @s 爆破-金钱 6
scoreboard players tag @s add 涂装

execute @s[score_个人-击杀数_min=15,score_个人-击杀数=15] ~ ~ ~ playsound minecraft:block.note.hat ambient @a[tag=!PVE-游戏中] ~ ~ ~ 10000000000 0
execute @s[score_个人-击杀数_min=15,score_个人-击杀数=15] ~ ~ ~ tellraw @a[tag=!PVE-游戏中] [{"selector":"@s"},{"text":"§c§l的击杀数已满15"}]

scoreboard players reset @a[score_个人-击杀判定_min=1,tag=游戏中] 个人-击杀判定