'Supply Depot, by ginc'
==========

<table>
 <tr>
  <td><a href="https://i.imgur.com/VR8Q6jp.png"><img src="https://i.imgur.com/VR8Q6jp.png" width="256"/></a></td>
  <td><a href="https://i.imgur.com/P90cnvc.png"><img src="https://i.imgur.com/P90cnvc.png" width="256"/></a></td>
  <td rowspan="6"><b>Index:</b><br>
<a href="https://github.com/realkemon/home/blob/master/README.md">Home</a><br>
<ul>
 <li><a href="https://github.com/realkemon/home/blob/master/pages/etl_supply.md#story">Story</a></li>
 <li><a href="https://github.com/realkemon/home/blob/master/pages/etl_supply.md#media">Media</a></li>
 <li><a href="https://github.com/realkemon/home/blob/master/pages/etl_supply.md#additional-features">Additional Features</a></li>
 <li><a href="https://github.com/realkemon/home/blob/master/pages/etl_supply.md#changelog">Changelog</a></li>
 <ul>
  <li><a href="https://github.com/realkemon/home/blob/master/pages/etl_supply.md#version-2">version 2</a></li>
  <li><a href="https://github.com/realkemon/home/blob/master/pages/etl_supply.md#version-1">version 1</a></li>
 </ul>
 <li><a href="https://github.com/realkemon/home/blob/master/pages/etl_supply.md#development">Development</a></li>
 <ul>
  <li><a href="https://github.com/realkemon/home/blob/master/pages/etl_supply.md#source">Source</a></li>
  <li><a href="https://github.com/realkemon/home/blob/master/pages/etl_supply.md#compile-parameters">Compile Parameters</a></li>
 </ul></td>
 </tr>
 <tr>
  <td>BSP name</td>
  <td>etl_supply_v2</td>
 </tr>
 <tr>
  <td>Status</td>
  <td>version 2</td>
 </tr>
 <tr> 
  <td>Latest Release</td>
  <td>December 2020</td>
 </tr>
 <tr>
  <td>Players</td>
  <td>20 vs 20</td>
 </tr>
 <tr>
  <td>Download</td>
  <td><a href="https://www.moddb.com/mods/etlegacy/addons/supply-depot-by-ginc" title="Download Supply Depot, by ginc (v2) - Mod DB" target="_blank"><img src="https://button.moddb.com/download/medium/205561.png" alt="Supply Depot, by ginc (v2)" /></a></td>
 </tr>
</table>


Story
============

Allied intelligence has discovered that the Axis forces are temporarily storing a large shipment of gold at a supply depot near the German border. The Allies have to drive a truck into the supply depot to steal the big ass crate of gold using a crane. The Axis have to defend the Depot and protect the gold for 15 minutes.


Media
============

<a href="https://i.imgur.com/xLtSmcq.jpg"><img src="https://i.imgur.com/xLtSmcq.jpg"></a>
<a href="https://i.imgur.com/nKroooj.jpg"><img src="https://i.imgur.com/nKroooj.jpg"></a>
<a href="https://i.imgur.com/Nv5rIiL.jpg"><img src="https://i.imgur.com/Nv5rIiL.jpg"></a>
<a href="https://i.imgur.com/GCbgNn9.jpg"><img src="https://i.imgur.com/GCbgNn9.jpg"></a>
<a href="https://i.imgur.com/gN4JH17.jpg"><img src="https://i.imgur.com/gN4JH17.jpg"></a>
<a href="https://i.imgur.com/3BNMQL3.jpg"><img src="https://i.imgur.com/3BNMQL3.jpg"></a>
<a href="https://i.imgur.com/H8vqkuu.jpg"><img src="https://i.imgur.com/H8vqkuu.jpg"></a>
<a href="https://i.imgur.com/HTH9xUV.jpg"><img src="https://i.imgur.com/HTH9xUV.jpg"></a>
<a href="https://i.imgur.com/P79d0f1.jpg"><img src="https://i.imgur.com/P79d0f1.jpg"></a>
<a href="https://i.imgur.com/HmO2eGu.jpg"><img src="https://i.imgur.com/HmO2eGu.jpg"></a>

Additional Features
============
In an attempt to improve the map further two features have been added. One with a gameplay impact and the other one simply being a quality of life improvement for spectators and shout casters.
<a href="https://i.imgur.com/JCcZb18.jpg"><img src="https://i.imgur.com/JCcZb18.jpg"></a>
The gameplay feature is the additional of an antenna which is linked to the Command Post. It provides a near-global visual indicator for the status of the Command Post. (Destroyed, Under Construction, Constructed).
<a href="https://i.imgur.com/GTJ8hE2.jpg"><img src="https://i.imgur.com/GTJ8hE2.jpg"></a>
The quality of life improvement are skylights in the two main bunkers, which are solid for players and entities (bullets, explosions, grenades, etc.), but non-solid for spectators and shout casters. They allow spectators to maintain a constant overview of action around the facilities, while also keeping an eye on the respective main objective to never miss crucial events.




Changelog
============

### version 2

* Changed floodlight colour to uniform white.
* Fixed vanilla ET compatibility.
* Fixed various trickjumps.
* Cleaned collision for easier player movement.
* Fixed mirrored textures in vanilla ET.
* Changed crane control construction indicators for clearer visibility.
* Improved lighting and general visibility.
* Fixed issue where planting landmines was possible everywhere.

### version 1

* Added targetname and scriptname to nearly all in-game entities to enable server admins to build custom scripts if desired.
* Extended map skywards to allow for free shoutcaster/spectator movement.
* Implemented windows into the forward bunker roof to allow shoutcasters and spectators to maintain an overview at all times.
* Comprehensive rework of structural mesh to improve on VIS.
* Removed player collision from noticeboards, picture frames, lying doors etc.
* Enlarged some door and window frames for more consistent use of dimensions across the map.
* Colour-coded stairwells in forward bunker.
* Fixed clip position of destroyed allied cp model.
* Removed collision from crane rope.
* Dispersed spawn points to declutter mass spawn events.
* Adjusted terrain around some rocks to prevent leaks at the border.
* Added team specific CP sounds.
* Re-added previously removed radio speakers.
* Increased player count to 20v20.
* Added external antenna as visual indicator for CP status.
* Changed depot alarm to only sound for a specific time (15 seconds) instead of linked to the truck position.


Development
============
 
### Source

Since we are talking about an open-sourced game, in my opinion as much as possible should be available to the public. In that spirit, the map source, along with sources of my other maps, can be found in this repo. It is kept updated with all latest changes, which means the map-source does not necessarily reflect the status of the last release. If you encounter any issues, I would prefer it if you contacted me or simply opened an issue on the tracker, instead of recompiling a version yourself.

[Download](https://github.com/realkemon/home/tree/master/maps)
|:---|
[Activity Tracker](https://github.com/realkemon/home/milestone/6)

### Compile parameters

```
<build name="Supply Depot">
<command>[q3map2] -bsp -meta -samplesize 16 -v -mv 1024 -mi 6144 &quot;[MapFile]&quot;</command>
<command>[q3map2] -vis -saveprt -v &quot;[MapFile]&quot;</command>
<command>[q3map2] -light -fast -samples 4 -samplesize 16 -bounce 3 -bouncegrid -v -thresh 0.25 -shade -dirty -dirtdepth 256 -lightmapsize 2048 -patchshadows -external &quot;[MapFile]&quot;</command>
</build>
```

[:arrow_backward: Return to Home](https://github.com/realkemon/home/blob/master/README.md) [:arrow_double_up: Back to the Top](https://github.com/realkemon/home/blob/master/pages/etl_ice.md)
 