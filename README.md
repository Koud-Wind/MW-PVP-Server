# MW PVP Server
A Minecraft server focused on VMW/MWC weapons practice

[中文](https://github.com/Koud-Wind/MW-PVP-Server/tree/main-zh) / [English](https://github.com/Koud-Wind/MW-PVP-Server/tree/main)



## Intro
Most features are implemented using `mcfunction`, inspired by **COD, CS, Hypixel**, etc.

After two years of personal maintenance and due to limited energy and finances, I have decided to open-source this project. If you're interested in maintaining it, please contact me!


* **Course Timeline**

  `October 2021` Started development

  `June 2022` Complete rewrite

  `November 2022` Overall completion

  `April 2023` Hosted on Git

  `November 2024` Officially open-sourced



## Deploy and Play
**0.** **Server requirements: `2 cores` with a maximum clock speed of `4.0GHz`, `4GB` of allocatable RAM, `1GB` of disk space, `20Mbps` upload bandwidth, `Java8` runtime environment**

**1.** **Download the server software from [here](https://github.com/Koud-Wind/MW-PVP-Server/archive/refs/heads/main.zip) and extract it**

**2.** Edit the `server.properties` file and set `server-port` to an unused port number

**3.** (Optional) Set `online-mode` to `false`

**4.** Run `[run.bat` (ensure Java is installed)

**5.** (Optional) Use `frp` for port mapping of your chosen `port` (default is 49999) and obtain the public IP and port from your **mapping node provider**

**6.** Players can join the server via `public IP:port` but first, they need to install the client mod released [here](https://github.com/Koud-Wind/MW-PVP-Server/releases)



## Gameplay
<details>
<summary><strong>Overview</strong></summary>
  Players must acquire weapons from the weapon shop and earn money to obtain better weapons. The white pillar indicates the Ender Chest location, while the blue pillar indicates the defense point. Meeting the victory conditions of each mode will earn players more money to purchase enhancements for future games.
</details>

<details>
<summary><strong>Free For All</strong></summary>
  Each player fights alone, aiming to achieve 30 kills for a round's end. The top two players in kill count win. If no one is killed for a duration, all players will receive a map-wide marker for 1 second, with 3 seconds at multiples of 25. Kills via throwables do not count.
</details>

<details>
<summary><strong>King of Weapons</strong></summary>
  Players fight alone with only their primary weapon. Upon reaching 120 points, the round concludes. The top two players in score win. Each kill grants a new weapon, but players can also collect crowns for automatic points, fast healing, and increased armor, at the cost of reduced speed and map-wide markers.
</details>

<details>
<summary><strong>Survival Showdown</strong></summary>
  Players compete to be the last survivor over 5 rounds (newcomers join the next round). No respawns are allowed during each round. Points are awarded based on the order of survival, with the top two scoring players winning. Players can choose their drop location at the start of each round, and those outside the Ender Chest area will continuously lose health when time is under 30 seconds.
</details>

<details>
<summary><strong>Bounty Bombing</strong></summary>
  Teams face off to defuse or detonate C4 bombs over 9 rounds (newcomers join the next round). No respawns are allowed. The first team to win 5 rounds wins. Players can use the weapon shop for 30 seconds. Terrorist players must install the C4 bomb in the red circle of the blue pillar (CT defense point) by interacting while sneaking (5 seconds). Buying throwables is recommended for an advantage, and teams switch every 4 rounds. Players upgrade armor after every 2 kills. The map has no boundaries, providing more attack routes, but escaping is not advisable.
</details>

<details>
<summary><strong>Point Capture</strong></summary>
  Teams face off to eliminate enemies and capture points over 7 rounds (newcomers join the next round). There is a limit on team respawns during each round, and the first team to win 4 rounds wins. Players have 50 seconds of weapon shop access. CT players defend points while T players aim to capture the blue pillar's red circle, with multiple players capturing faster. Buying throwables grants a significant advantage, and teams switch every 2 rounds. Players upgrade armor after every 4 kills. The map has no boundaries, allowing for multiple attack routes, but escaping is not advisable.
</details>

<details>
<summary><strong>Team Deathmatch</strong></summary>
  Teams compete to eliminate each other, concluding when one team reaches 65 points. The team with the most points wins. When a team member respawns, they grant points to the opposing team. After reaching 30 points, respawn locations will swap, and kills upgrade armor.
</details>

<details>
<summary><strong>Zombie Apocalypse</strong></summary>
  Teams cooperate to eliminate all zombies in 30 rounds (averaging about 1 hour and 45 minutes). Repairing barricades earns repair points. Using a detector automatically marks nearby zombies. It’s advised not to buy shotguns or sniper rifles. Using repair points to unlock new areas provides more barricades to repair. Players should stick together and avoid going solo. Players can buy armor (apartments/rooftops), draw ultimate weapons (gardens), purchase turrets (warehouses), buy fearless armor (power plants), and activate machines for buffs, which can reduce difficulty and speed up completion.
</details>



## Images and Videos

![](https://github.com/Koud-Wind/MW-PVP-Server/blob/resources/image/map1-1.png)
![](https://github.com/Koud-Wind/MW-PVP-Server/blob/resources/image/map1-2.png)
![](https://github.com/Koud-Wind/MW-PVP-Server/blob/resources/image/map1-3.png)
![](https://github.com/Koud-Wind/MW-PVP-Server/blob/resources/image/map1-4.png)
![](https://github.com/Koud-Wind/MW-PVP-Server/blob/resources/image/map2-1.png)
![](https://github.com/Koud-Wind/MW-PVP-Server/blob/resources/image/map2-2.png)
![](https://github.com/Koud-Wind/MW-PVP-Server/blob/resources/image/map3-1.png)
![](https://github.com/Koud-Wind/MW-PVP-Server/blob/resources/image/map3-2.png)
![](https://github.com/Koud-Wind/MW-PVP-Server/blob/resources/image/map3-3.png)
![](https://github.com/Koud-Wind/MW-PVP-Server/blob/resources/image/map4-1.png)
![](https://github.com/Koud-Wind/MW-PVP-Server/blob/resources/image/map4-2.png)
![](https://github.com/Koud-Wind/MW-PVP-Server/blob/resources/image/map4-3.png)
![](https://github.com/Koud-Wind/MW-PVP-Server/blob/resources/image/map5-1.png)
![](https://github.com/Koud-Wind/MW-PVP-Server/blob/resources/image/map5-2.png)
![](https://github.com/Koud-Wind/MW-PVP-Server/blob/resources/image/map6-1.png)
![](https://github.com/Koud-Wind/MW-PVP-Server/blob/resources/image/map6-2.png)
![](https://github.com/Koud-Wind/MW-PVP-Server/blob/resources/image/map6-3.png)
![](https://github.com/Koud-Wind/MW-PVP-Server/blob/resources/image/zombie-1.png)
![](https://github.com/Koud-Wind/MW-PVP-Server/blob/resources/image/hall-1.png)
![](https://github.com/Koud-Wind/MW-PVP-Server/blob/resources/image/hall-2.png)
![](https://github.com/Koud-Wind/MW-PVP-Server/blob/resources/image/hall-3.png)

![](https://github.com/Koud-Wind/MW-PVP-Server/blob/resources/image/game-0.png)
![](https://github.com/Koud-Wind/MW-PVP-Server/blob/resources/image/game-1.png)
![](https://github.com/Koud-Wind/MW-PVP-Server/blob/resources/image/game-2.png)
![](https://github.com/Koud-Wind/MW-PVP-Server/blob/resources/image/game-3.png)
![](https://github.com/Koud-Wind/MW-PVP-Server/blob/resources/image/menu-1.png)
![](https://github.com/Koud-Wind/MW-PVP-Server/blob/resources/image/menu-2.png)
