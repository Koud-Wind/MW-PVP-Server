#
execute @e[tag=VMW] ~ ~ ~ execute @s[score_start-TR=0] ~ ~ ~ function vmwp:onceRun/startP2

#shop函数
function vmwp:shop/itemShop

#Display器
execute @a[tag=Preparing] ~ ~ ~ title @s[team=] actionbar [{"text":"§bPlease select team! §aStart time:"},{"score":{"objective":"start-RTC","name":"@e[tag=VMW]"}},{"text":"s§a§l"}]
execute @a[tag=Preparing] ~ ~ ~ title @s[team=CT] actionbar [{"text":"§bYour team:§9CT §aStart time:"},{"score":{"objective":"start-RTC","name":"@e[tag=VMW]"}},{"text":"s§a§l"}]
execute @a[tag=Preparing] ~ ~ ~ title @s[team=T] actionbar [{"text":"§bYour team:§4T §aStart time:"},{"score":{"objective":"start-RTC","name":"@e[tag=VMW]"}},{"text":"s§a§l"}]
#计时器
execute @e[tag=VMW,score_CT-STime_min=120,score_CT-STime=120] ~ ~ ~ playsound minecraft:block.note.hat ambient @a[tag=!PVE-IG] ~ ~ ~ 1000000000
execute @e[tag=VMW,score_CT-STime_min=100,score_CT-STime=100] ~ ~ ~ playsound minecraft:block.note.hat ambient @a[tag=!PVE-IG] ~ ~ ~ 1000000000
execute @e[tag=VMW,score_CT-STime_min=80,score_CT-STime=80] ~ ~ ~ playsound minecraft:block.note.hat ambient @a[tag=!PVE-IG] ~ ~ ~ 1000000000
execute @e[tag=VMW,score_CT-STime_min=60,score_CT-STime=60] ~ ~ ~ playsound minecraft:block.note.hat ambient @a[tag=!PVE-IG] ~ ~ ~ 1000000000
execute @e[tag=VMW,score_CT-STime_min=40,score_CT-STime=40] ~ ~ ~ playsound minecraft:block.note.hat ambient @a[tag=!PVE-IG] ~ ~ ~ 1000000000
execute @e[tag=VMW,score_CT-STime_min=20,score_CT-STime=20] ~ ~ ~ playsound minecraft:block.note.hat ambient @a[tag=!PVE-IG] ~ ~ ~ 1000000000
scoreboard players operation @e[tag=VMW] start-RTC = @e[tag=VMW] CT-STime
scoreboard players operation @e[tag=VMW] start-RTC /= §fdivision start-RTC
execute @e[tag=VMW] ~ ~ ~ scoreboard players remove @s[score_CT-STime_min=1] CT-STime 1
#参与人数
scoreboard players operation @e[tag=VMW] start-RP = §fRP start-RP
execute @e[tag=VMW] ~ ~ ~ scoreboard players tag @s[score_start-RP=1,score_CT-STime_min=1] remove RS2
execute @e[tag=VMW] ~ ~ ~ execute @s[score_start-RP=1,score_CT-STime_min=1] ~ ~ ~ scoreboard teams leave @a[tag=!PVE-IG]
execute @e[tag=VMW] ~ ~ ~ execute @s[score_start-RP=1,score_CT-STime_min=1] ~ ~ ~ tellraw @a[tag=!PVE-IG] [{"text":"§cThe game has been canceled due to insufficient number of players!"}]

scoreboard players tag @e[type=item] add joinCT {Item:{tag:{tag:["CT"]}}}
execute @e[type=item,tag=joinCT] ~ ~ ~ scoreboard teams join CT @p[r=2]
execute @e[type=item,tag=joinCT] ~ ~ ~ tellraw @p[r=2] [{"text":"§aYou choose to join §9§lCT"}]
execute @e[type=item,tag=joinCT] ~ ~ ~ playsound minecraft:block.note.pling ambient @p[r=2] ~ ~ ~ 1000000000 2
kill @e[tag=joinCT,type=item]

