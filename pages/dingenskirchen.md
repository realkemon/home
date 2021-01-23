Dingenskirchen
==========

<table>
 <tr>
  <td><a href="https://raw.githubusercontent.com/realkemon/home/master/gfx/dingenskirchen.png"><img src="https://raw.githubusercontent.com/realkemon/home/master/gfx/dingenskirchen.png" width="256"/></a></td>
  <td><a href="https://raw.githubusercontent.com/realkemon/home/master/gfx/dingenskirchen_cc.png"><img src="https://raw.githubusercontent.com/realkemon/home/master/gfx/dingenskirchen_cc.png" width="256"/></a></td>
  <td rowspan="8"><b>Index:</b><br>
<a href="https://github.com/realkemon/home/blob/master/README.md">Home</a><br>
<ul>
 <li><a href="https://github.com/realkemon/home/blob/master/pages/dingenskirchen.md#story">Story</a></li>
 <li><a href="https://github.com/realkemon/home/blob/master/pages/dingenskirchen.md#media">Media</a></li>
 <li><a href="https://github.com/realkemon/home/blob/master/pages/dingenskirchen.md#changelog">Changelog</a></li>
 <ul>
  <li><a href="https://github.com/realkemon/home/blob/master/pages/dingenskirchen.md#beta-10-pending">beta 10 (pending)</a></li>
  <li><a href="https://github.com/realkemon/home/blob/master/pages/dingenskirchen.md#beta-9">beta 9</a></li>
  <li><a href="https://github.com/realkemon/home/blob/master/pages/dingenskirchen.md#beta-8">beta 8</a></li>
 </ul>
 <li><a href="https://github.com/realkemon/home/blob/master/pages/dingenskirchen.md#development">Development</a></li>
 <ul>
  <li><a href="https://github.com/realkemon/home/blob/master/pages/dingenskirchen.md#source">Source</a></li>
  <li><a href="https://github.com/realkemon/home/blob/master/pages/dingenskirchen.md#compile-parameters">Compile Parameters</a></li>
 </ul></td>
 </tr>
 <tr>
  <td>BSP name</td>
  <td>dingenskirchen_b9.bsp</td>
 </tr>
 <tr>
  <td>Status</td>
  <td>beta 9</td>
 </tr>
 <tr> 
  <td>Latest Release</td>
  <td>January 2021</td>
 </tr>
 <tr>
  <td>Players</td>
  <td>32 vs 32</td>
 </tr>
 <tr>
  <td>Download</td>
  <td><a href="https://www.moddb.com/games/wolfenstein-enemy-territory/addons/dingenskirchen-b9" title="Download Dingenskirchen (b9) - Mod DB" target="_blank"><img src="https://button.moddb.com/download/medium/207418.png" alt="Dingenskirchen (b9)" /></a></td>
 </tr>
</table>

Story
============

December 1944:*The noose tightens around the Reich's neck as Allied forces threaten to cross the Siegfried Line and invade Germany. An Eifel castle has become a central location for the Kraut High Command in this area to coordinate their troop movements. It is the last obstacle on the road into Germany and one of the final chances for the Axis to ever turn the tables. Not taking any chances, the Allies are attempting to sneak a suitcase bomb into the High Command conference room to disrupt the Axis strategy at its core.

Changelog
============

**NOTE:** Public release versions are only betas 1, 2, 7 and 9. All other iterations were semi-private test versions for which a massive thank you needs to be directed to the UJE clan and Niek and Shargo especially for such comprehensive feedback that it cannot be listed in detail. Betas 2 and 7 were complete reworks of the previous public release, which makes it impossible to provide proper changelogs. This changed with the release of beta 7 as the map finally entered a stage where large scale reworks were no longer necessary and proper changelogs can be provided.

### beta 10 (pending)

* [TODO] Fix caulk leak between tower and terrain at Tunnel Doors.

### beta 9

* Fixed minor caulk leak
* Fixed terrain blending near tram station
* Adjusted lighting settings in an attempt to improve performance
* Added wm_announce to Caste Stairs construction *(Thank you Mateos for reporting)*
* Fixed setstate errors in console at village flag secure *(Thank you Mateos for reporting)*
* Fixed setstate errors when taking and returning suitcase *(Thank you Mateos for reporting)*
* Removed suitcase cm icon when delivered *(Thank you Mateos for reporting)*
* Increased disarm time for suitcase bomb from 15 to 20 seconds. *(Thank you shargo for reporting)*

### beta 8
* Fixed missing texture
* Fixed bug where Allies can spawn in the castle before it's breached.
* Moved river flag closer to tunnel doors and removed crates restricting player movement.
* Moved tunnel grate lever to tunnel doors gatehouse
* Changed Axis Hill spawn to Church spawn
* Changed Allied Church spawn to Tram spawn
* Remodelled Axis castle spawn and moved staircase tower to split balcony walkway
* Changed "placed" to "planted" in wm_announce "^5The Allies have planted the Suitcase Bomb!"
* Added arm/disarm mechanic to suitcase bomb. Axis have 15 seconds to disarm.
* Added two additional paths into the castle through the gatehouse towers to accommodate Allies now spawning outside the castle.
* Added ladder to transition between wine cellar and middle route inside the castle.
* Moved river flag secure event to when tank passes river spawn hut.
* Widened passage ways to village flag
* Removed crates at village flag to compensate too strong defensive position for Axis
* Fixed various texture alignment issues

Development
============
 
### Source

Since we are talking about an open-sourced game, in my opinion as much as possible should be available to the public. In that spirit, the map source, along with sources of my other maps, can be found in this repo. It is kept updated with all latest changes, which means the map-source does not necessarily reflect the status of the last release. If you encounter any issues, I would prefer it if you contacted me or simply opened an issue on the tracker, instead of recompiling a version yourself.

[Download](https://github.com/realkemon/home/tree/master/maps)
|:---|
[Activity Tracker](https://github.com/realkemon/home/milestone/7)

### Compile parameters

```
<build name="Dingenskirchen">
  <command>[q3map2] -bsp -meta -samplesize 4 -v -mv 1024 -mi 6144 &quot;[MapFile]&quot;</command>
  <command>[q3map2] -vis -saveprt -v &quot;[MapFile]&quot;</command>
  <command>[q3map2] -light -fast -samples 4 -samplesize 4 -bounce 3 -bouncegrid -v -thresh 0.5 -shade -dirty -dirtdepth 256 -lightmapsize 1024 -patchshadows -external &quot;[MapFile]&quot;</command>
  </build>
```

[:arrow_backward: Return to Home](https://github.com/realkemon/home/blob/master/README.md) [:arrow_double_up: Back to the Top](https://github.com/realkemon/home/blob/master/pages/dingenskirchen.md)
