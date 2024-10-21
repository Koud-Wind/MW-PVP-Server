tellraw @a[tag=!PVE-IG] [{"text":"§bTop 3 in Weapon King:\n"},{"text":"§a1st: "},{"selector":"@a[tag=1st]"},{"text":" §eScore: "},{"score":{"objective":"PC-1stK","name":"@e[tag=VMW]"}}]
execute @p[tag=2nd] ~ ~ ~ tellraw @a[tag=!PVE-IG] [{"text":"§a2nd: "},{"selector":"@a[tag=2nd]"},{"text":" §eScore: "},{"score":{"objective":"PC-2ndK","name":"@e[tag=VMW]"}}]
execute @p[tag=3rd] ~ ~ ~ tellraw @a[tag=!PVE-IG] [{"text":"§a3rd: "},{"selector":"@a[tag=3rd]"},{"text":" §eScore: "},{"score":{"objective":"PC-3rdK","name":"@e[tag=VMW]"}}]

execute @a[team=CTT,tag=InGame] ~ ~ ~ scoreboard players add @s[tag=!JoinHalfway] note 60
execute @a[team=CTT,tag=InGame] ~ ~ ~ execute @s[tag=!1st] ~ ~ ~ execute @s[tag=!2nd] ~ ~ ~ tellraw @s[tag=!JoinHalfway] [{"text":"§eThe match is over! +60 note"}]
execute @a[team=CTT,tag=InGame] ~ ~ ~ execute @s[tag=!1st] ~ ~ ~ execute @s[tag=!2nd] ~ ~ ~ scoreboard players remove @s[score_wins_min=1] wins 1

title @a[tag=!PVE-IG] title [{"text":"§bMVP: "},{"selector":"@a[tag=1st]"}]
title @a[tag=!PVE-IG] subtitle {"text":"§6Note have been distributed to game players"}
scoreboard players add @a[team=CTT,tag=1st] note 70
scoreboard players add @a[team=CTT,tag=1st] wins 1
execute @a[team=CTT,tag=1st] ~ ~ ~ tellraw @s [{"text":"§eComplete victory! +130 note"}]
scoreboard players tag @a[tag=1st] remove 1st
scoreboard players add @a[team=CTT,tag=2nd] note 40
scoreboard players add @a[team=CTT,tag=2nd] wins 1
execute @a[team=CTT,tag=2nd] ~ ~ ~ tellraw @s [{"text":"§eVictory! +100 note"}]
scoreboard players tag @a[tag=2nd] remove 2nd
scoreboard players reset @a[tag=!PVE-IG] money

playsound minecraft:entity.firework.twinkle ambient @a[tag=!PVE-IG] ~ ~ ~ 100000000

function vmwp:games/armsKing/reset
