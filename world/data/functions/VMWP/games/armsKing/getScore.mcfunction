scoreboard players add @s PC-Score 1
xp 1L @s
effect @s 23 1 0 true

execute @s[score_PC-Score_min=80,score_PC-Score=80] ~ ~ ~ playsound minecraft:block.note.hat ambient @a[tag=!PVE-IG] ~ ~ ~ 10000000000 0
execute @s[score_PC-Score_min=80,score_PC-Score=80] ~ ~ ~ tellraw @a[tag=!PVE-IG] [{"selector":"@s"},{"text":" §creached 80 score"}]

#分数刷新
scoreboard players tag @a[tag=1rd] remove 1rd
scoreboard players tag @a[tag=2rd] remove 2rd
scoreboard players tag @a[tag=3rd] remove 3rd

execute @a[tag=InGame,team=CTT,score_PC-Score_min=1] ~ ~ ~ scoreboard players reset @e[tag=VMW] PC-1rdK

execute @a[tag=InGame,team=CTT,score_PC-Score_min=1] ~ ~ ~ scoreboard players operation @e[tag=VMW] PC-1rdK > @s PC-Score
execute @a[tag=InGame,team=CTT] ~ ~ ~ scoreboard players operation @s PC-KCC = @s PC-Score
execute @a[tag=InGame,team=CTT] ~ ~ ~ scoreboard players operation @s PC-KCC -= @e[tag=VMW] PC-1rdK
scoreboard players tag @a[tag=InGame,team=CTT,score_PC-KCC_min=0,score_PC-KCC=0] add 1rd

execute @a[tag=!1rd,team=CTT,score_PC-Score_min=1] ~ ~ ~ scoreboard players reset @e[tag=VMW] PC-2rdK

execute @a[tag=!1rd,team=CTT,score_PC-Score_min=1] ~ ~ ~ scoreboard players operation @e[tag=VMW] PC-2rdK > @s PC-Score
execute @a[tag=InGame,team=CTT] ~ ~ ~ scoreboard players operation @s PC-KCC = @s PC-Score
execute @a[tag=InGame,team=CTT] ~ ~ ~ scoreboard players operation @s PC-KCC -= @e[tag=VMW] PC-2rdK
scoreboard players tag @a[tag=InGame,team=CTT,score_PC-KCC_min=0,score_PC-KCC=0] add 2rd

execute @a[tag=!1rd,team=CTT,score_PC-Score_min=1] ~ ~ ~ execute @s[tag=!2rd] ~ ~ ~ scoreboard players reset @e[tag=VMW] PC-3rdK

execute @a[tag=!1rd,team=CTT,score_PC-Score_min=1] ~ ~ ~ execute @s[tag=!2rd] ~ ~ ~ scoreboard players operation @e[tag=VMW] PC-3rdK > @s PC-Score
execute @a[tag=InGame,team=CTT] ~ ~ ~ scoreboard players operation @s PC-KCC = @s PC-Score
execute @a[tag=InGame,team=CTT] ~ ~ ~ scoreboard players operation @s PC-KCC -= @e[tag=VMW] PC-3rdK
scoreboard players tag @a[tag=InGame,team=CTT,score_PC-KCC_min=0,score_PC-KCC=0] add 3rd

scoreboard players reset @a PC-KCC

#末期
scoreboard players set @s PC-CrownT 0