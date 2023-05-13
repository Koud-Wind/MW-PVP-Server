#Exchange
execute @s[tag=VMW,score_CT-TScore_min=30] ~ ~ ~ execute @s[tag=!Exchange] ~ ~ ~ tellraw @a[tag=!PVE-InGame] {"text":"§eSpawnpoint swapped!"}
execute @s[tag=VMW,score_CT-TScore_min=30] ~ ~ ~ execute @s[tag=!Exchange] ~ ~ ~ playsound minecraft:block.note.pling ambient @a[tag=!PVE-InGame] ~ ~ ~ 1000000000 2
execute @s[tag=VMW,score_CT-Map=0,score_CT-TScore_min=30] ~ ~ ~ execute @s[tag=!Exchange] ~ ~ ~ spawnpoint @a[tag=InGame,team=T] -265 68 1289
execute @s[tag=VMW,score_CT-Map=0,score_CT-TScore_min=30] ~ ~ ~ execute @s[tag=!Exchange] ~ ~ ~ spawnpoint @a[tag=InGame,team=CT] -176 76 1313
execute @s[tag=VMW,score_CT-Map=1,score_CT-Map_min=1,score_CT-TScore_min=30] ~ ~ ~ execute @s[tag=!Exchange] ~ ~ ~ spawnpoint @a[tag=InGame,team=T] -366 78 1233
execute @s[tag=VMW,score_CT-Map=1,score_CT-Map_min=1,score_CT-TScore_min=30] ~ ~ ~ execute @s[tag=!Exchange] ~ ~ ~ spawnpoint @a[tag=InGame,team=CT] -295 75 1198
execute @s[tag=VMW,score_CT-Map=2,score_CT-Map_min=2,score_CT-TScore_min=30] ~ ~ ~ execute @s[tag=!Exchange] ~ ~ ~ spawnpoint @a[tag=InGame,team=T] -375 76 1302
execute @s[tag=VMW,score_CT-Map=2,score_CT-Map_min=2,score_CT-TScore_min=30] ~ ~ ~ execute @s[tag=!Exchange] ~ ~ ~ spawnpoint @a[tag=InGame,team=CT] -301 76 1386
execute @s[tag=VMW,score_CT-Map=3,score_CT-Map_min=3,score_CT-TScore_min=30] ~ ~ ~ execute @s[tag=!Exchange] ~ ~ ~ spawnpoint @a[tag=InGame,team=T] -388 78 1213
execute @s[tag=VMW,score_CT-Map=3,score_CT-Map_min=3,score_CT-TScore_min=30] ~ ~ ~ execute @s[tag=!Exchange] ~ ~ ~ spawnpoint @a[tag=InGame,team=CT] -460 73 1184
execute @s[tag=VMW,score_CT-Map=4,score_CT-Map_min=4,score_CT-TScore_min=30] ~ ~ ~ execute @s[tag=!Exchange] ~ ~ ~ spawnpoint @a[tag=InGame,team=T] -476 73 1581
execute @s[tag=VMW,score_CT-Map=4,score_CT-Map_min=4,score_CT-TScore_min=30] ~ ~ ~ execute @s[tag=!Exchange] ~ ~ ~ spawnpoint @a[tag=InGame,team=CT] -394 72 1568
execute @s[tag=VMW,score_CT-Map=5,score_CT-Map_min=5,score_CT-TScore_min=30] ~ ~ ~ execute @s[tag=!Exchange] ~ ~ ~ spawnpoint @a[tag=InGame,team=T] -171 73 1596
execute @s[tag=VMW,score_CT-Map=5,score_CT-Map_min=5,score_CT-TScore_min=30] ~ ~ ~ execute @s[tag=!Exchange] ~ ~ ~ spawnpoint @a[tag=InGame,team=CT] -282 73 1462
execute @s[tag=VMW,score_CT-TScore_min=30] ~ ~ ~ execute @s[tag=!Exchange] ~ ~ ~ scoreboard players tag @s add Exchange

