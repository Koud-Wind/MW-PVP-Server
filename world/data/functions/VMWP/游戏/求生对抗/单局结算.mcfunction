title @a[tag=!PVE-游戏中] title [{"text":"§6§l第 "},{"score":{"objective":"个人-游戏数","name":"@s"},"color":"gold","bold":true},{"text":" §6§l回合结束"}]
gamemode 2 @a[m=!2,tag=游戏中]
scoreboard players set @a[tag=游戏中] 爆破-金钱 29
effect @a[tag=游戏中] clear
scoreboard players set @e[tag=VMW] 个人-等待时间 100

scoreboard players add @a[tag=存活3] 个人-分数 1
xp 1L @a[tag=存活3]
tellraw @a[tag=存活3] [{"text":"§e你是第三位存活者! +1分"}]
scoreboard players add @a[tag=存活2] 个人-分数 2
xp 2L @a[tag=存活2]
tellraw @a[tag=存活2] [{"text":"§e你是第二位存活者! +2分"}]
scoreboard players add @a[tag=存活1] 个人-分数 3
xp 3L @a[tag=存活1]
tellraw @a[tag=存活1] [{"text":"§e你是第一位存活者! +3分"}]

scoreboard players tag @a[tag=存活1] remove 存活1
scoreboard players tag @a[tag=1rd] remove 1rd
scoreboard players tag @a[tag=2rd] remove 2rd
scoreboard players tag @a[tag=3rd] remove 3rd

execute @a[tag=游戏中,team=CTT] ~ ~ ~ scoreboard players reset @e[tag=VMW] 个人-第一击杀数

execute @a[tag=游戏中,team=CTT] ~ ~ ~ scoreboard players operation @e[tag=VMW] 个人-第一击杀数 > @s 个人-分数
execute @a[tag=游戏中,team=CTT] ~ ~ ~ scoreboard players operation @s 个人-击杀数计算 = @s 个人-分数
execute @a[tag=游戏中,team=CTT] ~ ~ ~ scoreboard players operation @s 个人-击杀数计算 -= @e[tag=VMW] 个人-第一击杀数
scoreboard players tag @a[tag=游戏中,team=CTT,score_个人-击杀数计算_min=0,score_个人-击杀数计算=0] add 1rd

execute @a[tag=!1rd,team=CTT] ~ ~ ~ scoreboard players reset @e[tag=VMW] 个人-第二击杀数

execute @a[tag=!1rd,team=CTT] ~ ~ ~ scoreboard players operation @e[tag=VMW] 个人-第二击杀数 > @s 个人-分数
execute @a[tag=游戏中,team=CTT] ~ ~ ~ scoreboard players operation @s 个人-击杀数计算 = @s 个人-分数
execute @a[tag=游戏中,team=CTT] ~ ~ ~ scoreboard players operation @s 个人-击杀数计算 -= @e[tag=VMW] 个人-第二击杀数
scoreboard players tag @a[tag=游戏中,team=CTT,score_个人-击杀数计算_min=0,score_个人-击杀数计算=0] add 2rd

execute @a[tag=!1rd,team=CTT] ~ ~ ~ execute @s[tag=!2rd] ~ ~ ~ scoreboard players reset @e[tag=VMW] 个人-第三击杀数

execute @a[tag=!1rd,team=CTT] ~ ~ ~ execute @s[tag=!2rd] ~ ~ ~ scoreboard players operation @e[tag=VMW] 个人-第三击杀数 > @s 个人-分数
execute @a[tag=游戏中,team=CTT] ~ ~ ~ scoreboard players operation @s 个人-击杀数计算 = @s 个人-分数
execute @a[tag=游戏中,team=CTT] ~ ~ ~ scoreboard players operation @s 个人-击杀数计算 -= @e[tag=VMW] 个人-第三击杀数
scoreboard players tag @a[tag=游戏中,team=CTT,score_个人-击杀数计算_min=0,score_个人-击杀数计算=0] add 3rd

scoreboard players reset @a 个人-击杀数计算

scoreboard players tag @a[tag=游戏中] remove 商店
scoreboard players tag @e[tag=发光提示] remove 发光提示

scoreboard players tag @e[tag=VMW] add 个人-等待

