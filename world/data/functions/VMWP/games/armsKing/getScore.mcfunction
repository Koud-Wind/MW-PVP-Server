scoreboard players add @s PC-Score 1
xp 1L @s
effect @s 23 1 0 true

execute @s[score_PC-Score_min=80,score_PC-Score=80] ~ ~ ~ playsound minecraft:block.note.hat ambient @a[tag=!PVE-IG] ~ ~ ~ 10000000000 0
execute @s[score_PC-Score_min=80,score_PC-Score=80] ~ ~ ~ tellraw @a[tag=!PVE-IG] [{"selector":"@s"},{"text":" §creached 80 score"}]

#分数刷新
scoreboard players tag @a[tag=1st] remove 1st
scoreboard players tag @a[tag=2nd] remove 2nd
scoreboard players tag @a[tag=3rd] remove 3rd

execute @a[tag=InGame,team=CTT] ~ ~ ~ scoreboard players reset @e[tag=VMW] PC-1stK

execute @a[tag=InGame,team=CTT] ~ ~ ~ scoreboard players operation @e[tag=VMW] PC-1stK > @s PC-Score
execute @a[tag=InGame,team=CTT] ~ ~ ~ scoreboard players operation @s PC-KCC = @s PC-Score
execute @a[tag=InGame,team=CTT] ~ ~ ~ scoreboard players operation @s PC-KCC -= @e[tag=VMW] PC-1stK
scoreboard players tag @a[tag=InGame,team=CTT,score_PC-KCC_min=0,score_PC-KCC=0] add 1st

execute @a[tag=!1st,team=CTT] ~ ~ ~ scoreboard players reset @e[tag=VMW] PC-2ndK

execute @a[tag=!1st,team=CTT] ~ ~ ~ scoreboard players operation @e[tag=VMW] PC-2ndK > @s PC-Score
execute @a[tag=InGame,team=CTT] ~ ~ ~ scoreboard players operation @s PC-KCC = @s PC-Score
execute @a[tag=InGame,team=CTT] ~ ~ ~ scoreboard players operation @s PC-KCC -= @e[tag=VMW] PC-2ndK
scoreboard players tag @a[tag=InGame,team=CTT,score_PC-KCC_min=0,score_PC-KCC=0] add 2nd

execute @a[tag=!1st,team=CTT] ~ ~ ~ execute @s[tag=!2nd] ~ ~ ~ scoreboard players reset @e[tag=VMW] PC-3rdK

execute @a[tag=!1st,team=CTT] ~ ~ ~ execute @s[tag=!2nd] ~ ~ ~ scoreboard players operation @e[tag=VMW] PC-3rdK > @s PC-Score
execute @a[tag=InGame,team=CTT] ~ ~ ~ scoreboard players operation @s PC-KCC = @s PC-Score
execute @a[tag=InGame,team=CTT] ~ ~ ~ scoreboard players operation @s PC-KCC -= @e[tag=VMW] PC-3rdK
scoreboard players tag @a[tag=InGame,team=CTT,score_PC-KCC_min=0,score_PC-KCC=0] add 3rd

scoreboard players reset @a PC-KCC

#末期
scoreboard players set @s PC-CrownT 0