execute @s[tag=VMW,score_CT-CTScore_min=30] ~ ~ ~ execute @s[tag=!Exchange] ~ ~ ~ tellraw @a[tag=!PVE-InGame] {"text":"§eSpawnpoint swapped!"}
execute @s[tag=VMW,score_CT-CTScore_min=30] ~ ~ ~ execute @s[tag=!Exchange] ~ ~ ~ playsound minecraft:block.note.pling ambient @a[tag=!PVE-InGame] ~ ~ ~ 1000000000 2
execute @s[tag=VMW,score_CT-Map=0,score_CT-CTScore_min=30] ~ ~ ~ execute @s[tag=!Exchange] ~ ~ ~ spawnpoint @a[tag=InGame,team=T] -265 68 1289
execute @s[tag=VMW,score_CT-Map=0,score_CT-CTScore_min=30] ~ ~ ~ execute @s[tag=!Exchange] ~ ~ ~ spawnpoint @a[tag=InGame,team=CT] -176 76 1313
execute @s[tag=VMW,score_CT-Map=1,score_CT-Map_min=1,score_CT-CTScore_min=30] ~ ~ ~ execute @s[tag=!Exchange] ~ ~ ~ spawnpoint @a[tag=InGame,team=T] -366 78 1233
execute @s[tag=VMW,score_CT-Map=1,score_CT-Map_min=1,score_CT-CTScore_min=30] ~ ~ ~ execute @s[tag=!Exchange] ~ ~ ~ spawnpoint @a[tag=InGame,team=CT] -295 75 1198
execute @s[tag=VMW,score_CT-Map=2,score_CT-Map_min=2,score_CT-CTScore_min=30] ~ ~ ~ execute @s[tag=!Exchange] ~ ~ ~ spawnpoint @a[tag=InGame,team=T] -375 76 1302
execute @s[tag=VMW,score_CT-Map=2,score_CT-Map_min=2,score_CT-CTScore_min=30] ~ ~ ~ execute @s[tag=!Exchange] ~ ~ ~ spawnpoint @a[tag=InGame,team=CT] -301 76 1386
execute @s[tag=VMW,score_CT-Map=3,score_CT-Map_min=3,score_CT-CTScore_min=30] ~ ~ ~ execute @s[tag=!Exchange] ~ ~ ~ spawnpoint @a[tag=InGame,team=T] -388 78 1213
execute @s[tag=VMW,score_CT-Map=3,score_CT-Map_min=3,score_CT-CTScore_min=30] ~ ~ ~ execute @s[tag=!Exchange] ~ ~ ~ spawnpoint @a[tag=InGame,team=CT] -460 73 1184
execute @s[tag=VMW,score_CT-Map=4,score_CT-Map_min=4,score_CT-CTScore_min=30] ~ ~ ~ execute @s[tag=!Exchange] ~ ~ ~ spawnpoint @a[tag=InGame,team=T] -476 73 1581
execute @s[tag=VMW,score_CT-Map=4,score_CT-Map_min=4,score_CT-CTScore_min=30] ~ ~ ~ execute @s[tag=!Exchange] ~ ~ ~ spawnpoint @a[tag=InGame,team=CT] -394 72 1568
execute @s[tag=VMW,score_CT-Map=5,score_CT-Map_min=5,score_CT-CTScore_min=30] ~ ~ ~ execute @s[tag=!Exchange] ~ ~ ~ spawnpoint @a[tag=InGame,team=T] -171 73 1596
execute @s[tag=VMW,score_CT-Map=5,score_CT-Map_min=5,score_CT-CTScore_min=30] ~ ~ ~ execute @s[tag=!Exchange] ~ ~ ~ spawnpoint @a[tag=InGame,team=CT] -282 73 1462
execute @s[tag=VMW,score_CT-CTScore_min=30] ~ ~ ~ execute @s[tag=!Exchange] ~ ~ ~ scoreboard players tag @s add Exchange

