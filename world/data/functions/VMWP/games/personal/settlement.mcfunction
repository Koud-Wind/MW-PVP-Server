tellraw @a[tag=!PVE-IG] [{"text":"§bTop 2 in personal confrontation:\n"},{"text":"§a1rd: "},{"selector":"@a[tag=1rd]"},{"text":" §cKill count: "},{"score":{"objective":"PC-1rdK","name":"@e[tag=VMW]"}}]
execute @p[tag=2rd] ~ ~ ~ tellraw @a[tag=!PVE-IG] [{"text":"§a2rd: "},{"selector":"@a[tag=2rd]"},{"text":" §cKill count: "},{"score":{"objective":"PC-2rdK","name":"@e[tag=VMW]"}}]

execute @a[team=CTT,tag=InGame] ~ ~ ~ scoreboard players add @s[tag=!JoinHalfway] note 50
execute @a[team=CTT,tag=InGame] ~ ~ ~ execute @s[tag=!1rd] ~ ~ ~ execute @s[tag=!2rd] ~ ~ ~ tellraw @s[tag=!JoinHalfway] [{"text":"§eThe match is over! +50 note"}]
execute @a[team=CTT,tag=InGame] ~ ~ ~ execute @s[tag=!1rd] ~ ~ ~ execute @s[tag=!2rd] ~ ~ ~ scoreboard players remove @s[score_wins_min=1] wins 1

title @a[tag=!PVE-IG] title [{"text":"§bMVP: "},{"selector":"@a[tag=1rd]"}]
title @a[tag=!PVE-IG] subtitle {"text":"§6Note have been distributed to game players"}
scoreboard players add @a[team=CTT,tag=1rd] note 50
scoreboard players add @a[team=CTT,tag=1rd] wins 1
scoreboard players operation @a[team=CTT,tag=1rd] money /= §fdivision money
execute @a[team=CTT,tag=1rd] ~ ~ ~ scoreboard players operation @s note += @s money
execute @a[team=CTT,tag=1rd] ~ ~ ~ tellraw @s [{"text":"§eComplete victory! +100 note +"},{"score":{"objective":"money","name":"@s"},"color":"yellow"},{"text":" §enote"}]
scoreboard players tag @a[tag=1rd] remove 1rd
scoreboard players add @a[team=CTT,tag=2rd] note 30
scoreboard players add @a[team=CTT,tag=2rd] wins 1
scoreboard players operation @a[team=CTT,tag=2rd] money /= §fdivision money
execute @a[team=CTT,tag=2rd] ~ ~ ~ scoreboard players operation @s note += @s money
execute @a[team=CTT,tag=2rd] ~ ~ ~ tellraw @s [{"text":"§eVictory! +80 note +"},{"score":{"objective":"money","name":"@s"},"color":"yellow"},{"text":" §enote"}]
scoreboard players tag @a[tag=2rd] remove 2rd
scoreboard players reset @a[tag=!PVE-IG] money 0

playsound minecraft:entity.firework.twinkle ambient @a[tag=!PVE-IG] ~ ~ ~ 100000000

function vmwp:games/personal/reset
