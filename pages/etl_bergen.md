<!-- HEADER -->
<div align="center">
 
<a href="https://raw.githubusercontent.com/realkemon/home/master/levelshots/bergen/bergen.png"><img src="https://raw.githubusercontent.com/realkemon/home/master/levelshots/bergen/bergen.png" width="512"/></a>

# Bergen
 
<!-- TOC -->
<a href="https://github.com/realkemon/home/blob/master/pages/etl_bergen.md#objectives">Objectives</a> ● <a href="https://github.com/realkemon/home/blob/master/pages/etl_bergen.md#media">Media</a> ● <a href="https://github.com/realkemon/home/blob/master/pages/etl_bergen.md#options">Options</a> ● <a href="https://github.com/realkemon/home/blob/master/pages/etl_bergen.md#changelog">Changelog</a> ● <a href="https://github.com/realkemon/home/blob/master/pages/etl_bergen.md#specs_and_credits">Specs and Credits</a>
<!-- STORY -->
**Campaign: 'Submarine Depot' (3/3)**
<br>
Having disrupted recent supply shipments, the Allies launch their final attack on the now vulnerable naval base in Bergen. Their goal is clear: use an armoured vehicle to breach the gates of the base, sabotage the transmitter to disrupt submarine communication forcing them to retreat. To prevent Allied convoys reaching shores, the Axis have to hold the naval base at all cost and keep the transmitter operational.
<br>
 
<a href="https://www.moddb.com/mods/etlegacy/addons/etl-bergen-v7" title="Download ETL Bergen (v7) - Mod DB" target="_blank"><img src="https://button.moddb.com/download/medium/216197.png" alt="ETL Bergen (v7)" /></a>
 
## Objectives
 
<a href="https://raw.githubusercontent.com/realkemon/home/master/levelshots/bergen/bergen_cc.png"><img src="https://raw.githubusercontent.com/realkemon/home/master/levelshots/bergen/bergen_cc.png" width="256"/></a>
 
* [ ] The Allies will attempt to breach the outer defenses with an armoured vehicle.
* [ ] The Allies need to repair the generator to advance into the transmitter area.
* [ ] The Allies need to dynamite the transmitter to disrupt subamrine communitcation.



## Media
<a href="https://raw.githubusercontent.com/realkemon/home/master/levelshots/bergen/bergen1.jpg"><img src="https://raw.githubusercontent.com/realkemon/home/master/levelshots/bergen/bergen1.jpg"></a>

<a href="https://raw.githubusercontent.com/realkemon/home/master/levelshots/bergen/bergen2.jpg"><img src="https://raw.githubusercontent.com/realkemon/home/master/levelshots/bergen/bergen2.jpg"></a>

<a href="https://raw.githubusercontent.com/realkemon/home/master/levelshots/bergen/bergen3.jpg"><img src="https://raw.githubusercontent.com/realkemon/home/master/levelshots/bergen/bergen3.jpg"></a>

<a href="https://raw.githubusercontent.com/realkemon/home/master/levelshots/bergen/bergen4.jpg"><img src="https://raw.githubusercontent.com/realkemon/home/master/levelshots/bergen/bergen4.jpg"></a>

<a href="https://raw.githubusercontent.com/realkemon/home/master/levelshots/bergen/bergen5.jpg"><img src="https://raw.githubusercontent.com/realkemon/home/master/levelshots/bergen/bergen5.jpg"></a>

<a href="https://raw.githubusercontent.com/realkemon/home/master/levelshots/bergen/bergen6.jpg"><img src="https://raw.githubusercontent.com/realkemon/home/master/levelshots/bergen/bergen6.jpg"></a>

<a href="https://raw.githubusercontent.com/realkemon/home/master/levelshots/bergen/bergen7.jpg"><img src="https://raw.githubusercontent.com/realkemon/home/master/levelshots/bergen/bergen7.jpg"></a>

<a href="https://raw.githubusercontent.com/realkemon/home/master/levelshots/bergen/bergen8.jpg"><img src="https://raw.githubusercontent.com/realkemon/home/master/levelshots/bergen/bergen8.jpg"></a>

<a href="https://raw.githubusercontent.com/realkemon/home/master/levelshots/bergen/bergen9.jpg"><img src="https://raw.githubusercontent.com/realkemon/home/master/levelshots/bergen/bergen9.jpg"></a>

<a href="https://raw.githubusercontent.com/realkemon/home/master/levelshots/bergen/bergen10.jpg"><img src="https://raw.githubusercontent.com/realkemon/home/master/levelshots/bergen/bergen10.jpg"></a>

<a href="https://raw.githubusercontent.com/realkemon/home/master/levelshots/bergen/bergen11.jpg"><img src="https://raw.githubusercontent.com/realkemon/home/master/levelshots/bergen/bergen11.jpg"></a>

<a href="https://raw.githubusercontent.com/realkemon/home/master/levelshots/bergen/bergen12.jpg"><img src="https://raw.githubusercontent.com/realkemon/home/master/levelshots/bergen/bergen12.jpg"></a>