#完胜
execute @s[tag=VMW,score_CT-CTScore_min=65] ~ ~ ~ execute @a[tag=!JoinHalfway] ~ ~ ~ scoreboard players add @s[team=CT,tag=InGame] note 150
execute @s[tag=VMW,score_CT-CTScore_min=65] ~ ~ ~ execute @a[tag=!JoinHalfway] ~ ~ ~ scoreboard players add @s[team=CT,tag=InGame] wins 1
execute @s[tag=VMW,score_CT-CTScore_min=65] ~ ~ ~ execute @a[tag=!JoinHalfway] ~ ~ ~ scoreboard players operation @s[team=CT,tag=InGame] money /= §fdivision money
execute @s[tag=VMW,score_CT-CTScore_min=65] ~ ~ ~ execute @a[tag=!JoinHalfway] ~ ~ ~ execute @s[team=CT,tag=InGame] ~ ~ ~ scoreboard players operation @s note += @s money
execute @s[tag=VMW,score_CT-CTScore_min=65] ~ ~ ~ execute @a[tag=!JoinHalfway] ~ ~ ~ scoreboard players add @s[team=T,tag=InGame] note 100
execute @s[tag=VMW,score_CT-CTScore_min=65] ~ ~ ~ execute @a[tag=!JoinHalfway] ~ ~ ~ scoreboard players remove @s[team=T,tag=InGame,score_wins_min=1] wins 1
execute @s[tag=VMW,score_CT-CTScore_min=65] ~ ~ ~ execute @a[tag=!JoinHalfway] ~ ~ ~ execute @s[team=CT,tag=InGame] ~ ~ ~ tellraw @s [{"text":"§eComplete victory! +150 note +"},{"score":{"objective":"money","name":"@s"},"color":"yellow"},{"text":" §enote"}]
execute @s[tag=VMW,score_CT-CTScore_min=65] ~ ~ ~ execute @a[tag=!JoinHalfway] ~ ~ ~ tellraw @s[team=T,tag=InGame] [{"text":"§eThe match is over! +100 note"}]
execute @s[tag=VMW,score_CT-CTScore_min=65] ~ ~ ~ scoreboard players reset @a[tag=!PVE-InGame] money 0

execute @s[tag=VMW,score_CT-CTScore_min=65] ~ ~ ~ playsound minecraft:entity.firework.twinkle ambient @a[tag=!PVE-InGame] ~ ~ ~ 100000000
execute @s[tag=VMW,score_CT-CTScore_min=65] ~ ~ ~ title @a[tag=!PVE-InGame] title {"text":"§9§lCT §6Gain complete victory!"}
execute @s[tag=VMW,score_CT-CTScore_min=65] ~ ~ ~ title @a[tag=!PVE-InGame] subtitle {"text":"§eNote have been distributed to game players"}
execute @s[tag=VMW,score_CT-CTScore_min=65] ~ ~ ~ function vmwp:games/teamDM/reset

execute @s[tag=VMW,score_CT-CTScore_min=65] ~ ~ ~ scoreboard players reset @s CT-TScore
execute @s[tag=VMW,score_CT-CTScore_min=65] ~ ~ ~ scoreboard players reset @s CT-CTScore


