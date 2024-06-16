scoreboard players tag @a[tag=游戏中,team=CTT] add 随机传送

clear @a[tag=游戏中]
execute @e[tag=VMW] ~ ~ ~ execute @s[tag=!半血模式] ~ ~ ~ replaceitem entity @a[tag=游戏中] slot.armor.chest minecraft:elytra 1 0 {ench:[{lvl:1s,id:10s}],Unbreakable:1b,HideFlags:5,display:{Name:""},AttributeModifiers:[{UUIDMost:3618156733941892737L,UUIDLeast:-7584274578594019785L,Amount:13.0d,Slot:"chest",AttributeName:"generic.armor",Operation:0,Name:"generic.armor"}]}
execute @e[tag=VMW] ~ ~ ~ execute @s[tag=半血模式] ~ ~ ~ replaceitem entity @a[tag=游戏中] slot.armor.chest minecraft:elytra 1 0 {ench:[{lvl:1s,id:10s}],Unbreakable:1b,HideFlags:5,display:{Name:""},AttributeModifiers:[{UUIDMost:3618156733941892737L,UUIDLeast:-7584274578594019785L,Amount:13.0d,Slot:"chest",AttributeName:"generic.armor",Operation:0,Name:"generic.armor"},{UUIDMost:6576250448452734424L,UUIDLeast:-7523519124796604724L,Amount:-10.0d,Slot:"chest",AttributeName:"generic.maxHealth",Operation:0,Name:"generic.maxHealth"}]}
scoreboard players set @a[tag=游戏中] 爆破-选择的主武器 0
scoreboard players set @a[tag=游戏中] 爆破-选择的副武器 0

execute @e[tag=VMW] ~ ~ ~ effect @a[tag=游戏中] 2 10 50 true
#execute @e[tag=VMW] ~ ~ ~ effect @a[tag=游戏中] 15 10 0 true
execute @e[tag=VMW] ~ ~ ~ effect @a[tag=游戏中] 8 11 130 true
execute @e[tag=VMW] ~ ~ ~ effect @a[tag=游戏中] 12 15 0 true
execute @e[tag=VMW] ~ ~ ~ effect @a[tag=游戏中] 14 10 0 true
execute @e[tag=VMW] ~ ~ ~ effect @a[tag=游戏中] 6 1 4 true
execute @e[tag=VMW] ~ ~ ~ effect @a[tag=游戏中] 11 11 50 true

execute @e[tag=VMW] ~ ~ ~ scoreboard players tag @a[tag=游戏中] add 涂装
execute @e[tag=VMW] ~ ~ ~ scoreboard players tag @a[tag=游戏中] add 近战武器
execute @e[tag=VMW] ~ ~ ~ scoreboard players tag @a[tag=游戏中] add 商店
scoreboard players set @e[tag=VMW] 个人-人数 4
scoreboard players add @e[tag=VMW] 个人-游戏数 1
scoreboard players tag @e[tag=VMW] remove 个人-等待

scoreboard players set @e[score_投掷物时间_min=0,type=minecraft:armor_stand] 投掷物时间 299
scoreboard players set @e[tag=VMW] 个人-剩余时间 2800