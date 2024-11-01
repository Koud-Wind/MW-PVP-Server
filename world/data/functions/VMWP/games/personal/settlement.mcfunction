tellraw @a[tag=!PVE-IG] [{"text":"§bTop 3 in Free For All:\n"},{"text":"§a1st: "},{"selector":"@a[tag=1st]"},{"text":" §cKill count: "},{"score":{"objective":"PC-1stK","name":"@e[tag=VMW]"}}]
execute @p[tag=2nd] ~ ~ ~ tellraw @a[tag=!PVE-IG] [{"text":"§a2nd: "},{"selector":"@a[tag=2nd]"},{"text":" §cKill count: "},{"score":{"objective":"PC-2ndK","name":"@e[tag=VMW]"}}]
execute @p[tag=3rd] ~ ~ ~ tellraw @a[tag=!PVE-IG] [{"text":"§a3rd: "},{"selector":"@a[tag=3rd]"},{"text":" §cKill count: "},{"score":{"objective":"PC-3rdK","name":"@e[tag=VMW]"}}]

execute @a[team=CTT,tag=InGame] ~ ~ ~ scoreboard players add @s[tag=!JoinHalfway] note 50
execute @a[team=CTT,tag=InGame] ~ ~ ~ execute @s[tag=!1st] ~ ~ ~ execute @s[tag=!2nd] ~ ~ ~ tellraw @s[tag=!JoinHalfway] [{"text":"§eThe match is over! +50 note"}]
execute @a[team=CTT,tag=InGame] ~ ~ ~ execute @s[tag=!1st] ~ ~ ~ execute @s[tag=!2nd] ~ ~ ~ scoreboard players remove @s[score_wins_min=1] wins 1

title @a[tag=!PVE-IG] title [{"text":"§bMVP: "},{"selector":"@a[tag=1st]"}]
title @a[tag=!PVE-IG] subtitle {"text":"§6Note have been distributed to game players"}
scoreboard players add @a[team=CTT,tag=1st] note 50
scoreboard players add @a[team=CTT,tag=1st] wins 1
scoreboard players operation @a[team=CTT,tag=1st] money /= §fdivision money
execute @a[team=CTT,tag=1st] ~ ~ ~ scoreboard players operation @s note += @s money
execute @a[team=CTT,tag=1st] ~ ~ ~ tellraw @s [{"text":"§eComplete victory! +100 note +"},{"score":{"objective":"money","name":"@s"},"color":"yellow"},{"text":" §enote"}]
scoreboard players tag @a[tag=1st] remove 1st
scoreboard players add @a[team=CTT,tag=2nd] note 30
scoreboard players add @a[team=CTT,tag=2nd] wins 1
scoreboard players operation @a[team=CTT,tag=2nd] money /= §fdivision money
execute @a[team=CTT,tag=2nd] ~ ~ ~ scoreboard players operation @s note += @s money
execute @a[team=CTT,tag=2nd] ~ ~ ~ tellraw @s [{"text":"§eVictory! +80 note +"},{"score":{"objective":"money","name":"@s"},"color":"yellow"},{"text":" §enote"}]
scoreboard players tag @a[tag=2nd] remove 2nd
scoreboard players reset @a[tag=!PVE-IG] money 0

playsound minecraft:entity.firework.twinkle ambient @a[tag=!PVE-IG] ~ ~ ~ 100000000

function vmwp:games/personal/reset