execute @s[tag=VMW,score_CT-TScore_min=65] ~ ~ ~ execute @a[tag=!JoinHalfway] ~ ~ ~ scoreboard players add @s[team=T,tag=InGame] note 150
execute @s[tag=VMW,score_CT-TScore_min=65] ~ ~ ~ execute @a[tag=!JoinHalfway] ~ ~ ~ scoreboard players add @s[team=T,tag=InGame] wins 1
execute @s[tag=VMW,score_CT-TScore_min=65] ~ ~ ~ execute @a[tag=!JoinHalfway] ~ ~ ~ scoreboard players operation @s[team=T,tag=InGame] money /= §fdivision money
execute @s[tag=VMW,score_CT-TScore_min=65] ~ ~ ~ execute @a[tag=!JoinHalfway] ~ ~ ~ execute @s[team=T,tag=InGame] ~ ~ ~ scoreboard players operation @s note += @s money
execute @s[tag=VMW,score_CT-TScore_min=65] ~ ~ ~ execute @a[tag=!JoinHalfway] ~ ~ ~ scoreboard players add @s[team=CT,tag=InGame] note 100
execute @s[tag=VMW,score_CT-TScore_min=65] ~ ~ ~ execute @a[tag=!JoinHalfway] ~ ~ ~ scoreboard players remove @s[team=CT,tag=InGame,score_wins_min=1] wins 1
execute @s[tag=VMW,score_CT-TScore_min=65] ~ ~ ~ execute @a[tag=!JoinHalfway] ~ ~ ~ execute @s[team=T,tag=InGame] ~ ~ ~ tellraw @s [{"text":"§eComplete victory! +150 note +"},{"score":{"objective":"money","name":"@s"},"color":"yellow"},{"text":" §enote"}]
execute @s[tag=VMW,score_CT-TScore_min=65] ~ ~ ~ execute @a[tag=!JoinHalfway] ~ ~ ~ tellraw @s[team=CT,tag=InGame] [{"text":"§eThe match is over! +100 note"}]
execute @s[tag=VMW,score_CT-TScore_min=65] ~ ~ ~ scoreboard players reset @a[tag=!PVE-InGame] money 0

execute @s[tag=VMW,score_CT-TScore_min=65] ~ ~ ~ playsound minecraft:entity.firework.twinkle ambient @a[tag=!PVE-InGame] ~ ~ ~ 100000000
execute @s[tag=VMW,score_CT-TScore_min=65] ~ ~ ~ title @a[tag=!PVE-InGame] title {"text":"§4§lT §6Gain complete victory!"}
execute @s[tag=VMW,score_CT-TScore_min=65] ~ ~ ~ title @a[tag=!PVE-InGame] subtitle {"text":"§eNote have been distributed to game players"}
execute @s[tag=VMW,score_CT-TScore_min=65] ~ ~ ~ function vmwp:games/teamDM/reset

execute @s[tag=VMW,score_CT-TScore_min=65] ~ ~ ~ scoreboard players reset @s CT-CTScore
execute @s[tag=VMW,score_CT-TScore_min=65] ~ ~ ~ scoreboard players reset @s CT-TScore


execute @s[tag=VMW,score_CT-TR=0] ~ ~ ~ scoreboard players operation @s CT-CTScore -= @s CT-TScore

execute @s[tag=VMW,score_CT-TR=0,score_CT-CTScore_min=1] ~ ~ ~ execute @a[tag=!JoinHalfway] ~ ~ ~ scoreboard players add @s[team=CT,tag=InGame] note 150
execute @s[tag=VMW,score_CT-TR=0,score_CT-CTScore_min=1] ~ ~ ~ execute @a[tag=!JoinHalfway] ~ ~ ~ scoreboard players add @s[team=CT,tag=InGame] wins 1
execute @s[tag=VMW,score_CT-TR=0,score_CT-CTScore_min=1] ~ ~ ~ execute @a[tag=!JoinHalfway] ~ ~ ~ scoreboard players operation @s[team=CT,tag=InGame] money /= §fdivision money
execute @s[tag=VMW,score_CT-TR=0,score_CT-CTScore_min=1] ~ ~ ~ execute @a[tag=!JoinHalfway] ~ ~ ~ execute @s[team=CT,tag=InGame] ~ ~ ~ scoreboard players operation @s note += @s money
execute @s[tag=VMW,score_CT-TR=0,score_CT-CTScore_min=1] ~ ~ ~ execute @a[tag=!JoinHalfway] ~ ~ ~ scoreboard players add @s[team=T,tag=InGame] note 100
execute @s[tag=VMW,score_CT-TR=0,score_CT-CTScore_min=1] ~ ~ ~ execute @a[tag=!JoinHalfway] ~ ~ ~ scoreboard players remove @s[team=T,tag=InGame,score_wins_min=1] wins 1
execute @s[tag=VMW,score_CT-TR=0,score_CT-CTScore_min=1] ~ ~ ~ execute @a[tag=!JoinHalfway] ~ ~ ~ execute @s[team=CT,tag=InGame] ~ ~ ~ tellraw @s [{"text":"§eComplete victory! +150 note +"},{"score":{"objective":"money","name":"@s"},"color":"yellow"},{"text":" §enote"}]
execute @s[tag=VMW,score_CT-TR=0,score_CT-CTScore_min=1] ~ ~ ~ execute @a[tag=!JoinHalfway] ~ ~ ~ tellraw @s[team=T,tag=InGame] [{"text":"§eThe match is over! +100 note"}]
execute @s[tag=VMW,score_CT-TR=0,score_CT-CTScore_min=1] ~ ~ ~ scoreboard players reset @a[tag=!PVE-InGame] money 0

