[ETL] Bergen, by Detoeni
==========

<table>
 <tr>
  <td><img src="https://github.com/realkemon/home/blob/master/levelshots/etl_bergen.png" width="256"/></td>
  <td><img src="https://github.com/realkemon/home/blob/master/levelshots/etl_bergen_cc.jpg" width="256"/></td>
  <td rowspan="6"><b>Index:</b><br>
<a href="https://github.com/realkemon/home/blob/master/README.md#-cedric-aka-kemon">Home</a><br>
<ul>
 <li><a href="https://github.com/realkemon/home/blob/master/etl_bergen.md#story">Story</a></li>
 <li><a href="https://github.com/realkemon/home/blob/master/etl_bergen.md#design-thoughts">Design Thoughts</a></li>
 <ul>
  <li><a href="https://github.com/realkemon/home/blob/master/etl_bergen.md#doors">Doors</a></li>
  <li><a href="https://github.com/realkemon/home/blob/master/etl_bergen.md#wall-elements">Wall Elements</a></li>
  <li><a href="https://github.com/realkemon/home/blob/master/etl_bergen.md#submarine-bay">Submarine Bay</a></li>
  <li><a href="https://github.com/realkemon/home/blob/master/etl_bergen.md#generator">Generator</a></li>
  <li><a href="https://github.com/realkemon/home/blob/master/etl_bergen.md#door-panels">Door Panels</a></li>
 </ul>
 <li><a href="https://github.com/realkemon/home/blob/master/etl_bergen.md#changelog">Changelog</a></li>
 <ul>
  <li><a href="https://github.com/realkemon/home/blob/master/etl_bergen.md#version-3">version 3</a></li>
  <li><a href="https://github.com/realkemon/home/blob/master/etl_bergen.md#version-2">version 2</a></li>
  <li><a href="https://github.com/realkemon/home/blob/master/etl_bergen.md#version-1">version 1</a></li>
 </ul>
 <li><a href="https://github.com/realkemon/home/blob/master/etl_bergen.md#development">Development</a></li>
 <ul>
  <li><a href="https://github.com/realkemon/home/blob/master/etl_bergen.md#specs">Specs</a></li>
  <li><a href="https://github.com/realkemon/home/blob/master/etl_bergen.md#source">Source</a></li>
  <li><a href="https://github.com/realkemon/home/blob/master/etl_bergen.md#compile-parameters">Compile Parameters</a></li>
 </ul></td>
 </tr>
 <tr>
  <td>BSP name</td>
  <td>etl_bergen_v3</td>
 </tr>
 <tr>
  <td>Status</td>
  <td>version 3</td>
 </tr>
 <tr> 
  <td>Release</td>
  <td>20/10/2018</td>
 </tr>
 <tr>
  <td>Players</td>
  <td>16v16</td>
 </tr>
 <tr>
  <td>Download</td>
  <td><a href="https://www.moddb.com/mods/etlegacy/addons/etl-bergen-v3" title="Download ETL Bergen v3 - Mod DB" target="_blank"><img src="https://button.moddb.com/download/medium/169701.png" alt="ETL Bergen v3" /></a></td>
 </tr>
</table>


Story
============

The Unterseebootwaffe of the 11th flotilla is harassing Allied shipping in the North Sea. 
As Operation Arrow descends on the Bergen area of Norway the Axis must protect the base from Allied attempts at sabotage.


Design Thoughts
============

Before actually starting to work on the overhaul, it is important to have a deeper look at the original map. On the one hand, focus should be on unique design elements, which can later be emphasised. On the other hand, problematic issues need to be identified. These can be purely visual, but also include elements that serve a direct purpose for gameplay, but have no realistic background/purpose.

### Doors

