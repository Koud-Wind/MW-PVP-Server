scoreboard players add @s 个人-分数 1
xp 1L @s
effect @s 23 1 0 true

execute @s[score_个人-分数_min=80,score_个人-分数=80] ~ ~ ~ playsound minecraft:block.note.hat ambient @a[tag=!PVE-游戏中] ~ ~ ~ 10000000000 0
execute @s[score_个人-分数_min=80,score_个人-分数=80] ~ ~ ~ tellraw @a[tag=!PVE-游戏中] [{"selector":"@s"},{"text":"§c§l的分数已满80"}]

#分数刷新
scoreboard players tag @a[tag=1st] remove 1st
scoreboard players tag @a[tag=2nd] remove 2nd
scoreboard players tag @a[tag=3rd] remove 3rd

execute @a[tag=游戏中,team=CTT] ~ ~ ~ scoreboard players reset @e[tag=VMW] 个人-第一击杀数

execute @a[tag=游戏中,team=CTT] ~ ~ ~ scoreboard players operation @e[tag=VMW] 个人-第一击杀数 > @s 个人-分数
execute @a[tag=游戏中,team=CTT] ~ ~ ~ scoreboard players operation @s 个人-击杀数计算 = @s 个人-分数
execute @a[tag=游戏中,team=CTT] ~ ~ ~ scoreboard players operation @s 个人-击杀数计算 -= @e[tag=VMW] 个人-第一击杀数
scoreboard players tag @a[tag=游戏中,team=CTT,score_个人-击杀数计算_min=0,score_个人-击杀数计算=0] add 1st

execute @a[tag=!1st,team=CTT] ~ ~ ~ scoreboard players reset @e[tag=VMW] 个人-第二击杀数

execute @a[tag=!1st,team=CTT] ~ ~ ~ scoreboard players operation @e[tag=VMW] 个人-第二击杀数 > @s 个人-分数
execute @a[tag=游戏中,team=CTT] ~ ~ ~ scoreboard players operation @s 个人-击杀数计算 = @s 个人-分数
execute @a[tag=游戏中,team=CTT] ~ ~ ~ scoreboard players operation @s 个人-击杀数计算 -= @e[tag=VMW] 个人-第二击杀数
scoreboard players tag @a[tag=游戏中,team=CTT,score_个人-击杀数计算_min=0,score_个人-击杀数计算=0] add 2nd

execute @a[tag=!1st,team=CTT] ~ ~ ~ execute @s[tag=!2nd] ~ ~ ~ scoreboard players reset @e[tag=VMW] 个人-第三击杀数

execute @a[tag=!1st,team=CTT] ~ ~ ~ execute @s[tag=!2nd] ~ ~ ~ scoreboard players operation @e[tag=VMW] 个人-第三击杀数 > @s 个人-分数
execute @a[tag=游戏中,team=CTT] ~ ~ ~ scoreboard players operation @s 个人-击杀数计算 = @s 个人-分数
execute @a[tag=游戏中,team=CTT] ~ ~ ~ scoreboard players operation @s 个人-击杀数计算 -= @e[tag=VMW] 个人-第三击杀数
scoreboard players tag @a[tag=游戏中,team=CTT,score_个人-击杀数计算_min=0,score_个人-击杀数计算=0] add 3rd

scoreboard players reset @a 个人-击杀数计算

#末期
scoreboard players set @s 个人-王冠计时器 0