execute @s[tag=VMW,score_CT-TR=0,score_CT-CTScore_min=1] ~ ~ ~ playsound minecraft:entity.firework.twinkle ambient @a[tag=!PVE-InGame] ~ ~ ~ 100000000
execute @s[tag=VMW,score_CT-TR=0,score_CT-CTScore_min=1] ~ ~ ~ title @a[tag=!PVE-InGame] title {"text":"§9§lCT §6Gain complete victory!"}
execute @s[tag=VMW,score_CT-TR=0,score_CT-CTScore_min=1] ~ ~ ~ title @a[tag=!PVE-InGame] subtitle {"text":"§eNote have been distributed to game players"}
execute @s[tag=VMW,score_CT-TR=0,score_CT-CTScore_min=1] ~ ~ ~ function vmwp:games/teamDM/reset

execute @s[tag=VMW,score_CT-TR=0,score_CT-CTScore_min=1] ~ ~ ~ scoreboard players reset @s CT-TScore
execute @s[tag=VMW,score_CT-TR=0,score_CT-CTScore_min=1] ~ ~ ~ scoreboard players reset @s CT-CTScore

execute @s[tag=VMW,score_CT-TR=0,score_CT-CTScore=-1] ~ ~ ~ execute @a[tag=!JoinHalfway] ~ ~ ~ scoreboard players add @s[team=T,tag=InGame] note 150
execute @s[tag=VMW,score_CT-TR=0,score_CT-CTScore=-1] ~ ~ ~ execute @a[tag=!JoinHalfway] ~ ~ ~ scoreboard players add @s[team=T,tag=InGame] wins 1
execute @s[tag=VMW,score_CT-TR=0,score_CT-CTScore=-1] ~ ~ ~ execute @a[tag=!JoinHalfway] ~ ~ ~ scoreboard players operation @s[team=T,tag=InGame] money /= §fdivision money
execute @s[tag=VMW,score_CT-TR=0,score_CT-CTScore=-1] ~ ~ ~ execute @a[tag=!JoinHalfway] ~ ~ ~ execute @s[team=T,tag=InGame] ~ ~ ~ scoreboard players operation @s note += @s money
execute @s[tag=VMW,score_CT-TR=0,score_CT-CTScore=-1] ~ ~ ~ execute @a[tag=!JoinHalfway] ~ ~ ~ scoreboard players add @s[team=CT,tag=InGame] note 100
execute @s[tag=VMW,score_CT-TR=0,score_CT-CTScore=-1] ~ ~ ~ execute @a[tag=!JoinHalfway] ~ ~ ~ scoreboard players remove @s[team=CT,tag=InGame,score_wins_min=1] wins 1
execute @s[tag=VMW,score_CT-TR=0,score_CT-CTScore=-1] ~ ~ ~ execute @a[tag=!JoinHalfway] ~ ~ ~ execute @s[team=T,tag=InGame] ~ ~ ~ tellraw @s [{"text":"§eComplete victory! +150 note +"},{"score":{"objective":"money","name":"@s"},"color":"yellow"},{"text":" §enote"}]
execute @s[tag=VMW,score_CT-TR=0,score_CT-CTScore=-1] ~ ~ ~ execute @a[tag=!JoinHalfway] ~ ~ ~ tellraw @s[team=CT,tag=InGame] [{"text":"§eThe match is over! +100 note"}]
execute @s[tag=VMW,score_CT-TR=0,score_CT-CTScore=-1] ~ ~ ~ scoreboard players reset @a[tag=!PVE-InGame] money 0

