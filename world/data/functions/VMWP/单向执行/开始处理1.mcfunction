scoreboard players tag @a[tag=选择地图] remove 选择地图
scoreboard teams leave @a[tag=准备中]
execute @a[tag=!PVE-游戏中] ~ ~ ~ scoreboard teams join 旁观 @s[tag=!准备中]
execute @a[tag=!PVE-游戏中] ~ ~ ~ clear @s
scoreboard players set @e[tag=VMW] 个人-选择时间 300
scoreboard players tag @p[tag=准备中,c=-1] add 选择地图

execute @a[tag=选择地图] ~ ~ ~ tellraw @a[tag=!PVE-游戏中] [{"text":"§a由"},{"selector":"@s"},{"text":"§a选择地图!"}]
execute @e[tag=VMW,score_个人-地图=0] ~ ~ ~ tellraw @a[tag=!PVE-游戏中] [{"text":"§e§l地图: §fmap1"}]
execute @e[tag=VMW,score_个人-地图=1,score_个人-地图_min=1] ~ ~ ~ tellraw @a[tag=!PVE-游戏中] [{"text":"§e§l地图: §fmap2"}]
execute @e[tag=VMW,score_个人-地图=2,score_个人-地图_min=2] ~ ~ ~ tellraw @a[tag=!PVE-游戏中] [{"text":"§e§l地图: §fmap3"}]
execute @e[tag=VMW,score_个人-地图=3,score_个人-地图_min=3] ~ ~ ~ tellraw @a[tag=!PVE-游戏中] [{"text":"§e§l地图: §fmap4"}]
execute @e[tag=VMW,score_个人-地图=4,score_个人-地图_min=4] ~ ~ ~ tellraw @a[tag=!PVE-游戏中] [{"text":"§e§l地图: §fmap5"}]
execute @e[tag=VMW,score_个人-地图=5,score_个人-地图_min=5] ~ ~ ~ tellraw @a[tag=!PVE-游戏中] [{"text":"§e§l地图: §fmap6"}]

execute @e[tag=VMW,score_开始-选择模式=0] ~ ~ ~ tellraw @a[tag=!PVE-游戏中] [{"text":"§e§l模式: §f个人对抗"}]
execute @e[tag=VMW,score_开始-选择模式=1,score_开始-选择模式_min=1] ~ ~ ~ tellraw @a[tag=!PVE-游戏中] [{"text":"§e§l模式: §f军火之王"}]
execute @e[tag=VMW,score_开始-选择模式=2,score_开始-选择模式_min=2] ~ ~ ~ tellraw @a[tag=!PVE-游戏中] [{"text":"§e§l模式: §f求生对抗"}]
execute @e[tag=VMW,score_开始-选择模式=3,score_开始-选择模式_min=3] ~ ~ ~ tellraw @a[tag=!PVE-游戏中] [{"text":"§e§l模式: §f赏金爆破"}]
execute @e[tag=VMW,score_开始-选择模式=4,score_开始-选择模式_min=4] ~ ~ ~ tellraw @a[tag=!PVE-游戏中] [{"text":"§e§l模式: §f破点攻防"}]
execute @e[tag=VMW,score_开始-选择模式=5,score_开始-选择模式_min=5] ~ ~ ~ tellraw @a[tag=!PVE-游戏中] [{"text":"§e§l模式: §f团队死斗"}]

execute @e[tag=VMW] ~ ~ ~ execute @s[tag=!半血模式] ~ ~ ~ tellraw @a[tag=!PVE-游戏中] [{"text":"§e§l血量: §f正常"}]
execute @e[tag=VMW] ~ ~ ~ execute @s[tag=半血模式] ~ ~ ~ tellraw @a[tag=!PVE-游戏中] [{"text":"§e§l血量: §f半血"}]

scoreboard players set @e[tag=VMW] 开始-剩余时间 900