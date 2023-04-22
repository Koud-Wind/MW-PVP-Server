tellraw @a[tag=!PVE-InGame] [{"text":"§bTop 3 in Survival:\n"},{"text":"§a1rd: "},{"selector":"@a[tag=1rd]"},{"text":" §cScore: "},{"score":{"objective":"PC-1rdK","name":"@e[tag=VMW]"}}]
execute @p[tag=2rd] ~ ~ ~ tellraw @a[tag=!PVE-InGame] [{"text":"§a2rd: "},{"selector":"@a[tag=2rd]"},{"text":" §cScore: "},{"score":{"objective":"PC-2rdK","name":"@e[tag=VMW]"}}]
execute @p[tag=3rd] ~ ~ ~ tellraw @a[tag=!PVE-InGame] [{"text":"§a3rd: "},{"selector":"@a[tag=3rd]"},{"text":" §cScore: "},{"score":{"objective":"PC-3rdK","name":"@e[tag=VMW]"}}]

execute @a[team=CTT,tag=InGame] ~ ~ ~ scoreboard players add @s[tag=!JoinHalfway] note 60
execute @a[team=CTT,tag=InGame] ~ ~ ~ execute @s[tag=!1rd] ~ ~ ~ execute @s[tag=!2rd] ~ ~ ~ tellraw @s[tag=!JoinHalfway] [{"text":"§e对局结束! +60note"}]
execute @a[team=CTT,tag=InGame] ~ ~ ~ execute @s[tag=!1rd] ~ ~ ~ execute @s[tag=!2rd] ~ ~ ~ scoreboard players remove @s[score_wins_min=1] wins 1

title @a[tag=!PVE-InGame] title [{"text":"§bMVP: "},{"selector":"@a[tag=1rd]"}]
title @a[tag=!PVE-InGame] subtitle {"text":"§6Note have been distributed to game players"}
scoreboard players add @a[team=CTT,tag=1rd] note 70
scoreboard players add @a[team=CTT,tag=1rd] wins 1
execute @a[team=CTT,tag=1rd] ~ ~ ~ tellraw @s [{"text":"§eComplete victory! +130 note"}]
scoreboard players tag @a[tag=1rd] remove 1rd
scoreboard players add @a[team=CTT,tag=2rd] note 40
scoreboard players add @a[team=CTT,tag=2rd] wins 1
execute @a[team=CTT,tag=2rd] ~ ~ ~ tellraw @s [{"text":"§eVictory! +100 note"}]
scoreboard players tag @a[tag=2rd] remove 2rd
scoreboard players reset @a[tag=!PVE-InGame] money

playsound minecraft:entity.firework.twinkle ambient @a[tag=!PVE-InGame] ~ ~ ~ 100000000

function vmwp:games/survival/reset