execute @s[tag=VMW,score_CT-TR=0,score_CT-CTScore=-1] ~ ~ ~ playsound minecraft:entity.firework.twinkle ambient @a[tag=!PVE-InGame] ~ ~ ~ 100000000
execute @s[tag=VMW,score_CT-TR=0,score_CT-CTScore=-1] ~ ~ ~ title @a[tag=!PVE-InGame] title {"text":"§4§lT §6Gain complete victory!"}
execute @s[tag=VMW,score_CT-TR=0,score_CT-CTScore=-1] ~ ~ ~ title @a[tag=!PVE-InGame] subtitle {"text":"§eNote have been distributed to game players"}
execute @s[tag=VMW,score_CT-TR=0,score_CT-CTScore=-1] ~ ~ ~ function vmwp:games/teamDM/reset

execute @s[tag=VMW,score_CT-TR=0,score_CT-CTScore=-1] ~ ~ ~ scoreboard players reset @s CT-CTScore
execute @s[tag=VMW,score_CT-TR=0,score_CT-CTScore=-1] ~ ~ ~ scoreboard players reset @s CT-TScore

execute @s[tag=VMW,score_CT-TR=0,score_CT-CTScore=0,score_CT-CTScore_min=0] ~ ~ ~ execute @a[tag=!JoinHalfway] ~ ~ ~ scoreboard players add @s[team=CT,tag=InGame] note 130
execute @s[tag=VMW,score_CT-TR=0,score_CT-CTScore=0,score_CT-CTScore_min=0] ~ ~ ~ execute @a[tag=!JoinHalfway] ~ ~ ~ scoreboard players add @s[team=T,tag=InGame] note 130
execute @s[tag=VMW,score_CT-TR=0,score_CT-CTScore=0,score_CT-CTScore_min=0] ~ ~ ~ execute @a[tag=!JoinHalfway] ~ ~ ~ execute @s[tag=InGame] ~ ~ ~ tellraw @s [{"text":"§eDraw! +130 note"}]
execute @s[tag=VMW,score_CT-TR=0,score_CT-CTScore=0,score_CT-CTScore_min=0] ~ ~ ~ scoreboard players reset @a[tag=!PVE-InGame] money

execute @s[tag=VMW,score_CT-TR=0,score_CT-CTScore=0,score_CT-CTScore_min=0] ~ ~ ~ playsound minecraft:entity.firework.twinkle ambient @a[tag=!PVE-InGame] ~ ~ ~ 100000000
execute @s[tag=VMW,score_CT-TR=0,score_CT-CTScore=0,score_CT-CTScore_min=0] ~ ~ ~ title @a[tag=!PVE-InGame] title {"text":"§5§lDraw"}
execute @s[tag=VMW,score_CT-TR=0,score_CT-CTScore=0,score_CT-CTScore_min=0] ~ ~ ~ title @a[tag=!PVE-InGame] subtitle {"text":"§eNote have been distributed to game players"}
execute @s[tag=VMW,score_CT-TR=0,score_CT-CTScore=0,score_CT-CTScore_min=0] ~ ~ ~ function vmwp:games/teamDM/reset

execute @s[tag=VMW,score_CT-TR=0,score_CT-CTScore=0,score_CT-CTScore_min=0] ~ ~ ~ scoreboard players reset @s CT-TScore
execute @s[tag=VMW,score_CT-TR=0,score_CT-CTScore=0,score_CT-CTScore_min=0] ~ ~ ~ scoreboard players reset @s CT-CTScore















