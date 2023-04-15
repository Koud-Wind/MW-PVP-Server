execute @p[r=3] ~ ~ ~ scoreboard players tag @s add Preparing
execute @p[r=3] ~ ~ ~ tellraw @s [{"text":"§aYou chose to participate in the game!"}]
execute @p[r=3] ~ ~ ~ tellraw @s[score_wins_min=10,tag=LV0] [{"text":"§aYour ready team has been upgraded to §bLV1"}]
execute @p[r=3] ~ ~ ~ tellraw @s[score_wins_min=20,tag=LV1] [{"text":"§aYour ready team has been upgraded to §5LV2"}]
execute @p[r=3] ~ ~ ~ tellraw @s[score_wins_min=40,tag=LV2] [{"text":"§aYour ready team has been upgraded to §6LV3"}]
execute @p[r=3] ~ ~ ~ tellraw @s[score_wins_min=80,tag=LV3] [{"text":"§aYour ready team has been upgraded to §4LV4"}]
execute @p[r=3] ~ ~ ~ tellraw @s[score_wins=9,tag=LV1] [{"text":"§cYour ready team has been demoted to §aLV0"}]
execute @p[r=3] ~ ~ ~ tellraw @s[score_wins=19,tag=LV2] [{"text":"§cYour ready team has been demoted to §bLV1"}]
execute @p[r=3] ~ ~ ~ tellraw @s[score_wins=19,tag=LV3] [{"text":"§cYour ready team has been demoted to §bLV1"}]
execute @p[r=3] ~ ~ ~ tellraw @s[score_wins=39,tag=LV4] [{"text":"§cYour ready team has been demoted to §5LV2"}]
execute @p[r=3] ~ ~ ~ scoreboard players tag @s[score_wins_min=10] remove LV0
execute @p[r=3] ~ ~ ~ scoreboard players tag @s[score_wins_min=20] remove LV1
execute @p[r=3] ~ ~ ~ scoreboard players tag @s[score_wins_min=40] remove LV2
execute @p[r=3] ~ ~ ~ scoreboard players tag @s[score_wins_min=80] remove LV3
execute @p[r=3] ~ ~ ~ scoreboard players tag @s[score_wins=9] remove LV1
execute @p[r=3] ~ ~ ~ scoreboard players tag @s[score_wins=19] remove LV2
execute @p[r=3] ~ ~ ~ scoreboard players tag @s[score_wins=19] remove LV3
execute @p[r=3] ~ ~ ~ scoreboard players tag @s[score_wins=39] remove LV4
execute @p[r=3] ~ ~ ~ scoreboard players tag @s[score_wins=9] add LV0
execute @p[r=3] ~ ~ ~ scoreboard players tag @s[score_wins_min=10,score_wins=19] add LV1
execute @p[r=3] ~ ~ ~ scoreboard players tag @s[score_wins_min=20,score_wins=39,tag=!LV3] add LV2
execute @p[r=3] ~ ~ ~ scoreboard players tag @s[score_wins_min=40,score_wins=79,tag=!LV4] add LV3
execute @p[r=3] ~ ~ ~ scoreboard players tag @s[score_wins_min=80] add LV4
execute @p[r=3] ~ ~ ~ scoreboard teams join 5-ready @s[tag=LV0]
execute @p[r=3] ~ ~ ~ scoreboard teams join 4-ready @s[tag=LV1]
execute @p[r=3] ~ ~ ~ scoreboard teams join 3-ready @s[tag=LV2]
execute @p[r=3] ~ ~ ~ scoreboard teams join 2-ready @s[tag=LV3]
execute @p[r=3] ~ ~ ~ scoreboard teams join 1-ready @s[tag=LV4]
execute @p[r=3] ~ ~ ~ playsound minecraft:block.note.pling ambient @s ~ ~ ~ 1000000000 2