scoreboard players tag @e[type=item] add joinT {Item:{tag:{tag:["T"]}}}
execute @e[type=item,tag=joinT] ~ ~ ~ scoreboard teams join T @p[r=2]
execute @e[type=item,tag=joinT] ~ ~ ~ tellraw @p[r=2] [{"text":"§aYou choose to join §4§lT"}]
execute @e[type=item,tag=joinT] ~ ~ ~ playsound minecraft:block.note.pling ambient @p[r=2] ~ ~ ~ 1000000000 2
kill @e[tag=joinT,type=item]
#道具与效果
execute @e[tag=VMW] ~ ~ ~ effect @a[tag=!PVE-IG] 18 1 1 true
execute @e[tag=VMW] ~ ~ ~ effect @a[tag=!PVE-IG] 11 1 50 true
execute @e[tag=VMW] ~ ~ ~ replaceitem entity @a[tag=Preparing] slot.hotbar.0 minecraft:dye 1 10 {ench:[{lvl:1s,id:71s}],HideFlags:1,display:{Name:"§9Press Q to join the CT team"},tag:["CT"]}
execute @e[tag=VMW] ~ ~ ~ replaceitem entity @a[tag=Preparing] slot.hotbar.1 minecraft:dye 1 1 {ench:[{lvl:1s,id:71s}],HideFlags:1,display:{Name:"§4Press Q to join the T team"},tag:["T"]}
execute @e[tag=VMW] ~ ~ ~ replaceitem entity @a[tag=Preparing] slot.hotbar.8 minecraft:nether_star 1 0 {display:{Name:"§fItem Shop"}}
#execute @e[tag=VMW] ~ ~ ~ replaceitem entity @a[tag=Preparing] slot.hotbar.8 minecraft:written_book 1 0 {tag:["NO"],HideFlags:32,author:"null",title:"shop",pages:["[{\"text\":\"§3§lShop\\n\\n\"},{\"text\":\"§b§l§nWeaponsStone\\n\",\"clickEvent\":{\"action\":\"change_page\",\"value\":\"2\"}},{\"text\":\"§b§l§nCamo\\n\",\"clickEvent\":{\"action\":\"change_page\",\"value\":\"3\"}},{\"text\":\"§b§l§nMeleeWeapons\\n\",\"clickEvent\":{\"action\":\"change_page\",\"value\":\"4\"}},{\"text\":\"§b§l§nUltimateWeapons\\n\",\"clickEvent\":{\"action\":\"change_page\",\"value\":\"5\"}},{\"text\":\"§b§l§nSight\\n\",\"clickEvent\":{\"action\":\"change_page\",\"value\":\"6\"}},{\"text\":\"§b§l§nSilencer\\n\",\"clickEvent\":{\"action\":\"change_page\",\"value\":\"7\"}}]","[{\"text\":\"§5§l§oWeaponsStone\\n\\n\"},{\"text\":\"§lWeaponsStone1\\n\",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:0\"}},{\"text\":\"                     \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-ShopP set 1\"}},{\"text\":\"\\n§lWeaponsStone2\\n\",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:1000\"}},{\"text\":\"                \"},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-ShopP set 2\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-ShopP set 3\"}},{\"text\":\"\\n§lWeaponsStone3\\n\",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:2000\"}},{\"text\":\"                \"},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-ShopP set 4\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-ShopP set 5\"}}]","[{\"text\":\"§5§l§oCamo\\n\\n\"},{\"text\":\"§lDiamond      \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:5000\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择皮肤页面 set 1\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择皮肤页面 set 2\"}},{\"text\":\"\\n§lGold         \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:4000\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择皮肤页面 set 3\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择皮肤页面 set 4\"}},{\"text\":\"\\n§lArctic       \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:3000\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择皮肤页面 set 5\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择皮肤页面 set 6\"}},{\"text\":\"\\n§lWoodland     \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:3000\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择皮肤页面 set 7\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择皮肤页面 set 8\"}},{\"text\":\"\\n§lBloodForest  \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:2000\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择皮肤页面 set 9\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择皮肤页面 set 10\"}},{\"text\":\"\\n§lPink         \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:2000\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择皮肤页面 set 11\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择皮肤页面 set 12\"}},{\"text\":\"\\n§lBlue         \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:2000\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择皮肤页面 set 13\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择皮肤页面 set 14\"}},{\"text\":\"\\n§lUnit01       \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:100\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择皮肤页面 set 15\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择皮肤页面 set 16\"}},{\"text\":\"\\n§4§l§nCancal Camo\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger 选择皮肤页面 set 21\"}}]","[{\"text\":\"§5§l§oMeleeWeapons\\n\\n\"},{\"text\":\"§lBaseball Bat      \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:0\"}},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-MeleeWP set 1\"}},{\"text\":\"\\n§lTomahawk'    \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:1000\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-MeleeWP set 2\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-MeleeWP set 3\"}},{\"text\":\"\\n§lBat w/ Nails \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:5000\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-MeleeWP set 4\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-MeleeWP set 5\"}}]","[{\"text\":\"§5§l§oUltimateWeapons\\n\\n\"},{\"text\":\"§lGL-06'            \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:0\"}},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-UltimateWP set 1\"}},{\"text\":\"\\n§lRPG-7        \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:500\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-UltimateWP set 2\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-UltimateWP set 3\"}},{\"text\":\"\\n§lGPC-A1       \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:600\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-UltimateWP set 4\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-UltimateWP set 5\"}},{\"text\":\"\\n§lVSS          \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:1000\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-UltimateWP set 6\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-UltimateWP set 7\"}},{\"text\":\"\\n§lM202         \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:1500\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-UltimateWP set 8\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-UltimateWP set 9\"}},{\"text\":\"\\n§lM32 MGL      \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:2000\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-UltimateWP set 10\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-UltimateWP set 11\"}},{\"text\":\"\\n§lM134         \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:3000\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-UltimateWP set 12\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-UltimateWP set 13\"}},{\"text\":\"\\n§lFat man      \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:5000\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-UltimateWP set 14\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-UltimateWP set 15\"}}]","[{\"text\":\"§5§l§oSight\\n\\n\"},{\"text\":\"§l15 MOA Reflex     \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:0\"}},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-SightP set 1\"}},{\"text\":\"\\n§lRMR          \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:500\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-SightP set 2\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-SightP set 3\"}},{\"text\":\"\\n§lOKP-7        \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:500\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-SightP set 4\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-SightP set 5\"}},{\"text\":\"\\n§l8-18 Kobra   \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:700\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-SightP set 6\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-SightP set 7\"}},{\"text\":\"\\n§lKobra Gen-3  \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:700\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-SightP set 8\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-SightP set 9\"}},{\"text\":\"\\n§lEOTech       \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:700\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-SightP set 10\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-SightP set 11\"}},{\"text\":\"\\n§lVortex       \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:800\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-SightP set 12\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-SightP set 13\"}},{\"text\":\"\\n§lBijia'        \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:1000\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-SightP set 14\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-SightP set 15\"}},{\"text\":\"\\n§lSpecter      \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:1100\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-SightP set 18\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-SightP set 19\"}},{\"text\":\"\\n§lACOG         \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:1200\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-SightP set 20\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-SightP set 21\"}},{\"text\":\"\\n§lNight Raider' \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:1500\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-SightP set 22\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-SightP set 23\"}}]","[{\"text\":\"§5§l§oSilencer\\n\\n\"},{\"text\":\"§l7.62x39mm         \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:0\"}},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-SilencerP set 1\"}},{\"text\":\"\\n§l7.62x54mm'    \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:100\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-SilencerP set 2\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-SilencerP set 3\"}},{\"text\":\"\\n§l.50 BMG'      \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:100\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-SilencerP set 4\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-SilencerP set 5\"}},{\"text\":\"\\n§l7.62x51mm'    \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:200\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-SilencerP set 6\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-SilencerP set 7\"}},{\"text\":\"\\n§l12 Gauge     \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:500\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-SilencerP set 8\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-SilencerP set 9\"}},{\"text\":\"\\n§l.45 ACP'      \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:500\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-SilencerP set 10\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-SilencerP set 11\"}},{\"text\":\"\\n§l9(x18/19)mm'  \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:600\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-SilencerP set 12\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-SilencerP set 13\"}},{\"text\":\"\\n§l5.56x45mm    \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:600\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-SilencerP set 14\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-SilencerP set 15\"}}]"]}
#execute @e[tag=VMW] ~ ~ ~ replaceitem entity @a[tag=S-Map] slot.hotbar.2 minecraft:written_book 1 0 {tag:["NO"],HideFlags:32,author:"null",title:"Select Map",pages:["[{\"text\":\"§5§l§oSelect maps\\n\\n\"},{\"text\":\"§b§l§nmap1\\n\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-Map set 1\"}},{\"text\":\"§b§l§nmap2\\n\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-Map set 2\"}},{\"text\":\"§b§l§nmap3\\n\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-Map set 3\"}},{\"text\":\"§b§l§nmap4\\n\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-Map set 4\"}},{\"text\":\"§b§l§nmap5\\n\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-Map set 5\"}},{\"text\":\"§b§l§nmap6\\n\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-Map set 6\"}},{\"text\":\"\\n§9§nReplace game mode\\n\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-Map set 20\"}},{\"text\":\"\\n§9§nReplace player maxhealth\\n\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-Map set 21\"}}]"]}
execute @e[tag=VMW] ~ ~ ~ replaceitem entity @a[tag=S-Map] slot.hotbar.2 minecraft:grass_path 1 0 {ench:[{lvl:1s,id:71s}],HideFlags:1,display:{Name:"§fSelect Map"}}
execute @e[tag=VMW] ~ ~ ~ replaceitem entity @a[tag=Preparing] slot.hotbar.7 mwc:remington_700 1 0 {IUuidLeast:-8526920175805208252L,AtId:[I;4493,0,0,0,0,0,0,0,0,0,4176,0,0,0,4696,4695,0,0,0,0,0,0,0,0,0,4096,0],Ammo:0,IUuidMost:8402382143315660442L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,116B,-101B,66B,10B,-89B,106B,78B,-102B,-119B,-86B,75B,71B,21B,4B,-23B,68B,0B,0B,19B,83B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,38B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,22B,27B,0B,0B,17B,-115B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-2B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,80B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,88B,0B,0B,18B,87B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,0B,0B,65B,32B,0B,0B,0B,0B,0B,1B,62B,97B,71B,-82B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fLoad sight"},tag:["NO"]}

#倒计时结束后计算平衡(未加入队伍玩家将分配到需要平衡的队伍)
execute @e[tag=VMW,score_CT-STime=0,score_Start-SMode_min=3] ~ ~ ~ scoreboard players operation @s PC-Map = @s CT-Map
execute @e[tag=VMW,score_CT-STime=0,score_Start-SMode_min=3] ~ ~ ~ function vmwp:games/survival/start

scoreboard players operation @e[tag=VMW] CT-CTN = §fCT-CTN CT-CTN
scoreboard players operation @e[tag=VMW] CT-TN = §fCT-TN CT-TN

execute @e[tag=VMW,score_CT-STime=0,score_CT-CTN=0] ~ ~ ~ scoreboard players tag @s add CT-RandomDCT
execute @e[tag=VMW,score_CT-STime=0] ~ ~ ~ scoreboard players operation @s[tag=CT-RandomDCT] CT-Assign = @s[tag=CT-RandomDCT] CT-TN
execute @e[tag=VMW,score_CT-STime=0] ~ ~ ~ scoreboard players operation @s[tag=CT-RandomDCT] CT-Assign /= §fdivision CT-Assign
execute @e[tag=VMW,score_CT-STime=0] ~ ~ ~ execute @s[tag=CT-RandomDCT,score_CT-Assign_min=1] ~ ~ ~ scoreboard teams join CT @r[team=T] 
execute @e[tag=VMW,score_CT-STime=0] ~ ~ ~ scoreboard players remove @s[tag=CT-RandomDCT,score_CT-Assign_min=1] CT-Assign 1
execute @e[tag=VMW,score_CT-STime=0] ~ ~ ~ execute @s[tag=CT-RandomDCT,score_CT-Assign_min=1] ~ ~ ~ scoreboard teams join CT @r[team=T] 
execute @e[tag=VMW,score_CT-STime=0] ~ ~ ~ scoreboard players remove @s[tag=CT-RandomDCT,score_CT-Assign_min=1] CT-Assign 1
execute @e[tag=VMW,score_CT-STime=0] ~ ~ ~ execute @s[tag=CT-RandomDCT,score_CT-Assign_min=1] ~ ~ ~ scoreboard teams join CT @r[team=T] 
execute @e[tag=VMW,score_CT-STime=0] ~ ~ ~ scoreboard players remove @s[tag=CT-RandomDCT,score_CT-Assign_min=1] CT-Assign 1
execute @e[tag=VMW,score_CT-STime=0] ~ ~ ~ execute @s[tag=CT-RandomDCT,score_CT-Assign_min=1] ~ ~ ~ scoreboard teams join CT @r[team=T] 
execute @e[tag=VMW,score_CT-STime=0] ~ ~ ~ scoreboard players remove @s[tag=CT-RandomDCT,score_CT-Assign_min=1] CT-Assign 1
execute @e[tag=VMW,score_CT-STime=0] ~ ~ ~ execute @s[tag=CT-RandomDCT,score_CT-Assign_min=1] ~ ~ ~ scoreboard teams join CT @r[team=T] 
execute @e[tag=VMW,score_CT-STime=0] ~ ~ ~ scoreboard players remove @s[tag=CT-RandomDCT,score_CT-Assign_min=1] CT-Assign 1
execute @e[tag=VMW,score_CT-STime=0] ~ ~ ~ execute @s[tag=CT-RandomDCT,score_CT-Assign_min=1] ~ ~ ~ scoreboard teams join CT @r[team=T] 
execute @e[tag=VMW,score_CT-STime=0] ~ ~ ~ scoreboard players remove @s[tag=CT-RandomDCT,score_CT-Assign_min=1] CT-Assign 1
execute @e[tag=VMW,score_CT-STime=0] ~ ~ ~ execute @s[tag=CT-RandomDCT,score_CT-Assign_min=1] ~ ~ ~ scoreboard teams join CT @r[team=T] 
execute @e[tag=VMW,score_CT-STime=0] ~ ~ ~ scoreboard players remove @s[tag=CT-RandomDCT,score_CT-Assign_min=1] CT-Assign 1
execute @e[tag=VMW,score_CT-STime=0] ~ ~ ~ execute @s[tag=CT-RandomDCT,score_CT-Assign_min=1] ~ ~ ~ scoreboard teams join CT @r[team=T] 
execute @e[tag=VMW,score_CT-STime=0] ~ ~ ~ scoreboard players remove @s[tag=CT-RandomDCT,score_CT-Assign_min=1] CT-Assign 1
execute @e[tag=VMW,score_CT-STime=0] ~ ~ ~ execute @s[tag=CT-RandomDCT,score_CT-Assign_min=1] ~ ~ ~ scoreboard teams join CT @r[team=T] 
execute @e[tag=VMW,score_CT-STime=0] ~ ~ ~ scoreboard players remove @s[tag=CT-RandomDCT,score_CT-Assign_min=1] CT-Assign 1
execute @e[tag=VMW,score_CT-STime=0] ~ ~ ~ execute @s[tag=CT-RandomDCT,score_CT-Assign_min=1] ~ ~ ~ scoreboard teams join CT @r[team=T] 
execute @e[tag=VMW,score_CT-STime=0] ~ ~ ~ scoreboard players remove @s[tag=CT-RandomDCT,score_CT-Assign_min=1] CT-Assign 1
execute @e[tag=VMW,score_CT-STime=0] ~ ~ ~ execute @s[tag=CT-RandomDCT] ~ ~ ~ tellraw @a[tag=!PVE-IG] [{"text":"§eRandomly distributed §4§lT "}]
execute @e[tag=VMW,score_CT-STime=0] ~ ~ ~ scoreboard players tag @s[tag=CT-RandomDCT] remove CT-RandomDCT

execute @e[tag=VMW,score_CT-STime=0,score_CT-TN=0] ~ ~ ~ scoreboard players tag @s add CT-RandomDT
execute @e[tag=VMW,score_CT-STime=0] ~ ~ ~ scoreboard players operation @s[tag=CT-RandomDT] CT-Assign = @s[tag=CT-RandomDT] CT-CTN
execute @e[tag=VMW,score_CT-STime=0] ~ ~ ~ scoreboard players operation @s[tag=CT-RandomDT] CT-Assign /= §fdivision CT-Assign
execute @e[tag=VMW,score_CT-STime=0] ~ ~ ~ execute @s[tag=CT-RandomDT,score_CT-Assign_min=1] ~ ~ ~ scoreboard teams join T @r[team=CT] 
execute @e[tag=VMW,score_CT-STime=0] ~ ~ ~ scoreboard players remove @s[tag=CT-RandomDT,score_CT-Assign_min=1] CT-Assign 1
execute @e[tag=VMW,score_CT-STime=0] ~ ~ ~ execute @s[tag=CT-RandomDT,score_CT-Assign_min=1] ~ ~ ~ scoreboard teams join T @r[team=CT] 
execute @e[tag=VMW,score_CT-STime=0] ~ ~ ~ scoreboard players remove @s[tag=CT-RandomDT,score_CT-Assign_min=1] CT-Assign 1
execute @e[tag=VMW,score_CT-STime=0] ~ ~ ~ execute @s[tag=CT-RandomDT,score_CT-Assign_min=1] ~ ~ ~ scoreboard teams join T @r[team=CT] 
execute @e[tag=VMW,score_CT-STime=0] ~ ~ ~ scoreboard players remove @s[tag=CT-RandomDT,score_CT-Assign_min=1] CT-Assign 1
execute @e[tag=VMW,score_CT-STime=0] ~ ~ ~ execute @s[tag=CT-RandomDT,score_CT-Assign_min=1] ~ ~ ~ scoreboard teams join T @r[team=CT] 
execute @e[tag=VMW,score_CT-STime=0] ~ ~ ~ scoreboard players remove @s[tag=CT-RandomDT,score_CT-Assign_min=1] CT-Assign 1
execute @e[tag=VMW,score_CT-STime=0] ~ ~ ~ execute @s[tag=CT-RandomDT,score_CT-Assign_min=1] ~ ~ ~ scoreboard teams join T @r[team=CT] 
execute @e[tag=VMW,score_CT-STime=0] ~ ~ ~ scoreboard players remove @s[tag=CT-RandomDT,score_CT-Assign_min=1] CT-Assign 1
execute @e[tag=VMW,score_CT-STime=0] ~ ~ ~ execute @s[tag=CT-RandomDT,score_CT-Assign_min=1] ~ ~ ~ scoreboard teams join T @r[team=CT] 
execute @e[tag=VMW,score_CT-STime=0] ~ ~ ~ scoreboard players remove @s[tag=CT-RandomDT,score_CT-Assign_min=1] CT-Assign 1
execute @e[tag=VMW,score_CT-STime=0] ~ ~ ~ execute @s[tag=CT-RandomDT,score_CT-Assign_min=1] ~ ~ ~ scoreboard teams join T @r[team=CT] 
execute @e[tag=VMW,score_CT-STime=0] ~ ~ ~ scoreboard players remove @s[tag=CT-RandomDT,score_CT-Assign_min=1] CT-Assign 1
execute @e[tag=VMW,score_CT-STime=0] ~ ~ ~ execute @s[tag=CT-RandomDT,score_CT-Assign_min=1] ~ ~ ~ scoreboard teams join T @r[team=CT] 
execute @e[tag=VMW,score_CT-STime=0] ~ ~ ~ scoreboard players remove @s[tag=CT-RandomDT,score_CT-Assign_min=1] CT-Assign 1
execute @e[tag=VMW,score_CT-STime=0] ~ ~ ~ execute @s[tag=CT-RandomDT,score_CT-Assign_min=1] ~ ~ ~ scoreboard teams join T @r[team=CT] 
execute @e[tag=VMW,score_CT-STime=0] ~ ~ ~ scoreboard players remove @s[tag=CT-RandomDT,score_CT-Assign_min=1] CT-Assign 1
execute @e[tag=VMW,score_CT-STime=0] ~ ~ ~ execute @s[tag=CT-RandomDT,score_CT-Assign_min=1] ~ ~ ~ scoreboard teams join T @r[team=CT] 
execute @e[tag=VMW,score_CT-STime=0] ~ ~ ~ scoreboard players remove @s[tag=CT-RandomDT,score_CT-Assign_min=1] CT-Assign 1
execute @e[tag=VMW,score_CT-STime=0] ~ ~ ~ execute @s[tag=CT-RandomDT] ~ ~ ~ tellraw @a[tag=!PVE-IG] [{"text":"§eRandomly distributed §9§lCT "}]
execute @e[tag=VMW,score_CT-STime=0] ~ ~ ~ scoreboard players tag @s[tag=CT-RandomDT] remove CT-RandomDT

scoreboard players operation @e[tag=VMW] CT-CTN = §fCT-CTN CT-CTN
scoreboard players operation @e[tag=VMW] CT-TN = §fCT-TN CT-TN
scoreboard players operation @e[tag=VMW,score_CT-STime=0] CT-CTN -= @e[tag=VMW] CT-TN
execute @e[tag=VMW,score_CT-STime=0,score_CT-CTN_min=1] ~ ~ ~ scoreboard teams join T @r[team=,tag=Preparing]
execute @e[tag=VMW,score_CT-STime=0,score_CT-CTN=0] ~ ~ ~ scoreboard teams join CT @r[team=,tag=Preparing]
execute @e[tag=VMW,score_CT-STime=0] ~ ~ ~ scoreboard players tag @a[tag=S-Map] remove S-Map
execute @e[tag=VMW,score_CT-STime=0,score_Start-SMode=0] ~ ~ ~ function vmwp:games/blast/start unless @a[team=,tag=Preparing]
execute @e[tag=VMW,score_CT-STime=0,score_Start-SMode=1,score_Start-SMode_min=1] ~ ~ ~ function vmwp:games/defense/start unless @a[team=,tag=Preparing]
execute @e[tag=VMW,score_CT-STime=0,score_Start-SMode=2,score_Start-SMode_min=2] ~ ~ ~ function vmwp:games/teamDM/start unless @a[team=,tag=Preparing]

#S-Map及模式
scoreboard players enable @a[tag=S-Map] S-Map

execute @a[score_S-Map_min=1,score_S-Map=1,tag=S-Map] ~ ~ ~ scoreboard players set @e[tag=VMW] CT-Map 0
execute @a[score_S-Map_min=1,score_S-Map=1,tag=S-Map] ~ ~ ~ tellraw @a[tag=!PVE-IG] [{"text":"§a§lMap changed to §fmap1"}]
execute @a[score_S-Map_min=2,score_S-Map=2,tag=S-Map] ~ ~ ~ scoreboard players set @e[tag=VMW] CT-Map 1
execute @a[score_S-Map_min=2,score_S-Map=2,tag=S-Map] ~ ~ ~ tellraw @a[tag=!PVE-IG] [{"text":"§a§lMap changed to §fmap2"}]
execute @a[score_S-Map_min=3,score_S-Map=3,tag=S-Map] ~ ~ ~ scoreboard players set @e[tag=VMW] CT-Map 2
execute @a[score_S-Map_min=3,score_S-Map=3,tag=S-Map] ~ ~ ~ tellraw @a[tag=!PVE-IG] [{"text":"§a§lMap changed to §fmap3"}]
execute @a[score_S-Map_min=4,score_S-Map=4,tag=S-Map] ~ ~ ~ scoreboard players set @e[tag=VMW] CT-Map 3
execute @a[score_S-Map_min=4,score_S-Map=4,tag=S-Map] ~ ~ ~ tellraw @a[tag=!PVE-IG] [{"text":"§a§lMap changed to §fmap4"}]
execute @a[score_S-Map_min=5,score_S-Map=5,tag=S-Map] ~ ~ ~ scoreboard players set @e[tag=VMW] CT-Map 4
execute @a[score_S-Map_min=5,score_S-Map=5,tag=S-Map] ~ ~ ~ tellraw @a[tag=!PVE-IG] [{"text":"§a§lMap changed to §fmap5"}]
execute @a[score_S-Map_min=6,score_S-Map=6,tag=S-Map] ~ ~ ~ scoreboard players set @e[tag=VMW] CT-Map 5
execute @a[score_S-Map_min=6,score_S-Map=6,tag=S-Map] ~ ~ ~ tellraw @a[tag=!PVE-IG] [{"text":"§a§lMap changed to §fmap6"}]

execute @e[tag=VMW] ~ ~ ~ execute @s[tag=!HalfHMode] ~ ~ ~ execute @a[score_S-Map_min=21,score_S-Map=21,tag=S-Map] ~ ~ ~ tellraw @a[tag=!PVE-IG] [{"text":"§a§lPlayer max health changed to §fHalf"}]
execute @e[tag=VMW] ~ ~ ~ execute @s[tag=!HalfHMode] ~ ~ ~ execute @a[score_S-Map_min=21,score_S-Map=21,tag=S-Map] ~ ~ ~ scoreboard players tag @s add S-Switch
execute @e[tag=VMW] ~ ~ ~ execute @s[tag=!HalfHMode] ~ ~ ~ execute @a[score_S-Map_min=21,score_S-Map=21,tag=S-Map] ~ ~ ~ scoreboard players tag @e[tag=VMW] add HalfHMode
scoreboard players reset @e[score_S-Map_min=1,tag=S-Switch] S-Map
scoreboard players tag @a[tag=S-Switch] remove S-Switch

execute @e[tag=VMW] ~ ~ ~ execute @s[tag=HalfHMode] ~ ~ ~ execute @a[score_S-Map_min=21,score_S-Map=21,tag=S-Map] ~ ~ ~ tellraw @a[tag=!PVE-IG] [{"text":"§a§lPlayer max health changed to §fNormal"}]
execute @e[tag=VMW] ~ ~ ~ execute @s[tag=HalfHMode] ~ ~ ~ execute @a[score_S-Map_min=21,score_S-Map=21,tag=S-Map] ~ ~ ~ scoreboard players tag @s add S-Switch
execute @e[tag=VMW] ~ ~ ~ execute @s[tag=HalfHMode] ~ ~ ~ execute @a[score_S-Map_min=21,score_S-Map=21,tag=S-Map] ~ ~ ~ scoreboard players tag @e[tag=VMW] remove HalfHMode
scoreboard players reset @e[score_S-Map_min=1,tag=S-Switch] S-Map
scoreboard players tag @a[tag=S-Switch] remove S-Switch

execute @e[tag=VMW,score_Start-SMode=0] ~ ~ ~ execute @a[score_S-Map_min=20,score_S-Map=20,tag=S-Map] ~ ~ ~ tellraw @a[tag=!PVE-IG] [{"text":"§e§lGame changed to §fPoint Capture"}]
execute @e[tag=VMW,score_Start-SMode=0] ~ ~ ~ execute @a[score_S-Map_min=20,score_S-Map=20,tag=S-Map] ~ ~ ~ tellraw @a[tag=!PVE-IG] [{"text":"§fTip: Players need to go to the §ered circle near the blue beam§f to occupy the target point"}]
execute @e[tag=VMW,score_Start-SMode=0] ~ ~ ~ execute @a[score_S-Map_min=20,score_S-Map=20,tag=S-Map] ~ ~ ~ scoreboard players tag @s add S-Switch
execute @e[tag=VMW,score_Start-SMode=0] ~ ~ ~ execute @a[score_S-Map_min=20,score_S-Map=20,tag=S-Map] ~ ~ ~ scoreboard players set @e[tag=VMW] Start-SMode 1
scoreboard players reset @e[score_S-Map_min=1,tag=S-Switch] S-Map
scoreboard players tag @a[tag=S-Switch] remove S-Switch

execute @e[tag=VMW,score_Start-SMode=1,score_Start-SMode_min=1] ~ ~ ~ execute @a[score_S-Map_min=20,score_S-Map=20,tag=S-Map] ~ ~ ~ tellraw @a[tag=!PVE-IG] [{"text":"§e§lGame changed to §fTeam Deathmatch"}]
execute @e[tag=VMW,score_Start-SMode=1,score_Start-SMode_min=1] ~ ~ ~ execute @a[score_S-Map_min=20,score_S-Map=20,tag=S-Map] ~ ~ ~ tellraw @a[tag=!PVE-IG] [{"text":"§fTip: The team that reaches the §e65 kill count§f first will win, including the §eboundary§f limit!"}]
execute @e[tag=VMW,score_Start-SMode=1,score_Start-SMode_min=1] ~ ~ ~ execute @a[score_S-Map_min=20,score_S-Map=20,tag=S-Map] ~ ~ ~ scoreboard players tag @s add S-Switch
execute @e[tag=VMW,score_Start-SMode=1,score_Start-SMode_min=1] ~ ~ ~ execute @a[score_S-Map_min=20,score_S-Map=20,tag=S-Map] ~ ~ ~ scoreboard players set @e[tag=VMW] Start-SMode 2
scoreboard players reset @e[score_S-Map_min=1,tag=S-Switch] S-Map
scoreboard players tag @a[tag=S-Switch] remove S-Switch

execute @e[tag=VMW,score_Start-SMode=2,score_Start-SMode_min=2] ~ ~ ~ execute @a[score_S-Map_min=20,score_S-Map=20,tag=S-Map] ~ ~ ~ tellraw @a[tag=!PVE-IG] [{"text":"§e§lGame changed to §fSurvival Showdown"}]
execute @e[tag=VMW,score_Start-SMode=2,score_Start-SMode_min=2] ~ ~ ~ execute @a[score_S-Map_min=20,score_S-Map=20,tag=S-Map] ~ ~ ~ tellraw @a[tag=!PVE-IG] [{"text":"§fTip: Cancel team, The main weapon can only use §eSR/DMR/SMG, §fremember to §euse elytra§f for landing after entering!"}]
execute @e[tag=VMW,score_Start-SMode=2,score_Start-SMode_min=2] ~ ~ ~ execute @a[score_S-Map_min=20,score_S-Map=20,tag=S-Map] ~ ~ ~ scoreboard players tag @s add S-Switch
execute @e[tag=VMW,score_Start-SMode=2,score_Start-SMode_min=2] ~ ~ ~ execute @a[score_S-Map_min=20,score_S-Map=20,tag=S-Map] ~ ~ ~ scoreboard players set @e[tag=VMW] Start-SMode 3
scoreboard players reset @e[score_S-Map_min=1,tag=S-Switch] S-Map
scoreboard players tag @a[tag=S-Switch] remove S-Switch

execute @e[tag=VMW,score_Start-SMode=3,score_Start-SMode_min=3] ~ ~ ~ execute @a[score_S-Map_min=20,score_S-Map=20,tag=S-Map] ~ ~ ~ tellraw @a[tag=!PVE-IG] [{"text":"§e§lGame changed to §fBounty Bombing"}]
execute @e[tag=VMW,score_Start-SMode=3,score_Start-SMode_min=3] ~ ~ ~ execute @a[score_S-Map_min=20,score_S-Map=20,tag=S-Map] ~ ~ ~ tellraw @a[tag=!PVE-IG] [{"text":"§fTip: Players need to §eremove or install C4§f through sneak in the §ered circle near the blue beam"}]
execute @e[tag=VMW,score_Start-SMode=3,score_Start-SMode_min=3] ~ ~ ~ execute @a[score_S-Map_min=20,score_S-Map=20,tag=S-Map] ~ ~ ~ scoreboard players set @e[tag=VMW] Start-SMode 0
scoreboard players reset @e[score_S-Map_min=1] S-Map

#彩蛋
scoreboard players tag @a add 15note {Inventory:[{id:"minecraft:paper",tag:{tag:["15note"]}}]}
scoreboard players add @a[tag=15note] note 15
tellraw @a[tag=15note] [{"text":"§6+15 note"}]
clear @a[tag=15note] minecraft:paper
scoreboard players tag @a[tag=15note] remove 15note

#退出处理
scoreboard players set @a[score_leave_min=1] music 0
scoreboard players reset @a[score_leave_min=1] money
scoreboard players reset @a[score_leave_min=1] MainW
scoreboard players reset @a[score_leave_min=1] SecondaryW
scoreboard players reset @a[score_leave_min=1] CT-killC

scoreboard players tag @a[score_leave_min=1] remove Preparing
scoreboard players tag @a[score_leave_min=1] remove InGame
scoreboard players tag @a[score_leave_min=1] remove shop

scoreboard teams leave @a[score_leave_min=1]
scoreboard teams join Watch @a[score_leave_min=1]

effect @a[score_leave_min=1] 1 0 0 true
xp -10000L @a[score_leave_min=1]
clear @a[score_leave_min=1]
gamemode 2 @a[score_leave_min=1]
tp @a[score_leave_min=1] 267 66 1231 90 0
playsound minecraft:block.note.bass ambient @a[score_leave_min=1] ~ ~ ~ 1000000000 1
tellraw @a[score_leave_min=1] [{"text":"§eYou leave the server! You will watch the whole game."}]
scoreboard players set @a[score_leave_min=1] leave 0