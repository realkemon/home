Pointe du Hoc
==========

<table>
 <tr>
  <td><img src="https://github.com/realkemon/home/blob/master/levelshots/hoc.png" width="256"/></td>
  <td><img src="https://github.com/realkemon/home/blob/master/levelshots/hoc_cc.png" width="256"/></td>
  <td rowspan="6"><b>Index:</b><br>
<a href="https://github.com/realkemon/home/blob/master/README.md#-cedric-aka-kemon">Home</a><br>
<ul>
 <li><a href="https://github.com/realkemon/home/blob/master/pointe_du_hoc.md#story">Story</a></li>
 <li><a href="https://github.com/realkemon/home/blob/master/pointe_du_hoc.md#objectives">Objectives</a></li>
 <ul>
  <li><a href="https://github.com/realkemon/home/blob/master/pointe_du_hoc.md#allies">Allies</a></li>
  <li><a href="https://github.com/realkemon/home/blob/master/pointe_du_hoc.md#axis">Axis</a></li>
 </ul>
 <li><a href="https://github.com/realkemon/home/blob/master/pointe_du_hoc.md#design-thoughts">Design Thoughts</a></li>
 <ul>
  <li><a href="https://github.com/realkemon/home/blob/master/pointe_du_hoc.md#cliff">Cliff</a></li>
  <li><a href="https://github.com/realkemon/home/blob/master/pointe_du_hoc.md#clifftop">Clifftop</a></li>
  <li><a href="https://github.com/realkemon/home/blob/master/pointe_du_hoc.md#gameplay">Gameplay</a></li>
 </ul>
 <li><a href="https://github.com/realkemon/home/blob/master/pointe_du_hoc.md#technical-notes">Technical Notes</a></li>
 <li><a href="https://github.com/realkemon/home/blob/master/pointe_du_hoc.md#development">Development</a></li>
 <ul>
  <li><a href="https://github.com/realkemon/home/blob/master/pointe_du_hoc.md#specs">Specs</a></li>
  <li><a href="https://github.com/realkemon/home/blob/master/pointe_du_hoc.md#source">Source</a></li>
  <li><a href="https://github.com/realkemon/home/blob/master/pointe_du_hoc.md#compile-parameters">Compile Parameters</a></li>
 </ul></td>
 </tr>
 <tr>
  <td>BSP name</td>
  <td>hoc_b1</td>
 </tr>
 <tr>
  <td>Status</td>
  <td>beta 1</td>
 </tr>
 <tr> 
  <td>Release</td>
  <td>05/11/2019</td>
 </tr>
 <tr>
  <td>Players</td>
  <td>32v32</td>
 </tr>
 <tr>
  <td>Download</td>
  <td><a href="https://www.moddb.com/mods/etlegacy/addons/pointe-du-hoc-b1" title="Download Pointe du Hoc B1 - Mod DB" target="_blank"><img src="https://button.moddb.com/download/medium/184985.png" alt="Pointe du Hoc B1" /></a></td>
 </tr>
</table>


Story
============

**June 6, 1944:**
To grant safe passage for the Allied ships during D-Day a small operation is launched to disable the artillery guns of Pointe du Hoc. The Allies will attempt to gain control of the bunkers on the cliff and advance into the Hinterland where the Axis have hidden the artillery guns from Allied bombers. The Axis have to prevent the loss of this strategic part of Normandy and the artillery guns at all costs.


Objectives
============

### Allies

* Capture the Forward Bunker.
* Construct a Command Post.
* Only an Allied Field-Ops can call in reinforcements in the radar bunker.
* Dynamite the East Artillery Guns.
* Dynamite the West Artillery Guns.

### Axis

* Do not lose the Forward Bunker to the Allies.
* Construct a Command Post.
* Prevent the Allies from calling in reinforcements.
* Defend the East Artillery Guns.
* Defend the West Artillery Guns.


Design Thoughts
============

