execute @p[r=3] ~ ~ ~ scoreboard players tag @s add 准备中
execute @p[r=3] ~ ~ ~ tellraw @s [{"text":"§a§l你选择参与了游戏"}]
execute @p[r=3] ~ ~ ~ tellraw @s[score_胜场数_min=10,tag=LV0] [{"text":"§a你的准备队伍已升级为§bLV1"}]
execute @p[r=3] ~ ~ ~ tellraw @s[score_胜场数_min=20,tag=LV1] [{"text":"§a你的准备队伍已升级为§5LV2"}]
execute @p[r=3] ~ ~ ~ tellraw @s[score_胜场数_min=40,tag=LV2] [{"text":"§a你的准备队伍已升级为§6LV3"}]
execute @p[r=3] ~ ~ ~ tellraw @s[score_胜场数_min=80,tag=LV3] [{"text":"§a你的准备队伍已升级为§4LV4"}]
execute @p[r=3] ~ ~ ~ tellraw @s[score_胜场数=9,tag=LV1] [{"text":"§c你的准备队伍已降级为§aLV0"}]
execute @p[r=3] ~ ~ ~ tellraw @s[score_胜场数=19,tag=LV2] [{"text":"§c你的准备队伍已降级为§bLV1"}]
execute @p[r=3] ~ ~ ~ tellraw @s[score_胜场数=19,tag=LV3] [{"text":"§c你的准备队伍已降级为§bLV1"}]
execute @p[r=3] ~ ~ ~ tellraw @s[score_胜场数=39,tag=LV4] [{"text":"§c你的准备队伍已降级为§5LV2"}]
execute @p[r=3] ~ ~ ~ scoreboard players tag @s[score_胜场数_min=10] remove LV0
execute @p[r=3] ~ ~ ~ scoreboard players tag @s[score_胜场数_min=20] remove LV1
execute @p[r=3] ~ ~ ~ scoreboard players tag @s[score_胜场数_min=40] remove LV2
execute @p[r=3] ~ ~ ~ scoreboard players tag @s[score_胜场数_min=80] remove LV3
execute @p[r=3] ~ ~ ~ scoreboard players tag @s[score_胜场数=9] remove LV1
execute @p[r=3] ~ ~ ~ scoreboard players tag @s[score_胜场数=19] remove LV2
execute @p[r=3] ~ ~ ~ scoreboard players tag @s[score_胜场数=19] remove LV3
execute @p[r=3] ~ ~ ~ scoreboard players tag @s[score_胜场数=39] remove LV4
execute @p[r=3] ~ ~ ~ scoreboard players tag @s[score_胜场数=9] add LV0
execute @p[r=3] ~ ~ ~ scoreboard players tag @s[score_胜场数_min=10,score_胜场数=19] add LV1
execute @p[r=3] ~ ~ ~ scoreboard players tag @s[score_胜场数_min=20,score_胜场数=39,tag=!LV3] add LV2
execute @p[r=3] ~ ~ ~ scoreboard players tag @s[score_胜场数_min=40,score_胜场数=79,tag=!LV4] add LV3
execute @p[r=3] ~ ~ ~ scoreboard players tag @s[score_胜场数_min=80] add LV4
execute @p[r=3] ~ ~ ~ scoreboard teams join 5-准备 @s[tag=LV0]
execute @p[r=3] ~ ~ ~ scoreboard teams join 4-准备 @s[tag=LV1]
execute @p[r=3] ~ ~ ~ scoreboard teams join 3-准备 @s[tag=LV2]
execute @p[r=3] ~ ~ ~ scoreboard teams join 2-准备 @s[tag=LV3]
execute @p[r=3] ~ ~ ~ scoreboard teams join 1-准备 @s[tag=LV4]
execute @p[r=3] ~ ~ ~ playsound minecraft:block.note.pling ambient @s ~ ~ ~ 1000000000 2