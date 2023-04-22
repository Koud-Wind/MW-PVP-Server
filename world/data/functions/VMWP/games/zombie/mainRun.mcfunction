#玩家地图区分
scoreboard players tag @a add PVE-map1 {Inventory:[{tag:{author:"map1"}}]}
#scoreboard players tag @a add PVE-map2 {Inventory:[{tag:{author:"map2"}}]}
#scoreboard players tag @a add PVE-map3 {Inventory:[{tag:{author:"map3"}}]}

scoreboard teams join VMW_PVE @a[tag=PVE-map1]

replaceitem entity @a[tag=PVE-map1] slot.inventory.26 minecraft:skull 1 2 {map:1b,tag:["PVE"],display:{Name:" "}}
#replaceitem entity @a[tag=PVE-map2] slot.inventory.26 minecraft:skull 1 2 {map:2b,tag:["PVE"],display:{Name:" "}}
#replaceitem entity @a[tag=PVE-map3] slot.inventory.26 minecraft:skull 1 2 {map:3b,tag:["PVE"],display:{Name:" "}}

replaceitem entity @a[tag=PVE-map1] slot.hotbar.1 minecraft:written_book 1 0 {generation:0,pages:["{\"extra\":[{\"color\":\"green\",\"text\":\"Objective: \"},{\"color\":\"black\",\"text\":\"Clean up all zombies in the round\"},{\"text\":\"\\n\"},{\"text\":\"-----------------------------\"},{\"text\":\"\\n\"},{\"color\":\"red\",\"text\":\"Keep stealth near the wooden door to repair the wooden door and get the repair point.\"},{\"text\":\"\\n\"},{\"color\":\"red\",\"text\":\"Use repair points to purchase armor and buff effects.\"},{\"text\":\"\\n\"}],\"text\":\"\"}","{\"extra\":[{\"color\":\"dark_red\",\"text\":\"Each round may need to leave a monster to let teammates repair the wooden door and get repair points to reduce the difficulty of the game.\"},{\"text\":\"\\n\"},{\"text\":\"-----------------------------\"},{\"text\":\"\\n\"},{\"text\":\"When passing rounds 5, 10, 15, 20, 25, 30, notes will be settled.\"},{\"text\":\"\\n\"}],\"text\":\"\"}"],author:"VMW_PVE",display:{Name:"§fhelp"},title:"§fhelp",resolved:1b}

scoreboard players set @a[tag=PVE-map1] money 0
#scoreboard players set @a[tag=PVE-map2] money 0
#scoreboard players set @a[tag=PVE-map3] money 0

scoreboard players tag @a[tag=PVE-map1] remove PVE-map1
#scoreboard players tag @a[tag=PVE-map2] remove PVE-map2
#scoreboard players tag @a[tag=PVE-map3] remove PVE-map3

scoreboard players reset @a[score_PVE-map_min=1] PVE-map

scoreboard players set @a PVE-map 1 {Inventory:[{id:"minecraft:skull",tag:{map:1b}}]}
scoreboard players set @a[score_MainW_min=1] PVE-map 1 {Inventory:[{id:"minecraft:compass",tag:{display:{Name:"§7Watch"}}}]}
#scoreboard players set @a PVE-map 2 {Inventory:[{id:"minecraft:skull",tag:{map:2b}}]}
#scoreboard players set @a PVE-map 3 {Inventory:[{id:"minecraft:skull",tag:{map:3b}}]}

scoreboard players tag @a[score_PVE-map_min=1,tag=shop] remove shop
scoreboard players tag @a[score_PVE-map_min=1,tag=Preparing] remove Preparing
scoreboard players tag @a[score_PVE-map_min=1,tag=InGame] remove InGame

#replaceitem entity @a[score_PVE-map_min=1] slot.armor.feet minecraft:iron_boots 1 0 {ench:[{lvl:32767s,id:4s}],Unbreakable:1b,HideFlags:5}

scoreboard players tag @a[score_PVE-map_min=1] add det1 {SelectedItem:{id:"minecraft:compass",tag:{Path:"InGame",display:{Lore:[""],Name:"§6detector"}}}}
execute @a[score_PVE-map_min=1,tag=!det1] ~ ~ ~ title @s actionbar [{"text":"§eYour money:"},{"score":{"objective":"money","name":"@s"}}]
execute @a[tag=det1] ~ ~ ~ effect @e[r=10,tag=150FR,type=!player] 24 2 0 true
scoreboard players tag @a[tag=det1] remove det1

