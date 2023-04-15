#Exchange处理
execute @e[tag=VMW,score_CT-Games_min=2] ~ ~ ~ scoreboard players tag @a[team=CT,tag=InGame] add Exchange
execute @e[tag=VMW,score_CT-Games_min=2] ~ ~ ~ scoreboard teams join CT @a[team=T,tag=InGame]
execute @e[tag=VMW,score_CT-Games_min=2] ~ ~ ~ scoreboard teams join T @a[team=CT,tag=Exchange]
execute @e[tag=VMW,score_CT-Games_min=2] ~ ~ ~ scoreboard players tag @a[tag=Exchange] remove Exchange

execute @e[tag=VMW,score_CT-Games_min=2] ~ ~ ~ scoreboard players operation @e[tag=VMW] CT-CTScore >< @e[tag=VMW] CT-TScore
execute @e[tag=VMW,score_CT-Games_min=2] ~ ~ ~ title @a[tag=!PVE-IG] title {"text":"§bTeam swapping"}
execute @e[tag=VMW,score_CT-Games_min=2] ~ ~ ~ title @a[team=CT] subtitle [{"text":"§eKill all opponents or stick to target point to win"}]
execute @e[tag=VMW,score_CT-Games_min=2] ~ ~ ~ title @a[team=T] subtitle [{"text":"§eKill all opponents or occupy target points to win"}]
execute @e[tag=VMW,score_CT-Games_min=2] ~ ~ ~ scoreboard players set @s CT-Games 0

#处理
execute @e[tag=VMW] ~ ~ ~ function vmwp:games/defense/map

clear @a[tag=!PVE-IG]
effect @a[tag=InGame] 1 1000000 0 true


execute @e[tag=VMW] ~ ~ ~ scoreboard players tag @a[tag=InGame] add Camo
execute @e[tag=VMW] ~ ~ ~ scoreboard players tag @a[tag=InGame] add Melee
execute @e[tag=VMW] ~ ~ ~ scoreboard players tag @a[tag=InGame] add shop

scoreboard players tag @e[tag=VMW] remove CT-WaitF
function vmwp:games/defense/setMap

execute @e[tag=VMW] ~ ~ ~ effect @a[tag=InGame] 2 10 50 true
execute @e[tag=VMW] ~ ~ ~ effect @a[tag=InGame] 8 11 130 true
execute @e[tag=VMW] ~ ~ ~ effect @a[tag=InGame] 12 15 0 true
execute @e[tag=VMW] ~ ~ ~ effect @a[tag=InGame] 14 10 0 true
execute @e[tag=VMW] ~ ~ ~ effect @a[tag=InGame] 15 10 0 true
execute @e[tag=VMW] ~ ~ ~ effect @a[tag=InGame] 11 10 50 true
execute @e[tag=VMW] ~ ~ ~ effect @a[tag=InGame] 6 1 4 true
execute @e[tag=VMW] ~ ~ ~ effect @a[tag=InGame] 25 9 130 true

scoreboard players set @e[score_ThrowingT_min=0,type=minecraft:armor_stand] ThrowingT 299
scoreboard players set @a[tag=InGame] CT-Prompt 0
scoreboard players set @a[tag=InGame] CT-Death 0
scoreboard players set @a[tag=InGame] MainW 0
scoreboard players set @a[tag=InGame] SecondaryW 0
scoreboard players set @e[tag=VMW] CT-TR 5000
scoreboard players set @e[tag=VMW] CT-Occupy 0
scoreboard players set @e[tag=VMW] CT-CTLife 20
scoreboard players set @e[tag=VMW] CT-TLife 20