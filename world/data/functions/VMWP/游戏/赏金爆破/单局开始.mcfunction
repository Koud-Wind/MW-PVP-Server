#换边处理
execute @e[tag=VMW,score_爆破-游戏数_min=4] ~ ~ ~ scoreboard players tag @a[team=CT,tag=游戏中] add 换边
execute @e[tag=VMW,score_爆破-游戏数_min=4] ~ ~ ~ scoreboard teams join CT @a[team=T,tag=游戏中]
execute @e[tag=VMW,score_爆破-游戏数_min=4] ~ ~ ~ scoreboard teams join T @a[team=CT,tag=换边]
execute @e[tag=VMW,score_爆破-游戏数_min=4] ~ ~ ~ scoreboard players tag @a[tag=换边] remove 换边

execute @e[tag=VMW,score_爆破-游戏数_min=4] ~ ~ ~ scoreboard players operation @e[tag=VMW] 爆破-CT比分 >< @e[tag=VMW] 爆破-T比分
execute @e[tag=VMW,score_爆破-游戏数_min=4] ~ ~ ~ title @a[tag=!PVE-游戏中] title {"text":"§b§l已交换阵营"}
execute @e[tag=VMW,score_爆破-游戏数_min=4] ~ ~ ~ title @a[team=CT] subtitle [{"text":"§e§l击败全部对手或拆除炸弹以获得胜利"}]
execute @e[tag=VMW,score_爆破-游戏数_min=4] ~ ~ ~ title @a[team=T] subtitle [{"text":"§e§l击败全部对手或引爆炸弹以获得胜利"}]
execute @e[tag=VMW,score_爆破-游戏数_min=4] ~ ~ ~ scoreboard players set @s 爆破-游戏数 0

#处理
execute @e[tag=VMW] ~ ~ ~ function vmwp:游戏/赏金爆破/地图

clear @a minecraft:red_nether_brick
effect @a[tag=游戏中] 1 1000000 0 true


execute @e[tag=VMW] ~ ~ ~ scoreboard players tag @a[tag=游戏中] add 涂装
execute @e[tag=VMW] ~ ~ ~ scoreboard players tag @a[tag=游戏中] add 近战武器
execute @e[tag=VMW] ~ ~ ~ scoreboard players tag @a[tag=游戏中] add 商店

scoreboard players tag @e[tag=VMW] remove 爆破-等待
function vmwp:游戏/赏金爆破/地图设定

execute @e[tag=VMW] ~ ~ ~ effect @a[tag=游戏中] 2 10 50 true
execute @e[tag=VMW] ~ ~ ~ effect @a[tag=游戏中] 8 11 130 true
execute @e[tag=VMW] ~ ~ ~ effect @a[tag=游戏中] 12 15 0 true
execute @e[tag=VMW] ~ ~ ~ effect @a[tag=游戏中] 14 10 0 true
execute @e[tag=VMW] ~ ~ ~ effect @a[tag=游戏中] 15 10 0 true
execute @e[tag=VMW] ~ ~ ~ effect @a[tag=游戏中] 11 10 50 true
execute @e[tag=VMW] ~ ~ ~ effect @a[tag=游戏中] 6 1 4 true
execute @e[tag=VMW] ~ ~ ~ effect @a[tag=游戏中] 25 9 130 true

scoreboard players set @e[score_投掷物时间_min=0,type=minecraft:armor_stand] 投掷物时间 299
scoreboard players set @a 爆破-潜行判定 0
scoreboard players set @e[tag=VMW] 爆破-剩余时间 2600
scoreboard players set @e[tag=VMW] 爆破-C4引爆时间 0

replaceitem entity @r[team=T] slot.hotbar.4 minecraft:red_nether_brick 1 0 {ench:[{lvl:1s,id:16s}],HideFlags:1,display:{Name:"§4§lC4炸弹(红圈内按shift使用)"}}