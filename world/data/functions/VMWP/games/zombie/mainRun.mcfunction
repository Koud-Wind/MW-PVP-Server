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
replaceitem entity @a[tag=PVE-Start,score_S-Shop=0] slot.hotbar.1 mwc:hk_p12 1 0 {IUuidLeast:-7984625428159484800L,Ammo:8,IUuidMost:-8818720879475343136L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-123B,-99B,-100B,21B,109B,-115B,64B,-32B,-111B,48B,-23B,122B,58B,0B,-84B,-128B,0B,0B,19B,81B,0B,0B,0B,4B,0B,0B,0B,0B,0B,0B,0B,10B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-19B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,8B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,63B,0B,0B,18B,55B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,0B,0B,0B,0B,8B,0B,64B,-128B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fHK P12"}}
scoreboard players set @a[tag=PVE-Start,score_S-Shop=0] SecondaryW 5
replaceitem entity @a[tag=PVE-Start,score_S-Shop=1,score_S-Shop_min=1] slot.hotbar.1 mwc:glock_19 1 0 {IUuidLeast:-6821557444815563363L,Ammo:13,IUuidMost:-4739488970969035761L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-66B,57B,-13B,-28B,76B,-126B,76B,15B,-95B,84B,-11B,-91B,102B,-40B,-43B,-99B,0B,0B,19B,85B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,10B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-15B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,8B,0B,0B,0B,0B,0B,0B,16B,-61B,0B,0B,0B,0B,0B,0B,16B,-58B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,0B,0B,0B,0B,13B,0B,64B,0B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fGlock-19"}}
scoreboard players set @a[tag=PVE-Start,score_S-Shop=1,score_S-Shop_min=1] SecondaryW 10
replaceitem entity @a[tag=PVE-Start,score_S-Shop=2,score_S-Shop_min=2] slot.hotbar.1 mwc:sccy_cpx_2 1 0 {IUuidLeast:-8813820404859603493L,Ammo:10,IUuidMost:-6396891021922907281L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-89B,57B,-83B,-127B,-5B,102B,75B,111B,-123B,-81B,5B,10B,22B,64B,-11B,-37B,0B,0B,19B,86B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,10B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-30B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,-51B,0B,0B,0B,0B,0B,0B,16B,-48B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,0B,0B,0B,0B,10B,0B,64B,0B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fCPX-2"}}
scoreboard players set @a[tag=PVE-Start,score_S-Shop=2,score_S-Shop_min=2] SecondaryW 15
scoreboard players set @a[tag=PVE-Start] MainW 0
scoreboard players set @a[tag=PVE-Start] money 0

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
scoreboard players tag @a[score_PVE-map_min=1] add PVE-Supernova {Inventory:[{id:"mwc:supernova",tag:{display:{Name:"§4Supernova§z"}}}]}
replaceitem entity @a[tag=PVE-Supernova] slot.hotbar.0 mwc:supernova 1 0 {IUuidLeast:-7975497053307874545L,Ammo:7.0E99d,AtId:[I;4478,0,0,0,0,0,0,4270,0,4255,4256,0,0,4710,0,4599,0,0,0,0,0,0,0,0,0,4096,0],IUuidMost:-4667644403185795056L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-65B,57B,50B,37B,66B,69B,64B,16B,-111B,81B,87B,-81B,-98B,104B,-45B,15B,0B,0B,19B,44B,0B,0B,0B,2B,0B,0B,0B,0B,0B,0B,0B,54B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,126B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,-82B,0B,0B,0B,0B,0B,0B,16B,-97B,0B,0B,16B,-96B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,102B,0B,0B,0B,0B,0B,0B,17B,-9B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,127B,-128B,127B,127B,0B,65B,48B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§4Supernova"}}
replaceitem entity @a[tag=PVE-Supernova] slot.hotbar.1 minecraft:stained_glass_pane 1 15 {display:{Name:" "}}
scoreboard players set @a[tag=PVE-Supernova] MainW 58
scoreboard players set @a[tag=PVE-Supernova] SecondaryW 0
scoreboard players tag @a[tag=PVE-Supernova] remove PVE-Supernova

scoreboard players tag @a[score_PVE-map_min=1] add PVE-Origin-12 {Inventory:[{id:"mwc:origin12",tag:{display:{Name:"§4Origin-12§z"}}}]}
replaceitem entity @a[tag=PVE-Origin-12] slot.hotbar.0 mwc:origin12 1 0 {IUuidLeast:-8803098573842000590L,Ammo:25,AtId:[I;4489,4566,4551,0,4830,0,0,0,4173,4186,4184,0,-1,4576,0,0,0,4732,0,0,0,0,0,0,0,4096,0],IUuidMost:2798211733499954087L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,38B,-43B,62B,-66B,-3B,-104B,67B,-89B,-123B,-43B,28B,124B,-25B,102B,85B,50B,0B,0B,19B,-120B,0B,0B,0B,2B,0B,0B,0B,0B,0B,0B,0B,88B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-119B,0B,0B,17B,-42B,0B,0B,17B,-57B,0B,0B,0B,0B,0B,0B,18B,-34B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,77B,0B,0B,16B,90B,0B,0B,16B,88B,0B,0B,0B,0B,-1B,-1B,-1B,-1B,0B,0B,17B,-32B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,124B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,25B,0B,64B,-84B,-52B,-51B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§4Origin-12"}}
replaceitem entity @a[tag=PVE-Origin-12] slot.hotbar.1 minecraft:stained_glass_pane 1 15 {display:{Name:" "}}
scoreboard players set @a[tag=PVE-Origin-12] MainW 108
scoreboard players set @a[tag=PVE-Origin-12] SecondaryW 0
scoreboard players tag @a[tag=PVE-Origin-12] remove PVE-Origin-12

scoreboard players tag @a[score_PVE-map_min=1] add PVE-SSG-08 {Inventory:[{id:"mwc:m82_barrett",tag:{display:{Name:"§4SSG-08§z"}}}]}
replaceitem entity @a[tag=PVE-SSG-08] slot.hotbar.0 mwc:ssg_08 1 0 {IUuidLeast:-8772435811930582007L,AtId:[I;4493,4568,0,0,0,0,0,0,4178,0,0,0,0,0,4694,4693,0,0,0,0,0,0,0,0,0,4096,0],Ammo:38,IUuidMost:6010202164348799567L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,83B,104B,-121B,6B,106B,75B,74B,79B,-122B,66B,12B,27B,126B,-10B,84B,9B,0B,0B,19B,-107B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,30B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-115B,0B,0B,17B,-40B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,19B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,82B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,86B,0B,0B,18B,85B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,38B,0B,64B,-128B,0B,0B,127B,-1B,-1B,-1B,62B,15B,92B,41B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§4SSG-08"}}
replaceitem entity @a[tag=PVE-SSG-08] slot.hotbar.1 minecraft:stained_glass_pane 1 15 {display:{Name:" "}}
scoreboard players set @a[tag=PVE-SSG-08] MainW 110
scoreboard players set @a[tag=PVE-SSG-08] SecondaryW 0
scoreboard players tag @a[tag=PVE-SSG-08] remove PVE-SSG-08

scoreboard players tag @a[score_PVE-map_min=1] add PVE-VSS {Inventory:[{id:"mwc:vss_vintorez",tag:{display:{Name:"§4VSS§z"}}}]}
replaceitem entity @a[tag=PVE-VSS] slot.hotbar.0 mwc:vss_vintorez 1 0 {IUuidLeast:-8744203178563988522L,AtId:[I;4478,4566,0,4555,0,0,0,4460,4447,4413,0,0,4449,0,4673,0,0,0,0,0,0,0,0,0,0,4096,0],Ammo:40,IUuidMost:-6522550850094739649L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-91B,123B,62B,-113B,78B,-82B,79B,63B,-122B,-90B,89B,-119B,-79B,-38B,19B,-42B,0B,0B,19B,65B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,74B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,126B,0B,0B,17B,-42B,0B,0B,0B,0B,0B,0B,17B,-53B,0B,0B,19B,31B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,108B,0B,0B,17B,95B,0B,0B,17B,61B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,97B,0B,0B,0B,0B,0B,0B,18B,65B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,40B,0B,63B,102B,102B,103B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§4VSS"}}
replaceitem entity @a[tag=PVE-VSS] slot.hotbar.1 minecraft:stained_glass_pane 1 15 {display:{Name:" "}}
scoreboard players set @a[tag=PVE-VSS] MainW 103
scoreboard players set @a[tag=PVE-VSS] SecondaryW 0
scoreboard players tag @a[tag=PVE-VSS] remove PVE-VSS

scoreboard players tag @a[score_PVE-map_min=1] add PVE-M134 {Inventory:[{id:"mwc:m134",tag:{display:{Name:"§4M134§z"}}}]}
replaceitem entity @a[tag=PVE-M134] slot.hotbar.0 mwc:m134 1 0 {IUuidLeast:-8308679448507464061L,Ammo:200,IUuidMost:4739502831694987813L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,65B,-58B,24B,-74B,-25B,35B,66B,37B,-116B,-79B,-92B,16B,23B,31B,-58B,-125B,0B,0B,19B,-96B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,10B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-63B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,-23B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,0B,0B,0B,0B,-56B,0B,63B,-128B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§4M134"}}
replaceitem entity @a[tag=PVE-M134] slot.hotbar.1 minecraft:stained_glass_pane 1 15 {display:{Name:" "}}
scoreboard players set @a[tag=PVE-M134] MainW 106
scoreboard players set @a[tag=PVE-M134] SecondaryW 0
scoreboard players tag @a[tag=PVE-M134] remove PVE-M134

scoreboard players tag @a[score_PVE-map_min=1] add PVE-Glock-18C {Inventory:[{id:"mwc:glock_18c",tag:{display:{Name:"§4Glock-18C§z"}}}]}
replaceitem entity @a[tag=PVE-Glock-18C] slot.hotbar.0 mwc:glock_18c 1 0 {IUuidLeast:-6823345676726709483L,AtId:[I;4488,0,4524,4555,0,0,0,4154,4360,4563,4293,0,4295,0,0,0,0,0,0,0,0,0,0,0,0,4096,0],Ammo:2147483647,IUuidMost:-4516816306417874742L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-63B,81B,11B,-128B,28B,69B,72B,-54B,-95B,78B,-101B,66B,55B,1B,-45B,21B,0B,0B,19B,126B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,101B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-120B,0B,0B,0B,0B,0B,0B,17B,-84B,0B,0B,17B,-53B,0B,0B,18B,-14B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,58B,0B,0B,17B,8B,0B,0B,17B,-45B,0B,0B,16B,-59B,0B,0B,0B,0B,0B,0B,16B,-57B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,127B,-1B,-1B,-1B,0B,63B,-103B,-103B,-102B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§4Glock-18C"}}
replaceitem entity @a[tag=PVE-Glock-18C] slot.hotbar.1 minecraft:stained_glass_pane 1 15 {display:{Name:" "}}
scoreboard players set @a[tag=PVE-Glock-18C] MainW 111
scoreboard players set @a[tag=PVE-Glock-18C] SecondaryW 0
scoreboard players tag @a[tag=PVE-Glock-18C] remove PVE-Glock-18C

scoreboard players tag @a[score_PVE-map_min=1] add PVE-RPK {Inventory:[{id:"mwc:ak47",tag:{display:{Name:"§4RPK§z"}}}]}
replaceitem entity @a[tag=PVE-RPK] slot.hotbar.0 mwc:ak47 1 0 {IUuidLeast:-9027532581184913498L,AtId:[I;4487,4568,-1,0,4826,0,0,4455,4437,4406,4392,0,4520,4674,0,0,0,4738,4731,0,0,0,0,0,0,4096,0],Ammo:120,IUuidMost:1449810018331869909L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,20B,30B,-62B,-121B,-66B,121B,66B,-43B,-126B,-73B,-62B,-14B,-124B,53B,63B,-90B,0B,0B,19B,100B,0B,0B,0B,2B,0B,0B,0B,0B,0B,0B,0B,-100B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,17B,-121B,0B,0B,17B,-40B,-1B,-1B,-1B,-1B,0B,0B,0B,0B,0B,0B,18B,-38B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,103B,0B,0B,17B,85B,0B,0B,17B,54B,0B,0B,17B,40B,0B,0B,0B,0B,0B,0B,17B,-88B,0B,0B,18B,66B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-126B,0B,0B,18B,123B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,120B,0B,63B,-52B,-52B,-51B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§4RPK"}}
replaceitem entity @a[tag=PVE-RPK] slot.hotbar.1 minecraft:stained_glass_pane 1 15 {display:{Name:" "}}
scoreboard players set @a[tag=PVE-RPK] MainW 113
scoreboard players set @a[tag=PVE-RPK] SecondaryW 0
scoreboard players tag @a[tag=PVE-RPK] remove PVE-RPK

scoreboard players tag @a[score_PVE-map_min=1,score_health=20] add C-GiantArmor {Inventory:[{id:"mwc:m40gasmask_helmet",tag:{tag:["HeavyA"]}}]}
scoreboard players tag @a[score_PVE-map_min=1,score_health_min=21] add C-GiantArmor {Inventory:[{id:"minecraft:diamond_helmet"}]}
replaceitem entity @a[tag=C-GiantArmor] slot.armor.head minecraft:air
scoreboard players set @a[tag=C-GiantArmor] MainW 106
effect @a[tag=C-GiantArmor] 22 0 114 true
execute @a[tag=C-GiantArmor] ~ ~ ~ playsound minecraft:item.shield.break ambient @a ~ ~ ~ 2 1
scoreboard players tag @a[tag=C-GiantArmor] remove C-GiantArmor

scoreboard players tag @a[score_PVE-map_min=1] add PVE-GiantArmor {Inventory:[{id:"mwc:russian_weapons_case",tag:{display:{Name:"§dGiant armor§z"}}}]}
replaceitem entity @a[tag=PVE-GiantArmor] slot.hotbar.0 mwc:m134 1 0 {IUuidLeast:-7154262948644063918L,Ammo:1000,IUuidMost:-5815458233909754802L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,-81B,75B,87B,-116B,65B,-80B,68B,78B,-100B,-74B,-13B,-64B,-52B,84B,-11B,82B,0B,0B,19B,-96B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,8B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-63B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,17B,-23B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,0B,0B,0B,3B,-24B,0B,63B,-128B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§4M134"}}
replaceitem entity @a[tag=PVE-GiantArmor] slot.hotbar.1 minecraft:shield 1 0 {Unbreakable:1b,HideFlags:36,BlockEntityTag:{Patterns:[{Pattern:"gra",Color:10}],Base:0}}
replaceitem entity @a[tag=PVE-GiantArmor] slot.armor.head mwc:m40gasmask_helmet 1 0 {ench:[{lvl:1s,id:7s},{lvl:1s,id:10s}],display:{Name:"§4Refit helmet"},AttributeModifiers:[{UUIDMost:2950212912591621931L,UUIDLeast:-7255558402065583144L,Amount:-0.9d,Slot:"head",AttributeName:"generic.movementSpeed",Operation:1,Name:"generic.movementSpeed"},{UUIDMost:2738592195674787114L,UUIDLeast:-4888324064715493491L,Amount:10.0d,Slot:"head",AttributeName:"generic.armor",Operation:0,Name:"generic.armor"}],tag:["HeavyA"]}
effect @a[tag=PVE-GiantArmor] 22 1000000 114 true
scoreboard players set @a[tag=PVE-GiantArmor] MainW 109
scoreboard players set @a[tag=PVE-GiantArmor] SecondaryW 0
scoreboard players tag @a[tag=PVE-GiantArmor] remove PVE-GiantArmor

scoreboard players tag @a[score_PVE-map_min=1] add PVE-Makarov {Inventory:[{id:"mwc:makarov_pm",tag:{display:{Name:"§0§kMakarov§z"}}}]}
replaceitem entity @a[tag=PVE-Makarov] slot.hotbar.0 mwc:makarov_pm 1 0 {IUuidLeast:-8065072631406948121L,Ammo:2147483647,IUuidMost:384152027980973359L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,5B,84B,-56B,59B,-17B,-115B,69B,47B,-112B,19B,27B,44B,29B,67B,-112B,-25B,0B,0B,19B,127B,0B,0B,0B,3B,0B,0B,0B,0B,0B,0B,0B,16B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-20B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,-44B,0B,0B,0B,0B,0B,0B,16B,-43B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,0B,127B,-1B,-1B,-1B,0B,64B,0B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§0§kMakarov"}}
replaceitem entity @a[tag=PVE-Makarov] slot.hotbar.1 minecraft:stained_glass_pane 1 15 {display:{Name:" "}}
scoreboard players set @a[tag=PVE-Makarov] MainW 112
scoreboard players set @a[tag=PVE-Makarov] SecondaryW 0
scoreboard players tag @a[tag=PVE-Makarov] remove PVE-Makarov

scoreboard players tag @a[score_PVE-map_min=1] add PVE-Turret {Inventory:[{id:"mwc:turretupgraded",tag:{display:{Name:"§dTurret§z"}}}]}
execute @a[tag=PVE-Turret] ~ ~ ~ entitydata @e[type=mwc:turretupgraded] {Health:-1.0f}
execute @a[tag=PVE-Turret] ~ ~ ~ entitydata @e[type=mwc:turret] {Health:-1.0f}
execute @a[tag=PVE-Turret] ~ ~ ~ summon mwc:turretupgraded -859 70.5 1299
execute @a[tag=PVE-Turret] ~ ~ ~ summon mwc:turretupgraded -827 74.5 1309
execute @a[tag=PVE-Turret] ~ ~ ~ summon mwc:turretupgraded -864 71 1280
execute @a[tag=PVE-Turret] ~ ~ ~ summon mwc:turret -874 78.5 1299
execute @a[tag=PVE-Turret] ~ ~ ~ summon mwc:turret -852 77.5 1311
execute @a[tag=PVE-Turret] ~ ~ ~ summon mwc:turret -827 77.5 1309
execute @a[tag=PVE-Turret] ~ ~ ~ summon mwc:turretupgraded -836 72.5 1305
execute @a[tag=PVE-Turret] ~ ~ ~ summon mwc:turretupgraded -837 73.5 1317
execute @a[tag=PVE-Turret] ~ ~ ~ title @a[score_PVE-map_min=1] title [{"selector":"@s"},{"text":" §eenables Turret!"}]
execute @a[tag=PVE-Turret] ~ ~ ~ playsound minecraft:entity.zombie_villager.cure ambient @a[score_PVE-map_min=1] ~ ~ ~ 10000000000000 0
replaceitem entity @a[tag=PVE-Turret] slot.hotbar.1 minecraft:stained_glass_pane 1 15 {display:{Name:" "}}
scoreboard players set @a[tag=PVE-Turret] SecondaryW 0
scoreboard players tag @a[tag=PVE-Turret] remove PVE-Turret

execute @a[tag=MoveTurret2] ~ ~ ~ summon mwc:turretupgraded ~ ~ ~
clear @a[tag=MoveTurret2] mwc:turretupgraded
scoreboard players tag @a[tag=MoveTurret2] remove MoveTurret2
scoreboard players tag @a[tag=PVE-IG] add MoveTurret2 {Inventory:[{id:"mwc:turretupgraded"}]}

execute @a[tag=MoveTurret] ~ ~ ~ summon mwc:turret ~ ~ ~
clear @a[tag=MoveTurret] mwc:turret
scoreboard players tag @a[tag=MoveTurret] remove MoveTurret
scoreboard players tag @a[tag=PVE-IG] add MoveTurret {Inventory:[{id:"mwc:turret"}]}

replaceitem entity @a[score_PVE-map_min=1] slot.inventory.3 minecraft:air

#shop
function vmwp:games/zombie/shop if @a[score_PVE-map_min=1]

