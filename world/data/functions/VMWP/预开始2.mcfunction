#
execute @e[tag=VMW] ~ ~ ~ execute @s[score_开始-剩余时间=0] ~ ~ ~ function vmwp:单向执行/开始处理2

#商店函数
function vmwp:商店/道具商店

#显示器
execute @a[tag=准备中] ~ ~ ~ title @s[team=] actionbar [{"text":"§b§l请选择阵营! §a§l游戏还有"},{"score":{"objective":"开始-剩余时间换算","name":"@e[tag=VMW]"}},{"text":"秒§a§l开始"}]
execute @a[tag=准备中] ~ ~ ~ title @s[team=CT] actionbar [{"text":"§b§l你的阵营:§9CT §a§l游戏还有"},{"score":{"objective":"开始-剩余时间换算","name":"@e[tag=VMW]"}},{"text":"秒§a§l开始"}]
execute @a[tag=准备中] ~ ~ ~ title @s[team=T] actionbar [{"text":"§b§l你的阵营:§4T §a§l游戏还有"},{"score":{"objective":"开始-剩余时间换算","name":"@e[tag=VMW]"}},{"text":"秒§a§l开始"}]
#计时器
execute @e[tag=VMW,score_爆破-选择时间_min=120,score_爆破-选择时间=120] ~ ~ ~ playsound minecraft:block.note.hat ambient @a[tag=!PVE-游戏中] ~ ~ ~ 1000000000
execute @e[tag=VMW,score_爆破-选择时间_min=100,score_爆破-选择时间=100] ~ ~ ~ playsound minecraft:block.note.hat ambient @a[tag=!PVE-游戏中] ~ ~ ~ 1000000000
execute @e[tag=VMW,score_爆破-选择时间_min=80,score_爆破-选择时间=80] ~ ~ ~ playsound minecraft:block.note.hat ambient @a[tag=!PVE-游戏中] ~ ~ ~ 1000000000
execute @e[tag=VMW,score_爆破-选择时间_min=60,score_爆破-选择时间=60] ~ ~ ~ playsound minecraft:block.note.hat ambient @a[tag=!PVE-游戏中] ~ ~ ~ 1000000000
execute @e[tag=VMW,score_爆破-选择时间_min=40,score_爆破-选择时间=40] ~ ~ ~ playsound minecraft:block.note.hat ambient @a[tag=!PVE-游戏中] ~ ~ ~ 1000000000
execute @e[tag=VMW,score_爆破-选择时间_min=20,score_爆破-选择时间=20] ~ ~ ~ playsound minecraft:block.note.hat ambient @a[tag=!PVE-游戏中] ~ ~ ~ 1000000000
scoreboard players operation @e[tag=VMW] 开始-剩余时间换算 = @e[tag=VMW] 爆破-选择时间
scoreboard players operation @e[tag=VMW] 开始-剩余时间换算 /= §f除 开始-剩余时间换算
execute @e[tag=VMW] ~ ~ ~ scoreboard players remove @s[score_爆破-选择时间_min=1] 爆破-选择时间 1
#参与人数
scoreboard players operation @e[tag=VMW] 开始-准备人数 = §f准备人数 开始-准备人数
execute @e[tag=VMW] ~ ~ ~ scoreboard players tag @s[score_开始-准备人数=1,score_爆破-选择时间_min=1] remove 预开始2
execute @e[tag=VMW] ~ ~ ~ execute @s[score_开始-准备人数=1,score_爆破-选择时间_min=1] ~ ~ ~ scoreboard teams leave @a[tag=!PVE-游戏中]
execute @e[tag=VMW] ~ ~ ~ execute @s[score_开始-准备人数=1,score_爆破-选择时间_min=1] ~ ~ ~ tellraw @a[tag=!PVE-游戏中] [{"text":"§c§l游戏人数不够,已取消游戏"}]

scoreboard players tag @e[type=item] add 加入CT {Item:{tag:{tag:["CT"]}}}
execute @e[type=item,tag=加入CT] ~ ~ ~ scoreboard teams join CT @p[r=2]
execute @e[type=item,tag=加入CT] ~ ~ ~ tellraw @p[r=2] [{"text":"§a§l你选择加入§9§lCT"}]
execute @e[type=item,tag=加入CT] ~ ~ ~ playsound minecraft:block.note.pling ambient @p[r=2] ~ ~ ~ 1000000000 2
kill @e[tag=加入CT,type=item]

