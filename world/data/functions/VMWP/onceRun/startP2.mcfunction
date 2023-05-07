scoreboard players tag @a[tag=S-Map] remove S-Map
scoreboard teams leave @a[tag=Preparing]
execute @a[tag=!PVE-IG] ~ ~ ~ scoreboard teams join Watch @s[tag=!Preparing]
execute @a[tag=!PVE-IG] ~ ~ ~ clear @s
scoreboard players set @e[tag=VMW] CT-STime 300
scoreboard players tag @r[tag=Preparing] add S-Map
execute @a[tag=S-Map] ~ ~ ~ tellraw @a[tag=!PVE-IG] [{"text":"§aSelect the map by "},{"selector":"@s"},{"text":"§a, default: §fmap1"}]
scoreboard players set @e[tag=VMW] start-TR 900
execute @a[tag=!PVE-IG] ~ ~ ~ tellraw @s [{"text":"§eSince there are more than 5 participants, the game mode is selected as §fBlast"}]
execute @a[tag=!PVE-IG] ~ ~ ~ tellraw @s [{"text":"§fTip: Players need to §eremove or install C4§f through sneak in the §ered circle near the blue beam"}]