#开始
scoreboard players tag @a[score_PVE-map_min=1] add PVE-Start {Inventory:[{id:"minecraft:banner",tag:{ItemDamage:"6.0",BlockEntityTag:{Patterns:[]},display:{Name:"§0GO"}}}]}

replaceitem entity @a[tag=PVE-Start] slot.hotbar.0 minecraft:air
replaceitem entity @a[tag=PVE-Start,score_S-Shop=0] slot.hotbar.1 mw:hk_p12 1 0 {IUuidLeast:-6040951311226225968L,Ammo:8,IUuidMost:-8703107047038040721L,Instance:[B;-32B,83B,21B,-112B,-126B,43B,-31B,45B,117B,49B,126B,79B,17B,126B,62B,-127B,0B,0B,0B,9B,-121B,56B,90B,64B,115B,25B,69B,111B,-84B,42B,58B,-55B,-20B,-18B,58B,-48B,0B,0B,19B,-2B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,26B,75B,99B,82B,108B,-118B,-87B,-71B,14B,-97B,-92B,100B,-74B,-111B,106B,61B,-40B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,21B,-9B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-123B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,22B,74B,0B,0B,19B,-32B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-99B,0B,0B,0B,0B,0B,0B,0B,0B,8B,0B,64B,-128B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fHK P12"}}
scoreboard players set @a[tag=PVE-Start,score_S-Shop=0] SecondaryW 5
replaceitem entity @a[tag=PVE-Start,score_S-Shop=1,score_S-Shop_min=1] slot.hotbar.1 mw:glock_19 1 0 {IUuidLeast:-9002947973947064591L,Ammo:13,IUuidMost:8728102017494892882L,Instance:[B;-32B,83B,21B,-112B,-126B,43B,-31B,45B,117B,49B,126B,79B,17B,126B,62B,-127B,0B,0B,0B,9B,121B,32B,114B,-118B,-100B,39B,65B,82B,-125B,15B,26B,-124B,113B,-113B,-2B,-15B,0B,0B,20B,12B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,49B,75B,99B,82B,108B,-118B,-87B,-71B,14B,-97B,-92B,100B,-74B,-111B,106B,61B,-40B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,19B,-98B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-123B,0B,0B,0B,0B,0B,0B,18B,29B,0B,0B,0B,0B,0B,0B,19B,63B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-99B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,13B,0B,64B,0B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fGlock-19"}}
scoreboard players set @a[tag=PVE-Start,score_S-Shop=1,score_S-Shop_min=1] SecondaryW 10
replaceitem entity @a[tag=PVE-Start,score_S-Shop=2,score_S-Shop_min=2] slot.hotbar.1 mw:sccy_cpx_2 1 0 {IUuidLeast:-8191587320356669575L,Ammo:10,IUuidMost:-7937418419850818304L,Instance:[B;-32B,83B,21B,-112B,-126B,43B,-31B,45B,117B,49B,126B,79B,17B,126B,62B,-127B,0B,0B,0B,9B,-111B,-40B,-96B,0B,91B,38B,77B,0B,-114B,81B,-94B,-69B,-89B,-117B,-9B,121B,0B,0B,20B,13B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,26B,75B,99B,82B,108B,-118B,-87B,-71B,14B,-97B,-92B,100B,-74B,-111B,106B,61B,-40B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,22B,108B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,20B,68B,0B,0B,0B,0B,0B,0B,19B,83B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-99B,0B,0B,0B,0B,0B,0B,0B,0B,10B,0B,64B,0B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fCPX-2"}}
scoreboard players set @a[tag=PVE-Start,score_S-Shop=2,score_S-Shop_min=2] SecondaryW 15
scoreboard players set @a[tag=PVE-Start] MainW 0

replaceitem entity @a[tag=PVE-Start] slot.hotbar.2 minecraft:stained_glass_pane 1 15 {display:{Name:" "}}
replaceitem entity @a[tag=PVE-Start] slot.hotbar.4 minecraft:stained_glass_pane 1 15 {display:{Name:" "}}

replaceitem entity @a[tag=PVE-Start,score_S-Shop=0] slot.hotbar.3 minecraft:iron_ingot 1 0 {ench:[{lvl:1s,id:71s}],HideFlags:1,display:{Name:"§fWeapon shop1"}}
replaceitem entity @a[tag=PVE-Start,score_S-Shop=1,score_S-Shop_min=1] slot.hotbar.3 minecraft:flint 1 0 {ench:[{lvl:1s,id:71s}],HideFlags:1,display:{Name:"§fWeapon shop2"}}
replaceitem entity @a[tag=PVE-Start,score_S-Shop=2,score_S-Shop_min=2] slot.hotbar.3 minecraft:feather 1 0 {ench:[{lvl:1s,id:71s}],HideFlags:1,display:{Name:"§fWeapon shop3"}}

replaceitem entity @a[tag=PVE-Start] slot.armor.chest minecraft:leather_chestplate 1 0 {ench:[{lvl:1s,id:10s},{lvl:32767s,id:4s}],Unbreakable:1b,HideFlags:5,display:{color:16766976,Name:"§6§lLV?"},AttributeModifiers:[{UUIDMost:-3833716409118736231L,UUIDLeast:-8561320967519650590L,Amount:4.0d,Slot:"chest",AttributeName:"generic.armor",Operation:0,Name:"generic.armor"}]}



stopsound @a[tag=PVE-Start] record
scoreboard players set @a[tag=PVE-Start] music 0

scoreboard players tag @a[tag=PVE-Start] remove PVE-Start
scoreboard players tag @a[tag=PVE-End] remove PVE-End

#盔甲升级
scoreboard players tag @a[score_PVE-map_min=1] add PVE-diamondA {Inventory:[{id:"minecraft:diamond_chestplate"}]}
replaceitem entity @a[tag=PVE-diamondA] slot.armor.chest minecraft:leather_chestplate 1 0 {ench:[{lvl:32767s,id:4s},{lvl:1s,id:10s}],Unbreakable:1b,HideFlags:5,display:{color:16711680,Name:"§4§lLV?"},AttributeModifiers:[{UUIDMost:-3833716409118736231L,UUIDLeast:-8561320967519650590L,Amount:8.0d,Slot:"chest",AttributeName:"generic.armor",Operation:0,Name:"generic.armor"}]}
scoreboard players tag @a[tag=PVE-diamondA] remove PVE-diamondA

#击杀音效
playsound minecraft:entity.arrow.hit_player ambient @a[score_PVE-kill_min=1,score_PVE-map_min=1] ~ ~ ~ 100000000000
scoreboard players reset @a[score_PVE-kill_min=1] PVE-kill

#终极武器
scoreboard players tag @a[score_PVE-map_min=1] add PVE-Supernova {Inventory:[{id:"mw:supernova",tag:{display:{Name:"§4Supernova§z"}}}]}
replaceitem entity @a[tag=PVE-Supernova] slot.hotbar.0 mw:supernova 1 0 {IUuidLeast:-7676169668329550848L,Ammo:2147483643,AtId:[I;5569,0,-1,0,0,0,0,5608,0,5087,4675,0,0,4369,0,4846,0,0,0,0,0,0,0,0,0,4765,0],IUuidMost:-5334998145913238747L,Instance:[B;-32B,83B,21B,-112B,-126B,43B,-31B,45B,117B,49B,126B,79B,17B,126B,62B,-127B,0B,0B,0B,9B,-75B,-10B,71B,115B,-53B,121B,75B,37B,-107B,120B,-60B,91B,83B,-106B,-52B,0B,0B,0B,21B,18B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,48B,75B,99B,82B,108B,-118B,-87B,-71B,14B,-97B,-92B,100B,-74B,-111B,106B,61B,-40B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,95B,0B,0B,18B,67B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,17B,0B,0B,0B,0B,0B,0B,18B,-18B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-99B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,127B,-128B,127B,126B,0B,65B,48B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§4Supernova"}}
replaceitem entity @a[tag=PVE-Supernova] slot.hotbar.1 minecraft:stained_glass_pane 1 15 {display:{Name:" "}}
scoreboard players set @a[tag=PVE-Supernova] MainW 58
scoreboard players set @a[tag=PVE-Supernova] SecondaryW 0
scoreboard players tag @a[tag=PVE-Supernova] remove PVE-Supernova

scoreboard players tag @a[score_PVE-map_min=1] add PVE-Origin-12 {Inventory:[{id:"mw:origin12",tag:{display:{Name:"§4Origin-12§z"}}}]}
replaceitem entity @a[tag=PVE-Origin-12] slot.hotbar.0 mw:origin12 1 0 {IUuidLeast:-8404453077446132575L,AtId:[I;4717,4201,4194,0,5677,0,0,0,5180,5273,4728,0,-1,5678,0,0,0,4327,0,0,0,0,0,0,0,4765,0],Ammo:25,IUuidMost:2014298008763059809L,Instance:[B;-32B,83B,21B,-112B,-126B,43B,-31B,45B,117B,49B,126B,79B,17B,126B,62B,-127B,0B,0B,0B,9B,27B,-12B,57B,93B,-28B,25B,78B,97B,-117B,93B,98B,116B,107B,98B,124B,-95B,0B,0B,20B,67B,0B,0B,0B,2B,0B,0B,0B,0B,0B,0B,0B,-119B,75B,99B,82B,108B,-118B,-87B,-71B,14B,-97B,-92B,100B,-74B,-111B,106B,61B,-40B,0B,0B,0B,1B,27B,0B,0B,18B,109B,0B,0B,16B,105B,0B,0B,16B,98B,0B,0B,0B,0B,0B,0B,22B,45B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,20B,60B,0B,0B,20B,-103B,0B,0B,18B,120B,0B,0B,0B,0B,-1B,-1B,-1B,-1B,0B,0B,22B,46B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,-25B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-99B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,25B,0B,64B,25B,-103B,-102B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§4Origin-12"}}
replaceitem entity @a[tag=PVE-Origin-12] slot.hotbar.1 minecraft:stained_glass_pane 1 15 {display:{Name:" "}}
scoreboard players set @a[tag=PVE-Origin-12] MainW 108
scoreboard players set @a[tag=PVE-Origin-12] SecondaryW 0
scoreboard players tag @a[tag=PVE-Origin-12] remove PVE-Origin-12

scoreboard players tag @a[score_PVE-map_min=1] add PVE-M82Barrett {Inventory:[{id:"mw:m82_barrett",tag:{display:{Name:"§4M82 Barrett§z"}}}]}
replaceitem entity @a[tag=PVE-M82Barrett] slot.hotbar.0 mw:m82_barrett 1 0 {IUuidLeast:-7706914884339237370L,AtId:[I;5629,4203,4188,0,0,0,0,5568,0,0,4750,0,4899,0,5513,0,0,0,0,0,0,0,0,0,0,4765,0],Ammo:2147483646,IUuidMost:9208282161393714888L,Instance:[B;-32B,83B,21B,-112B,-126B,43B,-31B,45B,117B,49B,126B,79B,17B,126B,62B,-127B,0B,0B,0B,9B,127B,-54B,99B,-42B,-107B,112B,70B,-56B,-107B,11B,-119B,-66B,-28B,-55B,-2B,6B,0B,0B,21B,0B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,-128B,75B,99B,82B,108B,-118B,-87B,-71B,14B,-97B,-92B,100B,-74B,-111B,106B,61B,-40B,0B,0B,0B,1B,27B,0B,0B,21B,-3B,0B,0B,16B,107B,0B,0B,16B,92B,0B,0B,0B,0B,0B,0B,19B,-93B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,21B,-64B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-114B,0B,0B,0B,0B,0B,0B,19B,35B,0B,0B,0B,0B,0B,0B,21B,-119B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-99B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,127B,-1B,-1B,-2B,0B,64B,-64B,0B,0B,127B,-1B,-1B,-1B,62B,15B,92B,41B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§4M82 Barrett"}}
replaceitem entity @a[tag=PVE-M82Barrett] slot.hotbar.1 minecraft:stained_glass_pane 1 15 {display:{Name:" "}}
scoreboard players set @a[tag=PVE-M82Barrett] MainW 110
scoreboard players set @a[tag=PVE-M82Barrett] SecondaryW 0
scoreboard players tag @a[tag=PVE-M82Barrett] remove PVE-M82Barrett

scoreboard players tag @a[score_PVE-map_min=1] add PVE-VSS {Inventory:[{id:"mw:vss_vintorez",tag:{display:{Name:"§4VSS§z"}}}]}
replaceitem entity @a[tag=PVE-VSS] slot.hotbar.0 mw:vss_vintorez 1 0 {IUuidLeast:-7041774004998967403L,AtId:[I;4654,4200,0,4198,4470,0,0,4697,5191,5439,0,0,4776,0,4332,0,0,0,0,0,0,0,0,0,0,4765,0],Ammo:30,IUuidMost:3918443409180936823L,Instance:[B;-32B,83B,21B,-112B,-126B,43B,-31B,45B,117B,49B,126B,79B,17B,126B,62B,-127B,0B,0B,0B,9B,54B,97B,27B,-123B,20B,-77B,74B,119B,-98B,70B,-105B,-39B,-13B,116B,-17B,-107B,0B,0B,19B,-20B,0B,0B,0B,2B,0B,0B,0B,0B,0B,0B,0B,-94B,75B,99B,82B,108B,-118B,-87B,-71B,14B,-97B,-92B,100B,-74B,-111B,106B,61B,-40B,0B,0B,0B,1B,27B,0B,0B,18B,46B,0B,0B,16B,104B,0B,0B,0B,0B,0B,0B,16B,102B,0B,0B,17B,118B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,89B,0B,0B,20B,71B,0B,0B,21B,63B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-88B,0B,0B,0B,0B,0B,0B,16B,-20B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-99B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,30B,0B,63B,102B,102B,103B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§4VSS"}}
replaceitem entity @a[tag=PVE-VSS] slot.hotbar.1 minecraft:stained_glass_pane 1 15 {display:{Name:" "}}
scoreboard players set @a[tag=PVE-VSS] MainW 103
scoreboard players set @a[tag=PVE-VSS] SecondaryW 0
scoreboard players tag @a[tag=PVE-VSS] remove PVE-VSS

scoreboard players tag @a[score_PVE-map_min=1] add PVE-M134 {Inventory:[{id:"mw:m134",tag:{display:{Name:"§4M134§z"}}}]}
replaceitem entity @a[tag=PVE-M134] slot.hotbar.0 mw:m134 1 0 {IUuidLeast:-4980362118135492169L,AtId:[I;0,0,0,0,0,0,-1,0,0,0,0,0,0,5060,0,0,0,0,0,0,0,0,0,0,0,4765,0],Ammo:200,IUuidMost:-2883832547954572601L,Instance:[B;-32B,83B,21B,-112B,-126B,43B,-31B,45B,117B,49B,126B,79B,17B,126B,62B,-127B,0B,0B,0B,9B,-41B,-6B,-111B,-109B,-85B,117B,66B,-57B,-70B,-30B,51B,10B,103B,-72B,-47B,-73B,0B,0B,20B,95B,0B,0B,0B,2B,0B,0B,0B,0B,0B,0B,0B,39B,75B,99B,82B,108B,-118B,-87B,-71B,14B,-97B,-92B,100B,-74B,-111B,106B,61B,-40B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,20B,0B,0B,0B,0B,0B,-1B,-1B,-1B,-1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,19B,-60B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-99B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,-56B,0B,63B,-128B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§4M134"}}
replaceitem entity @a[tag=PVE-M134] slot.hotbar.1 minecraft:stained_glass_pane 1 15 {display:{Name:" "}}
scoreboard players set @a[tag=PVE-M134] MainW 106
scoreboard players set @a[tag=PVE-M134] SecondaryW 0
scoreboard players tag @a[tag=PVE-M134] remove PVE-M134

scoreboard players tag @a[score_PVE-map_min=1] add PVE-Glock-18C {Inventory:[{id:"mw:glock_18c",tag:{display:{Name:"§4Glock-18C§z"}}}]}
replaceitem entity @a[tag=PVE-Glock-18C] slot.hotbar.0 mw:glock_18c 1 0 {IUuidLeast:-8015318453596910428L,AtId:[I;4170,0,4184,4197,5025,0,0,4679,4741,4687,5389,0,5573,0,0,0,0,0,0,0,0,0,0,0,0,4765,0],Ammo:2147483646,IUuidMost:377053837096471873L,Instance:[B;-32B,83B,21B,-112B,-126B,43B,-31B,45B,117B,49B,126B,79B,17B,126B,62B,-127B,0B,0B,0B,9B,5B,59B,-112B,119B,-107B,85B,77B,65B,-112B,-61B,-34B,85B,91B,-71B,12B,-92B,0B,0B,21B,-105B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,108B,75B,99B,82B,108B,-118B,-87B,-71B,14B,-97B,-92B,100B,-74B,-111B,106B,61B,-40B,0B,0B,0B,1B,27B,0B,0B,16B,74B,0B,0B,0B,0B,0B,0B,16B,88B,0B,0B,16B,101B,0B,0B,19B,-95B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,71B,0B,0B,18B,-123B,0B,0B,18B,79B,0B,0B,21B,13B,0B,0B,0B,0B,0B,0B,21B,-59B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-99B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,127B,-1B,-1B,-2B,0B,63B,-103B,-103B,-102B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§4Glock-18C"}}
replaceitem entity @a[tag=PVE-Glock-18C] slot.hotbar.1 minecraft:stained_glass_pane 1 15 {display:{Name:" "}}
scoreboard players set @a[tag=PVE-Glock-18C] MainW 111
scoreboard players set @a[tag=PVE-Glock-18C] SecondaryW 0
scoreboard players tag @a[tag=PVE-Glock-18C] remove PVE-Glock-18C

scoreboard players tag @a[score_PVE-map_min=1,score_health=29] add C-GiantArmor {Inventory:[{id:"mw:m40gasmask_helmet",tag:{tag:["HeavyA"]}}]}
scoreboard players tag @a[score_PVE-map_min=1,score_health_min=31] add C-GiantArmor {Inventory:[{id:"minecraft:diamond_helmet"}]}
replaceitem entity @a[tag=C-GiantArmor] slot.armor.head minecraft:air
scoreboard players set @a[tag=C-GiantArmor] MainW 106
effect @a[tag=C-GiantArmor] 22 0 114 true
execute @a[tag=C-GiantArmor] ~ ~ ~ playsound minecraft:item.shield.break ambient @a ~ ~ ~ 2 1
scoreboard players tag @a[tag=C-GiantArmor] remove C-GiantArmor

scoreboard players tag @a[score_PVE-map_min=1] add PVE-GiantArmor {Inventory:[{id:"mw:russian_weapons_case",tag:{display:{Name:"§dGiant armor§z"}}}]}
replaceitem entity @a[tag=PVE-GiantArmor] slot.hotbar.0 mw:m134 1 0 {IUuidLeast:-7077811248384966687L,Ammo:1000,IUuidMost:4118016137072431070L,Instance:[B;-32B,83B,21B,-112B,-126B,43B,-31B,45B,117B,49B,126B,79B,17B,126B,62B,-127B,0B,0B,0B,9B,57B,38B,33B,-37B,-59B,-121B,79B,-34B,-99B,-58B,-112B,43B,96B,-65B,-1B,-31B,0B,0B,20B,95B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,20B,18B,75B,99B,82B,108B,-118B,-87B,-71B,14B,-97B,-92B,100B,-74B,-111B,106B,61B,-40B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,20B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,19B,-60B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-99B,0B,0B,0B,0B,0B,0B,0B,3B,-24B,0B,63B,-128B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§4M134"}}
replaceitem entity @a[tag=PVE-GiantArmor] slot.hotbar.1 minecraft:shield 1 0 {Unbreakable:1b,HideFlags:36,BlockEntityTag:{Patterns:[{Pattern:"gra",Color:10}],Base:0}}
replaceitem entity @a[tag=PVE-GiantArmor] slot.armor.head mw:m40gasmask_helmet 1 0 {ench:[{lvl:1s,id:7s},{lvl:1s,id:10s}],display:{Name:"§4Refit helmet"},AttributeModifiers:[{UUIDMost:2950212912591621931L,UUIDLeast:-7255558402065583144L,Amount:-0.9d,Slot:"head",AttributeName:"generic.movementSpeed",Operation:1,Name:"generic.movementSpeed"},{UUIDMost:2738592195674787114L,UUIDLeast:-4888324064715493491L,Amount:10.0d,Slot:"head",AttributeName:"generic.armor",Operation:0,Name:"generic.armor"}],tag:["HeavyA"]}
effect @a[tag=PVE-GiantArmor] 22 1000000 114 true
scoreboard players set @a[tag=PVE-GiantArmor] MainW 109
scoreboard players set @a[tag=PVE-GiantArmor] SecondaryW 0
scoreboard players tag @a[tag=PVE-GiantArmor] remove PVE-GiantArmor

scoreboard players tag @a[score_PVE-map_min=1] add PVE-P2022 {Inventory:[{id:"mw:p2022",tag:{display:{Name:"§0§kSIG P2022§z"}}}]}
replaceitem entity @a[tag=PVE-P2022] slot.hotbar.0 mw:p2022 1 0 {IUuidLeast:-5234819114138069609L,Ammo:2147483647,AtId:[I;0,0,0,4197,5114,0,0,0,0,0,0,0,0,5455,0,0,0,0,0,0,0,0,0,0,0,4765,0],IUuidMost:6922920725332312660L,Instance:[B;-32B,83B,21B,-112B,-126B,43B,-31B,45B,117B,49B,126B,79B,17B,126B,62B,-127B,0B,0B,0B,9B,96B,19B,39B,-72B,113B,-97B,66B,84B,-73B,90B,47B,-64B,62B,96B,21B,-105B,0B,0B,20B,1B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,-17B,62B,75B,99B,82B,108B,-118B,-87B,-71B,14B,-97B,-92B,100B,-74B,-111B,106B,61B,-40B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,101B,0B,0B,19B,-6B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,21B,79B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-99B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,127B,-1B,-1B,-1B,0B,64B,64B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§0§kSIG P2022"}}
replaceitem entity @a[tag=PVE-P2022] slot.hotbar.1 minecraft:stained_glass_pane 1 15 {display:{Name:" "}}
scoreboard players set @a[tag=PVE-P2022] MainW 112
scoreboard players set @a[tag=PVE-P2022] SecondaryW 0
scoreboard players tag @a[tag=PVE-P2022] remove PVE-P2022

scoreboard players tag @a[score_PVE-map_min=1] add PVE-Turret {Inventory:[{id:"mw:turretupgraded",tag:{display:{Name:"§dTurret§z"}}}]}
execute @a[tag=PVE-Turret] ~ ~ ~ entitydata @e[type=mw:turretupgraded] {Health:-1.0f}
execute @a[tag=PVE-Turret] ~ ~ ~ entitydata @e[type=mw:turret] {Health:-1.0f}
execute @a[tag=PVE-Turret] ~ ~ ~ summon mw:turretupgraded -859 70.5 1299
execute @a[tag=PVE-Turret] ~ ~ ~ summon mw:turretupgraded -827 74.5 1309
execute @a[tag=PVE-Turret] ~ ~ ~ summon mw:turretupgraded -864 71 1280
execute @a[tag=PVE-Turret] ~ ~ ~ summon mw:turret -874 78.5 1299
execute @a[tag=PVE-Turret] ~ ~ ~ summon mw:turret -852 77.5 1311
execute @a[tag=PVE-Turret] ~ ~ ~ summon mw:turret -827 77.5 1309
execute @a[tag=PVE-Turret] ~ ~ ~ summon mw:turretupgraded -836 72.5 1305
execute @a[tag=PVE-Turret] ~ ~ ~ summon mw:turretupgraded -837 73.5 1317
execute @a[tag=PVE-Turret] ~ ~ ~ title @a[score_PVE-map_min=1] title [{"selector":"@s"},{"text":" §eenables Turret!"}]
execute @a[tag=PVE-Turret] ~ ~ ~ playsound minecraft:entity.zombie_villager.cure ambient @a[score_PVE-map_min=1] ~ ~ ~ 10000000000000 0
replaceitem entity @a[tag=PVE-Turret] slot.hotbar.1 minecraft:stained_glass_pane 1 15 {display:{Name:" "}}
scoreboard players set @a[tag=PVE-Turret] SecondaryW 0
scoreboard players tag @a[tag=PVE-Turret] remove PVE-Turret

execute @a[tag=MoveTurret2] ~ ~ ~ summon mw:turretupgraded ~ ~ ~
clear @a[tag=MoveTurret2] mw:turretupgraded
scoreboard players tag @a[tag=MoveTurret2] remove MoveTurret2
scoreboard players tag @a[tag=PVE-IG] add MoveTurret2 {Inventory:[{id:"mw:turretupgraded"}]}

execute @a[tag=MoveTurret] ~ ~ ~ summon mw:turret ~ ~ ~
clear @a[tag=MoveTurret] mw:turret
scoreboard players tag @a[tag=MoveTurret] remove MoveTurret
scoreboard players tag @a[tag=PVE-IG] add MoveTurret {Inventory:[{id:"mw:turret"}]}

replaceitem entity @a[score_PVE-map_min=1] slot.inventory.3 minecraft:air

#shop
function vmwp:games/zombie/shop if @a[score_PVE-map_min=1]

