title @a[tag=!PVE-InGame] title [{"text":"§6End of Round "},{"score":{"objective":"PC-Games","name":"@s"},"color":"gold","bold":true}]
gamemode 2 @a[m=!2,tag=InGame]
scoreboard players set @a[tag=InGame] money 29
effect @a[tag=InGame] clear
scoreboard players set @e[tag=VMW] PC-WaitT 100

scoreboard players add @a[tag=survival3] PC-Score 1
xp 1L @a[tag=survival3]
tellraw @a[tag=survival3] [{"text":"§eYou are the third survivor! +1 score"}]
scoreboard players add @a[tag=survival2] PC-Score 2
xp 2L @a[tag=survival2]
tellraw @a[tag=survival2] [{"text":"§eYou are the second survivor! +2 score"}]
scoreboard players add @a[tag=survival1] PC-Score 3
xp 3L @a[tag=survival1]
tellraw @a[tag=survival1] [{"text":"§eYou are the first survivor! +3 score"}]

scoreboard players tag @a[tag=survival1] remove survival1
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

scoreboard players tag @a[tag=InGame] remove shop
scoreboard players tag @e[tag=GlowT] remove GlowT

scoreboard players tag @e[tag=VMW] add PC-WaitF