<a href="https://raw.githubusercontent.com/realkemon/home/master/levelshots/bergen/bergen13.jpg"><img src="https://raw.githubusercontent.com/realkemon/home/master/levelshots/bergen/bergen13.jpg"></a>

<a href="https://raw.githubusercontent.com/realkemon/home/master/levelshots/bergen/bergen14.jpg"><img src="https://raw.githubusercontent.com/realkemon/home/master/levelshots/bergen/bergen14.jpg"></a>

<a href="https://raw.githubusercontent.com/realkemon/home/master/levelshots/bergen/bergen15.jpg"><img src="https://raw.githubusercontent.com/realkemon/home/master/levelshots/bergen/bergen15.jpg"></a>

<a href="https://raw.githubusercontent.com/realkemon/home/master/levelshots/bergen/bergen16.jpg"><img src="https://raw.githubusercontent.com/realkemon/home/master/levelshots/bergen/bergen16.jpg"></a>

## Changelog

</div>

<details>
 <summary><b>version 7</b> <i>(Jun 27 2021)</i></summary>
 
* [x] Fixed command map icons appearing outside of compass. *(Thank you spyhawk for reporting)*
* [x] Fixed sounds active at map start in second round after `/map_restart`.
* [x] Added unique `id`s for spawn slots to prepare [this](https://github.com/etlegacy/etlegacy/issues/1641) feature.
* [x] Fixed glass shader on trucks.
* [x] Adjusted projection axis and scaling of terrain textures.
</details>

<details>
 <summary><b>version 6</b> <i>(Mar 11 2021)</i></summary>
 
* [x] Fixed spawnslot getting stuck in forward flag spawn. *(Thank you ETc.Jay for reporting)*
* [x] Adjusted clipping at side entrance to prevent players camping above the door.
* [x] Reworked system to secure flag to be less complex and more easily understandable. Allies now only need to hold the flag for 30s.
</details>

<details>
 <summary><b>version 5</b> <i>(Jan 20 2021)</i></summary>
 
* [x] Renamed targetname `south_door_closed0` to `south_door_closed` to fix game crash. *(Thank you Kate for reporting)*
* [x] Fixed sounds and remapshaders active at map start in second round after `/map_restart`. *(Thank you WuTangH for reporting issue on 'Supply Depot, by ginc')*
* [x] Provided option to toggle tank invulnerable through mapscript (vulnerable by default). *(Thank you Ensiform for explanation)*
* [x] Increased amount of spawn slots from 16vs16 to 32vs32.
* [x] Fixed surfaceparm grasssteps to add missing sounds when walking on grass. *(Thank you WuTangH for reporting)*
* [x] Removed deprecated alarm sounds.
</details>

<details>
 <summary><b>version 4</b> <i>(Dec 20 2020)</i></summary>
 
* [x] Simplified geometry for cleaner player collision
* [x] Replaced colour coded wires with colour coded bunker trim and command map for more subtle implementation
* [x] Replaced side entrance terrain with artificial pier to prevent walljumping
* [x] Reverted V1 Rocket back to airplane
* [x] Improved lighting and terrain
* [x] Added skylights to generator room and Axis spawn to simplify spectator/shoutcaster movement
* [x] Improved VIS blocking and performance
</details>

<details>
 <summary><b>version 3</b> <i>(Oct 20 2018)</i></summary>
 
* [x] Fixed caulk in terrain at forward bunker and northern courtyard. *(Thank you ryven for reporting)*
* [x] Fixed side entrance being unplantable when footbridge was constructed. *(Thank you Harlekin for reporting)*
* [x] Fixed missing footbridge related VO sound for Axis
* [x] Fixed bug where sound wouldn’t play when main entrance got destroyed
* [x] Fixed 3 terrain spots where it was possible for the player to either get stuck or be obstructed in their way. *(Thank you Harlekin for reporting)*
* [x] Added cabinet marker in the command map. *(Thank you IR4T4 and Ensiform for reporting)*
* [x] Added lights in forward bunker. *(Thank you Ensiform for reporting)*
* [x] Added audible feedback to generator door levers when generator is destroyed.
* [x] Added base alarm sounding whenever the transmitter area gets breached. This replaces the simple text announcement. *(Thank you ryven and WuTangH for debugging)*
* [x] Added ambient sounds (capturable flag, crickets in nature and birds in trees). *(Thank you IR4T4 for reporting)*
* [x] Adjusted trigger_hurt of v1 rocket to cover entire explosion area. *(Thank you Harlekin for reporting)*
* [x] Adjusted terrain at side entrance to prevent the easiest TJs. *(Thank you Aciz and ryven for extensive feedback)*
* [x] Adjusted MG murderhole at side entrance to reduce shooting against the insides. Also adjusted its varc. *(Thank you ryven for reporting)*
* [x] Adjusted tree at side path to no longer be partially inside the cliff. *(Thank you Harlekin for reporting)*
* [x] Replaced generator command map icon with standard icons to clarify mission objective. *(Thank you Harlekin for reporting)*
* [x] Replaced tree between forward bunker and allied mg blocking line of sight. *(Thank you Mateos for reporting)*
* [x] Removed little tree at side path blocking movement and visibility. *(Thank you Harlekin for reporting)*
* [x] Reduced brushcount of terrain significantly and added hills between forward bunker and rear base to increase VIS blocking and performance. *(Thank you Aciz and ryven for reporting)*
</details>

<details>
 <summary><b>version 2</b> <i>(Oct 8 2018)</i></summary>
 
* [x] Various clipping issues have been fixed, where players could get stuck. *(Thank you Aciz and WuTangH for reporting)*
* [x] Various TJ possibilities have been removed, to prevent not intended, easy access to map objectives. *(Thank you Aciz for reporting)*
  * As a result, the river at the Side Entrance had to be widened as the only real solution.
* [x] Lighting has been improved at various locations. *(Thank you Aciz for reporting)*
* [x] A missing shader issue at the transmitter controls has been fixed. *(Thank you [UJE]Niek for reporting)*
* [x] Side Entrance entity setup has been revised. *(Thank you ryven for debugging)*
* [x] Bot waypoints are now available at the omnibot repo. *(Thank you Mateos for creating bot support)*
* [x] Terrain shader issue inside the bunker corridors, which lead to dirt splashes when shooting the ground, has been resolved. *(Thank you [UJE]Niek for reporting)*
* [x] Terrain brushwork has been adjusted to remove a caulk leak at the main entrance. *(Thank you ryven for reporting)*
* [x] Ambient sounds have been added for 2 fireplaces and 1 generator. *(Thank you IR4T4 for reporting)*
* [x] Moved a hovering lamp at the transmitter controls bunker. *(Thank you Aciz for reporting)*

</details>

<details>
 <summary><b>version 1</b> <i>(Oct 2 2018)</i></summary>
 
* [x] VO announcements have been adapted by Radar.
  * As long as both Main and Side Entrance are active VO is: “defend/destroy entrances”
  * As soon as one has been breached VO is: “defend/destroy the side OR main entrance”
* [x] VO announcements for the Footbridge have been added.
* [x] Alarm now sounds in the entire base when either the Side- or Main Entrance have been breached instead of separated alarms.
* [x] The snapping of the tank at certain view-angles has been fixed
* [x] If the Allies hold both the Forward Bunker flag and the CP, the flag is “temporarily secured” until the CP is lost again.
* [x] The Forward Door (before, Transmitter Door 3) is now linked to the generator.
* [x] Spectator limbo cam has been fixed (was inside of terrain).
* [x] Construction materials have been made in the style of original maps.
* [x] Teleport and secret room have been removed.
* [x] Axis rear spawn has been restructured to allow for faster exit.
* [x] Plane shooting down the tank has been replaced with a V1 Rocket to create narrative link to V1_Rocket map by FireFly, which is on the list to be overhauled as well.
* [x] Entity count has been reduced from 568 to 498.
* [x] Structural mesh and VIS blocking have been improved by adjusting vertical differences of the floors.
* [x] Visual changes have been made.
</details>

<div align="center">

## Specs and Credits

### Options
 
ET maps are played in different gamemodes and configurations, occasionally calling for different settings. To avoid maintaining separate variations of the same map, optional features have been added, which can be toggled in the map script `pk3/maps/<mapname>.script`. Toggle the optional features by (un-)commenting the respective line. Upload the changed mapscript to your server's mapscript directory *(path depends on mod)*. The following optional features are included in **Supply Depot**:
* [ ] Option to set tank invulnerable. *(default damageable)*
* [x] Secure functionality for Allied flag after being held for 30 consecutive seconds. *(default enabled)*
 
 
### Compile parameters

</div>

```
<build name="Bergen">
<command>[q3map2] -bsp -meta -samplesize 4 -v -mv 1024 -mi 6144 &quot;[MapFile]&quot;</command>
<command>[q3map2] -vis -saveprt -v &quot;[MapFile]&quot;</command>
<command>[q3map2] -light -fast -samples 4 -samplesize 4 -bounce 3 -bouncegrid -v -thresh 0.5 -shade -dirty -dirtdepth 256 -lightmapsize 1024 -patchshadows -external &quot;[MapFile]&quot;</command>
</build>
```

<div align="center">
 
### Source
Since we are talking about an open-source game, in my opinion as much as possible should be available to the public. In that spirit, the map source, along with sources of my other maps, can be found in this repo. It is kept up-to-date with all latest changes, which means the map source does not necessarily reflect the status of the last release.
<br>
<a href="https://github.com/realkemon/home/tree/master/maps">> DOWNLOAD <</a>
 
### Credits
This is not my own map. It is a visual overhaul of an existing map created by **Detoeni**.
<br>
They still hold all the rights to the map design and original idea and I do not claim ownership of it.

</div>

----
[:arrow_backward: Return to Home](https://github.com/realkemon/home/blob/master/README.md#-cedric-aka-kemon) [:arrow_double_up: Back to the Top](https://github.com/realkemon/home/blob/master/etl_bergen.md#)
