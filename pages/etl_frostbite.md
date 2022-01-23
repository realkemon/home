<div align="center">
 
<a href="https://raw.githubusercontent.com/realkemon/home/master/levelshots/frostbite/frostbite.png"><img src="https://raw.githubusercontent.com/realkemon/home/master/levelshots/frostbite/frostbite.png" width="512"/></a>

# Frostbite
 
<a href="https://github.com/realkemon/home/blob/master/pages/etl_frostbite.md#objectives">Objectives</a> ● <a href="https://github.com/realkemon/home/blob/master/pages/etl_frostbite.md#media">Media</a> ● <a href="https://github.com/realkemon/home/blob/master/pages/etl_frostbite.md#options">Options</a> ● <a href="https://github.com/realkemon/home/blob/master/pages/etl_frostbite.md#changelog">Changelog</a> ● <a href="https://github.com/realkemon/home/blob/master/pages/etl_frostbite.md#specs_and_credits">Specs and Credits</a>
<!-- STORY -->
**Campaign: 'Rocket Base' (2/3)**
 <br>
After slowing down the Allied attack at the coastal fortress, the Axis set up position in a fortified storage facility. Having narrowly lost the confidential documents in Ice, the Allies have to launch a direct attack on this storage facility, as it is the only way to gain intel on the exact whereabouts of the secret rocket base reported in this area. Hence, the Allies attempt to infiltrate the facility, steal those documents and radio them to OSA headquarters for decyphering.
<br>
 
<a href="https://www.moddb.com/mods/etlegacy/addons/etl-frostbite-v16" title="Download ETL Frostbite (v16) - Mod DB" target="_blank"><img src="https://button.moddb.com/download/medium/227094.png" alt="ETL Frostbite (v16)" /></a>
 
## Objectives
 
* [ ] The Allies will attempt to infiltrate the storage facility.
* [ ] The Allies need to steal documents locating the rocket base.
* [ ] The Allies need to transmit the documents to headquarters.
 

## Media
<a href="https://raw.githubusercontent.com/realkemon/home/master/levelshots/frostbite/frostbite1.jpg"><img src="https://raw.githubusercontent.com/realkemon/home/master/levelshots/frostbite/frostbite1.jpg"></a>

<a href="https://raw.githubusercontent.com/realkemon/home/master/levelshots/frostbite/frostbite2.jpg"><img src="https://raw.githubusercontent.com/realkemon/home/master/levelshots/frostbite/frostbite2.jpg"></a>

<a href="https://raw.githubusercontent.com/realkemon/home/master/levelshots/frostbite/frostbite3.jpg"><img src="https://raw.githubusercontent.com/realkemon/home/master/levelshots/frostbite/frostbite3.jpg"></a>

<a href="https://raw.githubusercontent.com/realkemon/home/master/levelshots/frostbite/frostbite4.jpg"><img src="https://raw.githubusercontent.com/realkemon/home/master/levelshots/frostbite/frostbite4.jpg"></a>

<a href="https://raw.githubusercontent.com/realkemon/home/master/levelshots/frostbite/frostbite5.jpg"><img src="https://raw.githubusercontent.com/realkemon/home/master/levelshots/frostbite/frostbite5.jpg"></a>

<a href="https://raw.githubusercontent.com/realkemon/home/master/levelshots/frostbite/frostbite6.jpg"><img src="https://raw.githubusercontent.com/realkemon/home/master/levelshots/frostbite/frostbite6.jpg"></a>

<a href="https://raw.githubusercontent.com/realkemon/home/master/levelshots/frostbite/frostbite7.jpg"><img src="https://raw.githubusercontent.com/realkemon/home/master/levelshots/frostbite/frostbite7.jpg"></a>

<a href="https://raw.githubusercontent.com/realkemon/home/master/levelshots/frostbite/frostbite8.jpg"><img src="https://raw.githubusercontent.com/realkemon/home/master/levelshots/frostbite/frostbite8.jpg"></a>

<a href="https://raw.githubusercontent.com/realkemon/home/master/levelshots/frostbite/frostbite9.jpg"><img src="https://raw.githubusercontent.com/realkemon/home/master/levelshots/frostbite/frostbite9.jpg"></a>

<a href="https://raw.githubusercontent.com/realkemon/home/master/levelshots/frostbite/frostbite10.jpg"><img src="https://raw.githubusercontent.com/realkemon/home/master/levelshots/frostbite/frostbite10.jpg"></a>

<a href="https://raw.githubusercontent.com/realkemon/home/master/levelshots/frostbite/frostbite11.jpg"><img src="https://raw.githubusercontent.com/realkemon/home/master/levelshots/frostbite/frostbite11.jpg"></a>

## Changelog
`NOTE: Version 7 is a fresh start from the original, which is why previous iterations aren't listed below.`

 </div>
 
<details>
 <summary><b>version 16</b> <i>(Jan 23 2022)</i></summary>
 
