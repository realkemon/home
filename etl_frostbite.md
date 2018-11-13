[ETL] Frostbite, by Moonkey
==========

<table>
 <tr>
  <td><img src="https://github.com/realkemon/home/blob/master/levelshots/etl_frostbite.png" width="256"/></td>
  <td><img src="https://github.com/realkemon/home/blob/master/levelshots/etl_frostbite_cc.jpg" width="256"/></td>
  <td rowspan="6"><b>Index:</b><br>
<a href="https://github.com/realkemon/home/blob/master/README.md#-cedric-aka-kemon">Home</a><br>
<ul>
 <li><a href="https://github.com/realkemon/home/blob/master/etl_frostbite.md#story">Story</a></li>
 <li><a href="https://github.com/realkemon/home/blob/master/etl_frostbite.md#media">Media</a></li>
 <li><a href="https://github.com/realkemon/home/blob/master/etl_frostbite.md#changelog">Changelog</a></li>
 <ul>
  <li><a href="https://github.com/realkemon/home/blob/master/etl_frostbite.md#version-5">version 6</a></li>
  <li><a href="https://github.com/realkemon/home/blob/master/etl_frostbite.md#version-5">version 5</a></li>
  <li><a href="https://github.com/realkemon/home/blob/master/etl_frostbite.md#version-4">version 4</a></li>
  <li><a href="https://github.com/realkemon/home/blob/master/etl_frostbite.md#version-3">version 3</a></li>
  <li><a href="https://github.com/realkemon/home/blob/master/etl_frostbite.md#version-2">version 2</a></li>
  <li><a href="https://github.com/realkemon/home/blob/master/etl_frostbite.md#version-1">version 1</a></li>
 </ul>
 <li><a href="https://github.com/realkemon/home/blob/master/etl_frostbite.md#development">Development</a></li>
 <ul>
  <li><a href="https://github.com/realkemon/home/blob/master/etl_frostbite.md#specs">Specs</a></li>
  <li><a href="https://github.com/realkemon/home/blob/master/etl_frostbite.md#source">Source</a></li>
  <li><a href="https://github.com/realkemon/home/blob/master/etl_frostbite.md#compile-parameters">Compile Parameters</a></li>
 </ul></td>
 </tr>
 <tr>
  <td>BSP name</td>
  <td>etl_frostbite_v5</td>
 </tr>
 <tr>
  <td>Status</td>
  <td>version 5</td>
 </tr>
 <tr> 
  <td>Release</td>
  <td>03/09/2018</td>
 </tr>
 <tr>
  <td>Players</td>
  <td>32v32</td>
 </tr>
 <tr>
  <td>Download</td>
  <td><a href="https://www.moddb.com/mods/etlegacy/addons/etl-frostbite-v5" title="Download ETL Frostbite v5 - Mod DB" target="_blank"><img src="https://button.moddb.com/download/medium/143310.png" alt="ETL Frostbite v5" /></a></td>
 </tr>
</table>


Story
============

An Axis convoy is about to make a shipment of supplies that could bolster Axis resistance in the region. 
The Allies must steal the Supply Documents and radio them back to Allied Command so the convoy can be intercepted in time.


Media
============

Below are some comparison screenshots in the before-after style. On the left is the scene in original Ice and on the right roughly the same scene of the overhauled version. 
Both versions below use the standard texture set, so all differences are related to map work rather than HD textures.

![1](https://i.imgur.com/zidyArN.jpg)
:arrow_double_up: The boxes in front of the Allied spawn cabins got lost in the overhaul and will be brought back in the next version. :arrow_double_up:

![2](https://i.imgur.com/FePiawG.jpg)
![3](https://i.imgur.com/vedlHav.jpg)
![4](https://i.imgur.com/LUVAAhV.jpg)
![5](https://i.imgur.com/kG27FYZ.jpg)
![6](https://i.imgur.com/bRLsuWO.jpg)
![7](https://i.imgur.com/QZVObq2.jpg)
![8](https://i.imgur.com/oZfdNwk.jpg)
![9](https://i.imgur.com/rn8UuCD.jpg)
![10](https://i.imgur.com/QSs69Hf.jpg)


Changelog
============

### version 6 (pending)

* Added crates to provide cover at Allied spawn cabins

### version 5

* Fixed bug where the Allied CP didn’t get destroyed properly
* Fixed models that had their origin positioned in a structural brush
* Fixed bug where team voice announcements for main entrance and side wall didn’t get removed after objective completion.
  * Beginning: “Destroy the entrances” - “Defend the entrances”
  * First, main entrance is destroyed: “Destroy the side wall” - “Defend the side wall”
  * First, side wall is destroyed: “Destroy the main entrance” - “Defend the main entrance”
* Removed banners with swastikas in throughout the facility and replaced them with the Luff decal to stay consistent within one setting
* Removed clips some light models to allow smooth player movement
* Removed two misplaced speakers
* Added coronas to all electric light sources
* Transformed world_clips into a func_static allowing for better spectator movement to simplify shoutcasting
* Increased overall lighting from 15 to 20

### version 4

* Axis garage spawn bug has been resolved
* Board in the objective room has been made destructible
* Clipped off areas the player is not supposed to get to
* Prevented quick, easy trickjump over storage wall
* Slightly improved structural VIS blocking


### version 3

* The player is now able to stop and revert Storage Wall movement by activating the button again.
* Alarm now also sounds when the Service Door has been dynamited before the Storage Wall and Main Door.
* Structural mesh and VIS blocking has been improved
* Visual changes were made

### version 2

This version was a closed beta release and therefore no concrete changelog is available.

### version 1

This version was a closed beta release and therefore no concrete changelog is available.


Development
============

### Specs

<space> | original | version 5
:---|:---|:---
Total Brushes | 6.604 | 8.095
Total Patches | 205 | 275
Total Entities | 436 | 997
Ingame Entities | 436 | 360
 
 ### Source

Since we are talking about an open-sourced game, in my opinion as much as possible should be available to the public. In that spirit, the map source, along with sources of my other maps, can be found in the repo. It is kept updated with all latest changes, which means the map-source does not necessarily reflect the status of the last release. If you encounter any issues, I would prefer it if you contacted me or simply opened an issue on the tracker, instead of recompiling a version yourself.

[Download](https://github.com/realkemon/home/tree/master/maps)
|:---|
[Activity Tracker](https://github.com/realkemon/home/milestone/3)

### Compile parameters:
(Note: `-samplesize 16` needs to be added to the -BSP phase as well to function properly. This will be done for next version.)
```
[q3map2] -meta -v -mv 1024 -mi 6144 “[MapFile]”
[q3map2] -vis -saveprt -v “[MapFile]”
[q3map2] -light -samples 8 -samplesize 16 -v -thresh 0.05 -patchshadows -dirty -dirtdepth 256 -external -lightmapsize 1024 -shade -bounce 2 “[MapFile]”
```

[:arrow_backward: Return to Home](https://github.com/realkemon/home/blob/master/README.md#-cedric-aka-kemon) [:arrow_double_up: Back to the Top](https://github.com/realkemon/home/blob/master/etl_frostbite.md#)