This map is based on the real-life [Pointe du Hoc](https://en.wikipedia.org/wiki/Pointe_du_Hoc). Therefore, a few design thoughts had to be taken into account.
The Allies suffered 135 killed/wounded and the Axis 50 killed/wounded during this operation. This imbalance makes sense realistically, but isn't great for a multiplayer map.
The objective shouldn't be easy for either side, but it should also not be possible for one team to full-hold/steamroll the enemy. 


### Cliff

Especially, the vulnerable position of the Allies while climbing the cliff needs to be taken into account.
The Allies have received 4 different initial spawns for up to 8 players each. Given the triangular shape of the cliff, the climbable area is twice the total distance of the [Seawall Battery](http://simonoc.com/pages/design/games_pro/et_battery.htm) beach, for which the Allies have received 12 different climbing rope locations. Therefore, the outermost Allied spawns have a relatively safe climb up the cliff, but a longer travel distance along the trenches on top of the cliff.

[![cliff](https://i.imgur.com/FCfc4H2m.jpg)](https://i.imgur.com/FCfc4H2.jpg) [![commandmap](https://i.imgur.com/XeYU50pm.jpg)](https://i.imgur.com/XeYU50p.jpg)

### Clifftop

The triangular shape furthermore ensures that while there is a large climbable area, the area on the cliff top is comparably small with the main defensive strongholds being layed out along the central axis through the cliff head.
Previous to the real-life attack, the clifftop has also been shelled by Allied artillery. For the map this means that the terrain is riddled by craters aside from the constructed trenches. This combination results in a very bumpy terrain that obstructs long distance line of sight. Linked with the foggy atmosphere, the players are forced to work together in smaller teams and fight through close to middle range combat to the objective.
The small craters provide makeshift shelter for both teams to regroup and then push together as a fireteam.

[![clifftop1](https://i.imgur.com/hleZX8tm.jpg)](https://i.imgur.com/hleZX8t.jpg) [![clifftop1](https://i.imgur.com/D8bXoZJm.jpg)](https://i.imgur.com/D8bXoZJ.jpg) [![clifftop1](https://i.imgur.com/LRjJ34bm.jpg)](https://i.imgur.com/LRjJ34b.jpg)

### Gameplay

While the cliff area is rather large, as mentioned, the most important fortifications are layed out along the central axis through the cliff head. 
There are 3 structures: 
* The observation bunker at the cliff head with a command post
* The central bunker with a capturable flag
* The radar bunker with the radio equipment for the first primary objective

To give all three fortifications a strategic value and promote strategic decisions when to push which structure, the capturable flag and the command post have been linked. If one team holds both the flag and has constructed the command post, the flag is temporarily secured. Meaning that the enemy team first has to destroy the command post before capturing the flag spawn. 

The primary objective in the Hinterlands, the second stage of the map, is for the Allies to destroy the 6 artillery guns. They are grouped in two different locations with 3 guns each and need to be dynamited. For this objective I have used the layout of [Würzburg Radar](http://simonoc.com/pages/design/games_pro/et_radar.htm) as inspiration due to its proven gameplay. Therefore, the guns are separated by hedgelines giving the Allies 3 different attack routes to reach the objectives.


Screenshots
============

[![hoc1](https://i.imgur.com/2JIDZ0Sm.jpg)](https://i.imgur.com/2JIDZ0S.jpg)
[![hoc2](https://i.imgur.com/u3oX0f6m.jpg)](https://i.imgur.com/u3oX0f6.jpg)
[![hoc3](https://i.imgur.com/PLu5rQim.jpg)](https://i.imgur.com/PLu5rQi.jpg)
[![hoc4](https://i.imgur.com/XeQgAjzm.jpg)](https://i.imgur.com/XeQgAjz.jpg)
[![hoc5](https://i.imgur.com/bV1vUcFm.jpg)](https://i.imgur.com/bV1vUcF.jpg)
[![hoc6](https://i.imgur.com/o90vhYsm.jpg)](https://i.imgur.com/o90vhYs.jpg)
[![hoc7](https://i.imgur.com/tzkXdcIm.jpg)](https://i.imgur.com/tzkXdcI.jpg)
[![hoc8](https://i.imgur.com/Xx6srBEm.jpg)](https://i.imgur.com/Xx6srBE.jpg)
[![hoc9](https://i.imgur.com/sxk0BSHm.jpg)](https://i.imgur.com/sxk0BSH.jpg)
[![hoc10](https://i.imgur.com/crRgEJ3m.jpg)](https://i.imgur.com/crRgEJ3.jpg)
[![hoc11](https://i.imgur.com/iq1zrxqm.jpg)](https://i.imgur.com/iq1zrxq.jpg)





Technical Notes
============

The general idea behind the VIS blocking in this map can be seen in the images below.
**G** being the sky area and the top of the minefield. The minefield dividing the map into first and second stage also acts as a VIS block like the blue rectangle.
Therefore, the clifftop and Hinterlands are strictly separated for players below the minefield, which is nearly always the case.

[![VIS1](https://i.imgur.com/iwnoh0am.jpg)](https://i.imgur.com/iwnoh0a.jpg)
[![VIS2](https://i.imgur.com/UqihERkm.jpg)](https://i.imgur.com/UqihERk.jpg)
[![VIS3](https://i.imgur.com/yzecXFGm.jpg)](https://i.imgur.com/yzecXFG.jpg)

[![VIS4](https://i.imgur.com/46uQuv3m.jpg)](https://i.imgur.com/46uQuv3.jpg)
[![VIS5](https://i.imgur.com/qk6uLRVm.jpg)](https://i.imgur.com/qk6uLRV.jpg)
[![VIS6](https://i.imgur.com/wpVNfZXm.jpg)](https://i.imgur.com/wpVNfZX.jpg)


Development
============

### Specs

<space> | beta 1 
:---|:---
Total Brushes | 20.179
Total Entities | 1.421
In-game Entities | 459
 
 ### Source

Since we are talking about an open-sourced game, in my opinion as much as possible should be available to the public. In that spirit, the map source, along with sources of my other maps, can be found in the repo. It is kept updated with all latest changes, which means the map-source does not necessarily reflect the status of the last release. If you encounter any issues, I would prefer it if you contacted me or simply opened an issue on the tracker, instead of recompiling a version yourself.

[Download](https://github.com/realkemon/home/tree/master/maps)
|:---|
Activity Tracker (Not yet active)

### Compile parameters
```
[q3map2] -bsp -meta -samplesize 16 -v -mv 1024 -mi 6144 "[MapFile]"
[q3map2] -vis -saveprt -v “[MapFile]”
[q3map2] -light -fast -samples 4 -samplesize 16 -bounce 2 -v -thresh 0.25 -shade -dirty -dirtdepth 256 -lightmapsize 512 -patchshadows -external "[MapFile]"
```

[:arrow_backward: Return to Home](https://github.com/realkemon/home/blob/master/README.md#-cedric-aka-kemon) [:arrow_double_up: Back to the Top](https://github.com/realkemon/home/blob/master/pointe_du_hoc.md#)
