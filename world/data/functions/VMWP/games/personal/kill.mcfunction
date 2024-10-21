scoreboard players tag @a[tag=1st] remove 1st
scoreboard players tag @a[tag=2nd] remove 2nd
scoreboard players tag @a[tag=3rd] remove 3rd

execute @a[tag=InGame,team=CTT] ~ ~ ~ scoreboard players reset @e[tag=VMW] PC-1stK

execute @a[tag=InGame,team=CTT] ~ ~ ~ scoreboard players operation @e[tag=VMW] PC-1stK > @s PC-KillCount
execute @a[tag=InGame,team=CTT] ~ ~ ~ scoreboard players operation @s PC-KCC = @s PC-KillCount
execute @a[tag=InGame,team=CTT] ~ ~ ~ scoreboard players operation @s PC-KCC -= @e[tag=VMW] PC-1stK
scoreboard players tag @a[tag=InGame,team=CTT,score_PC-KCC_min=0,score_PC-KCC=0] add 1st

execute @a[tag=!1st,team=CTT] ~ ~ ~ scoreboard players reset @e[tag=VMW] PC-2ndK

execute @a[tag=!1st,team=CTT] ~ ~ ~ scoreboard players operation @e[tag=VMW] PC-2ndK > @s PC-KillCount
execute @a[tag=InGame,team=CTT] ~ ~ ~ scoreboard players operation @s PC-KCC = @s PC-KillCount
execute @a[tag=InGame,team=CTT] ~ ~ ~ scoreboard players operation @s PC-KCC -= @e[tag=VMW] PC-2ndK
scoreboard players tag @a[tag=InGame,team=CTT,score_PC-KCC_min=0,score_PC-KCC=0] add 2nd

execute @a[tag=!1st,team=CTT] ~ ~ ~ execute @s[tag=!2nd] ~ ~ ~ scoreboard players reset @e[tag=VMW] PC-3rdK

execute @a[tag=!1st,team=CTT] ~ ~ ~ execute @s[tag=!2nd] ~ ~ ~ scoreboard players operation @e[tag=VMW] PC-3rdK > @s PC-KillCount
execute @a[tag=InGame,team=CTT] ~ ~ ~ scoreboard players operation @s PC-KCC = @s PC-KillCount
execute @a[tag=InGame,team=CTT] ~ ~ ~ scoreboard players operation @s PC-KCC -= @e[tag=VMW] PC-3rdK
scoreboard players tag @a[tag=InGame,team=CTT,score_PC-KCC_min=0,score_PC-KCC=0] add 3rd

scoreboard players reset @a PC-KCC

title @s title {"text":""}
title @s subtitle {"text":"                            §e§l+6 money"}
playsound minecraft:entity.arrow.hit_player ambient @s ~ ~ ~ 100000000000
xp 1L @s
playsound minecraft:entity.player.death ambient @s ~ ~ ~ 10000000000

scoreboard players set @e[tag=VMW] PC-Glow 0
scoreboard players add @s money 6
scoreboard players tag @s add Camo

execute @s[score_PC-KillCount_min=15,score_PC-KillCount=15] ~ ~ ~ playsound minecraft:block.note.hat ambient @a[tag=!PVE-IG] ~ ~ ~ 10000000000 0
execute @s[score_PC-KillCount_min=15,score_PC-KillCount=15] ~ ~ ~ tellraw @a[tag=!PVE-IG] [{"selector":"@s"},{"text":"'s §ckill count has reached 15"}]

scoreboard players reset @a[score_PC-KillJ_min=1,tag=InGame] PC-KillJ