When looking at the original Bergen, one thing that strikes the eye is the style of the doors. They are not rectangular, but rather have a 45° angle in the top corners. As this is a very unique style of doors, it was important to preserve and emphasise it where possible. In that spirit all doors have received the same setup to prevent misalignment of textures and ensure an uniform appearance.
![door1](https://i.imgur.com/omREEXQ.jpg)
![door2](https://i.imgur.com/cxi6l1t.jpg)

### Wall Elements

A second unqiue style are the wall elements in the bunker corridors. Where possible, these have been enlarged and added. Their contrast has been increased as well, to make them pop a bit more.
![element1](https://i.imgur.com/9e58Fr8.jpg)
![element2](https://i.imgur.com/LKcIcC3.jpg)

### Submarine Bay

The submarine bay is definitely one of the most iconic areas in the map, along with the generator room. One way to further strengthen the character of this area was to implement additional elements supporting the realistic background. In other words, elements that tell a story and imply a realistic meaning to increase the immersion in the level. One aspect was to extend the transport system of torpedos from the back courtyard into the submarine bay. Torpedos brought in that way needed to be loaded onto the submarine, which is why cranes were added around the docks. Aside from those, other elements included moveable bridges to cross from docks to docked submarines safely as well as random generators and pipes.
![submarine1](https://i.imgur.com/frIjRBY.jpg)
![submarine2](https://i.imgur.com/RyBJYe4.jpg)

### Generator

As mentioned above, the generator room is one of the most iconic areas in this map. In attempt to increase the depth in this area, the floor was replaced by a metal grid and an underground level has been created to make the room seem larger and humbling. The generator has been rebuilt using the standard texture set and was given a more worn-down/industrial look.
![generator1](https://i.imgur.com/4nGQqgJ.jpg)
![generator2](https://i.imgur.com/7gySbtu.jpg)
![generator3](https://i.imgur.com/CzBMEYB.jpg)

### Door Panels

The very iconic look of the door control panels, which are linked to the generator *(built = functioning)*, has also received a make-over. Partly, because custom textures should be avoided where possible and partly to enable the player to tell even faster whether or not the control panels are working or not. To achieve this, two lights have been added that are red when the generator is destroyed and switch to green once it's working. The arrow has received a wobbling effect when it is green to simulate pressure variation in the system. Furthermore, audio feedback was added to the levers when they are not functioning, to let the player know that his activation triggered something, but it is not working.
![panel1](https://i.imgur.com/BFuBFy6.jpg)


Changelog
============

### version 3:

* Fixed caulk in terrain at forward bunker and northern courtyard. Thank you ryven for reporting.
* Fixed side entrance being unplantable when footbridge was constructed. Thank you Harlekin for reporting.
* Fixed missing footbridge related VO sound for Axis
* Fixed bug where sound wouldn’t play when main entrance got destroyed
* Fixed 3 terrain spots where it was possible for the player to either get stuck or be obstructed in their way. Thank you Harlekin for reporting.
* Added cabinet marker in the command map. Thank you IR4T4 and Ensiform for reporting.
* Added lights in forward bunker. Thank you Ensiform for reporting.
* Added audible feedback to generator door levers when generator is destroyed.
* Added base alarm sounding whenever the transmitter area gets breached. This replaces the simple text announcement. Thank you ryven and WuTangH for debugging.
* Added ambient sounds (capturable flag, crickets in nature and birds in trees). Thank you IR4T4 for reporting.
* Adjusted trigger_hurt of v1 rocket to cover entire explosion area. Thank you Harlekin for reporting.
* Adjusted terrain at side entrance to prevent the easiest TJs. Thank you Aciz and ryven for extensive feedback.
* Adjusted MG murderhole at side entrance to reduce shooting against the insides. Also adjusted its varc. Thank you ryven for reporting.
* Adjusted tree at side path to no longer be partially inside the cliff. Thank you Harlekin for reporting.
* Replaced generator command map icon with standard icons to clarify mission objective. Thank you Harlekin for reporting.
* Replaced tree between forward bunker and allied mg blocking line of sight. Thank you Mateos for reporting.
* Removed little tree at side path blocking movement and visibility. Thank you Harlekin for reporting.
* Reduced brushcount of terrain significantly and added hills between forward bunker and rear base to increase VIS blocking and performance. Thank you Aciz and ryven for reporting.


### version 2:

* Various clipping issues have been fixed, where players could get stuck. Thank you Aciz and WuTangH for reporting.
* Various TJ possibilities have been removed, to prevent not intended, easy access to map objectives. Thank you Aciz for reporting.
  * As a result, the river at the Side Entrance had to be widened as the only real solution.
* Lighting has been improved at various locations. Thank you Aciz for reporting.
* A missing shader issue at the transmitter controls has been fixed. Thank you [UJE]Niek for reporting.
* Side Entrance entity setup has been revised. Thank you ryven for debugging.
* Bot waypoints are now available at the omnibot repo. Thank you Mateos for creating bot support.
* Terrain shader issue inside the bunker corridors, which lead to dirt splashes when shooting the ground, has been resolved. Thank you [UJE]Niek for reporting.
* Terrain brushwork has been adjusted to remove a caulk leak at the main entrance. Thank you ryven for reporting.
* Ambient sounds have been added for 2 fireplaces and 1 generator. Thank you IR4T4 for reporting.
* Moved a hovering lamp at the transmitter controls bunker. Thank you Aciz for reporting.


### version 1:

* VO announcements have been adapted by Radar.
  * As long as both Main and Side Entrance are active VO is: “defend/destroy entrances”
  * As soon as one has been breached VO is: “defend/destroy the side OR main entrance”
* VO announcements for the Footbridge have been added.
* Alarm now sounds in the entire base when either the Side- or Main Entrance have been breached instead of separated alarms.
* The snapping of the tank at certain view-angles has been fixed
* If the Allies hold both the Forward Bunker flag and the CP, the flag is “temporarily secured” until the CP is lost again.
* The Forward Door (before, Transmitter Door 3) is now linked to the generator.
* Spectator limbo cam has been fixed (was inside of terrain).
* Construction materials have been made in the style of original maps.
* Teleport and secret room have been removed.
* Axis rear spawn has been restructured to allow for faster exit.
* Plane shooting down the tank has been replaced with a V1 Rocket to create narrative link to V1_Rocket map by FireFly, which is on the list to be overhauled as well.
* Entity count has been reduced from 568 to 498.
* Structural mesh and VIS blocking have been improved by adjusting vertical differences of the floors.
* Visual changes have been made.


Development
============

### Specs

<space> | original | version 3
:---|:---|:---
Total Brushes | 15.898 | 15.527
Total Patches | 1.179 | 809
Total Entities | 1.194 | 1.518
Ingame Entities | 568 | 525
 
 ### Source

Since we are talking about an open-sourced game, in my opinion as much as possible should be available to the public. In that spirit, the map source, along with sources of my other maps, can be found in the repo. It is kept updated with all latest changes, which means the map-source does not necessarily reflect the status of the last release. If you encounter any issues, I would prefer it if you contacted me or simply opened an issue on the tracker, instead of recompiling a version yourself.

[Download](https://github.com/realkemon/home/tree/master/maps)
|:---|
[Activity Tracker](https://github.com/realkemon/home/milestone/2)

### Compile parameters:
(Note: `-samplesize 16` needs to be added to the -BSP phase as well to function properly. This will be done for next version.)
```
[q3map2] -meta -v -mv 1024 -mi 6144 “[MapFile]”
[q3map2] -vis -saveprt -v “[MapFile]”
[q3map2] -light -samples 4 -samplesize 8 -v -thresh 0.05 -patchshadows -dirty -dirtdepth 256 -external -lightmapsize 512 -shade -bounce 2 “[MapFile]”
```
