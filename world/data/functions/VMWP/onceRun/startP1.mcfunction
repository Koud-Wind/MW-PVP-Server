scoreboard players tag @a[tag=S-Map] remove S-Map
scoreboard teams leave @a[tag=Preparing]
execute @a[tag=!PVE-IG] ~ ~ ~ scoreboard teams join Watch @s[tag=!Preparing]
execute @a[tag=!PVE-IG] ~ ~ ~ clear @s
scoreboard players set @e[tag=VMW] PC-STime 200
scoreboard players tag @a[c=-1,tag=Preparing] add S-Map
execute @a[c=-1,tag=Preparing] ~ ~ ~ tellraw @a[tag=!PVE-IG] [{"text":"§aSelect the map by "},{"selector":"@s"},{"text":"§a, default: §fmap1"}]
scoreboard players set @e[tag=VMW] start-TR 900
execute @a[tag=!PVE-IG] ~ ~ ~ tellraw @s [{"text":"§eSince the participants are between 2-5, the game mode is selected as §fPersonal Confrontation"}]
execute @a[tag=!PVE-IG] ~ ~ ~ tellraw @s [{"text":"§fTip: Explosion and fire damage are not included in the kill count§f"}]