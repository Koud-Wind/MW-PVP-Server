scoreboard players tag @a[tag=S-Map] remove S-Map
scoreboard teams leave @a[tag=Preparing]
execute @a[tag=!PVE-IG] ~ ~ ~ scoreboard teams join Watch @s[tag=!Preparing]
execute @a[tag=!PVE-IG] ~ ~ ~ clear @s
scoreboard players set @e[tag=VMW] CT-STime 300
scoreboard players tag @r[tag=Preparing] add S-Map
execute @a[tag=S-Map] ~ ~ ~ tellraw @a[tag=!PVE-IG] [{"text":"§aSelect the map by "},{"selector":"@s"}]

execute @e[tag=VMW,score_CT-Map=0] ~ ~ ~ tellraw @a[tag=!PVE-IG] [{"text":"§e§lMap: §fmap1"}]
execute @e[tag=VMW,score_CT-Map=1,score_CT-Map_min=1] ~ ~ ~ tellraw @a[tag=!PVE-IG] [{"text":"§e§lMap: §fmap2"}]
execute @e[tag=VMW,score_CT-Map=2,score_CT-Map_min=2] ~ ~ ~ tellraw @a[tag=!PVE-IG] [{"text":"§e§lMap: §fmap3"}]
execute @e[tag=VMW,score_CT-Map=3,score_CT-Map_min=3] ~ ~ ~ tellraw @a[tag=!PVE-IG] [{"text":"§e§lMap: §fmap4"}]
execute @e[tag=VMW,score_CT-Map=4,score_CT-Map_min=4] ~ ~ ~ tellraw @a[tag=!PVE-IG] [{"text":"§e§lMap: §fmap5"}]
execute @e[tag=VMW,score_CT-Map=5,score_CT-Map_min=5] ~ ~ ~ tellraw @a[tag=!PVE-IG] [{"text":"§e§lMap: §fmap6"}]

scoreboard players set @e[tag=VMW,score_Start-SMode_min=4] Start-SMode 0
execute @e[tag=VMW,score_Start-SMode=0] ~ ~ ~ tellraw @a[tag=!PVE-IG] [{"text":"§e§lGame: §fBlast"}]
execute @e[tag=VMW,score_Start-SMode=1,score_Start-SMode_min=1] ~ ~ ~ tellraw @a[tag=!PVE-IG] [{"text":"§e§lGame: §fDefense"}]
execute @e[tag=VMW,score_Start-SMode=2,score_Start-SMode_min=2] ~ ~ ~ tellraw @a[tag=!PVE-IG] [{"text":"§e§lGame: §fTeam DM"}]
execute @e[tag=VMW,score_Start-SMode_min=3] ~ ~ ~ tellraw @a[tag=!PVE-IG] [{"text":"§e§lGame: §fSurvival"}]

execute @e[tag=VMW] ~ ~ ~ execute @s[tag=!HalfHMode] ~ ~ ~ tellraw @a[tag=!PVE-IG] [{"text":"§e§lPlayer max health: §fNormal"}]
execute @e[tag=VMW] ~ ~ ~ execute @s[tag=HalfHMode] ~ ~ ~ tellraw @a[tag=!PVE-IG] [{"text":"§e§lPlayer max health: §fHalf"}]

scoreboard players set @e[tag=VMW] start-TR 900