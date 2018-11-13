![Bergen](https://github.com/realkemon/home/blob/master/gfx/banner_bergen.png)
==========

<table>
 <tr>
  <td><img src="https://github.com/realkemon/home/blob/master/levelshots/etl_bergen.png" width="256"/></td>
  <td><img src="https://github.com/realkemon/home/blob/master/levelshots/etl_bergen_cc.jpg" width="256"/></td>
  <td rowspan="6"><b>Index:</b><br>
<a href="https://github.com/realkemon/home/blob/master/README.md#-cedric-aka-kemon">Home</a><br>
<ul>
 <li><a href="https://github.com/realkemon/home/blob/master/etl_ice.md#story">Story</a></li>
 <li><a href="https://github.com/realkemon/home/blob/master/etl_ice.md#media">Media</a></li>
 <li><a href="https://github.com/realkemon/home/blob/master/etl_ice.md#design-thoughts">Design Thoughts</a></li>
 <ul>
  <li><a href="https://github.com/realkemon/home/blob/master/etl_ice.md#lighting">Lighting</a></li>
  <li><a href="https://github.com/realkemon/home/blob/master/etl_ice.md#interior">Interior</a></li>
  <li><a href="https://github.com/realkemon/home/blob/master/etl_ice.md#transition">Transition</a></li>
  <li><a href="https://github.com/realkemon/home/blob/master/etl_ice.md#duct">Duct</a></li>
 </ul>
 <li><a href="https://github.com/realkemon/home/blob/master/etl_ice.md#changelog">Changelog</a></li>
 <ul>
  <li><a href="https://github.com/realkemon/home/blob/master/etl_ice.md#version-2">version 2</a></li>
  <li><a href="https://github.com/realkemon/home/blob/master/etl_ice.md#version-1">version 1</a></li>
 </ul>
 <li><a href="https://github.com/realkemon/home/blob/master/etl_ice.md#development">Development</a></li>
 <ul>
  <li><a href="https://github.com/realkemon/home/blob/master/etl_ice.md#specs">specs</a></li>
  <li><a href="https://github.com/realkemon/home/blob/master/etl_ice.md#compile-parameters">compile parameters</a></li>
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




Changelog
============

### to version 2:

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


### to version 1:

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


### to original:

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



Specs
============

### Overview

<space> | Specs
:---|:---
Total Brushes | 15.520
Total Patches | 811
Total Entities | 1.517
Ingame Entities | 524

### Compile parameters:
```
[q3map2] -meta -v -mv 1024 -mi 6144 “[MapFile]”
[q3map2] -vis -saveprt -v “[MapFile]”
[q3map2] -light -samples 4 -samplesize 8 -v -thresh 0.05 -patchshadows -dirty -dirtdepth 256 -external -lightmapsize 512 -shade -bounce 2 “[MapFile]”
```
