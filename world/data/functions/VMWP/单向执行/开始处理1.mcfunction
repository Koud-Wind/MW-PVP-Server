scoreboard players tag @a[tag=选择地图] remove 选择地图
scoreboard teams leave @a[tag=准备中]
execute @a[tag=!PVE-游戏中] ~ ~ ~ scoreboard teams join 旁观 @s[tag=!准备中]
execute @a[tag=!PVE-游戏中] ~ ~ ~ clear @s
scoreboard players set @e[tag=VMW] 个人-选择时间 300
scoreboard players tag @r[tag=准备中] add 选择地图
execute @a[tag=选择地图] ~ ~ ~ tellraw @a[tag=!PVE-游戏中] [{"text":"§a由"},{"selector":"@s"},{"text":"§a选择地图! 默认为:§fmap1"}]
scoreboard players set @e[tag=VMW] 开始-剩余时间 900
execute @a[tag=!PVE-游戏中] ~ ~ ~ tellraw @s [{"text":"§e§l由于参与人数在2-5人之间,模式被选定为§f个人对抗"}]
execute @a[tag=!PVE-游戏中] ~ ~ ~ tellraw @s [{"text":"§f提示: 爆炸与火焰伤害不算入击杀数!"}]