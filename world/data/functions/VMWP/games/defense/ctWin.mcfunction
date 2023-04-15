title @a[tag=!PVE-IG] title {"text":"§9§lCT Team §6Victory!"}
tellraw @a[team=CT,tag=InGame] [{"text":"§6Win this game! +23 money"}]
tellraw @a[team=T,tag=InGame] [{"text":"§6The end of game! +15 money"}]
gamemode 2 @a[m=!2,tag=InGame]

scoreboard players add @a[team=CT,tag=InGame] money 23
scoreboard players add @a[team=T,tag=InGame] money 15
scoreboard players add @e[tag=VMW] CT-CTScore 1
scoreboard players add @e[tag=VMW] CT-Games 1
scoreboard players set @e[tag=VMW] CT-WaitT 100

scoreboard players tag @e[tag=VMW] add CT-WaitF