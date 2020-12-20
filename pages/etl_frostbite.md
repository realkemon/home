'Frostbite, by Moonkey'
==========

<table>
 <tr>
  <td><a href="https://i.imgur.com/bt4bbqP.png"><img src="https://i.imgur.com/bt4bbqP.png" width="256"/></a></td>
  <td><a href="https://i.imgur.com/n5ChLV7.png"><img src="https://i.imgur.com/n5ChLV7.png" width="256"/></a></td>
  <td rowspan="6"><b>Index:</b><br>
<a href="https://github.com/realkemon/home/blob/master/README.md">Home</a><br>
<ul>
 <li><a href="https://github.com/realkemon/home/blob/master/pages/etl_frostbite.md#story">Story</a></li>
 <li><a href="https://github.com/realkemon/home/blob/master/pages/etl_frostbite.md#media">Media</a></li>
 <li><a href="https://github.com/realkemon/home/blob/master/pages/etl_frostbite.md#changelog">Changelog</a></li>
 <ul>
  <li><a href="https://github.com/realkemon/home/blob/master/pages/etl_frostbite.md#version-10">version 10</a></li>
  <li><a href="https://github.com/realkemon/home/blob/master/pages/etl_frostbite.md#version-9">version 9</a></li>
  <li><a href="https://github.com/realkemon/home/blob/master/pages/etl_frostbite.md#version-8">version 8</a></li>
  <li><a href="https://github.com/realkemon/home/blob/master/pages/etl_frostbite.md#version-7">version 7</a></li>
 </ul>
 <li><a href="https://github.com/realkemon/home/blob/master/pages/etl_frostbite.md#development">Development</a></li>
 <ul>
  <li><a href="https://github.com/realkemon/home/blob/master/pages/etl_frostbite.md#source">Source</a></li>
  <li><a href="https://github.com/realkemon/home/blob/master/pages/etl_frostbite.md#compile-parameters">Compile Parameters</a></li>
 </ul></td>
 </tr>
 <tr>
  <td>BSP name</td>
  <td>etl_frostbite_v9</td>
 </tr>
 <tr>
  <td>Status</td>
  <td>version 9</td>
 </tr>
 <tr> 
  <td>Latest Release</td>
  <td>April 2020</td>
 </tr>
 <tr>
  <td>Players</td>
  <td>20 vs 20</td>
 </tr>
 <tr>
  <td>Download</td>
  <td><a href="https://www.moddb.com/mods/etlegacy/addons/etl-frostbite-by-moonkey-v9" title="Download ETL Frostbite (v9) - Mod DB" target="_blank"><img src="https://button.moddb.com/download/medium/192887.png" alt="ETL Frostbite (v9)" /></a></td>
 </tr>
</table>


Story
============

After successfully retrieving the crucial documents from the coastal fortress, the Axis fortify position in a nearby storage facility. The Allied forces must retrieve those documents that so narrowly escaped their grasp before and radio them to headquarters to decipher the location of the secret rocket base. The Axis attempt to hold the storage facility and prevent the documents falling into the wrong hands.


Media
============

<a href="https://i.imgur.com/ZBw1w2l.jpg"><img src="https://i.imgur.com/ZBw1w2l.jpg" width="256"/></a>
<a href="https://i.imgur.com/BqR9ycd.jpg"><img src="https://i.imgur.com/BqR9ycd.jpg" width="256"/></a>
<a href="https://i.imgur.com/NZWoQFT.jpg"><img src="https://i.imgur.com/NZWoQFT.jpg" width="256"/></a>
<a href="https://i.imgur.com/26uGwxz.jpg"><img src="https://i.imgur.com/26uGwxz.jpg" width="256"/></a>
<a href="https://i.imgur.com/qIEpmMh.jpg"><img src="https://i.imgur.com/qIEpmMh.jpg" width="256"/></a>
<a href="https://i.imgur.com/sipsbqG.jpg"><img src="https://i.imgur.com/sipsbqG.jpg" width="256"/></a>
<a href="https://i.imgur.com/GpDZd5Y.jpg"><img src="https://i.imgur.com/GpDZd5Y.jpg" width="256"/></a>
<a href="https://i.imgur.com/mgF2bSD.jpg"><img src="https://i.imgur.com/mgF2bSD.jpg" width="256"/></a>
<a href="https://i.imgur.com/xbjJRHx.jpg"><img src="https://i.imgur.com/xbjJRHx.jpg" width="256"/></a>
<a href="https://i.imgur.com/jxLLymS.jpg"><img src="https://i.imgur.com/jxLLymS.jpg" width="256"/></a>