* [x] Changed CP spawns to face the CP instead of stairs. *(Thank you bystry and Aciz for judgement.)*
* [x] Removed versioning from pk3 contents. *(Thank you bystry and Aciz for suggesting.)*
* [x] Adjusted lighting settings for improved performance. *(Thank you Aciz for suggesting.)*
* [x] Adjusted etl_lights.shader to enable remapshader use. *(Thank you Aciz for reporting.)*
</details>

<details>
 <summary><b>version 15</b> <i>(semi-public test release)</i></summary>
 
* [x] Adjusted height of railings in Allied CP room to allow jump onto the CP again. *(Thank you ohnoes for reporting.)*
* [x] Added second bunk bed and adjusted position to match original, to allow hiding again. *(Thank you zenixje for reporting.)*
* [x] Adjusted terrain at big crate near transmitter to allow TJing onto the crate again. *(Thank you WuT for reporting.)*
* [x] Removed backboard of rear truck in lower garage to allow hiding there again. *(Thank you uYop for reporting.)*
* [x] Removed gap in stacked boxes on balcony at middle courtyard. *(Thank you Aciz for reporting.)*
</details>

<details>
 <summary><b>version 14</b> <i>(Jun 27 2021)</i></summary>
 
* [x] Fixed command map icons not having shaders making them appear outside of compass. *(Thank you spyhawk for reporting)*
* [x] Adjusted position of inner courtyard truck. *(TJ from hood of truck still possible)*
* [x] Changed back cover on tunnel truck from green to grey to match rest of truck.
* [x] Fixed CP sounds playing in second round after `/map_restart`.
* [x] Removed Allied CP spawns `startactive` spawnflag. Changed `setstate invisible` to `alertentity` functionality to prevent spawn glitch after `/map_restart`.
* [x] Change from `Axial Projection` to `Brush Primitives` to enable better texture alignment/projection options.
* [x] Adjusted various texture alignments.
* [x] Fixed caulked surfaces visible to the player at shelf in Allied spawn.
* [x] Changed bark texture of dead trees from temperate to winter.
* [x] Fixed invalid shader on rear faces of terrain brushes near transmitter.
* [x] Fixed incorrect use of skyshader at backside of two random brushes.
* [x] Added unique `id`s for spawn slots to prepare [this](https://github.com/etlegacy/etlegacy/issues/1641) feature.
* [x] Increased spawn slot count in garage to 32.
* [x] Fixed glass shader on trucks.
</details>
 
 
<details>
 <summary><b>version 13</b> <i>(Mar 25 2021)</i></summary>
 
* [x] Fixed fully caulked terrain brushes. *(Thank you woju and spyhawk for reporting)*
* [x] Fixed missing tree shader. *(Thank you woju and spyhawk for reporting)*
</details>


<details>
 <summary><b>version 12</b> <i>(Mar 11 2021)</i></summary>
 
* [x] Moved flying lamp models to be attached to girder in Axis garage. *(Thank you Aciz for reporting)*
* [x] Adjusted player collision on cliff near transmitter to prevent glitching on the roof. *(Thank you Aciz for reporting)*
* [x] Improved lighting in balcony hallway at inner courtyard.
* [x] Fixed player collision on the Axis CP. *(Thank you Aciz for reporting)*
* [x] Adjusted shader for winter trees to prevent overwriting default shaders on other maps. *(Thank you Aciz for reporting)*
</details>

<details>
 <summary><b>version 11</b> <i>(Jan 20 2021)</i></summary>
 
* [x] Adjusted lighting to increase performance.
* [x] Converted smaller brushwork to .ase models to reduce lightmap data and improve performance.
* [x] Increased supported playercount from 20vs20 to 32vs32.
* [x] Reduced volume of wind sounds to reduce distractions.
* [x] Further improved player collision at railings and doorways. *(Thank you Aciz for reporting.)*
* [x] Changed clips for barrels and couches for proper hit- and footstep sounds. *(Thank you Aciz for reporting.)*
* [x] Reduced weird shadows from the ceiling lamps in the office area. *(Thank you Aciz for reporting.)*
* [x] Fixed missing shader for bush model. *(Thank you Aciz for reporting.)*
* [x] Reverted collision on stairs down to garage to reenable a TJ. This also reintroduces bobbing effect. *(Thank you Aciz for reporting.)*
</details>

<details>
 <summary><b>version 10</b> <i>(Dec 20 2020)</i></summary>
 
* [x] Changed catwalk in warehouse from clip to clip missile. It is now permeable for weapons except grenades, rockets, etc.
* [x] Moved vent opening near Service Door for better alignment with surrounding textures. *(Thank you Aciz for reporting.)*
* [x] Adjusted terrain shader on snow patches in inner courtyard for proper snow behaviour. *(Thank you Aciz for reporting.)*
* [x] Improved player collision to simplify movement. (e.g. doorways and railings) *(Thank you Aciz for reporting.)*
* [x] Reverted clip brushes for truck in inner courtyard back to original to re-enable a trickjump. *(Thank you Kimi for reporting.)*
* [x] Adjusted terrain brushes near Storage Wall to re-enable a trickjump. *(Thank you Bystry for reporting.)*
* [x] Remove spotlight style from most light sources inside the facility. *(Thank you hatcher for reporting.)*
* [x] Changed floodlight colour to uniform white. *(Thank you Aciz for reporting.)*
</details>

<details>
 <summary><b>version 9</b> <i>(Apr 20 2020)</i></summary>
 
* [x] Removed rogue clip at office entrance.
* [x] Changed catwalk in warehouse from clipweapon to clip. It is now permeable for weapons. *(Thank you to ryven for reporting.)*
* [x] Simplified collision of machines at Service Door. *(Thank you to ryven for reporting.)*
* [x] Improved player collision for various shelves, pipes and doorways. *(Thank you to Aciz and Bystry for reporting.)*
* [x] Fixed one alarm speaker not being named correctly.
* [x] Added a trickjump coming from warehouse, jumping onto box, onto truck into green passage. Disabled by default. Can be activated through mapscript. (deactivate line: setstate courtyard_TJ_box invisible)
* [x] Removed collision of blackboards.
* [x] Increased amount of shared assets with other ET: Legacy overhauls to decrease filesize once they are shipped together.
* [x] Changed interior lighting to be a bit warmer in colour. *(Thank you to spyhawk for reporting.)*
</details>

<details>
 <summary><b>version 8</b> <i>(Apr 7 2020)</i></summary>
 
* [x] Fixed crash on timelimit hit, due to unassigned Axis intermission camera. *(Thank you to Bystry and Kate for reporting.)*
* [x] Improved clips for various stairs to prevent bobbing effect.
* [x] Removed collision from cables/ropes at wooden stack outside the Main Entrance.
* [x] Clipped window at Main Entrance. *(Thank you to ryven for reporting.)*
* [x] Deepened the niche at Axis spawn with broken cabinet to have same size as original ‘Frostbite, by Moonkey’. *(Thank you to ryven for reporting.)*
* [x] Added working cabinets to niche mentioned above that server admins can enable with map script. *(Was also in original Frostbite for LMS; disabled by default.)*
* [x] Added detail to empty walled-off areas. *(Thank you to ryven for reporting.)*
* [x] Added sky portal.
* [x] Changed dynamic Storage Wall lights to re-use existing shaders.
</details>

<details>
 <summary><b>version 7</b> <i>(Mar 26 2020)</i></summary>
 
* [x] The player is now able to stop and revert Storage Wall movement by activating the button again.
* [x] Alarm now also sounds when the Service Door has been dynamited before the Storage Wall and Main Entrance.
* [x] Structural mesh and VIS blocking has been improved.
* [x] Simplified shoutcaster movement by allowing spectators to go through terrain clips.
* [x] Lighting has been adapted to better suit a night-time setting.
* [x] Collision has been improved for railings made out of patches.
* [x] Different routes inside the facility have received different colour coded trims at the bunker walls to simplify call-outs to teammates.
* [x] Banners have been removed and replaced with the Rocket Base decal from RTCW for narrative purposes.
</details>

<div align="center">
 
## Specs and Credits

### Options
 
ET maps are played in different gamemodes and configurations, occasionally calling for different settings. To avoid maintaining separate variations of the same map, optional features have been added, which can be toggled in the map script `pk3/maps/<mapname>.script`. Toggle the optional features by (un-)commenting the respective line. Upload the changed mapscript to your server's mapscript directory *(path depends on mod)*. The following optional features are included in **Frostbite**:
* [ ] A **one-sided** clip preventing jumps over the Storage Wall from outside. *(default disabled)*
 
### Compile parameters

</div>

```
<build name="Frostbite">
<command>[q3map2] -bsp -meta -samplesize 4 -v -mv 1024 -mi 6144 &quot;[MapFile]&quot;</command>
<command>[q3map2] -vis -saveprt -v &quot;[MapFile]&quot;</command>
<command>[q3map2] -light -fast -samples 4 -samplesize 2 -bounce 3 -bouncegrid -v -thresh 0.5 -shade -dirty -dirtdepth 256 -lightmapsize 2048 -patchshadows -external &quot;[MapFile]&quot;</command>
</build>
```

<div align="center">
 
### Source
Since we are talking about an open-source game, in my opinion as much as possible should be available to the public. In that spirit, the map source, along with sources of my other maps, can be found in this repo. It is kept up-to-date with all latest changes, which means the map source does not necessarily reflect the status of the last release.
<br>
<a href="https://github.com/realkemon/home/tree/master/maps">> DOWNLOAD <</a>
 
### Credits
This is not my own map. It is a visual overhaul of an existing map created by **Moonkey**.
<br>
They still hold all the rights to the map design and original idea and I do not claim ownership of it.

</div>

----
[:arrow_backward: Return to Home](https://github.com/realkemon/home/blob/master/README.md) [:arrow_double_up: Back to the Top](https://github.com/realkemon/home/blob/master/pages/etl_frostbite.md)