scoreboard players tag @e[type=item] add 加入T {Item:{tag:{tag:["T"]}}}
execute @e[type=item,tag=加入T] ~ ~ ~ scoreboard teams join T @p[r=2]
execute @e[type=item,tag=加入T] ~ ~ ~ tellraw @p[r=2] [{"text":"§a§l你选择加入§4§lT"}]
execute @e[type=item,tag=加入T] ~ ~ ~ playsound minecraft:block.note.pling ambient @p[r=2] ~ ~ ~ 1000000000 2
kill @e[tag=加入T,type=item]
#道具与效果
execute @e[tag=VMW] ~ ~ ~ effect @a[tag=!PVE-游戏中] 18 1 1 true
execute @e[tag=VMW] ~ ~ ~ effect @a[tag=!PVE-游戏中] 11 1 50 true
execute @e[tag=VMW] ~ ~ ~ replaceitem entity @a[tag=准备中] slot.hotbar.0 minecraft:dye 1 10 {ench:[{lvl:1s,id:71s}],HideFlags:1,display:{Name:"§9§l按Q加入CT阵营"},tag:["CT"]}
execute @e[tag=VMW] ~ ~ ~ replaceitem entity @a[tag=准备中] slot.hotbar.1 minecraft:dye 1 1 {ench:[{lvl:1s,id:71s}],HideFlags:1,display:{Name:"§4§l按Q加入T阵营"},tag:["T"]}
execute @e[tag=VMW] ~ ~ ~ replaceitem entity @a[tag=准备中] slot.hotbar.8 minecraft:nether_star 1 0 {display:{Name:"§f道具商店"}}
#execute @e[tag=VMW] ~ ~ ~ replaceitem entity @a[tag=准备中] slot.hotbar.8 minecraft:written_book 1 0 {tag:["NO"],HideFlags:32,author:"null",title:"商店",pages:["[{\"text\":\"§3§lShop\\n\\n\"},{\"text\":\"§b§l§nWeaponsStone\\n\",\"clickEvent\":{\"action\":\"change_page\",\"value\":\"2\"}},{\"text\":\"§b§l§nCamo\\n\",\"clickEvent\":{\"action\":\"change_page\",\"value\":\"3\"}},{\"text\":\"§b§l§nMeleeWeapons\\n\",\"clickEvent\":{\"action\":\"change_page\",\"value\":\"4\"}},{\"text\":\"§b§l§nUltimateWeapons\\n\",\"clickEvent\":{\"action\":\"change_page\",\"value\":\"5\"}},{\"text\":\"§b§l§nSight\\n\",\"clickEvent\":{\"action\":\"change_page\",\"value\":\"6\"}},{\"text\":\"§b§l§nSilencer\\n\",\"clickEvent\":{\"action\":\"change_page\",\"value\":\"7\"}}]","[{\"text\":\"§5§l§oWeaponsStone\\n\\n\"},{\"text\":\"§lWeaponsStone1\\n\",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:0\"}},{\"text\":\"                     \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择商店页面 set 1\"}},{\"text\":\"\\n§lWeaponsStone2\\n\",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:1000\"}},{\"text\":\"                \"},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择商店页面 set 2\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择商店页面 set 3\"}},{\"text\":\"\\n§lWeaponsStone3\\n\",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:2000\"}},{\"text\":\"                \"},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择商店页面 set 4\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择商店页面 set 5\"}}]","[{\"text\":\"§5§l§oCamo\\n\\n\"},{\"text\":\"§lDiamond      \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:5000\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择皮肤页面 set 1\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择皮肤页面 set 2\"}},{\"text\":\"\\n§lGold         \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:4000\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择皮肤页面 set 3\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择皮肤页面 set 4\"}},{\"text\":\"\\n§lArctic       \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:3000\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择皮肤页面 set 5\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择皮肤页面 set 6\"}},{\"text\":\"\\n§lWoodland     \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:3000\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择皮肤页面 set 7\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择皮肤页面 set 8\"}},{\"text\":\"\\n§lBloodForest  \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:2000\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择皮肤页面 set 9\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择皮肤页面 set 10\"}},{\"text\":\"\\n§lPink         \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:2000\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择皮肤页面 set 11\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择皮肤页面 set 12\"}},{\"text\":\"\\n§lBlue         \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:2000\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择皮肤页面 set 13\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择皮肤页面 set 14\"}},{\"text\":\"\\n§lUnit01       \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:100\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择皮肤页面 set 15\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择皮肤页面 set 16\"}},{\"text\":\"\\n§4§l§nCancal Camo\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择皮肤页面 set 21\"}}]","[{\"text\":\"§5§l§oMeleeWeapons\\n\\n\"},{\"text\":\"§lBaseball Bat      \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:0\"}},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择近战武器页面 set 1\"}},{\"text\":\"\\n§lTomahawk'    \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:1000\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择近战武器页面 set 2\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择近战武器页面 set 3\"}},{\"text\":\"\\n§lBat w/ Nails \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:5000\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择近战武器页面 set 4\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择近战武器页面 set 5\"}}]","[{\"text\":\"§5§l§oUltimateWeapons\\n\\n\"},{\"text\":\"§lGL-06'            \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:0\"}},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择特殊武器页面 set 1\"}},{\"text\":\"\\n§lRPG-7        \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:500\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择特殊武器页面 set 2\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择特殊武器页面 set 3\"}},{\"text\":\"\\n§lGPC-A1       \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:600\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择特殊武器页面 set 4\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择特殊武器页面 set 5\"}},{\"text\":\"\\n§lVSS          \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:1000\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择特殊武器页面 set 6\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择特殊武器页面 set 7\"}},{\"text\":\"\\n§lM202         \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:1500\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择特殊武器页面 set 8\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择特殊武器页面 set 9\"}},{\"text\":\"\\n§lM32 MGL      \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:2000\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择特殊武器页面 set 10\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择特殊武器页面 set 11\"}},{\"text\":\"\\n§lM134         \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:3000\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择特殊武器页面 set 12\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择特殊武器页面 set 13\"}},{\"text\":\"\\n§lFat man      \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:5000\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择特殊武器页面 set 14\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择特殊武器页面 set 15\"}}]","[{\"text\":\"§5§l§oSight\\n\\n\"},{\"text\":\"§l15 MOA Reflex     \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:0\"}},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择瞄具页面 set 1\"}},{\"text\":\"\\n§lRMR          \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:500\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择瞄具页面 set 2\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择瞄具页面 set 3\"}},{\"text\":\"\\n§lOKP-7        \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:500\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择瞄具页面 set 4\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择瞄具页面 set 5\"}},{\"text\":\"\\n§l8-18 Kobra   \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:700\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择瞄具页面 set 6\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择瞄具页面 set 7\"}},{\"text\":\"\\n§lKobra Gen-3  \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:700\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择瞄具页面 set 8\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择瞄具页面 set 9\"}},{\"text\":\"\\n§lEOTech       \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:700\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择瞄具页面 set 10\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择瞄具页面 set 11\"}},{\"text\":\"\\n§lVortex       \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:800\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择瞄具页面 set 12\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择瞄具页面 set 13\"}},{\"text\":\"\\n§lBijia'        \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:1000\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择瞄具页面 set 14\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择瞄具页面 set 15\"}},{\"text\":\"\\n§lSpecter      \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:1100\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择瞄具页面 set 18\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择瞄具页面 set 19\"}},{\"text\":\"\\n§lACOG         \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:1200\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择瞄具页面 set 20\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择瞄具页面 set 21\"}},{\"text\":\"\\n§lNight Raider' \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:1500\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择瞄具页面 set 22\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择瞄具页面 set 23\"}}]","[{\"text\":\"§5§l§oSilencer\\n\\n\"},{\"text\":\"§l7.62x39mm         \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:0\"}},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择消音器页面 set 1\"}},{\"text\":\"\\n§l7.62x54mm'    \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:100\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择消音器页面 set 2\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择消音器页面 set 3\"}},{\"text\":\"\\n§l.50 BMG'      \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:100\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择消音器页面 set 4\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择消音器页面 set 5\"}},{\"text\":\"\\n§l7.62x51mm'    \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:200\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择消音器页面 set 6\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择消音器页面 set 7\"}},{\"text\":\"\\n§l12 Gauge     \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:500\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择消音器页面 set 8\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择消音器页面 set 9\"}},{\"text\":\"\\n§l.45 ACP'      \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:500\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择消音器页面 set 10\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择消音器页面 set 11\"}},{\"text\":\"\\n§l9(x18/19)mm'  \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:600\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择消音器页面 set 12\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择消音器页面 set 13\"}},{\"text\":\"\\n§l5.56x45mm    \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:600\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择消音器页面 set 14\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择消音器页面 set 15\"}}]"]}
#execute @e[tag=VMW] ~ ~ ~ replaceitem entity @a[tag=选择地图] slot.hotbar.2 minecraft:written_book 1 0 {tag:["NO"],HideFlags:32,author:"null",title:"选择地图",pages:["[{\"text\":\"§5§l§oSelect maps\\n\\n\"},{\"text\":\"§b§l§nmap1\\n\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择地图 set 1\"}},{\"text\":\"§b§l§nmap2\\n\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择地图 set 2\"}},{\"text\":\"§b§l§nmap3\\n\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择地图 set 3\"}},{\"text\":\"§b§l§nmap4\\n\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择地图 set 4\"}},{\"text\":\"§b§l§nmap5\\n\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择地图 set 5\"}},{\"text\":\"§b§l§nmap6\\n\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择地图 set 6\"}},{\"text\":\"\\n§9§nReplace game mode\\n\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择地图 set 20\"}},{\"text\":\"\\n§9§nReplace player maxhealth\\n\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择地图 set 21\"}}]"]}
execute @e[tag=VMW] ~ ~ ~ replaceitem entity @a[tag=选择地图] slot.hotbar.2 minecraft:grass_path 1 0 {ench:[{lvl:1s,id:71s}],HideFlags:1,display:{Name:"§f选择地图(右键打开)"}}
execute @e[tag=VMW] ~ ~ ~ replaceitem entity @a[tag=准备中] slot.hotbar.7 mwc:remington_700 1 0 {IUuidLeast:-8526920175805208252L,AtId:[I;4493,0,0,0,0,0,0,0,0,0,4176,0,0,0,4696,4695,0,0,0,0,0,0,0,0,0,4096,0],Ammo:0,IUuidMost:8402382143315660442L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,116B,-101B,66B,10B,-89B,106B,78B,-102B,-119B,-86B,75B,71B,21B,4B,-23B,68B,0B,0B,19B,83B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,38B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,22B,27B,0B,0B,17B,-115B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-2B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,80B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,88B,0B,0B,18B,87B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,0B,0B,65B,32B,0B,0B,0B,0B,0B,1B,62B,97B,71B,-82B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§f加载倍镜"},tag:["NO"]}

#倒计时结束后计算平衡(未加入队伍玩家将分配到需要平衡的队伍)
execute @e[tag=VMW,score_爆破-选择时间=0,score_开始-选择模式_min=3] ~ ~ ~ scoreboard players operation @s 个人-地图 = @s 爆破-地图
execute @e[tag=VMW,score_爆破-选择时间=0,score_开始-选择模式_min=3] ~ ~ ~ function vmwp:游戏/求生对抗/开始

scoreboard players operation @e[tag=VMW] 爆破-CT人数 = §f爆破-CT人数 爆破-CT人数
scoreboard players operation @e[tag=VMW] 爆破-T人数 = §f爆破-T人数 爆破-T人数

execute @e[tag=VMW,score_爆破-选择时间=0,score_爆破-CT人数=0] ~ ~ ~ scoreboard players tag @s add 爆破-随机分配给CT
execute @e[tag=VMW,score_爆破-选择时间=0] ~ ~ ~ scoreboard players operation @s[tag=爆破-随机分配给CT] 爆破-分配人数 = @s[tag=爆破-随机分配给CT] 爆破-T人数
execute @e[tag=VMW,score_爆破-选择时间=0] ~ ~ ~ scoreboard players operation @s[tag=爆破-随机分配给CT] 爆破-分配人数 /= §f除 爆破-分配人数
execute @e[tag=VMW,score_爆破-选择时间=0] ~ ~ ~ execute @s[tag=爆破-随机分配给CT,score_爆破-分配人数_min=1] ~ ~ ~ scoreboard teams join CT @r[team=T] 
execute @e[tag=VMW,score_爆破-选择时间=0] ~ ~ ~ scoreboard players remove @s[tag=爆破-随机分配给CT,score_爆破-分配人数_min=1] 爆破-分配人数 1
execute @e[tag=VMW,score_爆破-选择时间=0] ~ ~ ~ execute @s[tag=爆破-随机分配给CT,score_爆破-分配人数_min=1] ~ ~ ~ scoreboard teams join CT @r[team=T] 
execute @e[tag=VMW,score_爆破-选择时间=0] ~ ~ ~ scoreboard players remove @s[tag=爆破-随机分配给CT,score_爆破-分配人数_min=1] 爆破-分配人数 1
execute @e[tag=VMW,score_爆破-选择时间=0] ~ ~ ~ execute @s[tag=爆破-随机分配给CT,score_爆破-分配人数_min=1] ~ ~ ~ scoreboard teams join CT @r[team=T] 
execute @e[tag=VMW,score_爆破-选择时间=0] ~ ~ ~ scoreboard players remove @s[tag=爆破-随机分配给CT,score_爆破-分配人数_min=1] 爆破-分配人数 1
execute @e[tag=VMW,score_爆破-选择时间=0] ~ ~ ~ execute @s[tag=爆破-随机分配给CT,score_爆破-分配人数_min=1] ~ ~ ~ scoreboard teams join CT @r[team=T] 
execute @e[tag=VMW,score_爆破-选择时间=0] ~ ~ ~ scoreboard players remove @s[tag=爆破-随机分配给CT,score_爆破-分配人数_min=1] 爆破-分配人数 1
execute @e[tag=VMW,score_爆破-选择时间=0] ~ ~ ~ execute @s[tag=爆破-随机分配给CT,score_爆破-分配人数_min=1] ~ ~ ~ scoreboard teams join CT @r[team=T] 
execute @e[tag=VMW,score_爆破-选择时间=0] ~ ~ ~ scoreboard players remove @s[tag=爆破-随机分配给CT,score_爆破-分配人数_min=1] 爆破-分配人数 1
execute @e[tag=VMW,score_爆破-选择时间=0] ~ ~ ~ execute @s[tag=爆破-随机分配给CT,score_爆破-分配人数_min=1] ~ ~ ~ scoreboard teams join CT @r[team=T] 
execute @e[tag=VMW,score_爆破-选择时间=0] ~ ~ ~ scoreboard players remove @s[tag=爆破-随机分配给CT,score_爆破-分配人数_min=1] 爆破-分配人数 1
execute @e[tag=VMW,score_爆破-选择时间=0] ~ ~ ~ execute @s[tag=爆破-随机分配给CT,score_爆破-分配人数_min=1] ~ ~ ~ scoreboard teams join CT @r[team=T] 
execute @e[tag=VMW,score_爆破-选择时间=0] ~ ~ ~ scoreboard players remove @s[tag=爆破-随机分配给CT,score_爆破-分配人数_min=1] 爆破-分配人数 1
execute @e[tag=VMW,score_爆破-选择时间=0] ~ ~ ~ execute @s[tag=爆破-随机分配给CT,score_爆破-分配人数_min=1] ~ ~ ~ scoreboard teams join CT @r[team=T] 
execute @e[tag=VMW,score_爆破-选择时间=0] ~ ~ ~ scoreboard players remove @s[tag=爆破-随机分配给CT,score_爆破-分配人数_min=1] 爆破-分配人数 1
execute @e[tag=VMW,score_爆破-选择时间=0] ~ ~ ~ execute @s[tag=爆破-随机分配给CT,score_爆破-分配人数_min=1] ~ ~ ~ scoreboard teams join CT @r[team=T] 
execute @e[tag=VMW,score_爆破-选择时间=0] ~ ~ ~ scoreboard players remove @s[tag=爆破-随机分配给CT,score_爆破-分配人数_min=1] 爆破-分配人数 1
execute @e[tag=VMW,score_爆破-选择时间=0] ~ ~ ~ execute @s[tag=爆破-随机分配给CT,score_爆破-分配人数_min=1] ~ ~ ~ scoreboard teams join CT @r[team=T] 
execute @e[tag=VMW,score_爆破-选择时间=0] ~ ~ ~ scoreboard players remove @s[tag=爆破-随机分配给CT,score_爆破-分配人数_min=1] 爆破-分配人数 1
execute @e[tag=VMW,score_爆破-选择时间=0] ~ ~ ~ execute @s[tag=爆破-随机分配给CT] ~ ~ ~ tellraw @a[tag=!PVE-游戏中] [{"text":"§e§l已随机分配§4§lT§e§l阵营"}]
execute @e[tag=VMW,score_爆破-选择时间=0] ~ ~ ~ scoreboard players tag @s[tag=爆破-随机分配给CT] remove 爆破-随机分配给CT

execute @e[tag=VMW,score_爆破-选择时间=0,score_爆破-T人数=0] ~ ~ ~ scoreboard players tag @s add 爆破-随机分配给T
execute @e[tag=VMW,score_爆破-选择时间=0] ~ ~ ~ scoreboard players operation @s[tag=爆破-随机分配给T] 爆破-分配人数 = @s[tag=爆破-随机分配给T] 爆破-CT人数
execute @e[tag=VMW,score_爆破-选择时间=0] ~ ~ ~ scoreboard players operation @s[tag=爆破-随机分配给T] 爆破-分配人数 /= §f除 爆破-分配人数
execute @e[tag=VMW,score_爆破-选择时间=0] ~ ~ ~ execute @s[tag=爆破-随机分配给T,score_爆破-分配人数_min=1] ~ ~ ~ scoreboard teams join T @r[team=CT] 
execute @e[tag=VMW,score_爆破-选择时间=0] ~ ~ ~ scoreboard players remove @s[tag=爆破-随机分配给T,score_爆破-分配人数_min=1] 爆破-分配人数 1
execute @e[tag=VMW,score_爆破-选择时间=0] ~ ~ ~ execute @s[tag=爆破-随机分配给T,score_爆破-分配人数_min=1] ~ ~ ~ scoreboard teams join T @r[team=CT] 
execute @e[tag=VMW,score_爆破-选择时间=0] ~ ~ ~ scoreboard players remove @s[tag=爆破-随机分配给T,score_爆破-分配人数_min=1] 爆破-分配人数 1
execute @e[tag=VMW,score_爆破-选择时间=0] ~ ~ ~ execute @s[tag=爆破-随机分配给T,score_爆破-分配人数_min=1] ~ ~ ~ scoreboard teams join T @r[team=CT] 
execute @e[tag=VMW,score_爆破-选择时间=0] ~ ~ ~ scoreboard players remove @s[tag=爆破-随机分配给T,score_爆破-分配人数_min=1] 爆破-分配人数 1
execute @e[tag=VMW,score_爆破-选择时间=0] ~ ~ ~ execute @s[tag=爆破-随机分配给T,score_爆破-分配人数_min=1] ~ ~ ~ scoreboard teams join T @r[team=CT] 
execute @e[tag=VMW,score_爆破-选择时间=0] ~ ~ ~ scoreboard players remove @s[tag=爆破-随机分配给T,score_爆破-分配人数_min=1] 爆破-分配人数 1
execute @e[tag=VMW,score_爆破-选择时间=0] ~ ~ ~ execute @s[tag=爆破-随机分配给T,score_爆破-分配人数_min=1] ~ ~ ~ scoreboard teams join T @r[team=CT] 
execute @e[tag=VMW,score_爆破-选择时间=0] ~ ~ ~ scoreboard players remove @s[tag=爆破-随机分配给T,score_爆破-分配人数_min=1] 爆破-分配人数 1
execute @e[tag=VMW,score_爆破-选择时间=0] ~ ~ ~ execute @s[tag=爆破-随机分配给T,score_爆破-分配人数_min=1] ~ ~ ~ scoreboard teams join T @r[team=CT] 
execute @e[tag=VMW,score_爆破-选择时间=0] ~ ~ ~ scoreboard players remove @s[tag=爆破-随机分配给T,score_爆破-分配人数_min=1] 爆破-分配人数 1
execute @e[tag=VMW,score_爆破-选择时间=0] ~ ~ ~ execute @s[tag=爆破-随机分配给T,score_爆破-分配人数_min=1] ~ ~ ~ scoreboard teams join T @r[team=CT] 
execute @e[tag=VMW,score_爆破-选择时间=0] ~ ~ ~ scoreboard players remove @s[tag=爆破-随机分配给T,score_爆破-分配人数_min=1] 爆破-分配人数 1
execute @e[tag=VMW,score_爆破-选择时间=0] ~ ~ ~ execute @s[tag=爆破-随机分配给T,score_爆破-分配人数_min=1] ~ ~ ~ scoreboard teams join T @r[team=CT] 
execute @e[tag=VMW,score_爆破-选择时间=0] ~ ~ ~ scoreboard players remove @s[tag=爆破-随机分配给T,score_爆破-分配人数_min=1] 爆破-分配人数 1
execute @e[tag=VMW,score_爆破-选择时间=0] ~ ~ ~ execute @s[tag=爆破-随机分配给T,score_爆破-分配人数_min=1] ~ ~ ~ scoreboard teams join T @r[team=CT] 
execute @e[tag=VMW,score_爆破-选择时间=0] ~ ~ ~ scoreboard players remove @s[tag=爆破-随机分配给T,score_爆破-分配人数_min=1] 爆破-分配人数 1
execute @e[tag=VMW,score_爆破-选择时间=0] ~ ~ ~ execute @s[tag=爆破-随机分配给T,score_爆破-分配人数_min=1] ~ ~ ~ scoreboard teams join T @r[team=CT] 
execute @e[tag=VMW,score_爆破-选择时间=0] ~ ~ ~ scoreboard players remove @s[tag=爆破-随机分配给T,score_爆破-分配人数_min=1] 爆破-分配人数 1
execute @e[tag=VMW,score_爆破-选择时间=0] ~ ~ ~ execute @s[tag=爆破-随机分配给T] ~ ~ ~ tellraw @a[tag=!PVE-游戏中] [{"text":"§e§l已随机分配§9§lCT§e§l阵营"}]
execute @e[tag=VMW,score_爆破-选择时间=0] ~ ~ ~ scoreboard players tag @s[tag=爆破-随机分配给T] remove 爆破-随机分配给T

scoreboard players operation @e[tag=VMW] 爆破-CT人数 = §f爆破-CT人数 爆破-CT人数
scoreboard players operation @e[tag=VMW] 爆破-T人数 = §f爆破-T人数 爆破-T人数
scoreboard players operation @e[tag=VMW,score_爆破-选择时间=0] 爆破-CT人数 -= @e[tag=VMW] 爆破-T人数
execute @e[tag=VMW,score_爆破-选择时间=0,score_爆破-CT人数_min=1] ~ ~ ~ scoreboard teams join T @r[team=,tag=准备中]
execute @e[tag=VMW,score_爆破-选择时间=0,score_爆破-CT人数=0] ~ ~ ~ scoreboard teams join CT @r[team=,tag=准备中]
execute @e[tag=VMW,score_爆破-选择时间=0] ~ ~ ~ scoreboard players tag @a[tag=选择地图] remove 选择地图
execute @e[tag=VMW,score_爆破-选择时间=0,score_开始-选择模式=0] ~ ~ ~ function vmwp:游戏/赏金爆破/开始 unless @a[team=,tag=准备中]
execute @e[tag=VMW,score_爆破-选择时间=0,score_开始-选择模式=1,score_开始-选择模式_min=1] ~ ~ ~ function vmwp:游戏/破点攻防/开始 unless @a[team=,tag=准备中]
execute @e[tag=VMW,score_爆破-选择时间=0,score_开始-选择模式=2,score_开始-选择模式_min=2] ~ ~ ~ function vmwp:游戏/团队死斗/开始 unless @a[team=,tag=准备中]

#选择地图及模式
scoreboard players enable @a[tag=选择地图] 选择地图

execute @a[score_选择地图_min=1,score_选择地图=1,tag=选择地图] ~ ~ ~ scoreboard players set @e[tag=VMW] 爆破-地图 0
execute @a[score_选择地图_min=1,score_选择地图=1,tag=选择地图] ~ ~ ~ tellraw @a[tag=!PVE-游戏中] [{"text":"§a§l地图更变为§fmap1"}]
execute @a[score_选择地图_min=2,score_选择地图=2,tag=选择地图] ~ ~ ~ scoreboard players set @e[tag=VMW] 爆破-地图 1
execute @a[score_选择地图_min=2,score_选择地图=2,tag=选择地图] ~ ~ ~ tellraw @a[tag=!PVE-游戏中] [{"text":"§a§l地图更变为§fmap2"}]
execute @a[score_选择地图_min=3,score_选择地图=3,tag=选择地图] ~ ~ ~ scoreboard players set @e[tag=VMW] 爆破-地图 2
execute @a[score_选择地图_min=3,score_选择地图=3,tag=选择地图] ~ ~ ~ tellraw @a[tag=!PVE-游戏中] [{"text":"§a§l地图更变为§fmap3"}]
execute @a[score_选择地图_min=4,score_选择地图=4,tag=选择地图] ~ ~ ~ scoreboard players set @e[tag=VMW] 爆破-地图 3
execute @a[score_选择地图_min=4,score_选择地图=4,tag=选择地图] ~ ~ ~ tellraw @a[tag=!PVE-游戏中] [{"text":"§a§l地图更变为§fmap4"}]
execute @a[score_选择地图_min=5,score_选择地图=5,tag=选择地图] ~ ~ ~ scoreboard players set @e[tag=VMW] 爆破-地图 4
execute @a[score_选择地图_min=5,score_选择地图=5,tag=选择地图] ~ ~ ~ tellraw @a[tag=!PVE-游戏中] [{"text":"§a§l地图更变为§fmap5"}]
execute @a[score_选择地图_min=6,score_选择地图=6,tag=选择地图] ~ ~ ~ scoreboard players set @e[tag=VMW] 爆破-地图 5
execute @a[score_选择地图_min=6,score_选择地图=6,tag=选择地图] ~ ~ ~ tellraw @a[tag=!PVE-游戏中] [{"text":"§a§l地图更变为§fmap6"}]

execute @e[tag=VMW] ~ ~ ~ execute @s[tag=!半血模式] ~ ~ ~ execute @a[score_选择地图_min=21,score_选择地图=21,tag=选择地图] ~ ~ ~ tellraw @a[tag=!PVE-游戏中] [{"text":"§a§l血量更变为§f半血"}]
execute @e[tag=VMW] ~ ~ ~ execute @s[tag=!半血模式] ~ ~ ~ execute @a[score_选择地图_min=21,score_选择地图=21,tag=选择地图] ~ ~ ~ scoreboard players tag @s add 切换
execute @e[tag=VMW] ~ ~ ~ execute @s[tag=!半血模式] ~ ~ ~ execute @a[score_选择地图_min=21,score_选择地图=21,tag=选择地图] ~ ~ ~ scoreboard players tag @e[tag=VMW] add 半血模式
scoreboard players reset @e[score_选择地图_min=1,tag=切换] 选择地图
scoreboard players tag @a[tag=切换] remove 切换

execute @e[tag=VMW] ~ ~ ~ execute @s[tag=半血模式] ~ ~ ~ execute @a[score_选择地图_min=21,score_选择地图=21,tag=选择地图] ~ ~ ~ tellraw @a[tag=!PVE-游戏中] [{"text":"§a§l血量更变为§f正常"}]
execute @e[tag=VMW] ~ ~ ~ execute @s[tag=半血模式] ~ ~ ~ execute @a[score_选择地图_min=21,score_选择地图=21,tag=选择地图] ~ ~ ~ scoreboard players tag @s add 切换
execute @e[tag=VMW] ~ ~ ~ execute @s[tag=半血模式] ~ ~ ~ execute @a[score_选择地图_min=21,score_选择地图=21,tag=选择地图] ~ ~ ~ scoreboard players tag @e[tag=VMW] remove 半血模式
scoreboard players reset @e[score_选择地图_min=1,tag=切换] 选择地图
scoreboard players tag @a[tag=切换] remove 切换

execute @e[tag=VMW,score_开始-选择模式=0] ~ ~ ~ execute @a[score_选择地图_min=20,score_选择地图=20,tag=选择地图] ~ ~ ~ tellraw @a[tag=!PVE-游戏中] [{"text":"§e§l模式更变为§f破点攻防"}]
execute @e[tag=VMW,score_开始-选择模式=0] ~ ~ ~ execute @a[score_选择地图_min=20,score_选择地图=20,tag=选择地图] ~ ~ ~ tellraw @a[tag=!PVE-游戏中] [{"text":"§f提示: 玩家需要前往§e蓝色信标光束附近的红圈中§f占领目标点!"}]
execute @e[tag=VMW,score_开始-选择模式=0] ~ ~ ~ execute @a[score_选择地图_min=20,score_选择地图=20,tag=选择地图] ~ ~ ~ scoreboard players tag @s add 切换
execute @e[tag=VMW,score_开始-选择模式=0] ~ ~ ~ execute @a[score_选择地图_min=20,score_选择地图=20,tag=选择地图] ~ ~ ~ scoreboard players set @e[tag=VMW] 开始-选择模式 1
scoreboard players reset @e[score_选择地图_min=1,tag=切换] 选择地图
scoreboard players tag @a[tag=切换] remove 切换

execute @e[tag=VMW,score_开始-选择模式=1,score_开始-选择模式_min=1] ~ ~ ~ execute @a[score_选择地图_min=20,score_选择地图=20,tag=选择地图] ~ ~ ~ tellraw @a[tag=!PVE-游戏中] [{"text":"§e§l模式更变为§f团队死斗"}]
execute @e[tag=VMW,score_开始-选择模式=1,score_开始-选择模式_min=1] ~ ~ ~ execute @a[score_选择地图_min=20,score_选择地图=20,tag=选择地图] ~ ~ ~ tellraw @a[tag=!PVE-游戏中] [{"text":"§f提示: 先达到§e65击杀数§f的队伍会取得胜利, 含有§e边界§f限制!"}]
execute @e[tag=VMW,score_开始-选择模式=1,score_开始-选择模式_min=1] ~ ~ ~ execute @a[score_选择地图_min=20,score_选择地图=20,tag=选择地图] ~ ~ ~ scoreboard players tag @s add 切换
execute @e[tag=VMW,score_开始-选择模式=1,score_开始-选择模式_min=1] ~ ~ ~ execute @a[score_选择地图_min=20,score_选择地图=20,tag=选择地图] ~ ~ ~ scoreboard players set @e[tag=VMW] 开始-选择模式 2
scoreboard players reset @e[score_选择地图_min=1,tag=切换] 选择地图
scoreboard players tag @a[tag=切换] remove 切换

execute @e[tag=VMW,score_开始-选择模式=2,score_开始-选择模式_min=2] ~ ~ ~ execute @a[score_选择地图_min=20,score_选择地图=20,tag=选择地图] ~ ~ ~ tellraw @a[tag=!PVE-游戏中] [{"text":"§e§l模式更变为§f求生对抗"}]
execute @e[tag=VMW,score_开始-选择模式=2,score_开始-选择模式_min=2] ~ ~ ~ execute @a[score_选择地图_min=20,score_选择地图=20,tag=选择地图] ~ ~ ~ tellraw @a[tag=!PVE-游戏中] [{"text":"§f提示: 模式将转变为§e个人战§f, 主武器仅可使用§e狙击步枪/射手步枪/冲锋枪§f, 进入后记得§e开启鞘翅§f用于降落!"}]
execute @e[tag=VMW,score_开始-选择模式=2,score_开始-选择模式_min=2] ~ ~ ~ execute @a[score_选择地图_min=20,score_选择地图=20,tag=选择地图] ~ ~ ~ scoreboard players tag @s add 切换
execute @e[tag=VMW,score_开始-选择模式=2,score_开始-选择模式_min=2] ~ ~ ~ execute @a[score_选择地图_min=20,score_选择地图=20,tag=选择地图] ~ ~ ~ scoreboard players set @e[tag=VMW] 开始-选择模式 3
scoreboard players reset @e[score_选择地图_min=1,tag=切换] 选择地图
scoreboard players tag @a[tag=切换] remove 切换

execute @e[tag=VMW,score_开始-选择模式=3,score_开始-选择模式_min=3] ~ ~ ~ execute @a[score_选择地图_min=20,score_选择地图=20,tag=选择地图] ~ ~ ~ tellraw @a[tag=!PVE-游戏中] [{"text":"§e§l模式更变为§f赏金爆破"}]
execute @e[tag=VMW,score_开始-选择模式=3,score_开始-选择模式_min=3] ~ ~ ~ execute @a[score_选择地图_min=20,score_选择地图=20,tag=选择地图] ~ ~ ~ tellraw @a[tag=!PVE-游戏中] [{"text":"§f提示: 玩家需要在§e蓝色信标光束附近的红圈中§f通过潜行进行§e拆除\\安装C4§f!"}]
execute @e[tag=VMW,score_开始-选择模式=3,score_开始-选择模式_min=3] ~ ~ ~ execute @a[score_选择地图_min=20,score_选择地图=20,tag=选择地图] ~ ~ ~ scoreboard players set @e[tag=VMW] 开始-选择模式 0
scoreboard players reset @e[score_选择地图_min=1] 选择地图

#彩蛋
scoreboard players tag @a add 15钞票 {Inventory:[{id:"minecraft:paper",tag:{tag:["15钞票"]}}]}
scoreboard players add @a[tag=15钞票] 钞票 15
tellraw @a[tag=15钞票] [{"text":"§6+15钞票"}]
clear @a[tag=15钞票] minecraft:paper
scoreboard players tag @a[tag=15钞票] remove 15钞票

#退出处理
scoreboard players set @a[score_离开游戏_min=1] 背景音乐 0
scoreboard players reset @a[score_离开游戏_min=1] 爆破-金钱
scoreboard players reset @a[score_离开游戏_min=1] 爆破-选择的主武器
scoreboard players reset @a[score_离开游戏_min=1] 爆破-选择的副武器
scoreboard players reset @a[score_离开游戏_min=1] 爆破-击杀数

scoreboard players tag @a[score_离开游戏_min=1] remove 准备中
scoreboard players tag @a[score_离开游戏_min=1] remove 游戏中
scoreboard players tag @a[score_离开游戏_min=1] remove 商店

scoreboard teams leave @a[score_离开游戏_min=1]
scoreboard teams join 旁观 @a[score_离开游戏_min=1]

effect @a[score_离开游戏_min=1] 1 0 0 true
xp -10000L @a[score_离开游戏_min=1]
clear @a[score_离开游戏_min=1]
gamemode 2 @a[score_离开游戏_min=1]
tp @a[score_离开游戏_min=1] 267 66 1231 90 0
playsound minecraft:block.note.bass ambient @a[score_离开游戏_min=1] ~ ~ ~ 1000000000 1
tellraw @a[score_离开游戏_min=1] [{"text":"§e§l由于你离开了服务器,你将旁观游戏"}]
scoreboard players set @a[score_离开游戏_min=1] 离开游戏 0