Changelog
============
**NOTE:** Previous overhaul versions were too far away from the original. Version 7 is a fresh start from the original 'Frostbite, by Moonkey', which is why previous versions aren't listed below.

### version 10

* Changed catwalk in warehouse from clip to clip missile. It is now permeable for weapons except grenades, rockets, etc.
* Moved vent opening near Service Door for better alignment with surrounding textures. *(Thank you Aciz for reporting.)*
* Adjusted terrain shader on snow patches in inner courtyard for proper snow behaviour. *(Thank you Aciz for reporting.)*
* Improved player collision to simplify movement. (e.g. doorways and railings) *(Thank you Aciz for reporting.)*
* Reverted clip brushes for truck in inner courtyard back to original to re-enable a trickjump. *(Thank you Kimi for reporting.)*
* Adjusted terrain brushes near Storage Wall to re-enable a trickjump. *(Thank you Bystry for reporting.)*
* Remove spotlight style from most light sources inside the facility. *(Thank you hatcher for reporting.)*
* Changed floodlight colour to uniform white. *(Thank you Aciz for reporting.)*

### version 9

* Removed rogue clip at office entrance.
* Changed catwalk in warehouse from clipweapon to clip. It is now permeable for weapons. *(Thank you to ryven for reporting.)*
* Simplified collision of machines at Service Door. *(Thank you to ryven for reporting.)*
* Improved player collision for various shelves, pipes and doorways. *(Thank you to Aciz and Bystry for reporting.)*
* Fixed one alarm speaker not being named correctly.
* Added a trickjump coming from warehouse, jumping onto box, onto truck into green passage. Disabled by default. Can be activated through mapscript. (deactivate line: setstate courtyard_TJ_box invisible)
* Removed collision of blackboards.
* Increased amount of shared assets with other ET: Legacy overhauls to decrease filesize once they are shipped together.
* Changed interior lighting to be a bit warmer in colour. *(Thank you to spyhawk for reporting.)*


### version 8

* Fixed crash on timelimit hit, due to unassigned Axis intermission camera. *(Thank you to Bystry and Kate for reporting.)*
* Improved clips for various stairs to prevent bobbing effect.
* Removed collision from cables/ropes at wooden stack outside the Main Entrance.
* Clipped window at Main Entrance. *(Thank you to ryven for reporting.)*
* Deepened the niche at Axis spawn with broken cabinet to have same size as original ‘Frostbite, by Moonkey’. *(Thank you to ryven for reporting.)*
* Added working cabinets to niche mentioned above that server admins can enable with map script. *(Was also in original Frostbite for LMS; disabled by default.)*
* Added detail to empty walled-off areas. *(Thank you to ryven for reporting.)*
* Added sky portal.
* Changed dynamic Storage Wall lights to re-use existing shaders.


### version 7

* The player is now able to stop and revert Storage Wall movement by activating the button again.
* Alarm now also sounds when the Service Door has been dynamited before the Storage Wall and Main Entrance.
* Structural mesh and VIS blocking has been improved.
* Simplified shoutcaster movement by allowing spectators to go through terrain clips.
* Lighting has been adapted to better suit a night-time setting.
* Collision has been improved for railings made out of patches.
* Different routes inside the facility have received different colour coded trims at the bunker walls to simplify call-outs to teammates.
* Banners have been removed and replaced with the Rocket Base decal from RTCW for narrative purposes.


Development
============

### Source

Since we are talking about an open-sourced game, in my opinion as much as possible should be available to the public. In that spirit, the map source, along with sources of my other maps, can be found in this repo. It is kept updated with all latest changes, which means the map-source does not necessarily reflect the status of the last release. If you encounter any issues, I would prefer it if you contacted me or simply opened an issue on the tracker, instead of recompiling a version yourself.

[Download](https://github.com/realkemon/home/tree/master/maps)
|:---|
[Activity Tracker](https://github.com/realkemon/home/milestone/3)

### Compile parameters:

```
<build name="Frostbite">
<command>[q3map2] -bsp -meta -samplesize 2 -v -mv 1024 -mi 6144 &quot;[MapFile]&quot;</command>
<command>[q3map2] -vis -saveprt -v &quot;[MapFile]&quot;</command>
<command>[q3map2] -light -fast -samples 4 -samplesize 2 -bounce 3 -bouncegrid -v -thresh 0.25 -shade -dirty -dirtdepth 256 -lightmapsize 2048 -patchshadows -external &quot;[MapFile]&quot;</command>
</build>
```

[:arrow_backward: Return to Home](https://github.com/realkemon/home/blob/master/README.md) [:arrow_double_up: Back to the Top](https://github.com/realkemon/home/blob/master/pages/etl_frostbite.md)
