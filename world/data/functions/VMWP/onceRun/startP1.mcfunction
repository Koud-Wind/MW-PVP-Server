scoreboard players tag @a[tag=S-Map] remove S-Map
scoreboard teams leave @a[tag=Preparing]
execute @a[tag=!PVE-IG] ~ ~ ~ scoreboard teams join Watch @s[tag=!Preparing]
execute @a[tag=!PVE-IG] ~ ~ ~ clear @s
scoreboard players set @e[tag=VMW] PC-STime 300
scoreboard players tag @r[tag=Preparing] add S-Map

execute @a[tag=S-Map] ~ ~ ~ tellraw @a[tag=!PVE-IG] [{"text":"§aSelect the map by "},{"selector":"@s"}]
execute @e[tag=VMW,score_PC-Map=0] ~ ~ ~ tellraw @a[tag=!PVE-IG] [{"text":"§e§lMap: §fmap1"}]
execute @e[tag=VMW,score_PC-Map=1,score_PC-Map_min=1] ~ ~ ~ tellraw @a[tag=!PVE-IG] [{"text":"§e§lMap: §fmap2"}]
execute @e[tag=VMW,score_PC-Map=2,score_PC-Map_min=2] ~ ~ ~ tellraw @a[tag=!PVE-IG] [{"text":"§e§lMap: §fmap3"}]
execute @e[tag=VMW,score_PC-Map=3,score_PC-Map_min=3] ~ ~ ~ tellraw @a[tag=!PVE-IG] [{"text":"§e§lMap: §fmap4"}]
execute @e[tag=VMW,score_PC-Map=4,score_PC-Map_min=4] ~ ~ ~ tellraw @a[tag=!PVE-IG] [{"text":"§e§lMap: §fmap5"}]
execute @e[tag=VMW,score_PC-Map=5,score_PC-Map_min=5] ~ ~ ~ tellraw @a[tag=!PVE-IG] [{"text":"§e§lMap: §fmap6"}]

execute @e[tag=VMW,score_Start-SMode=0] ~ ~ ~ tellraw @a[tag=!PVE-IG] [{"text":"§e§lGame: §fPersonal Confrontation"}]
execute @e[tag=VMW,score_Start-SMode=1,score_Start-SMode_min=1] ~ ~ ~ tellraw @a[tag=!PVE-IG] [{"text":"§e§lGame: §fWeapon King"}]
execute @e[tag=VMW,score_Start-SMode=2,score_Start-SMode_min=2] ~ ~ ~ tellraw @a[tag=!PVE-IG] [{"text":"§e§lGame: §fSurvival"}]
execute @e[tag=VMW,score_Start-SMode=3,score_Start-SMode_min=3] ~ ~ ~ tellraw @a[tag=!PVE-IG] [{"text":"§e§lGame: §fBlast"}]
execute @e[tag=VMW,score_Start-SMode=4,score_Start-SMode_min=4] ~ ~ ~ tellraw @a[tag=!PVE-IG] [{"text":"§e§lGame: §fDefense"}]
execute @e[tag=VMW,score_Start-SMode=5,score_Start-SMode_min=5] ~ ~ ~ tellraw @a[tag=!PVE-IG] [{"text":"§e§lGame: §fTeam DM"}]

execute @e[tag=VMW] ~ ~ ~ execute @s[tag=!HalfHMode] ~ ~ ~ tellraw @a[tag=!PVE-IG] [{"text":"§e§lPlayer max health: §fNormal"}]
execute @e[tag=VMW] ~ ~ ~ execute @s[tag=HalfHMode] ~ ~ ~ tellraw @a[tag=!PVE-IG] [{"text":"§e§lPlayer max health: §fHalf"}]


scoreboard players set @e[tag=VMW] start-TR 900